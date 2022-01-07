
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* jpeg_saved_marker_ptr ;
typedef int cmsBool ;
struct TYPE_3__ {scalar_t__ marker; int data_length; struct TYPE_3__* next; scalar_t__ data; } ;


 int FALSE ;
 scalar_t__ JPEG_APP0 ;
 int TRUE ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static
cmsBool IsITUFax(jpeg_saved_marker_ptr ptr)
{
    while (ptr)
    {
        if (ptr -> marker == (JPEG_APP0 + 1) && ptr -> data_length > 5) {

            const char* data = (const char*) ptr -> data;

            if (strcmp(data, "G3FAX") == 0) return TRUE;
        }

        ptr = ptr -> next;
    }

    return FALSE;
}
