window.addEventListener('message', event => {
    feed(event);
});

let feedId = 0;
function feed(event) {
    feedId += 60;
    let toDelId = feedId;
    $('.feed').append(`<div class="feed-item" id="feed-${toDelId}">${event.data.context}</div>`);
    $('body').find(`#feed-${toDelId}`).fadeIn();
    setTimeout(() => {
        $('body').find(`#feed-${toDelId}`).fadeOut();
    }, 4000);
}