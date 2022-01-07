
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int off_t ;


 int O_RDONLY ;
 int SEEK_END ;
 int SEEK_SET ;
 int _O_BINARY ;
 int _close (int) ;
 int _lseek (int,int ,int ) ;
 int _open (char*,int) ;
 long _read (int,void*,int) ;
 void* malloc (int) ;
 int memset (void*,int ,int) ;
 int printf (char*,char*,...) ;
 int process_pe (char*,int,void*,int) ;

int process_file(char* filename)
{
 int file;
 void* p;
 off_t len;
 int iRetVal=0;


    file = _open(filename,O_RDONLY|_O_BINARY);
    if(file>0)
    {


        len = _lseek(file,0,SEEK_END);
        printf("LOADER: file %s is %u bytes\n",filename,(int)len);

        _lseek(file,0,SEEK_SET);

        p = malloc(len+16);
        if(p)
        {
   long count;

            memset(p,0,len+16);
            if(len == (count = _read(file,p,len)))
            {

                iRetVal = process_pe(filename,file,p,len);
            }
        }
        _close(file);
    }
    else
    {
        printf("LOADER: file %s could not be opened\n",filename);
  iRetVal = 1;
    }


    return iRetVal;
}
