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
typedef  char WCHAR ;

/* Variables and functions */
 void* FUNC0 (char const*) ; 
 void* cf_embed_source ; 
 void* cf_embedded_object ; 
 void* cf_filename ; 
 void* cf_filenamew ; 
 void* cf_link_source ; 
 void* cf_link_src_descriptor ; 
 void* cf_object_descriptor ; 
 void* cf_ownerlink ; 

__attribute__((used)) static void FUNC1(void)
{
    /* These used to be declared in olestd.h, but that seems to have been removed from the api */
    static const WCHAR CF_EMBEDSOURCEW[]          = { 'E','m','b','e','d',' ','S','o','u','r','c','e',0 };
    static const WCHAR CF_EMBEDDEDOBJECTW[]       = { 'E','m','b','e','d','d','e','d',' ','O','b','j','e','c','t',0 };
    static const WCHAR CF_LINKSOURCEW[]           = { 'L','i','n','k',' ','S','o','u','r','c','e',0 };
    static const WCHAR CF_OBJECTDESCRIPTORW[]     = { 'O','b','j','e','c','t',' ','D','e','s','c','r','i','p','t','o','r',0 };
    static const WCHAR CF_LINKSRCDESCRIPTORW[]    = { 'L','i','n','k',' ','S','o','u','r','c','e',' ','D','e','s','c','r','i','p','t','o','r',0 };
    static const WCHAR CF_OWNERLINKW[]            = { 'O','w','n','e','r','L','i','n','k',0 };
    static const WCHAR CF_FILENAMEW[]             = { 'F','i','l','e','N','a','m','e',0 };
    static const WCHAR CF_FILENAMEWW[]            = { 'F','i','l','e','N','a','m','e','W',0 };

    /* Load in the same order as native to make debugging easier */
    cf_object_descriptor    = FUNC0(CF_OBJECTDESCRIPTORW);
    cf_link_src_descriptor  = FUNC0(CF_LINKSRCDESCRIPTORW);
    cf_embed_source         = FUNC0(CF_EMBEDSOURCEW);
    cf_embedded_object      = FUNC0(CF_EMBEDDEDOBJECTW);
    cf_link_source          = FUNC0(CF_LINKSOURCEW);
    cf_ownerlink            = FUNC0(CF_OWNERLINKW);
    cf_filename             = FUNC0(CF_FILENAMEW);
    cf_filenamew            = FUNC0(CF_FILENAMEWW);
}