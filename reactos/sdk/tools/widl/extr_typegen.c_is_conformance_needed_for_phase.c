
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum remoting_phase { ____Placeholder_remoting_phase } remoting_phase ;


 int PHASE_UNMARSHAL ;

__attribute__((used)) static inline int is_conformance_needed_for_phase(enum remoting_phase phase)
{
    return (phase != PHASE_UNMARSHAL);
}
