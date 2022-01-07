
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct externalui_message {int dummy; } ;


 int GetProcessHeap () ;
 struct externalui_message* HeapAlloc (int ,int ,int) ;
 struct externalui_message* HeapReAlloc (int ,int ,struct externalui_message*,int) ;
 int assert (struct externalui_message*) ;
 struct externalui_message* sequence ;
 int sequence_count ;
 int sequence_size ;

__attribute__((used)) static void add_message(const struct externalui_message *msg)
{
    if (!sequence)
    {
        sequence_size = 10;
        sequence = HeapAlloc(GetProcessHeap(), 0, sequence_size * sizeof(*sequence));
    }
    if (sequence_count == sequence_size)
    {
        sequence_size *= 2;
        sequence = HeapReAlloc(GetProcessHeap(), 0, sequence, sequence_size * sizeof(*sequence));
    }

    assert(sequence);

    sequence[sequence_count++] = *msg;
}
