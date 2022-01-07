
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int extname; scalar_t__ if_not_exists; } ;
typedef int Node ;
typedef TYPE_1__ CreateExtensionStmt ;


 int ERRCODE_DUPLICATE_OBJECT ;
 int ERROR ;
 int EXTENSION_NAME ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errdetail (char*,int ) ;
 int errhint (char*) ;
 int errmsg (char*,int ) ;
 scalar_t__ extension_exists () ;
 int loaded ;
 int soversion ;
 scalar_t__ strcmp (int ,int ) ;

__attribute__((used)) static bool
should_load_on_create_extension(Node *utility_stmt)
{
 CreateExtensionStmt *stmt = (CreateExtensionStmt *) utility_stmt;
 bool is_extension = strcmp(stmt->extname, EXTENSION_NAME) == 0;

 if (!is_extension)
  return 0;

 if (!loaded)
  return 1;
 if (extension_exists() && stmt->if_not_exists)
  return 0;


 ereport(ERROR,
   (errcode(ERRCODE_DUPLICATE_OBJECT),
    errmsg("extension \"%s\" has already been loaded with another version", stmt->extname),
    errdetail("The loaded version is \"%s\".", soversion),
    errhint("Start a new session and execute CREATE EXTENSION as the first command. "
      "Make sure to pass the \"-X\" flag to psql.")));
 return 0;
}
