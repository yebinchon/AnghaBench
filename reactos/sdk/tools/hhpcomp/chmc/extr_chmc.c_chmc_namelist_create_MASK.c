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
struct chmcSection {int* name; } ;
struct chmcFile {int sections_num; struct chmcSection** sections; } ;
typedef  int UInt16 ;
typedef  int /*<<< orphan*/  UChar ;

/* Variables and functions */
 int CHMC_ENOMEM ; 
 int CHMC_NOERR ; 
 int /*<<< orphan*/  FUNC0 (struct chmcFile*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int* FUNC1 (int) ; 
 int FUNC2 (int*) ; 

int FUNC3(struct chmcFile *chm, int len)
{
	UInt16 *namelist;

	namelist = FUNC1(len);
	if (namelist) {
		struct chmcSection *section;
		int i, j, k, name_len;

		k = 0;
		namelist[k++] = len >> 1;
		namelist[k++] = chm->sections_num;
		for( i=0; i < chm->sections_num; i++ ) {
			section = chm->sections[i];

			name_len = FUNC2(section->name);
			namelist[k++] = name_len;
			for( j=0; j < name_len; j++ )
				namelist[k++] = section->name[j];
			namelist[k++] = 0;
		}
		FUNC0(chm, "::DataSpace/NameList", 0, (UChar *)namelist, len);
	}
	else
		return CHMC_ENOMEM;

	return CHMC_NOERR;
}