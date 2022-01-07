; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/ole32/extr_marshal.c_test_WM_QUIT_handling.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/ole32/extr_marshal.c_test_WM_QUIT_handling.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [12 x i8] c"WineCOMTest\00", align 1
@CW_USEDEFAULT = common dso_local global i32 0, align 4
@hwnd_app = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [24 x i8] c"Window creation failed\0A\00", align 1
@WM_USER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_WM_QUIT_handling to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_WM_QUIT_handling() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @CW_USEDEFAULT, align 4
  %3 = load i32, i32* @CW_USEDEFAULT, align 4
  %4 = load i32, i32* @CW_USEDEFAULT, align 4
  %5 = load i32, i32* @CW_USEDEFAULT, align 4
  %6 = call i32* @CreateWindowA(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32* null, i32 0, i32 %2, i32 %3, i32 %4, i32 %5, i32* null, i32* null, i32* null, i32 0)
  store i32* %6, i32** @hwnd_app, align 8
  %7 = load i32*, i32** @hwnd_app, align 8
  %8 = icmp ne i32* %7, null
  %9 = zext i1 %8 to i32
  %10 = call i32 @ok(i32 %9, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %11 = load i32*, i32** @hwnd_app, align 8
  %12 = load i64, i64* @WM_USER, align 8
  %13 = add nsw i64 %12, 1
  %14 = call i32 @PostMessageA(i32* %11, i64 %13, i32 0, i32 0)
  br label %15

15:                                               ; preds = %18, %0
  %16 = call i64 @GetMessageA(i32* %1, i32* null, i32 0, i32 0)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  %19 = call i32 @TranslateMessage(i32* %1)
  %20 = call i32 @DispatchMessageA(i32* %1)
  br label %15

21:                                               ; preds = %15
  ret void
}

declare dso_local i32* @CreateWindowA(i8*, i32*, i32, i32, i32, i32, i32, i32*, i32*, i32*, i32) #1

declare dso_local i32 @ok(i32, i8*) #1

declare dso_local i32 @PostMessageA(i32*, i64, i32, i32) #1

declare dso_local i64 @GetMessageA(i32*, i32*, i32, i32) #1

declare dso_local i32 @TranslateMessage(i32*) #1

declare dso_local i32 @DispatchMessageA(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
