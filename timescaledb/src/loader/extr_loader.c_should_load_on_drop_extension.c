
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Node ;
typedef int DropStmt ;


 int drop_statement_drops_extension (int *) ;

__attribute__((used)) static bool
should_load_on_drop_extension(Node *utility_stmt)
{
 return !drop_statement_drops_extension((DropStmt *) utility_stmt);
}
