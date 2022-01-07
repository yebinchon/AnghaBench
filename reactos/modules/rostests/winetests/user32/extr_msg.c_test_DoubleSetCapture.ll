; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/user32/extr_msg.c_test_DoubleSetCapture.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/user32/extr_msg.c_test_DoubleSetCapture.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [16 x i8] c"TestWindowClass\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"Test DoubleSetCapture\00", align 1
@WS_OVERLAPPEDWINDOW = common dso_local global i32 0, align 4
@WS_VISIBLE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"Failed to create overlapped window\0A\00", align 1
@SW_SHOW = common dso_local global i32 0, align 4
@DoubleSetCaptureSeq = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"SetCapture( hwnd ) twice\00", align 1
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_DoubleSetCapture to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_DoubleSetCapture() #0 {
  %1 = alloca i64, align 8
  %2 = load i32, i32* @WS_OVERLAPPEDWINDOW, align 4
  %3 = load i32, i32* @WS_VISIBLE, align 4
  %4 = or i32 %2, %3
  %5 = call i64 @CreateWindowExA(i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %4, i32 100, i32 100, i32 200, i32 200, i32 0, i32 0, i32 0, i32* null)
  store i64 %5, i64* %1, align 8
  %6 = load i64, i64* %1, align 8
  %7 = icmp ne i64 %6, 0
  %8 = zext i1 %7 to i32
  %9 = call i32 @ok(i32 %8, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %10 = load i64, i64* %1, align 8
  %11 = load i32, i32* @SW_SHOW, align 4
  %12 = call i32 @ShowWindow(i64 %10, i32 %11)
  %13 = load i64, i64* %1, align 8
  %14 = call i32 @UpdateWindow(i64 %13)
  %15 = call i32 (...) @flush_events()
  %16 = call i32 (...) @flush_sequence()
  %17 = load i64, i64* %1, align 8
  %18 = call i32 @SetCapture(i64 %17)
  %19 = load i64, i64* %1, align 8
  %20 = call i32 @SetCapture(i64 %19)
  %21 = load i32, i32* @DoubleSetCaptureSeq, align 4
  %22 = load i32, i32* @FALSE, align 4
  %23 = call i32 @ok_sequence(i32 %21, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %22)
  %24 = load i64, i64* %1, align 8
  %25 = call i32 @DestroyWindow(i64 %24)
  ret void
}

declare dso_local i64 @CreateWindowExA(i32, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @ok(i32, i8*) #1

declare dso_local i32 @ShowWindow(i64, i32) #1

declare dso_local i32 @UpdateWindow(i64) #1

declare dso_local i32 @flush_events(...) #1

declare dso_local i32 @flush_sequence(...) #1

declare dso_local i32 @SetCapture(i64) #1

declare dso_local i32 @ok_sequence(i32, i8*, i32) #1

declare dso_local i32 @DestroyWindow(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
