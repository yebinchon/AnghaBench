
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum status_code { ____Placeholder_status_code } status_code ;


 int add_to_refs (char*,size_t,char*,size_t,void*) ;

__attribute__((used)) static enum status_code
read_ref(char *id, size_t idlen, char *name, size_t namelen, void *data)
{
 return add_to_refs(id, idlen, name, namelen, data);
}
