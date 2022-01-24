#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  file; } ;
typedef  TYPE_1__ getline_ctx ;
typedef  int /*<<< orphan*/  adns_state ;

/* Variables and functions */
 scalar_t__ ENOENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,char*,char const*,int /*<<< orphan*/ ) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char const*,char*) ; 
 int /*<<< orphan*/  gl_file ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,TYPE_1__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 

__attribute__((used)) static void FUNC7(adns_state ads, const char *filename, int warnmissing) {
  getline_ctx gl_ctx;

  gl_ctx.file= FUNC3(filename,"r");
  if (!gl_ctx.file) {
    if (errno == ENOENT) {
      if (warnmissing)
	FUNC0(ads,-1,0,"configuration file `%s' does not exist",filename);
      return;
    }
    FUNC5(ads,errno);
    FUNC1(ads,-1,0,"cannot open configuration file `%s': %s",
	       filename,FUNC6(errno));
    return;
  }

  FUNC4(ads,filename,gl_file,gl_ctx);

  FUNC2(gl_ctx.file);
}