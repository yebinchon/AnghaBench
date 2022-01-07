
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file_handler_request {int file; } ;


 int SDL_free (int ) ;

__attribute__((used)) static void
file_handler_request_destroy(struct file_handler_request *req) {
    SDL_free(req->file);
}
