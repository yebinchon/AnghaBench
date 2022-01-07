
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct message {scalar_t__ procnum; scalar_t__ wParam; int member_1; int member_0; } ;


 int add_message (struct message const*) ;
 int flush_sequence () ;
 int ok (int,char*,...) ;
 struct message* sequence ;

__attribute__((used)) static void ok_sequence(const struct message *expected, const char *context)
{
    static const struct message end_of_sequence = { 0, 0 };
    const struct message *actual;

    add_message(&end_of_sequence);

    actual = sequence;

    while(expected->procnum && actual->procnum)
    {
        ok(expected->procnum == actual->procnum,
            "%s: the procnum %d was expected, but got procnum %d instead\n",
            context, expected->procnum, actual->procnum);
        ok(expected->wParam == actual->wParam,
            "%s: in procnum %d expecting wParam 0x%lx got 0x%lx\n",
            context, expected->procnum, expected->wParam, actual->wParam);
        expected++;
        actual++;
    }
    ok(!expected->procnum, "Received fewer messages than expected\n");
    ok(!actual->procnum, "Received more messages than expected\n");
    flush_sequence();
}
