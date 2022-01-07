; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/user/user32/windows/extr_dialog.c_DIALOG_get_info.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/user/user32/windows/extr_dialog.c_DIALOG_get_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i64, i32 }

@DWLP_ROS_DIALOGINFO = common dso_local global i32 0, align 4
@DLGWINDOWEXTRA = common dso_local global i64 0, align 8
@HEAP_ZERO_MEMORY = common dso_local global i32 0, align 4
@IDOK = common dso_local global i32 0, align 4
@WNDS_DIALOGWINDOW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_9__* @DIALOG_get_info(i32 %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = call %struct.TYPE_8__* @ValidateHwnd(i32 %8)
  store %struct.TYPE_8__* %9, %struct.TYPE_8__** %6, align 8
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %11 = icmp ne %struct.TYPE_8__* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %3, align 8
  br label %64

13:                                               ; preds = %2
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @DWLP_ROS_DIALOGINFO, align 4
  %16 = call i64 @GetWindowLongPtrW(i32 %14, i32 %15)
  %17 = inttoptr i64 %16 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %17, %struct.TYPE_9__** %7, align 8
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %19 = icmp ne %struct.TYPE_9__* %18, null
  br i1 %19, label %47, label %20

20:                                               ; preds = %13
  %21 = load i64, i64* %5, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %47

23:                                               ; preds = %20
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %25 = icmp ne %struct.TYPE_8__* %24, null
  br i1 %25, label %26, label %45

26:                                               ; preds = %23
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @DLGWINDOWEXTRA, align 8
  %31 = icmp sge i64 %29, %30
  br i1 %31, label %32, label %45

32:                                               ; preds = %26
  %33 = call i32 (...) @GetProcessHeap()
  %34 = load i32, i32* @HEAP_ZERO_MEMORY, align 4
  %35 = call %struct.TYPE_9__* @HeapAlloc(i32 %33, i32 %34, i32 4)
  store %struct.TYPE_9__* %35, %struct.TYPE_9__** %7, align 8
  %36 = icmp ne %struct.TYPE_9__* %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %32
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %3, align 8
  br label %64

38:                                               ; preds = %32
  %39 = load i32, i32* @IDOK, align 4
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* %4, align 4
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %44 = call i32 @SETDLGINFO(i32 %42, %struct.TYPE_9__* %43)
  br label %46

45:                                               ; preds = %26, %23
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %3, align 8
  br label %64

46:                                               ; preds = %38
  br label %47

47:                                               ; preds = %46, %20, %13
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %49 = icmp ne %struct.TYPE_9__* %48, null
  br i1 %49, label %50, label %62

50:                                               ; preds = %47
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @WNDS_DIALOGWINDOW, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %61, label %57

57:                                               ; preds = %50
  %58 = load i32, i32* %4, align 4
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %60 = call i32 @NtUserxSetDialogPointer(i32 %58, %struct.TYPE_9__* %59)
  br label %61

61:                                               ; preds = %57, %50
  br label %62

62:                                               ; preds = %61, %47
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  store %struct.TYPE_9__* %63, %struct.TYPE_9__** %3, align 8
  br label %64

64:                                               ; preds = %62, %45, %37, %12
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  ret %struct.TYPE_9__* %65
}

declare dso_local %struct.TYPE_8__* @ValidateHwnd(i32) #1

declare dso_local i64 @GetWindowLongPtrW(i32, i32) #1

declare dso_local %struct.TYPE_9__* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @SETDLGINFO(i32, %struct.TYPE_9__*) #1

declare dso_local i32 @NtUserxSetDialogPointer(i32, %struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
