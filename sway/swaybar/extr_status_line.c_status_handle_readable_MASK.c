#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct status_line {int protocol; size_t buffer_size; char* buffer; int click_events; int stop_signal; int cont_signal; char* text; int /*<<< orphan*/  read; int /*<<< orphan*/  buffer_index; int /*<<< orphan*/  tokener; int /*<<< orphan*/  blocks; int /*<<< orphan*/  write_fd; int /*<<< orphan*/  read_fd; } ;
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  json_object ;

/* Variables and functions */
 int /*<<< orphan*/  EAGAIN ; 
 int /*<<< orphan*/  FIONREAD ; 
#define  PROTOCOL_I3BAR 130 
#define  PROTOCOL_TEXT 129 
#define  PROTOCOL_UNDEF 128 
 int /*<<< orphan*/  SWAY_DEBUG ; 
 int /*<<< orphan*/  SWAY_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 int FUNC1 (char**,int*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct status_line*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/ * FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*,int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ ,char*,int) ; 
 char* FUNC12 (char*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct status_line*,char*) ; 
 char* FUNC14 (char*,char) ; 
 int /*<<< orphan*/  FUNC15 (char*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int FUNC19 (int /*<<< orphan*/ ,char*,int) ; 

bool FUNC20(struct status_line *status) {
	ssize_t read_bytes = 1;
	switch (status->protocol) {
	case PROTOCOL_UNDEF:
		errno = 0;
		int available_bytes;
		if (FUNC3(status->read_fd, FIONREAD, &available_bytes) == -1) {
			FUNC16(SWAY_ERROR, "Unable to read status command output size");
			FUNC13(status, "[error reading from status command]");
			return true;
		}

		if ((size_t)available_bytes + 1 > status->buffer_size) {
			// need room for leading '\0' too
			status->buffer_size = available_bytes + 1;
			status->buffer = FUNC12(status->buffer, status->buffer_size);
		}
		if (status->buffer == NULL) {
			FUNC17(SWAY_ERROR, "Unable to read status line");
			FUNC13(status, "[error reading from status command]");
			return true;
		}

		read_bytes = FUNC11(status->read_fd, status->buffer, available_bytes);
		if (read_bytes != available_bytes) {
			FUNC13(status, "[error reading from status command]");
			return true;
		}
		status->buffer[available_bytes] = 0;

		// the header must be sent completely the first time round
		char *newline = FUNC14(status->buffer, '\n');
		json_object *header, *version;
		if (newline != NULL
				&& (header = FUNC9(status->buffer))
				&& FUNC6(header, "version", &version)
				&& FUNC5(version) == 1) {
			FUNC16(SWAY_DEBUG, "Using i3bar protocol.");
			status->protocol = PROTOCOL_I3BAR;

			json_object *click_events;
			if (FUNC6(header, "click_events", &click_events)
					&& FUNC4(click_events)) {
				FUNC16(SWAY_DEBUG, "Enabling click events.");
				status->click_events = true;
				if (FUNC19(status->write_fd, "[\n", 2) != 2) {
					FUNC13(status, "[failed to write to status command]");
					FUNC7(header);
					return true;
				}
			}

			json_object *signal;
			if (FUNC6(header, "stop_signal", &signal)) {
				status->stop_signal = FUNC5(signal);
				FUNC16(SWAY_DEBUG, "Setting stop signal to %d", status->stop_signal);
			}
			if (FUNC6(header, "cont_signal", &signal)) {
				status->cont_signal = FUNC5(signal);
				FUNC16(SWAY_DEBUG, "Setting cont signal to %d", status->cont_signal);
			}

			FUNC7(header);

			FUNC18(&status->blocks);
			status->tokener = FUNC8();
			status->buffer_index = FUNC15(newline + 1);
			FUNC10(status->buffer, newline + 1, status->buffer_index + 1);
			return FUNC2(status);
		}

		FUNC16(SWAY_DEBUG, "Using text protocol.");
		status->protocol = PROTOCOL_TEXT;
		status->text = status->buffer;
		// intentional fall-through
	case PROTOCOL_TEXT:
		errno = 0;
		while (true) {
			if (status->buffer[read_bytes - 1] == '\n') {
				status->buffer[read_bytes - 1] = '\0';
			}
			read_bytes = FUNC1(&status->buffer,
					&status->buffer_size, status->read);
			if (errno == EAGAIN) {
				FUNC0(status->read);
				return true;
			} else if (errno) {
				FUNC13(status, "[error reading from status command]");
				return true;
			}
		}
	case PROTOCOL_I3BAR:
		return FUNC2(status);
	default:
		return false;
	}
}