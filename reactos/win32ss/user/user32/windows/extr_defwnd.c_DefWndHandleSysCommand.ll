; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/user/user32/windows/extr_defwnd.c_DefWndHandleSysCommand.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/user/user32/windows/extr_defwnd.c_DefWndHandleSysCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i16, i16 }

@WM_SYSCOMMAND = common dso_local global i32 0, align 4
@FNID_DEFWINDOWPROC = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@WH_CBT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"taskman.exe\00", align 1
@SW_SHOWNORMAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"Unimplemented DefWndHandleSysCommand wParam 0x%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @DefWndHandleSysCommand(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_3__, align 2
  %9 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %5, align 4
  %11 = call i32 @IsWindowEnabled(i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  store i64 0, i64* %4, align 8
  br label %72

14:                                               ; preds = %3
  %15 = load i32, i32* %6, align 4
  %16 = and i32 %15, 65520
  switch i32 %16, label %26 [
    i32 135, label %17
    i32 130, label %17
    i32 136, label %17
    i32 139, label %17
    i32 131, label %17
    i32 137, label %17
    i32 138, label %17
    i32 132, label %17
    i32 142, label %17
    i32 141, label %17
  ]

17:                                               ; preds = %14, %14, %14, %14, %14, %14, %14, %14, %14, %14
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @WM_SYSCOMMAND, align 4
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* %7, align 4
  %22 = ptrtoint i64* %9 to i32
  %23 = load i32, i32* @FNID_DEFWINDOWPROC, align 4
  %24 = load i32, i32* @FALSE, align 4
  %25 = call i32 @NtUserMessageCall(i32 %18, i32 %19, i32 %20, i32 %21, i32 %22, i32 %23, i32 %24)
  store i64 0, i64* %4, align 8
  br label %72

26:                                               ; preds = %14
  br label %27

27:                                               ; preds = %26
  %28 = load i32, i32* @WH_CBT, align 4
  %29 = call i64 @ISITHOOKED(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %44

31:                                               ; preds = %27
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @WM_SYSCOMMAND, align 4
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* %7, align 4
  %36 = ptrtoint i64* %9 to i32
  %37 = load i32, i32* @FNID_DEFWINDOWPROC, align 4
  %38 = load i32, i32* @FALSE, align 4
  %39 = call i32 @NtUserMessageCall(i32 %32, i32 %33, i32 %34, i32 %35, i32 %36, i32 %37, i32 %38)
  %40 = load i64, i64* %9, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %31
  store i64 0, i64* %4, align 8
  br label %72

43:                                               ; preds = %31
  br label %44

44:                                               ; preds = %43, %27
  %45 = load i32, i32* %6, align 4
  %46 = and i32 %45, 65520
  switch i32 %46, label %68 [
    i32 128, label %47
    i32 140, label %47
    i32 129, label %61
    i32 134, label %64
    i32 133, label %64
  ]

47:                                               ; preds = %44, %44
  %48 = load i32, i32* %7, align 4
  %49 = call i64 @LOWORD(i32 %48)
  %50 = trunc i64 %49 to i16
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  store i16 %50, i16* %51, align 2
  %52 = load i32, i32* %7, align 4
  %53 = call i64 @HIWORD(i32 %52)
  %54 = trunc i64 %53 to i16
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 1
  store i16 %54, i16* %55, align 2
  %56 = load i32, i32* %5, align 4
  %57 = load i32, i32* %6, align 4
  %58 = bitcast %struct.TYPE_3__* %8 to i32*
  %59 = load i32, i32* %58, align 2
  %60 = call i32 @DefWndTrackScrollBar(i32 %56, i32 %57, i32 %59)
  br label %71

61:                                               ; preds = %44
  %62 = load i32, i32* @SW_SHOWNORMAL, align 4
  %63 = call i32 @WinExec(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %62)
  br label %71

64:                                               ; preds = %44, %44
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* %7, align 4
  %67 = call i32 @DoAppSwitch(i32 %65, i32 %66)
  br label %71

68:                                               ; preds = %44
  %69 = load i32, i32* %6, align 4
  %70 = call i32 @FIXME(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32 %69)
  br label %71

71:                                               ; preds = %68, %64, %61, %47
  store i64 0, i64* %4, align 8
  br label %72

72:                                               ; preds = %71, %42, %17, %13
  %73 = load i64, i64* %4, align 8
  ret i64 %73
}

declare dso_local i32 @IsWindowEnabled(i32) #1

declare dso_local i32 @NtUserMessageCall(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i64 @ISITHOOKED(i32) #1

declare dso_local i64 @LOWORD(i32) #1

declare dso_local i64 @HIWORD(i32) #1

declare dso_local i32 @DefWndTrackScrollBar(i32, i32, i32) #1

declare dso_local i32 @WinExec(i8*, i32) #1

declare dso_local i32 @DoAppSwitch(i32, i32) #1

declare dso_local i32 @FIXME(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
