#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  time_t ;
typedef  int /*<<< orphan*/  longest_int ;
struct TYPE_10__ {int /*<<< orphan*/  magic; } ;
struct TYPE_9__ {int /*<<< orphan*/  fsize; int /*<<< orphan*/  ftime; } ;
typedef  TYPE_1__ MLstItem ;
typedef  TYPE_2__* FTPCIPtr ;

/* Variables and functions */
 int FUNC0 (TYPE_2__* const,char const* const,int /*<<< orphan*/ * const) ; 
 int FUNC1 (TYPE_2__* const,char const* const,int /*<<< orphan*/ * const,int const) ; 
 int FUNC2 (TYPE_2__* const,char const* const,TYPE_1__*) ; 
 int FUNC3 (TYPE_2__* const,int const) ; 
 int kErrBadMagic ; 
 int kErrBadParameter ; 
 int /*<<< orphan*/  kLibraryMagic ; 
 int /*<<< orphan*/  kModTimeUnknown ; 
 int /*<<< orphan*/  kSizeUnknown ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC5(const FTPCIPtr cip, const char *const file, longest_int *const size, const int type, time_t *const mdtm)
{
	MLstItem mlsInfo;
	int result;

	if (cip == NULL)
		return (kErrBadParameter);
	if (FUNC4(cip->magic, kLibraryMagic))
		return (kErrBadMagic);

	if ((mdtm == NULL) || (size == NULL) || (file == NULL))
		return (kErrBadParameter);

	*mdtm = kModTimeUnknown;
	*size = kSizeUnknown;

	result = FUNC3(cip, type);
	if (result < 0)
		return (result);

	result = FUNC2(cip, file, &mlsInfo);
	if (result < 0) {
		/* Do it the regular way, where
		 * we do a SIZE and then a MDTM.
		 */
		result = FUNC1(cip, file, size, type);
		if (result < 0)
			return (result);
		result = FUNC0(cip, file, mdtm);
		return (result);
	} else {
		*mdtm = mlsInfo.ftime;
		*size = mlsInfo.fsize;
	}

	return (result);
}