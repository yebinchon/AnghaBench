
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int output; scalar_t__ omitxmldecl; int state; } ;
typedef TYPE_1__ xmlwriter ;
typedef scalar_t__ XmlStandalone ;
typedef char WCHAR ;
typedef int HRESULT ;


 int ARRAY_SIZE (char const*) ;
 int S_OK ;
 scalar_t__ XmlStandalone_Omit ;
 scalar_t__ XmlStandalone_Yes ;
 int XmlWriterState_DocStarted ;
 char const* closepiW ;
 int get_output_encoding_name (int ) ;
 int write_encoding_bom (TYPE_1__*) ;
 int write_output_buffer (int ,char const*,int ) ;
 int write_output_buffer_quoted (int ,int ,int) ;

__attribute__((used)) static HRESULT write_xmldecl(xmlwriter *writer, XmlStandalone standalone)
{
    static const WCHAR versionW[] = {'<','?','x','m','l',' ','v','e','r','s','i','o','n','=','"','1','.','0','"'};
    static const WCHAR encodingW[] = {' ','e','n','c','o','d','i','n','g','='};

    write_encoding_bom(writer);
    writer->state = XmlWriterState_DocStarted;
    if (writer->omitxmldecl) return S_OK;


    write_output_buffer(writer->output, versionW, ARRAY_SIZE(versionW));


    write_output_buffer(writer->output, encodingW, ARRAY_SIZE(encodingW));
    write_output_buffer_quoted(writer->output, get_output_encoding_name(writer->output), -1);


    if (standalone == XmlStandalone_Omit)
        write_output_buffer(writer->output, closepiW, ARRAY_SIZE(closepiW));
    else {
        static const WCHAR standaloneW[] = {' ','s','t','a','n','d','a','l','o','n','e','=','\"'};
        static const WCHAR yesW[] = {'y','e','s','\"','?','>'};
        static const WCHAR noW[] = {'n','o','\"','?','>'};

        write_output_buffer(writer->output, standaloneW, ARRAY_SIZE(standaloneW));
        if (standalone == XmlStandalone_Yes)
            write_output_buffer(writer->output, yesW, ARRAY_SIZE(yesW));
        else
            write_output_buffer(writer->output, noW, ARRAY_SIZE(noW));
    }

    return S_OK;
}
