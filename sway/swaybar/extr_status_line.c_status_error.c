
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct status_line {char const* text; int protocol; } ;


 int PROTOCOL_ERROR ;
 int status_line_close_fds (struct status_line*) ;

void status_error(struct status_line *status, const char *text) {
 status_line_close_fds(status);
 status->protocol = PROTOCOL_ERROR;
 status->text = text;
}
