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
typedef  char const sd_bus_message ;
typedef  int /*<<< orphan*/  sd_bus_error ;
typedef  char const sd_bus ;
typedef  char const ExecContext ;

/* Variables and functions */
 int STDERR_FILENO ; 
 int STDIN_FILENO ; 
 int STDOUT_FILENO ; 
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (char const*,int) ; 
 int FUNC2 (char const*,char*,int /*<<< orphan*/ ) ; 
 char const* FUNC3 (char const*,char*) ; 

__attribute__((used)) static int FUNC4(
                sd_bus *bus,
                const char *path,
                const char *interface,
                const char *property,
                sd_bus_message *reply,
                void *userdata,
                sd_bus_error *error) {

        ExecContext *c = userdata;
        int fileno;

        FUNC0(bus);
        FUNC0(c);
        FUNC0(property);
        FUNC0(reply);

        if (FUNC3(property, "StandardInputFileDescriptorName"))
                fileno = STDIN_FILENO;
        else if (FUNC3(property, "StandardOutputFileDescriptorName"))
                fileno = STDOUT_FILENO;
        else {
                FUNC0(FUNC3(property, "StandardErrorFileDescriptorName"));
                fileno = STDERR_FILENO;
        }

        return FUNC2(reply, "s", FUNC1(c, fileno));
}