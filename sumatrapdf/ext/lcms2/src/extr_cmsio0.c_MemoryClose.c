
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _cms_io_handler {struct _cms_io_handler* Block; scalar_t__ FreeBlockOnClose; scalar_t__ stream; } ;
typedef int cmsContext ;
typedef int cmsBool ;
typedef struct _cms_io_handler FILEMEM ;


 int TRUE ;
 int _cmsFree (int ,struct _cms_io_handler*) ;

__attribute__((used)) static
cmsBool MemoryClose(cmsContext ContextID, struct _cms_io_handler* iohandler)
{
    FILEMEM* ResData = (FILEMEM*) iohandler ->stream;

    if (ResData ->FreeBlockOnClose) {

        if (ResData ->Block) _cmsFree(ContextID, ResData ->Block);
    }

    _cmsFree(ContextID, ResData);
    _cmsFree(ContextID, iohandler);

    return TRUE;
}
