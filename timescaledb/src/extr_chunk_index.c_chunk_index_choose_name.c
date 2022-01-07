
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;
typedef int Oid ;


 int OidIsValid (int ) ;
 int get_relname_relid (char*,int ) ;
 char* makeObjectName (char const*,char const*,char*) ;
 int pfree (char*) ;
 int snprintf (char*,int,char*,int) ;

__attribute__((used)) static char *
chunk_index_choose_name(const char *tabname, const char *main_index_name, Oid namespaceid)
{
 char buf[10];
 char *label = ((void*)0);
 char *idxname;
 int n = 0;

 for (;;)
 {

  idxname = makeObjectName(tabname, main_index_name, label);

  if (!OidIsValid(get_relname_relid(idxname, namespaceid)))
   break;


  pfree(idxname);
  snprintf(buf, sizeof(buf), "%d", ++n);
  label = buf;
 }

 return idxname;
}
