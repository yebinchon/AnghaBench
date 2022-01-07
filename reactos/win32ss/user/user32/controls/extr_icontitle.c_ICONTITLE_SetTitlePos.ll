; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/user/user32/controls/extr_icontitle.c_ICONTITLE_SetTitlePos.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/user/user32/controls/extr_icontitle.c_ICONTITLE_SetTitlePos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }

@ICONTITLE_SetTitlePos.emptyTitleText = internal constant [6 x i8] c"<...>\00", align 1
@FALSE = common dso_local global i32 0, align 4
@hIconTitleFont = common dso_local global i32 0, align 4
@SM_CXICONSPACING = common dso_local global i32 0, align 4
@SM_CXBORDER = common dso_local global i32 0, align 4
@SM_CYBORDER = common dso_local global i32 0, align 4
@DT_CALCRECT = common dso_local global i32 0, align 4
@DT_CENTER = common dso_local global i32 0, align 4
@DT_NOPREFIX = common dso_local global i32 0, align 4
@DT_WORDBREAK = common dso_local global i32 0, align 4
@bMultiLineTitle = common dso_local global i64 0, align 8
@DT_SINGLELINE = common dso_local global i32 0, align 4
@SM_CXICON = common dso_local global i32 0, align 4
@SM_CYICON = common dso_local global i32 0, align 4
@SWP_NOACTIVATE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @ICONTITLE_SetTitlePos to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ICONTITLE_SetTitlePos(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [80 x i8], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_6__, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_7__, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = getelementptr inbounds [80 x i8], [80 x i8]* %6, i64 0, i64 0
  %16 = call i32 @GetWindowTextW(i32 %14, i8* %15, i32 80)
  store i32 %16, i32* %13, align 4
  br label %17

17:                                               ; preds = %30, %2
  %18 = load i32, i32* %13, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %17
  %21 = load i32, i32* %13, align 4
  %22 = sub nsw i32 %21, 1
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [80 x i8], [80 x i8]* %6, i64 0, i64 %23
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp eq i32 %26, 32
  br label %28

28:                                               ; preds = %20, %17
  %29 = phi i1 [ false, %17 ], [ %27, %20 ]
  br i1 %29, label %30, label %35

30:                                               ; preds = %28
  %31 = load i32, i32* %13, align 4
  %32 = add nsw i32 %31, -1
  store i32 %32, i32* %13, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [80 x i8], [80 x i8]* %6, i64 0, i64 %33
  store i8 0, i8* %34, align 1
  br label %17

35:                                               ; preds = %28
  %36 = load i32, i32* %13, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %43, label %38

38:                                               ; preds = %35
  %39 = getelementptr inbounds [80 x i8], [80 x i8]* %6, i64 0, i64 0
  %40 = call i32 @strcpyW(i8* %39, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @ICONTITLE_SetTitlePos.emptyTitleText, i64 0, i64 0))
  %41 = getelementptr inbounds [80 x i8], [80 x i8]* %6, i64 0, i64 0
  %42 = call i32 @strlenW(i8* %41)
  store i32 %42, i32* %13, align 4
  br label %43

43:                                               ; preds = %38, %35
  %44 = load i32, i32* %4, align 4
  %45 = call i32 @GetDC(i32 %44)
  store i32 %45, i32* %7, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %43
  %48 = load i32, i32* @FALSE, align 4
  store i32 %48, i32* %3, align 4
  br label %126

49:                                               ; preds = %43
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* @hIconTitleFont, align 4
  %52 = call i32 @SelectObject(i32 %50, i32 %51)
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* @SM_CXICONSPACING, align 4
  %54 = call i32 @GetSystemMetrics(i32 %53)
  %55 = load i32, i32* @SM_CXBORDER, align 4
  %56 = call i32 @GetSystemMetrics(i32 %55)
  %57 = mul nsw i32 %56, 2
  %58 = sub nsw i32 %54, %57
  %59 = load i32, i32* @SM_CYBORDER, align 4
  %60 = call i32 @GetSystemMetrics(i32 %59)
  %61 = mul nsw i32 %60, 2
  %62 = call i32 @SetRect(%struct.TYPE_6__* %9, i32 0, i32 0, i32 %58, i32 %61)
  %63 = load i32, i32* %7, align 4
  %64 = getelementptr inbounds [80 x i8], [80 x i8]* %6, i64 0, i64 0
  %65 = load i32, i32* %13, align 4
  %66 = load i32, i32* @DT_CALCRECT, align 4
  %67 = load i32, i32* @DT_CENTER, align 4
  %68 = or i32 %66, %67
  %69 = load i32, i32* @DT_NOPREFIX, align 4
  %70 = or i32 %68, %69
  %71 = load i32, i32* @DT_WORDBREAK, align 4
  %72 = or i32 %70, %71
  %73 = load i64, i64* @bMultiLineTitle, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %49
  br label %78

76:                                               ; preds = %49
  %77 = load i32, i32* @DT_SINGLELINE, align 4
  br label %78

78:                                               ; preds = %76, %75
  %79 = phi i32 [ 0, %75 ], [ %77, %76 ]
  %80 = or i32 %72, %79
  %81 = call i32 @DrawTextW(i32 %63, i8* %64, i32 %65, %struct.TYPE_6__* %9, i32 %80)
  %82 = load i32, i32* %7, align 4
  %83 = load i32, i32* %8, align 4
  %84 = call i32 @SelectObject(i32 %82, i32 %83)
  %85 = load i32, i32* %4, align 4
  %86 = load i32, i32* %7, align 4
  %87 = call i32 @ReleaseDC(i32 %85, i32 %86)
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = sub nsw i32 %89, %91
  %93 = load i32, i32* @SM_CXBORDER, align 4
  %94 = call i32 @GetSystemMetrics(i32 %93)
  %95 = mul nsw i32 4, %94
  %96 = add nsw i32 %92, %95
  store i32 %96, i32* %10, align 4
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 3
  %100 = load i32, i32* %99, align 4
  %101 = sub nsw i32 %98, %100
  store i32 %101, i32* %11, align 4
  %102 = load i32, i32* @SM_CXICON, align 4
  %103 = call i32 @GetSystemMetrics(i32 %102)
  %104 = load i32, i32* %10, align 4
  %105 = sub nsw i32 %103, %104
  %106 = sdiv i32 %105, 2
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  store i32 %106, i32* %107, align 4
  %108 = load i32, i32* @SM_CYICON, align 4
  %109 = call i32 @GetSystemMetrics(i32 %108)
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 1
  store i32 %109, i32* %110, align 4
  %111 = load i32, i32* %5, align 4
  %112 = load i32, i32* %4, align 4
  %113 = call i32 @GetParent(i32 %112)
  %114 = call i32 @MapWindowPoints(i32 %111, i32 %113, %struct.TYPE_7__* %12, i32 1)
  %115 = load i32, i32* %4, align 4
  %116 = load i32, i32* %5, align 4
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* %10, align 4
  %122 = load i32, i32* %11, align 4
  %123 = load i32, i32* @SWP_NOACTIVATE, align 4
  %124 = call i32 @SetWindowPos(i32 %115, i32 %116, i32 %118, i32 %120, i32 %121, i32 %122, i32 %123)
  %125 = load i32, i32* @TRUE, align 4
  store i32 %125, i32* %3, align 4
  br label %126

126:                                              ; preds = %78, %47
  %127 = load i32, i32* %3, align 4
  ret i32 %127
}

declare dso_local i32 @GetWindowTextW(i32, i8*, i32) #1

declare dso_local i32 @strcpyW(i8*, i8*) #1

declare dso_local i32 @strlenW(i8*) #1

declare dso_local i32 @GetDC(i32) #1

declare dso_local i32 @SelectObject(i32, i32) #1

declare dso_local i32 @SetRect(%struct.TYPE_6__*, i32, i32, i32, i32) #1

declare dso_local i32 @GetSystemMetrics(i32) #1

declare dso_local i32 @DrawTextW(i32, i8*, i32, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @ReleaseDC(i32, i32) #1

declare dso_local i32 @MapWindowPoints(i32, i32, %struct.TYPE_7__*, i32) #1

declare dso_local i32 @GetParent(i32) #1

declare dso_local i32 @SetWindowPos(i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
