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
struct TYPE_3__ {char* cFileName; } ;
typedef  TYPE_1__ WIN32_FIND_DATA ;
typedef  scalar_t__ HANDLE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (char*,TYPE_1__*) ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 scalar_t__ FUNC2 (char) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,int) ; 
 scalar_t__ FUNC7 (char) ; 

void FUNC8(char *src, char *dst)
{
	HANDLE hFind;
	WIN32_FIND_DATA find;
	char *p;

	p = dst;

	if (*src == '\"') {
		src++;
	}

	if (*(src + FUNC4(src) - 1) == '\"') {
		*(src + FUNC4(src) - 1) = '\0';
	}

	//
	//	handle drive / remote server name
	//
	if (FUNC2(*src) && *(src + 1) == ':') {

		//	drive name

		*(p++) = (char)FUNC7(*src);
		FUNC3(p++, ":\\");

		src += 2;
	}
	else if (*src == '\\' || *src == '/') {

		//	absolute path or remote name

		if ((*(src + 1) == '\\' || *(src + 1) == '/') &&
			*(src + 2) && *(src + 2) != '\\' && *(src + 2) != '/') {

			//	remote path

			*(p++) = '\\';
			*(p++) = '\\';
			src += 2;

			while (*src && *src != '\\' && *src != '/') {
				*(p++) = *(src++);
			}
		}

		FUNC3(p, "\\");
	}
	else {
		*p = '\0';
	}

	//	skip redundant '\'

	while (*src == '\\' || *src == '/') {
		src++;
	}

	//	process the path

	while (*src) {

		char *q = src;

		//	separate the next part

		while (*q && *q != '\\' && *q != '/') {
			q++;
		}

		if ((q - src) == 2 && !FUNC5(src, "..", 2)) {
			//	parent dir - copy as it is
			if (p != dst) {
				*p++ = '\\';
			}

			FUNC3(p, "..");
			p += 2;
		}
		else if ((q - src) > 1 || *src != '.') {
			//	path name other than "."
			if (p != dst) {
				*(p++) = '\\';
			}

			FUNC6(p, src, (q - src));
			*(p + (q - src)) = '\0';

			hFind = FUNC1(dst, &find);

			if (hFind == INVALID_HANDLE_VALUE) {
				FUNC3(p, src);
				break;
			}

			FUNC0(hFind);

			FUNC3(p, find.cFileName);
			p += FUNC4(p);
		}

		//	skip trailing '\'s

		while (*q == '\\' || *q == '/') {
			q++;
		}

		src = q;
	}
}