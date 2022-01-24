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
typedef  int off_t ;

/* Variables and functions */
 int O_RDONLY ; 
 int /*<<< orphan*/  SEEK_END ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int _O_BINARY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (char*,int) ; 
 long FUNC3 (int,void*,int) ; 
 void* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (void*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,...) ; 
 int FUNC7 (char*,int,void*,int) ; 

int FUNC8(char* filename)
{
	int file;
	void* p;
	off_t len;
	int iRetVal=0;

    //printf("LOADER: enter process_file()\n");
    file = FUNC2(filename,O_RDONLY|_O_BINARY);
    if(file>0)
    {
        //printf("LOADER: opened %s as FD %x\n",filename,file);

        len = FUNC1(file,0,SEEK_END);
        FUNC6("LOADER: file %s is %u bytes\n",filename,(int)len);

        FUNC1(file,0,SEEK_SET);

        p = FUNC4(len+16);
        if(p)
        {
			long count;
            //printf("LOADER: malloc'd @ %x\n",p);
            FUNC5(p,0,len+16);
            if(len == (count = FUNC3(file,p,len)))
            {
                //printf("LOADER: trying ELF format\n");
                iRetVal = FUNC7(filename,file,p,len);
            }
        }
        FUNC0(file);
    }
    else
    {
        FUNC6("LOADER: file %s could not be opened\n",filename);
		iRetVal = 1;
    }

    //printf("LOADER: leave process_file()\n");
    return iRetVal;
}