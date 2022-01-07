; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/user32/extr_msg.c_cleanup_tests.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/user32/extr_msg.c_cleanup_tests.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@hCBT_hook = common dso_local global i32 0, align 4
@hEvent_hook = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"UnhookWinEvent error %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"UnhookWinEvent succeeded\0A\00", align 1
@ERROR_INVALID_HANDLE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"unexpected error %d\0A\00", align 1
@sequence_cs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @cleanup_tests to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cleanup_tests() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @hCBT_hook, align 4
  %3 = call i32 @UnhookWindowsHookEx(i32 %2)
  br i1 true, label %4, label %31

4:                                                ; preds = %0
  %5 = load i64, i64* @hEvent_hook, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %31

7:                                                ; preds = %4
  %8 = load i64, i64* @hEvent_hook, align 8
  %9 = call i32 @pUnhookWinEvent(i64 %8)
  store i32 %9, i32* %1, align 4
  %10 = load i32, i32* %1, align 4
  %11 = call i32 (...) @GetLastError()
  %12 = call i32 (i32, i8*, ...) @ok(i32 %10, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = call i32 @SetLastError(i32 -559038737)
  %14 = load i64, i64* @hEvent_hook, align 8
  %15 = call i32 @pUnhookWinEvent(i64 %14)
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i32 (i32, i8*, ...) @ok(i32 %18, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %20 = call i32 (...) @GetLastError()
  %21 = load i32, i32* @ERROR_INVALID_HANDLE, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %26, label %23

23:                                               ; preds = %7
  %24 = call i32 (...) @GetLastError()
  %25 = icmp eq i32 %24, -559038737
  br label %26

26:                                               ; preds = %23, %7
  %27 = phi i1 [ true, %7 ], [ %25, %23 ]
  %28 = zext i1 %27 to i32
  %29 = call i32 (...) @GetLastError()
  %30 = call i32 (i32, i8*, ...) @ok(i32 %28, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %29)
  br label %31

31:                                               ; preds = %26, %4, %0
  %32 = call i32 @DeleteCriticalSection(i32* @sequence_cs)
  ret void
}

declare dso_local i32 @UnhookWindowsHookEx(i32) #1

declare dso_local i32 @pUnhookWinEvent(i64) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i32 @SetLastError(i32) #1

declare dso_local i32 @DeleteCriticalSection(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
