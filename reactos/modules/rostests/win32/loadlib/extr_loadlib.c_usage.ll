; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/win32/loadlib/extr_loadlib.c_usage.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/win32/loadlib/extr_loadlib.c_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [66 x i8] c"USAGE: %s libname [libname ...] [unicode]|[ansi] [loop][recurse]\0A\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"\09Where libname(s) is one or more libraries to load.\0A\00", align 1
@.str.2 = private unnamed_addr constant [52 x i8] c"\09[unicode] - perform tests using UNICODE api calls\0A\00", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"\09[ansi] - perform tests using ANSI api calls\0A\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"\09    default is %s\0A\00", align 1
@TARGET = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [47 x i8] c"\09[loop] - run test process in continuous loop\0A\00", align 1
@.str.6 = private unnamed_addr constant [66 x i8] c"\09[recurse] - load libraries recursively rather than sequentually\0A\00", align 1
@.str.7 = private unnamed_addr constant [39 x i8] c"\09[debug] - enable debug mode (unused)\0A\00", align 1
@.str.8 = private unnamed_addr constant [45 x i8] c"\09[verbose] - enable verbose output (unused)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usage(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0), i8* %3)
  %5 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0))
  %6 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0))
  %7 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0))
  %8 = load i32, i32* @TARGET, align 4
  %9 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32 %8)
  %10 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.5, i64 0, i64 0))
  %11 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.6, i64 0, i64 0))
  %12 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.7, i64 0, i64 0))
  %13 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.8, i64 0, i64 0))
  ret i32 0
}

declare dso_local i32 @dprintf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
