
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct sequence {int length; double min; double max; int labels; TYPE_1__* samples; } ;
struct sample {int dummy; } ;
struct TYPE_3__ {double value; char* label; } ;


 TYPE_1__* zrealloc (TYPE_1__*,int) ;
 char* zstrdup (char*) ;

void sparklineSequenceAddSample(struct sequence *seq, double value, char *label) {
    label = (label == ((void*)0) || label[0] == '\0') ? ((void*)0) : zstrdup(label);
    if (seq->length == 0) {
        seq->min = seq->max = value;
    } else {
        if (value < seq->min) seq->min = value;
        else if (value > seq->max) seq->max = value;
    }
    seq->samples = zrealloc(seq->samples,sizeof(struct sample)*(seq->length+1));
    seq->samples[seq->length].value = value;
    seq->samples[seq->length].label = label;
    seq->length++;
    if (label) seq->labels++;
}
