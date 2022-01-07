; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/uxtheme/extr_msstyles.c_MSSTYLES_GetActiveThemeIni.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/uxtheme/extr_msstyles.c_MSSTYLES_GetActiveThemeIni.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i64*, i32, i64* }

@MSSTYLES_GetActiveThemeIni.szFileResNamesResource = internal constant [13 x float] [float 7.000000e+01, float 7.300000e+01, float 7.600000e+01, float 6.900000e+01, float 8.200000e+01, float 6.900000e+01, float 8.300000e+01, float 7.800000e+01, float 6.500000e+01, float 7.700000e+01, float 6.900000e+01, float 8.300000e+01, float 0.000000e+00], align 16
@.str = private unnamed_addr constant [28 x i8] c"FILERESNAMES map not found\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_3__*)* @MSSTYLES_GetActiveThemeIni to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @MSSTYLES_GetActiveThemeIni(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i64 0, i64* %4, align 8
  store i64 0, i64* %5, align 8
  store i64 0, i64* %6, align 8
  store i64 0, i64* %7, align 8
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 4
  %14 = load i64*, i64** %13, align 8
  store i64* %14, i64** %10, align 8
  br label %15

15:                                               ; preds = %28, %1
  %16 = load i64*, i64** %10, align 8
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %36

19:                                               ; preds = %15
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 8
  %23 = load i64*, i64** %10, align 8
  %24 = call i32 @lstrcmpiW(i32 %22, i64* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %19
  %27 = load i64, i64* %4, align 8
  store i64 %27, i64* %6, align 8
  br label %28

28:                                               ; preds = %26, %19
  %29 = load i64*, i64** %10, align 8
  %30 = call i64 @lstrlenW(i64* %29)
  %31 = add nsw i64 %30, 1
  %32 = load i64*, i64** %10, align 8
  %33 = getelementptr inbounds i64, i64* %32, i64 %31
  store i64* %33, i64** %10, align 8
  %34 = load i64, i64* %4, align 8
  %35 = add nsw i64 %34, 1
  store i64 %35, i64* %4, align 8
  br label %15

36:                                               ; preds = %15
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 2
  %39 = load i64*, i64** %38, align 8
  store i64* %39, i64** %10, align 8
  br label %40

40:                                               ; preds = %53, %36
  %41 = load i64*, i64** %10, align 8
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %61

44:                                               ; preds = %40
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i64*, i64** %10, align 8
  %49 = call i32 @lstrcmpiW(i32 %47, i64* %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %53, label %51

51:                                               ; preds = %44
  %52 = load i64, i64* %5, align 8
  store i64 %52, i64* %7, align 8
  br label %53

53:                                               ; preds = %51, %44
  %54 = load i64*, i64** %10, align 8
  %55 = call i64 @lstrlenW(i64* %54)
  %56 = add nsw i64 %55, 1
  %57 = load i64*, i64** %10, align 8
  %58 = getelementptr inbounds i64, i64* %57, i64 %56
  store i64* %58, i64** %10, align 8
  %59 = load i64, i64* %5, align 8
  %60 = add nsw i64 %59, 1
  store i64 %60, i64* %5, align 8
  br label %40

61:                                               ; preds = %40
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @MAKEINTRESOURCEW(i32 1)
  %66 = call i32 @FindResourceW(i32 %64, i32 %65, float* getelementptr inbounds ([13 x float], [13 x float]* @MSSTYLES_GetActiveThemeIni.szFileResNamesResource, i64 0, i64 0))
  store i32 %66, i32* %11, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %70, label %68

68:                                               ; preds = %61
  %69 = call i32 @TRACE(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  store i32* null, i32** %2, align 8
  br label %100

70:                                               ; preds = %61
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* %11, align 4
  %75 = call i64* @LoadResource(i32 %73, i32 %74)
  store i64* %75, i64** %10, align 8
  %76 = load i64, i64* %5, align 8
  %77 = load i64, i64* %6, align 8
  %78 = mul nsw i64 %76, %77
  %79 = load i64, i64* %7, align 8
  %80 = add nsw i64 %78, %79
  store i64 %80, i64* %9, align 8
  store i64 0, i64* %8, align 8
  br label %81

81:                                               ; preds = %91, %70
  %82 = load i64, i64* %8, align 8
  %83 = load i64, i64* %9, align 8
  %84 = icmp slt i64 %82, %83
  br i1 %84, label %85, label %94

85:                                               ; preds = %81
  %86 = load i64*, i64** %10, align 8
  %87 = call i64 @lstrlenW(i64* %86)
  %88 = add nsw i64 %87, 1
  %89 = load i64*, i64** %10, align 8
  %90 = getelementptr inbounds i64, i64* %89, i64 %88
  store i64* %90, i64** %10, align 8
  br label %91

91:                                               ; preds = %85
  %92 = load i64, i64* %8, align 8
  %93 = add nsw i64 %92, 1
  store i64 %93, i64* %8, align 8
  br label %81

94:                                               ; preds = %81
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load i64*, i64** %10, align 8
  %99 = call i32* @UXINI_LoadINI(i32 %97, i64* %98)
  store i32* %99, i32** %2, align 8
  br label %100

100:                                              ; preds = %94, %68
  %101 = load i32*, i32** %2, align 8
  ret i32* %101
}

declare dso_local i32 @lstrcmpiW(i32, i64*) #1

declare dso_local i64 @lstrlenW(i64*) #1

declare dso_local i32 @FindResourceW(i32, i32, float*) #1

declare dso_local i32 @MAKEINTRESOURCEW(i32) #1

declare dso_local i32 @TRACE(i8*) #1

declare dso_local i64* @LoadResource(i32, i32) #1

declare dso_local i32* @UXINI_LoadINI(i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
