
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct status_line {int started; size_t buffer_index; char* buffer; size_t buffer_size; int expecting_comma; int read_fd; TYPE_1__* tokener; } ;
struct json_object {int dummy; } ;
typedef int ssize_t ;
typedef enum json_tokener_error { ____Placeholder_json_tokener_error } json_tokener_error ;
struct TYPE_4__ {size_t char_offset; } ;


 scalar_t__ EAGAIN ;
 int SWAY_DEBUG ;
 scalar_t__ errno ;
 int free (char*) ;
 int i3bar_parse_json (struct status_line*,struct json_object*) ;
 scalar_t__ isspace (char) ;
 scalar_t__ json_object_get_type (struct json_object*) ;
 int json_object_put (struct json_object*) ;
 int json_tokener_continue ;
 int json_tokener_error_desc (int) ;
 int json_tokener_get_error (TYPE_1__*) ;
 struct json_object* json_tokener_parse_ex (TYPE_1__*,char*,size_t) ;
 int json_tokener_reset (TYPE_1__*) ;
 int json_tokener_success ;
 scalar_t__ json_type_array ;
 int memmove (char*,char*,size_t) ;
 int read (int ,char*,size_t) ;
 char* realloc (char*,int) ;
 int status_error (struct status_line*,char*) ;
 size_t strspn (char*,char*) ;
 int sway_log (int ,char*,...) ;

bool i3bar_handle_readable(struct status_line *status) {
 while (!status->started) {
  for (size_t c = 0; c < status->buffer_index; ++c) {
   if (status->buffer[c] == '[') {
    status->started = 1;
    status->buffer_index -= ++c;
    memmove(status->buffer, &status->buffer[c], status->buffer_index);
    break;
   } else if (!isspace(status->buffer[c])) {
    sway_log(SWAY_DEBUG, "Invalid i3bar json: expected '[' but encountered '%c'",
      status->buffer[c]);
    status_error(status, "[invalid i3bar json]");
    return 1;
   }
  }
  if (status->started) {
   break;
  }

  errno = 0;
  ssize_t read_bytes = read(status->read_fd, status->buffer, status->buffer_size);
  if (read_bytes > -1) {
   status->buffer_index = read_bytes;
  } else if (errno == EAGAIN) {
   return 0;
  } else {
   status_error(status, "[error reading from status command]");
   return 1;
  }
 }

 struct json_object *last_object = ((void*)0);
 struct json_object *test_object;
 size_t buffer_pos = 0;
 while (1) {







  if (status->expecting_comma) {
   for (; buffer_pos < status->buffer_index; ++buffer_pos) {
    if (status->buffer[buffer_pos] == ',') {
     status->expecting_comma = 0;
     ++buffer_pos;
     break;
    } else if (!isspace(status->buffer[buffer_pos])) {
     sway_log(SWAY_DEBUG, "Invalid i3bar json: expected ',' but encountered '%c'",
       status->buffer[buffer_pos]);
     status_error(status, "[invalid i3bar json]");
     return 1;
    }
   }
   if (buffer_pos < status->buffer_index) {
    continue;
   }
   buffer_pos = status->buffer_index = 0;
  } else {
   test_object = json_tokener_parse_ex(status->tokener,
     &status->buffer[buffer_pos], status->buffer_index - buffer_pos);
   enum json_tokener_error err = json_tokener_get_error(status->tokener);
   if (err == json_tokener_success) {
    if (json_object_get_type(test_object) == json_type_array) {
     if (last_object) {
      json_object_put(last_object);
     }
     last_object = test_object;
    } else {
     json_object_put(test_object);
    }




    char *last_char_pos =
     &status->buffer[buffer_pos + status->tokener->char_offset - 1];
    char last_char = *last_char_pos;
    while (isspace(last_char)) {
     last_char = *--last_char_pos;
    }
    *last_char_pos = '\0';
    size_t offset = strspn(&status->buffer[buffer_pos], " \f\n\r\t\v");
    sway_log(SWAY_DEBUG, "Received i3bar json: '%s%c'",
      &status->buffer[buffer_pos + offset], last_char);
    *last_char_pos = last_char;

    buffer_pos += status->tokener->char_offset;
    status->expecting_comma = 1;

    if (buffer_pos < status->buffer_index) {
     continue;
    }
    buffer_pos = status->buffer_index = 0;
   } else if (err == json_tokener_continue) {
    json_tokener_reset(status->tokener);
    if (status->buffer_index < status->buffer_size) {

     status->buffer_index -= buffer_pos;
     memmove(status->buffer, &status->buffer[buffer_pos],
       status->buffer_index);
     buffer_pos = 0;
    } else {

     status->buffer_size *= 2;
     char *new_buffer = realloc(status->buffer, status->buffer_size);
     if (new_buffer) {
      status->buffer = new_buffer;
     } else {
      free(status->buffer);
      status_error(status, "[failed to allocate buffer]");
      return 1;
     }
    }
   } else {
    char last_char = status->buffer[status->buffer_index - 1];
    status->buffer[status->buffer_index - 1] = '\0';
    sway_log(SWAY_DEBUG, "Failed to parse i3bar json - %s: '%s%c'",
      json_tokener_error_desc(err), &status->buffer[buffer_pos], last_char);
    status_error(status, "[failed to parse i3bar json]");
    return 1;
   }
  }

  errno = 0;
  ssize_t read_bytes = read(status->read_fd, &status->buffer[status->buffer_index],
    status->buffer_size - status->buffer_index);
  if (read_bytes > -1) {
   status->buffer_index += read_bytes;
  } else if (errno == EAGAIN) {
   break;
  } else {
   status_error(status, "[error reading from status command]");
   return 1;
  }
 }

 if (last_object) {
  sway_log(SWAY_DEBUG, "Rendering last received json");
  i3bar_parse_json(status, last_object);
  json_object_put(last_object);
  return 1;
 } else {
  return 0;
 }
}
