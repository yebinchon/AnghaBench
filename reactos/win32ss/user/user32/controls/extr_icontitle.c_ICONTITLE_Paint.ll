; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/user/user32/controls/extr_icontitle.c_ICONTITLE_Paint.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/user/user32/controls/extr_icontitle.c_ICONTITLE_Paint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@COLOR_ACTIVECAPTION = common dso_local global i32 0, align 4
@COLOR_CAPTIONTEXT = common dso_local global i32 0, align 4
@GWL_STYLE = common dso_local global i32 0, align 4
@WS_CHILD = common dso_local global i32 0, align 4
@GCLP_HBRBACKGROUND = common dso_local global i32 0, align 4
@WHITE_BRUSH = common dso_local global i32 0, align 4
@BLACK_BRUSH = common dso_local global i32 0, align 4
@hIconTitleFont = common dso_local global i64 0, align 8
@TRANSPARENT = common dso_local global i32 0, align 4
@DT_CENTER = common dso_local global i32 0, align 4
@DT_NOPREFIX = common dso_local global i32 0, align 4
@DT_WORDBREAK = common dso_local global i32 0, align 4
@bMultiLineTitle = common dso_local global i64 0, align 8
@DT_SINGLELINE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32)* @ICONTITLE_Paint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ICONTITLE_Paint(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_3__, align 4
  %15 = alloca [80 x i32], align 16
  %16 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %12, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %4
  %20 = load i32, i32* @COLOR_ACTIVECAPTION, align 4
  %21 = call i64 @GetSysColorBrush(i32 %20)
  store i64 %21, i64* %11, align 8
  %22 = load i32, i32* @COLOR_CAPTIONTEXT, align 4
  %23 = call i32 @GetSysColor(i32 %22)
  store i32 %23, i32* %12, align 4
  br label %65

24:                                               ; preds = %4
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @GWL_STYLE, align 4
  %27 = call i32 @GetWindowLongPtrA(i32 %25, i32 %26)
  %28 = load i32, i32* @WS_CHILD, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %60

31:                                               ; preds = %24
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @GCLP_HBRBACKGROUND, align 4
  %34 = call i64 @GetClassLongPtrW(i32 %32, i32 %33)
  store i64 %34, i64* %11, align 8
  %35 = load i64, i64* %11, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %56

37:                                               ; preds = %31
  %38 = load i64, i64* %11, align 8
  %39 = call i32 @GetObjectA(i64 %38, i32 4, %struct.TYPE_3__* %14)
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @GetRValue(i32 %41)
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @GetGValue(i32 %44)
  %46 = add nsw i32 %42, %45
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @GetBValue(i32 %48)
  %50 = add nsw i32 %46, %49
  store i32 %50, i32* %13, align 4
  %51 = load i32, i32* %13, align 4
  %52 = icmp slt i32 %51, 381
  br i1 %52, label %53, label %55

53:                                               ; preds = %37
  %54 = call i32 @RGB(i32 255, i32 255, i32 255)
  store i32 %54, i32* %12, align 4
  br label %55

55:                                               ; preds = %53, %37
  br label %59

56:                                               ; preds = %31
  %57 = load i32, i32* @WHITE_BRUSH, align 4
  %58 = call i64 @GetStockObject(i32 %57)
  store i64 %58, i64* %11, align 8
  br label %59

59:                                               ; preds = %56, %55
  br label %64

60:                                               ; preds = %24
  %61 = load i32, i32* @BLACK_BRUSH, align 4
  %62 = call i64 @GetStockObject(i32 %61)
  store i64 %62, i64* %11, align 8
  %63 = call i32 @RGB(i32 255, i32 255, i32 255)
  store i32 %63, i32* %12, align 4
  br label %64

64:                                               ; preds = %60, %59
  br label %65

65:                                               ; preds = %64, %19
  %66 = load i32, i32* %5, align 4
  %67 = call i32 @GetClientRect(i32 %66, i32* %9)
  %68 = load i32, i32* %7, align 4
  %69 = ptrtoint i32* %9 to i32
  %70 = call i32 @DPtoLP(i32 %68, i32 %69, i32 2)
  %71 = load i32, i32* %7, align 4
  %72 = load i64, i64* %11, align 8
  %73 = call i32 @FillRect(i32 %71, i32* %9, i64 %72)
  %74 = load i32, i32* %7, align 4
  %75 = load i64, i64* @hIconTitleFont, align 8
  %76 = call i64 @SelectObject(i32 %74, i64 %75)
  store i64 %76, i64* %10, align 8
  %77 = load i64, i64* %10, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %109

79:                                               ; preds = %65
  %80 = load i32, i32* %6, align 4
  %81 = getelementptr inbounds [80 x i32], [80 x i32]* %15, i64 0, i64 0
  %82 = call i32 @GetWindowTextW(i32 %80, i32* %81, i32 80)
  store i32 %82, i32* %16, align 4
  %83 = load i32, i32* %7, align 4
  %84 = load i32, i32* %12, align 4
  %85 = call i32 @SetTextColor(i32 %83, i32 %84)
  %86 = load i32, i32* %7, align 4
  %87 = load i32, i32* @TRANSPARENT, align 4
  %88 = call i32 @SetBkMode(i32 %86, i32 %87)
  %89 = load i32, i32* %7, align 4
  %90 = getelementptr inbounds [80 x i32], [80 x i32]* %15, i64 0, i64 0
  %91 = load i32, i32* %16, align 4
  %92 = load i32, i32* @DT_CENTER, align 4
  %93 = load i32, i32* @DT_NOPREFIX, align 4
  %94 = or i32 %92, %93
  %95 = load i32, i32* @DT_WORDBREAK, align 4
  %96 = or i32 %94, %95
  %97 = load i64, i64* @bMultiLineTitle, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %79
  br label %102

100:                                              ; preds = %79
  %101 = load i32, i32* @DT_SINGLELINE, align 4
  br label %102

102:                                              ; preds = %100, %99
  %103 = phi i32 [ 0, %99 ], [ %101, %100 ]
  %104 = or i32 %96, %103
  %105 = call i32 @DrawTextW(i32 %89, i32* %90, i32 %91, i32* %9, i32 %104)
  %106 = load i32, i32* %7, align 4
  %107 = load i64, i64* %10, align 8
  %108 = call i64 @SelectObject(i32 %106, i64 %107)
  br label %109

109:                                              ; preds = %102, %65
  %110 = load i64, i64* %10, align 8
  %111 = icmp ne i64 %110, 0
  %112 = zext i1 %111 to i32
  ret i32 %112
}

declare dso_local i64 @GetSysColorBrush(i32) #1

declare dso_local i32 @GetSysColor(i32) #1

declare dso_local i32 @GetWindowLongPtrA(i32, i32) #1

declare dso_local i64 @GetClassLongPtrW(i32, i32) #1

declare dso_local i32 @GetObjectA(i64, i32, %struct.TYPE_3__*) #1

declare dso_local i32 @GetRValue(i32) #1

declare dso_local i32 @GetGValue(i32) #1

declare dso_local i32 @GetBValue(i32) #1

declare dso_local i32 @RGB(i32, i32, i32) #1

declare dso_local i64 @GetStockObject(i32) #1

declare dso_local i32 @GetClientRect(i32, i32*) #1

declare dso_local i32 @DPtoLP(i32, i32, i32) #1

declare dso_local i32 @FillRect(i32, i32*, i64) #1

declare dso_local i64 @SelectObject(i32, i64) #1

declare dso_local i32 @GetWindowTextW(i32, i32*, i32) #1

declare dso_local i32 @SetTextColor(i32, i32) #1

declare dso_local i32 @SetBkMode(i32, i32) #1

declare dso_local i32 @DrawTextW(i32, i32*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
