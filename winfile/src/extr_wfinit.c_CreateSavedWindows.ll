; ModuleID = '/home/carl/AnghaBench/winfile/src/extr_wfinit.c_CreateSavedWindows.c'
source_filename = "/home/carl/AnghaBench/winfile/src/extr_wfinit.c_CreateSavedWindows.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, %struct.TYPE_6__, %struct.TYPE_5__, i64*, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i64, i64, i64, i64 }

@MAXPATHLEN = common dso_local global i32 0, align 4
@szDirKeyFormat = common dso_local global i32 0, align 4
@szSettings = common dso_local global i32 0, align 4
@szNULL = common dso_local global i32 0, align 4
@szTheINIFile = common dso_local global i32 0, align 4
@dwNewView = common dso_local global i32 0, align 4
@dwNewSort = common dso_local global i32 0, align 4
@dwNewAttribs = common dso_local global i32 0, align 4
@SWP_NOSIZE = common dso_local global i32 0, align 4
@SWP_NOZORDER = common dso_local global i32 0, align 4
@SWP_NOACTIVATE = common dso_local global i32 0, align 4
@szOriginalDirPath = common dso_local global i64* null, align 8
@szStarDotStar = common dso_local global i32 0, align 4
@CW_USEDEFAULT = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CreateSavedWindows() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca [10 x i64], align 16
  %5 = alloca %struct.TYPE_7__, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = load i32, i32* @MAXPATHLEN, align 4
  %12 = mul nsw i32 2, %11
  %13 = add nsw i32 %12, 49
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %2, align 8
  %16 = alloca i64, i64 %14, align 16
  store i64 %14, i64* %3, align 8
  %17 = load i32, i32* @MAXPATHLEN, align 4
  %18 = mul nsw i32 2, %17
  %19 = zext i32 %18 to i64
  %20 = alloca i64, i64 %19, align 16
  store i64 %19, i64* %6, align 8
  store i32 1, i32* %7, align 4
  store i32 0, i32* %9, align 4
  br label %21

21:                                               ; preds = %106, %0
  %22 = getelementptr inbounds [10 x i64], [10 x i64]* %4, i64 0, i64 0
  %23 = load i32, i32* @szDirKeyFormat, align 4
  %24 = load i32, i32* %7, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %7, align 4
  %26 = call i32 @wsprintf(i64* %22, i32 %23, i32 %24)
  %27 = load i32, i32* @szSettings, align 4
  %28 = getelementptr inbounds [10 x i64], [10 x i64]* %4, i64 0, i64 0
  %29 = load i32, i32* @szNULL, align 4
  %30 = call i32 @COUNTOF(i64* %16)
  %31 = load i32, i32* @szTheINIFile, align 4
  %32 = call i32 @GetPrivateProfileString(i32 %27, i64* %28, i32 %29, i64* %16, i32 %30, i32 %31)
  %33 = load i64, i64* %16, align 16
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %105

35:                                               ; preds = %21
  %36 = call i32 @GetSavedWindow(i64* %16, %struct.TYPE_7__* %5)
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 4
  %38 = load i64*, i64** %37, align 8
  %39 = call i32 @lstrcpy(i64* %20, i64* %38)
  %40 = call i32 @StripFilespec(i64* %20)
  %41 = call i32 @StripBackslash(i64* %20)
  %42 = call i32 @CheckDirExists(i64* %20)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %35
  br label %106

45:                                               ; preds = %35
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 7
  %47 = load i32, i32* %46, align 8
  store i32 %47, i32* @dwNewView, align 4
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 6
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* @dwNewSort, align 4
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 5
  %51 = load i32, i32* %50, align 8
  store i32 %51, i32* @dwNewAttribs, align 4
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 4
  %53 = load i64*, i64** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 3
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 3
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 3
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 3
  %62 = load i64, i64* %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 3
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = sub nsw i64 %62, %65
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 3
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 3
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = sub nsw i64 %69, %72
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @CreateTreeWindow(i64* %53, i64 %56, i64 %59, i64 %66, i64 %73, i32 %75)
  store i32 %76, i32* %8, align 4
  %77 = load i32, i32* %8, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %80, label %79

79:                                               ; preds = %45
  br label %106

80:                                               ; preds = %45
  %81 = load i32, i32* %9, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %9, align 4
  %83 = load i32, i32* %8, align 4
  %84 = call i64 @IsIconic(i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %100

86:                                               ; preds = %80
  %87 = load i32, i32* %8, align 4
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 2
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 2
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @SWP_NOSIZE, align 4
  %95 = load i32, i32* @SWP_NOZORDER, align 4
  %96 = or i32 %94, %95
  %97 = load i32, i32* @SWP_NOACTIVATE, align 4
  %98 = or i32 %96, %97
  %99 = call i32 @SetWindowPos(i32 %87, i32* null, i32 %90, i32 %93, i32 0, i32 0, i32 %98)
  br label %100

100:                                              ; preds = %86, %80
  %101 = load i32, i32* %8, align 4
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @ShowWindow(i32 %101, i32 %103)
  br label %105

105:                                              ; preds = %100, %21
  br label %106

106:                                              ; preds = %105, %79, %44
  %107 = load i64, i64* %16, align 16
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %21, label %109

109:                                              ; preds = %106
  %110 = load i32, i32* %9, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %128, label %112

112:                                              ; preds = %109
  %113 = load i64*, i64** @szOriginalDirPath, align 8
  %114 = call i32 @lstrcpy(i64* %16, i64* %113)
  %115 = call i32 @AddBackslash(i64* %16)
  %116 = load i32, i32* @szStarDotStar, align 4
  %117 = call i32 @lstrcat(i64* %16, i32 %116)
  %118 = load i64, i64* @CW_USEDEFAULT, align 8
  %119 = load i64, i64* @CW_USEDEFAULT, align 8
  %120 = call i32 @CreateTreeWindow(i64* %16, i64 %118, i64 0, i64 %119, i64 0, i32 -1)
  store i32 %120, i32* %8, align 4
  %121 = load i32, i32* %8, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %125, label %123

123:                                              ; preds = %112
  %124 = load i32, i32* @FALSE, align 4
  store i32 %124, i32* %1, align 4
  store i32 1, i32* %10, align 4
  br label %130

125:                                              ; preds = %112
  %126 = load i32, i32* %9, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %9, align 4
  br label %128

128:                                              ; preds = %125, %109
  %129 = load i32, i32* @TRUE, align 4
  store i32 %129, i32* %1, align 4
  store i32 1, i32* %10, align 4
  br label %130

130:                                              ; preds = %128, %123
  %131 = load i8*, i8** %2, align 8
  call void @llvm.stackrestore(i8* %131)
  %132 = load i32, i32* %1, align 4
  ret i32 %132
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @wsprintf(i64*, i32, i32) #2

declare dso_local i32 @GetPrivateProfileString(i32, i64*, i32, i64*, i32, i32) #2

declare dso_local i32 @COUNTOF(i64*) #2

declare dso_local i32 @GetSavedWindow(i64*, %struct.TYPE_7__*) #2

declare dso_local i32 @lstrcpy(i64*, i64*) #2

declare dso_local i32 @StripFilespec(i64*) #2

declare dso_local i32 @StripBackslash(i64*) #2

declare dso_local i32 @CheckDirExists(i64*) #2

declare dso_local i32 @CreateTreeWindow(i64*, i64, i64, i64, i64, i32) #2

declare dso_local i64 @IsIconic(i32) #2

declare dso_local i32 @SetWindowPos(i32, i32*, i32, i32, i32, i32, i32) #2

declare dso_local i32 @ShowWindow(i32, i32) #2

declare dso_local i32 @AddBackslash(i64*) #2

declare dso_local i32 @lstrcat(i64*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
