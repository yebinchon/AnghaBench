#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct status_line {int started; size_t buffer_index; char* buffer; size_t buffer_size; int expecting_comma; int /*<<< orphan*/  read_fd; TYPE_1__* tokener; } ;
struct json_object {int dummy; } ;
typedef  int ssize_t ;
typedef  enum json_tokener_error { ____Placeholder_json_tokener_error } json_tokener_error ;
struct TYPE_4__ {size_t char_offset; } ;

/* Variables and functions */
 scalar_t__ EAGAIN ; 
 int /*<<< orphan*/  SWAY_DEBUG ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct status_line*,struct json_object*) ; 
 scalar_t__ FUNC2 (char) ; 
 scalar_t__ FUNC3 (struct json_object*) ; 
 int /*<<< orphan*/  FUNC4 (struct json_object*) ; 
 int json_tokener_continue ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int FUNC6 (TYPE_1__*) ; 
 struct json_object* FUNC7 (TYPE_1__*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int json_tokener_success ; 
 scalar_t__ json_type_array ; 
 int /*<<< orphan*/  FUNC9 (char*,char*,size_t) ; 
 int FUNC10 (int /*<<< orphan*/ ,char*,size_t) ; 
 char* FUNC11 (char*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct status_line*,char*) ; 
 size_t FUNC13 (char*,char*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char*,...) ; 

bool FUNC15(struct status_line *status) {
	while (!status->started) { // look for opening bracket
		for (size_t c = 0; c < status->buffer_index; ++c) {
			if (status->buffer[c] == '[') {
				status->started = true;
				status->buffer_index -= ++c;
				FUNC9(status->buffer, &status->buffer[c], status->buffer_index);
				break;
			} else if (!FUNC2(status->buffer[c])) {
				FUNC14(SWAY_DEBUG, "Invalid i3bar json: expected '[' but encountered '%c'",
						status->buffer[c]);
				FUNC12(status, "[invalid i3bar json]");
				return true;
			}
		}
		if (status->started) {
			break;
		}

		errno = 0;
		ssize_t read_bytes = FUNC10(status->read_fd, status->buffer, status->buffer_size);
		if (read_bytes > -1) {
			status->buffer_index = read_bytes;
		} else if (errno == EAGAIN) {
			return false;
		} else {
			FUNC12(status, "[error reading from status command]");
			return true;
		}
	}

	struct json_object *last_object = NULL;
	struct json_object *test_object;
	size_t buffer_pos = 0;
	while (true) {
		// since the incoming stream is an infinite array
		// parsing is split into two parts
		// first, attempt to parse the current object, reading more if the
		// parser indicates that the current object is incomplete, and failing
		// if the parser fails
		// second, look for separating comma, ignoring whitespace, failing if
		// any other characters are encountered
		if (status->expecting_comma) {
			for (; buffer_pos < status->buffer_index; ++buffer_pos) {
				if (status->buffer[buffer_pos] == ',') {
					status->expecting_comma = false;
					++buffer_pos;
					break;
				} else if (!FUNC2(status->buffer[buffer_pos])) {
					FUNC14(SWAY_DEBUG, "Invalid i3bar json: expected ',' but encountered '%c'",
							status->buffer[buffer_pos]);
					FUNC12(status, "[invalid i3bar json]");
					return true;
				}
			}
			if (buffer_pos < status->buffer_index) {
				continue; // look for new object without reading more input
			}
			buffer_pos = status->buffer_index = 0;
		} else {
			test_object = FUNC7(status->tokener,
					&status->buffer[buffer_pos], status->buffer_index - buffer_pos);
			enum json_tokener_error err = FUNC6(status->tokener);
			if (err == json_tokener_success) {
				if (FUNC3(test_object) == json_type_array) {
					if (last_object) {
						FUNC4(last_object);
					}
					last_object = test_object;
				} else {
					FUNC4(test_object);
				}

				// in order to print the json for debugging purposes
				// the last character is temporarily replaced with a null character
				// (the last character is used in case the buffer is full)
				char *last_char_pos =
					&status->buffer[buffer_pos + status->tokener->char_offset - 1];
				char last_char = *last_char_pos;
				while (FUNC2(last_char)) {
					last_char = *--last_char_pos;
				}
				*last_char_pos = '\0';
				size_t offset = FUNC13(&status->buffer[buffer_pos], " \f\n\r\t\v");
				FUNC14(SWAY_DEBUG, "Received i3bar json: '%s%c'",
						&status->buffer[buffer_pos + offset], last_char);
				*last_char_pos = last_char;

				buffer_pos += status->tokener->char_offset;
				status->expecting_comma = true;

				if (buffer_pos < status->buffer_index) {
					continue; // look for comma without reading more input
				}
				buffer_pos = status->buffer_index = 0;
			} else if (err == json_tokener_continue) {
				FUNC8(status->tokener);
				if (status->buffer_index < status->buffer_size) {
					// move the object to the start of the buffer
					status->buffer_index -= buffer_pos;
					FUNC9(status->buffer, &status->buffer[buffer_pos],
							status->buffer_index);
					buffer_pos = 0;
				} else {
					// expand buffer
					status->buffer_size *= 2;
					char *new_buffer = FUNC11(status->buffer, status->buffer_size);
					if (new_buffer) {
						status->buffer = new_buffer;
					} else {
						FUNC0(status->buffer);
						FUNC12(status, "[failed to allocate buffer]");
						return true;
					}
				}
			} else {
				char last_char = status->buffer[status->buffer_index - 1];
				status->buffer[status->buffer_index - 1] = '\0';
				FUNC14(SWAY_DEBUG, "Failed to parse i3bar json - %s: '%s%c'",
						FUNC5(err), &status->buffer[buffer_pos], last_char);
				FUNC12(status, "[failed to parse i3bar json]");
				return true;
			}
		}

		errno = 0;
		ssize_t read_bytes = FUNC10(status->read_fd, &status->buffer[status->buffer_index],
				status->buffer_size - status->buffer_index);
		if (read_bytes > -1) {
			status->buffer_index += read_bytes;
		} else if (errno == EAGAIN) {
			break;
		} else {
			FUNC12(status, "[error reading from status command]");
			return true;
		}
	}

	if (last_object) {
		FUNC14(SWAY_DEBUG, "Rendering last received json");
		FUNC1(status, last_object);
		FUNC4(last_object);
		return true;
	} else {
		return false;
	}
}