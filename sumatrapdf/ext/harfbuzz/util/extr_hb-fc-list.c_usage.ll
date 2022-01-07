; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/harfbuzz/util/extr_hb-fc-list.c_usage.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/harfbuzz/util/extr_hb-fc-list.c_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32* null, align 8
@stdout = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [61 x i8] c"usage: %s [-vqVh] [-f FORMAT] text [pattern] {element ...} \0A\00", align 1
@.str.1 = private unnamed_addr constant [54 x i8] c"List fonts matching [pattern] that can render [text]\0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.3 = private unnamed_addr constant [62 x i8] c"  -v         (verbose) display entire font pattern verbosely\0A\00", align 1
@.str.4 = private unnamed_addr constant [52 x i8] c"  -f FORMAT  (format)  use the given output format\0A\00", align 1
@.str.5 = private unnamed_addr constant [79 x i8] c"  -q,        (quiet)   suppress all normal output, exit 1 if no fonts matched\0A\00", align 1
@.str.6 = private unnamed_addr constant [58 x i8] c"  -V         (version) display HarfBuzz version and exit\0A\00", align 1
@.str.7 = private unnamed_addr constant [51 x i8] c"  -h         (help)    display this help and exit\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @usage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usage(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = load i32*, i32** @stderr, align 8
  br label %12

10:                                               ; preds = %2
  %11 = load i32*, i32** @stdout, align 8
  br label %12

12:                                               ; preds = %10, %8
  %13 = phi i32* [ %9, %8 ], [ %11, %10 ]
  store i32* %13, i32** %5, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = load i8*, i8** %3, align 8
  %16 = call i32 (i32*, i8*, ...) @fprintf(i32* %14, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i8* %15)
  %17 = load i32*, i32** %5, align 8
  %18 = call i32 (i32*, i8*, ...) @fprintf(i32* %17, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0))
  %19 = load i32*, i32** %5, align 8
  %20 = call i32 (i32*, i8*, ...) @fprintf(i32* %19, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %21 = load i32*, i32** %5, align 8
  %22 = call i32 (i32*, i8*, ...) @fprintf(i32* %21, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.3, i64 0, i64 0))
  %23 = load i32*, i32** %5, align 8
  %24 = call i32 (i32*, i8*, ...) @fprintf(i32* %23, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.4, i64 0, i64 0))
  %25 = load i32*, i32** %5, align 8
  %26 = call i32 (i32*, i8*, ...) @fprintf(i32* %25, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.5, i64 0, i64 0))
  %27 = load i32*, i32** %5, align 8
  %28 = call i32 (i32*, i8*, ...) @fprintf(i32* %27, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.6, i64 0, i64 0))
  %29 = load i32*, i32** %5, align 8
  %30 = call i32 (i32*, i8*, ...) @fprintf(i32* %29, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.7, i64 0, i64 0))
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @exit(i32 %31) #3
  unreachable
}

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
