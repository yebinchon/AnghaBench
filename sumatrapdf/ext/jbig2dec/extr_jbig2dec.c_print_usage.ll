; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/jbig2dec/extr_jbig2dec.c_print_usage.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/jbig2dec/extr_jbig2dec.c_print_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1072 x i8] c"Usage: jbig2dec [options] <file.jbig2>\0A   or  jbig2dec [options] <global_stream> <page_stream>\0A\0A  When invoked with a single file, it attempts to parse it as\0A  a normal jbig2 file. Invoked with two files, it treats the\0A  first as the global segments, and the second as the segment\0A  stream for a particular page. This is useful for examining\0A  embedded streams.\0A\0A  available options:\0A    -h --help      this usage summary\0A    -q --quiet     suppress diagnostic output\0A    -v --verbose   set the verbosity level\0A    -d --dump      print the structure of the jbig2 file\0A                   rather than explicitly decoding\0A       --version   program name and version information\0A       --hash      print a hash of the decoded document\0A    -e --embedded  expect embedded bit stream without file header\0A    -o <file>      send decoded output to <file>\0A                   Defaults to the the input with a different\0A                   extension. Pass '-' for stdout.\0A    -t <type>      force a particular output file format\0A                   the only supported option is 'pbm'\0A\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @print_usage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @print_usage() #0 {
  %1 = load i32, i32* @stderr, align 4
  %2 = call i32 @fprintf(i32 %1, i8* getelementptr inbounds ([1072 x i8], [1072 x i8]* @.str, i64 0, i64 0))
  ret i32 1
}

declare dso_local i32 @fprintf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
