; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/uiports/extr_svgawin.c_ui_main_loop.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/uiports/extr_svgawin.c_ui_main_loop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@g_servername = common dso_local global i32 0, align 4
@RDP_LOGON_NORMAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@False = common dso_local global i32 0, align 4
@UpAndRunning = common dso_local global i32 0, align 4
@g_sock = common dso_local global i32 0, align 4
@deactivated = common dso_local global i32 0, align 4
@ext_disc_reason = common dso_local global i32 0, align 4
@True = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ui_main_loop() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load i32, i32* @g_servername, align 4
  %5 = load i32, i32* @RDP_LOGON_NORMAL, align 4
  %6 = call i32 @rdp_connect(i32 %4, i32 %5, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %0
  %9 = load i32, i32* @False, align 4
  store i32 %9, i32* %1, align 4
  br label %44

10:                                               ; preds = %0
  store i32 1, i32* @UpAndRunning, align 4
  %11 = call i32 @FD_ZERO(i32* %3)
  %12 = load i32, i32* @g_sock, align 4
  %13 = call i32 @FD_SET(i32 %12, i32* %3)
  %14 = call i32 @vga_waitevent(i32 3, i32* %3, i32* null, i32* null, i32* null)
  store i32 %14, i32* %2, align 4
  br label %15

15:                                               ; preds = %37, %10
  %16 = load i32, i32* %2, align 4
  %17 = icmp sge i32 %16, 0
  br i1 %17, label %18, label %42

18:                                               ; preds = %15
  %19 = load i32, i32* %2, align 4
  %20 = and i32 %19, 1
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = call i32 (...) @process_mouse()
  br label %37

24:                                               ; preds = %18
  %25 = load i32, i32* %2, align 4
  %26 = and i32 %25, 2
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = call i32 (...) @process_keyboard()
  br label %36

30:                                               ; preds = %24
  %31 = call i32 @rdp_loop(i32* @deactivated, i32* @ext_disc_reason)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %30
  %34 = load i32, i32* @True, align 4
  store i32 %34, i32* %1, align 4
  br label %44

35:                                               ; preds = %30
  br label %36

36:                                               ; preds = %35, %28
  br label %37

37:                                               ; preds = %36, %22
  %38 = call i32 @FD_ZERO(i32* %3)
  %39 = load i32, i32* @g_sock, align 4
  %40 = call i32 @FD_SET(i32 %39, i32* %3)
  %41 = call i32 @vga_waitevent(i32 3, i32* %3, i32* null, i32* null, i32* null)
  store i32 %41, i32* %2, align 4
  br label %15

42:                                               ; preds = %15
  %43 = load i32, i32* @True, align 4
  store i32 %43, i32* %1, align 4
  br label %44

44:                                               ; preds = %42, %33, %8
  %45 = load i32, i32* %1, align 4
  ret i32 %45
}

declare dso_local i32 @rdp_connect(i32, i32, i8*, i8*, i8*, i8*) #1

declare dso_local i32 @FD_ZERO(i32*) #1

declare dso_local i32 @FD_SET(i32, i32*) #1

declare dso_local i32 @vga_waitevent(i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @process_mouse(...) #1

declare dso_local i32 @process_keyboard(...) #1

declare dso_local i32 @rdp_loop(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
