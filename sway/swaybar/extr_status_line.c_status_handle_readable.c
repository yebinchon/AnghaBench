
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct status_line {int protocol; size_t buffer_size; char* buffer; int click_events; int stop_signal; int cont_signal; char* text; int read; int buffer_index; int tokener; int blocks; int write_fd; int read_fd; } ;
typedef int ssize_t ;
typedef int json_object ;


 int EAGAIN ;
 int FIONREAD ;



 int SWAY_DEBUG ;
 int SWAY_ERROR ;
 int clearerr (int ) ;
 int errno ;
 int getline (char**,int*,int ) ;
 int i3bar_handle_readable (struct status_line*) ;
 int ioctl (int ,int ,int*) ;
 int json_object_get_boolean (int *) ;
 int json_object_get_int (int *) ;
 int json_object_object_get_ex (int *,char*,int **) ;
 int json_object_put (int *) ;
 int json_tokener_new () ;
 int * json_tokener_parse (char*) ;
 int memmove (char*,char*,int ) ;
 int read (int ,char*,int) ;
 char* realloc (char*,int) ;
 int status_error (struct status_line*,char*) ;
 char* strchr (char*,char) ;
 int strlen (char*) ;
 int sway_log (int ,char*,...) ;
 int sway_log_errno (int ,char*) ;
 int wl_list_init (int *) ;
 int write (int ,char*,int) ;

bool status_handle_readable(struct status_line *status) {
 ssize_t read_bytes = 1;
 switch (status->protocol) {
 case 128:
  errno = 0;
  int available_bytes;
  if (ioctl(status->read_fd, FIONREAD, &available_bytes) == -1) {
   sway_log(SWAY_ERROR, "Unable to read status command output size");
   status_error(status, "[error reading from status command]");
   return 1;
  }

  if ((size_t)available_bytes + 1 > status->buffer_size) {

   status->buffer_size = available_bytes + 1;
   status->buffer = realloc(status->buffer, status->buffer_size);
  }
  if (status->buffer == ((void*)0)) {
   sway_log_errno(SWAY_ERROR, "Unable to read status line");
   status_error(status, "[error reading from status command]");
   return 1;
  }

  read_bytes = read(status->read_fd, status->buffer, available_bytes);
  if (read_bytes != available_bytes) {
   status_error(status, "[error reading from status command]");
   return 1;
  }
  status->buffer[available_bytes] = 0;


  char *newline = strchr(status->buffer, '\n');
  json_object *header, *version;
  if (newline != ((void*)0)
    && (header = json_tokener_parse(status->buffer))
    && json_object_object_get_ex(header, "version", &version)
    && json_object_get_int(version) == 1) {
   sway_log(SWAY_DEBUG, "Using i3bar protocol.");
   status->protocol = 130;

   json_object *click_events;
   if (json_object_object_get_ex(header, "click_events", &click_events)
     && json_object_get_boolean(click_events)) {
    sway_log(SWAY_DEBUG, "Enabling click events.");
    status->click_events = 1;
    if (write(status->write_fd, "[\n", 2) != 2) {
     status_error(status, "[failed to write to status command]");
     json_object_put(header);
     return 1;
    }
   }

   json_object *signal;
   if (json_object_object_get_ex(header, "stop_signal", &signal)) {
    status->stop_signal = json_object_get_int(signal);
    sway_log(SWAY_DEBUG, "Setting stop signal to %d", status->stop_signal);
   }
   if (json_object_object_get_ex(header, "cont_signal", &signal)) {
    status->cont_signal = json_object_get_int(signal);
    sway_log(SWAY_DEBUG, "Setting cont signal to %d", status->cont_signal);
   }

   json_object_put(header);

   wl_list_init(&status->blocks);
   status->tokener = json_tokener_new();
   status->buffer_index = strlen(newline + 1);
   memmove(status->buffer, newline + 1, status->buffer_index + 1);
   return i3bar_handle_readable(status);
  }

  sway_log(SWAY_DEBUG, "Using text protocol.");
  status->protocol = 129;
  status->text = status->buffer;

 case 129:
  errno = 0;
  while (1) {
   if (status->buffer[read_bytes - 1] == '\n') {
    status->buffer[read_bytes - 1] = '\0';
   }
   read_bytes = getline(&status->buffer,
     &status->buffer_size, status->read);
   if (errno == EAGAIN) {
    clearerr(status->read);
    return 1;
   } else if (errno) {
    status_error(status, "[error reading from status command]");
    return 1;
   }
  }
 case 130:
  return i3bar_handle_readable(status);
 default:
  return 0;
 }
}
