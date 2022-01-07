
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int extname; } ;
typedef int Node ;
typedef TYPE_1__ AlterExtensionStmt ;


 int ERRCODE_FEATURE_NOT_SUPPORTED ;
 int ERROR ;
 int EXTENSION_NAME ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errhint (char*) ;
 int errmsg (char*,int ) ;
 scalar_t__ loaded ;
 scalar_t__ strcmp (int ,int ) ;

__attribute__((used)) static bool
should_load_on_alter_extension(Node *utility_stmt)
{
 AlterExtensionStmt *stmt = (AlterExtensionStmt *) utility_stmt;

 if (strcmp(stmt->extname, EXTENSION_NAME) != 0)
  return 1;


 if (loaded)
  ereport(ERROR,
    (errcode(ERRCODE_FEATURE_NOT_SUPPORTED),
     errmsg("extension \"%s\" cannot be updated after the old version has already been "
      "loaded",
      stmt->extname),
     errhint("Start a new session and execute ALTER EXTENSION as the first command. "
       "Make sure to pass the \"-X\" flag to psql.")));

 return 0;
}
