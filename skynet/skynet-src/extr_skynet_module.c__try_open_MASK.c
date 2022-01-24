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
struct modules {char* path; } ;

/* Variables and functions */
 int RTLD_GLOBAL ; 
 int RTLD_NOW ; 
 char* FUNC0 () ; 
 void* FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC6 (char const*,char) ; 
 size_t FUNC7 (char const*) ; 
 int /*<<< orphan*/  FUNC8 (char*,char const*,int) ; 

__attribute__((used)) static void *
FUNC9(struct modules *m, const char * name) {
	const char *l;
	const char * path = m->path;
	size_t path_size = FUNC7(path);
	size_t name_size = FUNC7(name);

	int sz = path_size + name_size;
	//search path
	void * dl = NULL;
	char tmp[sz];
	do
	{
		FUNC5(tmp,0,sz);
		while (*path == ';') path++;
		if (*path == '\0') break;
		l = FUNC6(path, ';');
		if (l == NULL) l = path + FUNC7(path);
		int len = l - path;
		int i;
		for (i=0;path[i]!='?' && i < len ;i++) {
			tmp[i] = path[i];
		}
		FUNC4(tmp+i,name,name_size);
		if (path[i] == '?') {
			FUNC8(tmp+i+name_size,path+i+1,len - i - 1);
		} else {
			FUNC3(stderr,"Invalid C service path\n");
			FUNC2(1);
		}
		dl = FUNC1(tmp, RTLD_NOW | RTLD_GLOBAL);
		path = l;
	}while(dl == NULL);

	if (dl == NULL) {
		FUNC3(stderr, "try open %s failed : %s\n",name,FUNC0());
	}

	return dl;
}