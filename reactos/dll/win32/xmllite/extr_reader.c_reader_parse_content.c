
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {int resumestate; } ;
typedef TYPE_1__ xmlreader ;
typedef char WCHAR ;
typedef int HRESULT ;


 int ERR (char*,int) ;



 int XmlReadResumeState_Initial ;


 char const* commentW ;
 char const* ltW ;
 char const* piW ;
 int reader_cmp (TYPE_1__*,char const*) ;
 int reader_parse_cdata (TYPE_1__*) ;
 int reader_parse_chardata (TYPE_1__*) ;
 int reader_parse_comment (TYPE_1__*) ;
 int reader_parse_element (TYPE_1__*) ;
 int reader_parse_endtag (TYPE_1__*) ;
 int reader_parse_pi (TYPE_1__*) ;
 int reader_shrink (TYPE_1__*) ;

__attribute__((used)) static HRESULT reader_parse_content(xmlreader *reader)
{
    static const WCHAR cdstartW[] = {'<','!','[','C','D','A','T','A','[',0};
    static const WCHAR etagW[] = {'<','/',0};

    if (reader->resumestate != XmlReadResumeState_Initial)
    {
        switch (reader->resumestate)
        {
        case 132:
            return reader_parse_cdata(reader);
        case 130:
            return reader_parse_comment(reader);
        case 129:
        case 128:
            return reader_parse_pi(reader);
        case 131:
            return reader_parse_chardata(reader);
        default:
            ERR("unknown resume state %d\n", reader->resumestate);
        }
    }

    reader_shrink(reader);


    if (!reader_cmp(reader, etagW))
        return reader_parse_endtag(reader);

    if (!reader_cmp(reader, commentW))
        return reader_parse_comment(reader);

    if (!reader_cmp(reader, piW))
        return reader_parse_pi(reader);

    if (!reader_cmp(reader, cdstartW))
        return reader_parse_cdata(reader);

    if (!reader_cmp(reader, ltW))
        return reader_parse_element(reader);


    return reader_parse_chardata(reader);
}
