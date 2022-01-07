
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OutputMode ;


 int IN_SET (int ,int ,int ,int ,int ) ;
 int OUTPUT_JSON ;
 int OUTPUT_JSON_PRETTY ;
 int OUTPUT_JSON_SEQ ;
 int OUTPUT_JSON_SSE ;

__attribute__((used)) static inline bool OUTPUT_MODE_IS_JSON(OutputMode m) {
        return IN_SET(m, OUTPUT_JSON, OUTPUT_JSON_PRETTY, OUTPUT_JSON_SSE, OUTPUT_JSON_SEQ);
}
