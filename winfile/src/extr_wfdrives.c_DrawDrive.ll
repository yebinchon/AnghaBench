; ModuleID = '/home/carl/AnghaBench/winfile/src/extr_wfdrives.c_DrawDrive.c'
source_filename = "/home/carl/AnghaBench/winfile/src/extr_wfdrives.c_DrawDrive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32 }

@rgiDrive = common dso_local global i64* null, align 8
@dxDrive = common dso_local global i32 0, align 4
@dyDrive = common dso_local global i32 0, align 4
@COLOR_BTNTEXT = common dso_local global i32 0, align 4
@COLOR_HIGHLIGHT = common dso_local global i32 0, align 4
@COLOR_HIGHLIGHTTEXT = common dso_local global i32 0, align 4
@dyBorder = common dso_local global i32 0, align 4
@chFirstDrive = common dso_local global i64 0, align 8
@TRANSPARENT = common dso_local global i32 0, align 4
@dxDriveBitmap = common dso_local global i32 0, align 4
@dyText = common dso_local global i32 0, align 4
@dyDriveBitmap = common dso_local global i32 0, align 4
@hdcMem = common dso_local global i32 0, align 4
@aDriveInfo = common dso_local global %struct.TYPE_8__* null, align 8
@dyFolder = common dso_local global i32 0, align 4
@SRCCOPY = common dso_local global i32 0, align 4
@NOMIRRORBITMAP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @DrawDrive(i32 %0, i32 %1, i32 %2, i64 %3, i64 %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_7__, align 4
  %15 = alloca [2 x i64], align 16
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store i64 %5, i64* %13, align 8
  %19 = load i64*, i64** @rgiDrive, align 8
  %20 = load i64, i64* %11, align 8
  %21 = getelementptr inbounds i64, i64* %19, i64 %20
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %17, align 8
  %23 = load i32, i32* %9, align 4
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  store i32 %23, i32* %24, align 4
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* @dxDrive, align 4
  %27 = add nsw i32 %25, %26
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 1
  store i32 %27, i32* %28, align 4
  %29 = load i32, i32* %10, align 4
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 2
  store i32 %29, i32* %30, align 4
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* @dyDrive, align 4
  %33 = add nsw i32 %31, %32
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 3
  store i32 %33, i32* %34, align 4
  %35 = load i32, i32* @COLOR_BTNTEXT, align 4
  %36 = call i32 @GetSysColor(i32 %35)
  store i32 %36, i32* %16, align 4
  %37 = load i64, i64* %12, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %66

39:                                               ; preds = %6
  %40 = load i32, i32* @COLOR_HIGHLIGHT, align 4
  %41 = call i32 @GetSysColor(i32 %40)
  %42 = call i32 @CreateSolidBrush(i32 %41)
  store i32 %42, i32* %18, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %65

44:                                               ; preds = %39
  %45 = load i64, i64* %13, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %44
  %48 = load i32, i32* @COLOR_HIGHLIGHTTEXT, align 4
  %49 = call i32 @GetSysColor(i32 %48)
  store i32 %49, i32* %16, align 4
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* %18, align 4
  %52 = call i32 @FillRect(i32 %50, %struct.TYPE_7__* %14, i32 %51)
  br label %62

53:                                               ; preds = %44
  %54 = load i32, i32* @dyBorder, align 4
  %55 = sub nsw i32 0, %54
  %56 = load i32, i32* @dyBorder, align 4
  %57 = sub nsw i32 0, %56
  %58 = call i32 @InflateRect(%struct.TYPE_7__* %14, i32 %55, i32 %57)
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* %18, align 4
  %61 = call i32 @FrameRect(i32 %59, %struct.TYPE_7__* %14, i32 %60)
  br label %62

62:                                               ; preds = %53, %47
  %63 = load i32, i32* %18, align 4
  %64 = call i32 @DeleteObject(i32 %63)
  br label %65

65:                                               ; preds = %62, %39
  br label %66

66:                                               ; preds = %65, %6
  %67 = load i64, i64* %13, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %66
  %70 = load i32, i32* %8, align 4
  %71 = call i32 @DrawFocusRect(i32 %70, %struct.TYPE_7__* %14)
  br label %72

72:                                               ; preds = %69, %66
  %73 = load i64, i64* @chFirstDrive, align 8
  %74 = load i64*, i64** @rgiDrive, align 8
  %75 = load i64, i64* %11, align 8
  %76 = getelementptr inbounds i64, i64* %74, i64 %75
  %77 = load i64, i64* %76, align 8
  %78 = add i64 %73, %77
  %79 = getelementptr inbounds [2 x i64], [2 x i64]* %15, i64 0, i64 0
  store i64 %78, i64* %79, align 16
  %80 = load i32, i32* %8, align 4
  %81 = load i32, i32* @TRANSPARENT, align 4
  %82 = call i32 @SetBkMode(i32 %80, i32 %81)
  %83 = load i32, i32* %8, align 4
  %84 = load i32, i32* %16, align 4
  %85 = call i32 @SetTextColor(i32 %83, i32 %84)
  store i32 %85, i32* %16, align 4
  %86 = load i32, i32* %8, align 4
  %87 = load i32, i32* %9, align 4
  %88 = load i32, i32* @dxDriveBitmap, align 4
  %89 = add nsw i32 %87, %88
  %90 = load i32, i32* @dyBorder, align 4
  %91 = mul nsw i32 %90, 6
  %92 = add nsw i32 %89, %91
  %93 = load i32, i32* %10, align 4
  %94 = load i32, i32* @dyDrive, align 4
  %95 = load i32, i32* @dyText, align 4
  %96 = sub nsw i32 %94, %95
  %97 = sdiv i32 %96, 2
  %98 = add nsw i32 %93, %97
  %99 = getelementptr inbounds [2 x i64], [2 x i64]* %15, i64 0, i64 0
  %100 = call i32 @TextOut(i32 %86, i32 %92, i32 %98, i64* %99, i32 1)
  %101 = load i32, i32* %8, align 4
  %102 = load i32, i32* %16, align 4
  %103 = call i32 @SetTextColor(i32 %101, i32 %102)
  %104 = load i32, i32* %8, align 4
  %105 = load i32, i32* %9, align 4
  %106 = load i32, i32* @dyBorder, align 4
  %107 = mul nsw i32 4, %106
  %108 = add nsw i32 %105, %107
  %109 = load i32, i32* %10, align 4
  %110 = load i32, i32* @dyDrive, align 4
  %111 = load i32, i32* @dyDriveBitmap, align 4
  %112 = sub nsw i32 %110, %111
  %113 = sdiv i32 %112, 2
  %114 = add nsw i32 %109, %113
  %115 = load i32, i32* @dxDriveBitmap, align 4
  %116 = load i32, i32* @dyDriveBitmap, align 4
  %117 = load i32, i32* @hdcMem, align 4
  %118 = load %struct.TYPE_8__*, %struct.TYPE_8__** @aDriveInfo, align 8
  %119 = load i64, i64* %17, align 8
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* @dyFolder, align 4
  %124 = mul nsw i32 2, %123
  %125 = load i32, i32* @SRCCOPY, align 4
  %126 = load i32, i32* @NOMIRRORBITMAP, align 4
  %127 = or i32 %125, %126
  %128 = call i32 @BitBlt(i32 %104, i32 %108, i32 %114, i32 %115, i32 %116, i32 %117, i32 %122, i32 %124, i32 %127)
  %129 = load i32, i32* %7, align 4
  ret i32 %129
}

declare dso_local i32 @GetSysColor(i32) #1

declare dso_local i32 @CreateSolidBrush(i32) #1

declare dso_local i32 @FillRect(i32, %struct.TYPE_7__*, i32) #1

declare dso_local i32 @InflateRect(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @FrameRect(i32, %struct.TYPE_7__*, i32) #1

declare dso_local i32 @DeleteObject(i32) #1

declare dso_local i32 @DrawFocusRect(i32, %struct.TYPE_7__*) #1

declare dso_local i32 @SetBkMode(i32, i32) #1

declare dso_local i32 @SetTextColor(i32, i32) #1

declare dso_local i32 @TextOut(i32, i32, i32, i64*, i32) #1

declare dso_local i32 @BitBlt(i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
