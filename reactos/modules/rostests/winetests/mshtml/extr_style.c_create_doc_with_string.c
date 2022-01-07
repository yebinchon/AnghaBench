
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SIZE_T ;
typedef int IStream ;
typedef int IPersistStreamInit ;
typedef int IHTMLDocument2 ;
typedef int HGLOBAL ;


 int CreateStreamOnHGlobal (int ,int ,int **) ;
 int FALSE ;
 int GlobalAlloc (int ,int ) ;
 int IHTMLDocument2_QueryInterface (int *,int *,void**) ;
 int IID_IPersistStreamInit ;
 int IPersistStreamInit_Load (int *,int *) ;
 int IPersistStreamInit_Release (int *) ;
 int IStream_Release (int *) ;
 int TRUE ;
 int * create_document () ;
 int doc_complete ;
 int memcpy (int ,char const*,int ) ;
 int * notif_doc ;
 int strlen (char const*) ;

__attribute__((used)) static IHTMLDocument2 *create_doc_with_string(const char *str)
{
    IPersistStreamInit *init;
    IStream *stream;
    IHTMLDocument2 *doc;
    HGLOBAL mem;
    SIZE_T len;

    notif_doc = doc = create_document();
    if(!doc)
        return ((void*)0);

    doc_complete = FALSE;
    len = strlen(str);
    mem = GlobalAlloc(0, len);
    memcpy(mem, str, len);
    CreateStreamOnHGlobal(mem, TRUE, &stream);

    IHTMLDocument2_QueryInterface(doc, &IID_IPersistStreamInit, (void**)&init);

    IPersistStreamInit_Load(init, stream);
    IPersistStreamInit_Release(init);
    IStream_Release(stream);

    return doc;
}
