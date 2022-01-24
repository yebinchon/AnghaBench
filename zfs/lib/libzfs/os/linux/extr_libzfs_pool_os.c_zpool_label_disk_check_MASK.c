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
struct dk_gpt {int efi_flags; } ;

/* Variables and functions */
 int EFI_GPT_PRIMARY_CORRUPT ; 
 int EIDRM ; 
 int O_DIRECT ; 
 int O_RDONLY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int,struct dk_gpt**) ; 
 int /*<<< orphan*/  FUNC2 (struct dk_gpt*) ; 
 int errno ; 
 int FUNC3 (char*,int) ; 

__attribute__((used)) static int
FUNC4(char *path)
{
	struct dk_gpt *vtoc;
	int fd, err;

	if ((fd = FUNC3(path, O_RDONLY|O_DIRECT)) < 0)
		return (errno);

	if ((err = FUNC1(fd, &vtoc)) != 0) {
		(void) FUNC0(fd);
		return (err);
	}

	if (vtoc->efi_flags & EFI_GPT_PRIMARY_CORRUPT) {
		FUNC2(vtoc);
		(void) FUNC0(fd);
		return (EIDRM);
	}

	FUNC2(vtoc);
	(void) FUNC0(fd);
	return (0);
}