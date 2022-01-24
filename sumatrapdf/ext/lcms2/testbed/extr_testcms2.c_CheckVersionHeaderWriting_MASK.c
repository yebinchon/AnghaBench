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
typedef  int /*<<< orphan*/  test_versions ;
typedef  int cmsInt32Number ;
typedef  int /*<<< orphan*/ * cmsHPROFILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*,float,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,float) ; 
 double FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 

__attribute__((used)) static
cmsInt32Number FUNC10(void)
{
    cmsHPROFILE h;
    int index;
    float test_versions[] = {
      2.3f,
      4.08f,
      4.09f,
      4.3f
    };

    for (index = 0; index < sizeof(test_versions)/sizeof(test_versions[0]); index++) {

      h = FUNC3(FUNC0());
      if (h == NULL) return 0;

      FUNC7(FUNC0(), h, test_versions[index]);

      FUNC6(FUNC0(), h, "versions.icc");
      FUNC2(FUNC0(), h);

      h = FUNC5(FUNC0(), "versions.icc", "r");

      // Only the first 3 digits are significant
      if (FUNC8(FUNC4(FUNC0(), h) - test_versions[index]) > 0.005) {
        FUNC1("Version failed to round-trip: wrote %.2f, read %.2f",
             test_versions[index], FUNC4(FUNC0(), h));
        return 0;
      }

      FUNC2(FUNC0(), h);
      FUNC9("versions.icc");
    }
    return 1;
}