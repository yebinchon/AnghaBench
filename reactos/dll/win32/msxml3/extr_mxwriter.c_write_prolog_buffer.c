
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {char const* encoding; scalar_t__* props; int newline; scalar_t__ dest; int version; } ;
typedef TYPE_1__ mxwriter ;
typedef char WCHAR ;


 int ARRAY_SIZE (char const*) ;
 size_t MXWriter_Standalone ;
 int TRUE ;
 scalar_t__ VARIANT_TRUE ;
 char const* crlfW ;
 char const* quotW ;
 char const* utf16W ;
 int write_output_buffer (TYPE_1__*,char const*,int) ;
 int write_output_buffer_quoted (TYPE_1__*,int ,int) ;

__attribute__((used)) static void write_prolog_buffer(mxwriter *writer)
{
    static const WCHAR versionW[] = {'<','?','x','m','l',' ','v','e','r','s','i','o','n','='};
    static const WCHAR encodingW[] = {' ','e','n','c','o','d','i','n','g','=','\"'};
    static const WCHAR standaloneW[] = {' ','s','t','a','n','d','a','l','o','n','e','=','\"'};
    static const WCHAR yesW[] = {'y','e','s','\"','?','>'};
    static const WCHAR noW[] = {'n','o','\"','?','>'};


    write_output_buffer(writer, versionW, ARRAY_SIZE(versionW));
    write_output_buffer_quoted(writer, writer->version, -1);


    write_output_buffer(writer, encodingW, ARRAY_SIZE(encodingW));

    if (writer->dest)
        write_output_buffer(writer, writer->encoding, -1);
    else
        write_output_buffer(writer, utf16W, ARRAY_SIZE(utf16W) - 1);
    write_output_buffer(writer, quotW, 1);


    write_output_buffer(writer, standaloneW, ARRAY_SIZE(standaloneW));
    if (writer->props[MXWriter_Standalone] == VARIANT_TRUE)
        write_output_buffer(writer, yesW, ARRAY_SIZE(yesW));
    else
        write_output_buffer(writer, noW, ARRAY_SIZE(noW));

    write_output_buffer(writer, crlfW, ARRAY_SIZE(crlfW));
    writer->newline = TRUE;
}
