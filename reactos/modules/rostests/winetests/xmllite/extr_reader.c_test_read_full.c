
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nodes_test {TYPE_1__* nodes; int xml; } ;
struct TYPE_2__ {scalar_t__ type; int value; } ;
typedef int IXmlReader ;
typedef scalar_t__ HRESULT ;


 scalar_t__ CreateXmlReader (int *,void**,int *) ;
 int IID_IXmlReader ;
 int IXmlReader_Release (int *) ;
 scalar_t__ S_OK ;
 scalar_t__ XmlNodeType_None ;
 struct nodes_test misc_test ;
 int ok (int,char*,scalar_t__) ;
 int read_node (int *,scalar_t__) ;
 int reader_value (int *,int ) ;
 int set_input_string (int *,int ) ;

__attribute__((used)) static void test_read_full(void)
{
    struct nodes_test *test = &misc_test;
    IXmlReader *reader;
    HRESULT hr;
    int i;

    hr = CreateXmlReader(&IID_IXmlReader, (void**)&reader, ((void*)0));
    ok(hr == S_OK, "S_OK, got %08x\n", hr);

    set_input_string(reader, test->xml);

    i = 0;
    do
    {
        read_node(reader, test->nodes[i].type);
        reader_value(reader, test->nodes[i].value);
    } while(test->nodes[i++].type != XmlNodeType_None);

    IXmlReader_Release(reader);
}
