
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_10__ {scalar_t__ newOtTag; } ;
struct TYPE_9__ {scalar_t__ scriptTag; } ;
struct TYPE_8__ {size_t eScript; } ;
struct TYPE_7__ {scalar_t__ userScript; } ;
typedef TYPE_1__ ScriptCache ;
typedef TYPE_2__ SCRIPT_ANALYSIS ;
typedef scalar_t__ OPENTYPE_TAG ;
typedef int HDC ;
typedef scalar_t__ BOOL ;
 int GetTextCharsetInfo (int ,int *,int) ;



 scalar_t__ MS_MAKE_TAG (char,char,char,char) ;


 TYPE_6__* ShapingData ;



 TYPE_3__* scriptInformation ;

__attribute__((used)) static OPENTYPE_TAG get_opentype_script(HDC hdc, const SCRIPT_ANALYSIS *psa,
        const ScriptCache *script_cache, BOOL try_new)
{
    UINT charset;

    if (script_cache->userScript)
    {
        if (try_new && ShapingData[psa->eScript].newOtTag
                && script_cache->userScript == scriptInformation[psa->eScript].scriptTag)
            return ShapingData[psa->eScript].newOtTag;

        return script_cache->userScript;
    }

    if (try_new && ShapingData[psa->eScript].newOtTag)
        return ShapingData[psa->eScript].newOtTag;

    if (scriptInformation[psa->eScript].scriptTag)
        return scriptInformation[psa->eScript].scriptTag;




    charset = GetTextCharsetInfo(hdc, ((void*)0), 0x0);
    switch (charset)
    {
        case 142:
        case 140: return MS_MAKE_TAG('l','a','t','n');
        case 139: return MS_MAKE_TAG('h','a','n','i');
        case 138: return MS_MAKE_TAG('l','a','t','n');
        case 137: return MS_MAKE_TAG('h','a','n','i');
        case 136: return MS_MAKE_TAG('g','r','e','k');
        case 135: return MS_MAKE_TAG('h','a','n','g');
        case 132: return MS_MAKE_TAG('c','y','r','l');
        case 131: return MS_MAKE_TAG('k','a','n','a');
        case 129: return MS_MAKE_TAG('l','a','t','n');
        case 128: return MS_MAKE_TAG('l','a','t','n');
        case 133: return MS_MAKE_TAG('l','a','t','n');
        case 141: return MS_MAKE_TAG('a','r','a','b');
        case 134: return MS_MAKE_TAG('h','e','b','r');
        case 130: return MS_MAKE_TAG('t','h','a','i');
        default: return MS_MAKE_TAG('l','a','t','n');
    }
}
