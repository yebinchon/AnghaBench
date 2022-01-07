
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char uint8_t ;


 size_t MAX_LINE_SIZE ;

__attribute__((used)) static size_t ReadLine(const uint8_t* const data, size_t off, size_t data_size,
                       char out[MAX_LINE_SIZE + 1], size_t* const out_size) {
  size_t i = 0;
  *out_size = 0;
 redo:
  for (i = 0; i < MAX_LINE_SIZE && off < data_size; ++i) {
    out[i] = data[off++];
    if (out[i] == '\n') break;
  }
  if (off < data_size) {
    if (i == 0) goto redo;
    if (out[0] == '#') goto redo;
  }
  out[i] = 0;
  *out_size = i;
  return off;
}
