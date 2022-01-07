; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/tests/threadwait/extr_threadwait.c_main.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/tests/threadwait/extr_threadwait.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@threadfunc = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Main: ThreadId for new thread is %08lx\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Main: Waiting on thread...\0A\00", align 1
@INFINITE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [76 x i8] c"Main: OK, somebody fixed the PsUnblockThread spinlock double-acquire crash\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"Main: Terminating...\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %8 = load i32, i32* @threadfunc, align 4
  %9 = call i32 @CreateThread(i32 0, i32 0, i32 %8, i32 0, i32 0, i32* %6)
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* %6, align 4
  %11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %10)
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* @INFINITE, align 4
  %15 = call i32 @WaitForSingleObject(i32 %13, i32 %14)
  %16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.2, i64 0, i64 0))
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @NtClose(i32 %17)
  %19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  ret i32 0
}

declare dso_local i32 @CreateThread(i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @WaitForSingleObject(i32, i32) #1

declare dso_local i32 @NtClose(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
