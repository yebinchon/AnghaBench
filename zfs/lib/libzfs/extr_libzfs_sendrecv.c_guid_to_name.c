
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int libzfs_handle_t ;
typedef int boolean_t ;


 int guid_to_name_redact_snaps (int *,char const*,int ,int ,int *,int,char*) ;

__attribute__((used)) static int
guid_to_name(libzfs_handle_t *hdl, const char *parent, uint64_t guid,
    boolean_t bookmark_ok, char *name)
{
 return (guid_to_name_redact_snaps(hdl, parent, guid, bookmark_ok, ((void*)0),
     -1, name));
}
