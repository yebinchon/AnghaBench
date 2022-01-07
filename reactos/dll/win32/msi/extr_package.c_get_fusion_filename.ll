; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_package.c_get_fusion_filename.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_package.c_get_fusion_filename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@get_fusion_filename.fusion = internal constant [11 x float] [float 1.020000e+02, float 1.170000e+02, float 1.150000e+02, float 1.050000e+02, float 1.110000e+02, float 1.100000e+02, float 4.600000e+01, float 1.000000e+02, float 1.080000e+02, float 1.080000e+02, float 0.000000e+00], align 16
@get_fusion_filename.subkey = internal constant [43 x float] [float 8.300000e+01, float 1.110000e+02, float 1.020000e+02, float 1.160000e+02, float 1.190000e+02, float 9.700000e+01, float 1.140000e+02, float 1.010000e+02, float 9.200000e+01, float 7.700000e+01, float 1.050000e+02, float 9.900000e+01, float 1.140000e+02, float 1.110000e+02, float 1.150000e+02, float 1.110000e+02, float 1.020000e+02, float 1.160000e+02, float 9.200000e+01, float 7.800000e+01, float 6.900000e+01, float 8.400000e+01, float 3.200000e+01, float 7.000000e+01, float 1.140000e+02, float 9.700000e+01, float 1.090000e+02, float 1.010000e+02, float 1.190000e+02, float 1.110000e+02, float 1.140000e+02, float 1.070000e+02, float 3.200000e+01, float 8.300000e+01, float 1.010000e+02, float 1.160000e+02, float 1.170000e+02, float 1.120000e+02, float 9.200000e+01, float 7.800000e+01, float 6.800000e+01, float 8.000000e+01, float 0.000000e+00], align 16
@get_fusion_filename.subdir = internal constant [25 x float] [float 7.700000e+01, float 1.050000e+02, float 9.900000e+01, float 1.140000e+02, float 1.110000e+02, float 1.150000e+02, float 1.110000e+02, float 1.020000e+02, float 1.160000e+02, float 4.600000e+01, float 7.800000e+01, float 6.900000e+01, float 8.400000e+01, float 9.200000e+01, float 7.000000e+01, float 1.140000e+02, float 9.700000e+01, float 1.090000e+02, float 1.010000e+02, float 1.190000e+02, float 1.110000e+02, float 1.140000e+02, float 1.070000e+02, float 9.200000e+01, float 0.000000e+00], align 16
@get_fusion_filename.v2050727 = internal constant [11 x float] [float 1.180000e+02, float 5.000000e+01, float 4.600000e+01, float 4.800000e+01, float 4.600000e+01, float 5.300000e+01, float 4.800000e+01, float 5.500000e+01, float 5.000000e+01, float 5.500000e+01, float 0.000000e+00], align 16
@get_fusion_filename.v4client = internal constant [10 x float] [float 1.180000e+02, float 5.200000e+01, float 9.200000e+01, float 6.700000e+01, float 1.080000e+02, float 1.050000e+02, float 1.010000e+02, float 1.100000e+02, float 1.160000e+02, float 0.000000e+00], align 16
@get_fusion_filename.installpath = internal constant [12 x float] [float 7.300000e+01, float 1.100000e+02, float 1.150000e+02, float 1.160000e+02, float 9.700000e+01, float 1.080000e+02, float 1.080000e+02, float 8.000000e+01, float 9.700000e+01, float 1.160000e+02, float 1.040000e+02, float 0.000000e+00], align 16
@MAX_PATH = common dso_local global i32 0, align 4
@HKEY_LOCAL_MACHINE = common dso_local global i32 0, align 4
@KEY_CREATE_SUB_KEY = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@KEY_QUERY_VALUE = common dso_local global i32 0, align 4
@szBackSlash = common dso_local global float* null, align 8
@INVALID_FILE_ATTRIBUTES = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"found %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (float* (i32*)* @get_fusion_filename to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal float* @get_fusion_filename(i32* %0) #0 {
  %2 = alloca float*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca float*, align 8
  %14 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %15 = load i32, i32* @MAX_PATH, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %10, align 8
  %18 = alloca float, i64 %16, align 16
  store i64 %16, i64* %11, align 8
  %19 = load i32, i32* @MAX_PATH, align 4
  %20 = zext i32 %19 to i64
  %21 = alloca float, i64 %20, align 16
  store i64 %20, i64* %12, align 8
  store float* null, float** %13, align 8
  %22 = load i32, i32* @HKEY_LOCAL_MACHINE, align 4
  %23 = load i32, i32* @KEY_CREATE_SUB_KEY, align 4
  %24 = call i64 @RegOpenKeyExW(i32 %22, float* getelementptr inbounds ([43 x float], [43 x float]* @get_fusion_filename.subkey, i64 0, i64 0), i32 0, i32 %23, i32* %4)
  store i64 %24, i64* %6, align 8
  %25 = load i64, i64* %6, align 8
  %26 = load i64, i64* @ERROR_SUCCESS, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %1
  store float* null, float** %2, align 8
  store i32 1, i32* %14, align 4
  br label %135

29:                                               ; preds = %1
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* @KEY_QUERY_VALUE, align 4
  %32 = call i32 @RegCreateKeyExW(i32 %30, float* getelementptr inbounds ([10 x float], [10 x float]* @get_fusion_filename.v4client, i64 0, i64 0), i32 0, i32* null, i32 0, i32 %31, i32* null, i32* %5, i32* null)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %79, label %34

34:                                               ; preds = %29
  %35 = mul nuw i64 4, %20
  %36 = udiv i64 %35, 4
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %5, align 4
  %39 = bitcast float* %21 to i32*
  %40 = call i32 @RegQueryValueExW(i32 %38, float* getelementptr inbounds ([12 x float], [12 x float]* @get_fusion_filename.installpath, i64 0, i64 0), i32* null, i32* %9, i32* %39, i32* %7)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %76, label %42

42:                                               ; preds = %34
  %43 = call i32 @strlenW(float* %21)
  %44 = call i32 @strlenW(float* getelementptr inbounds ([11 x float], [11 x float]* @get_fusion_filename.fusion, i64 0, i64 0))
  %45 = add nsw i32 %43, %44
  %46 = add nsw i32 %45, 2
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %8, align 4
  %48 = sext i32 %47 to i64
  %49 = mul i64 %48, 4
  %50 = trunc i64 %49 to i32
  %51 = call float* @msi_alloc(i32 %50)
  store float* %51, float** %13, align 8
  %52 = icmp ne float* %51, null
  br i1 %52, label %54, label %53

53:                                               ; preds = %42
  store float* null, float** %2, align 8
  store i32 1, i32* %14, align 4
  br label %135

54:                                               ; preds = %42
  %55 = load float*, float** %13, align 8
  %56 = call i32 @strcpyW(float* %55, float* %21)
  %57 = load float*, float** %13, align 8
  %58 = load float*, float** @szBackSlash, align 8
  %59 = call i32 @strcatW(float* %57, float* %58)
  %60 = load float*, float** %13, align 8
  %61 = call i32 @strcatW(float* %60, float* getelementptr inbounds ([11 x float], [11 x float]* @get_fusion_filename.fusion, i64 0, i64 0))
  %62 = load float*, float** %13, align 8
  %63 = call i64 @GetFileAttributesW(float* %62)
  %64 = load i64, i64* @INVALID_FILE_ATTRIBUTES, align 8
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %66, label %75

66:                                               ; preds = %54
  %67 = load float*, float** %13, align 8
  %68 = call i32 @debugstr_w(float* %67)
  %69 = call i32 @TRACE(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %68)
  %70 = load i32, i32* %5, align 4
  %71 = call i32 @RegCloseKey(i32 %70)
  %72 = load i32, i32* %4, align 4
  %73 = call i32 @RegCloseKey(i32 %72)
  %74 = load float*, float** %13, align 8
  store float* %74, float** %2, align 8
  store i32 1, i32* %14, align 4
  br label %135

75:                                               ; preds = %54
  br label %76

76:                                               ; preds = %75, %34
  %77 = load i32, i32* %5, align 4
  %78 = call i32 @RegCloseKey(i32 %77)
  br label %79

79:                                               ; preds = %76, %29
  %80 = load i32, i32* %4, align 4
  %81 = load i32, i32* @KEY_QUERY_VALUE, align 4
  %82 = call i32 @RegCreateKeyExW(i32 %80, float* getelementptr inbounds ([11 x float], [11 x float]* @get_fusion_filename.v2050727, i64 0, i64 0), i32 0, i32* null, i32 0, i32 %81, i32* null, i32* %5, i32* null)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %131, label %84

84:                                               ; preds = %79
  %85 = load i32, i32* %5, align 4
  %86 = call i32 @RegCloseKey(i32 %85)
  %87 = load i32, i32* @MAX_PATH, align 4
  %88 = call i32 @GetWindowsDirectoryW(float* %18, i32 %87)
  %89 = call i32 @strlenW(float* %18)
  %90 = call i32 @strlenW(float* getelementptr inbounds ([25 x float], [25 x float]* @get_fusion_filename.subdir, i64 0, i64 0))
  %91 = add nsw i32 %89, %90
  %92 = call i32 @strlenW(float* getelementptr inbounds ([11 x float], [11 x float]* @get_fusion_filename.v2050727, i64 0, i64 0))
  %93 = add nsw i32 %91, %92
  %94 = call i32 @strlenW(float* getelementptr inbounds ([11 x float], [11 x float]* @get_fusion_filename.fusion, i64 0, i64 0))
  %95 = add nsw i32 %93, %94
  %96 = add nsw i32 %95, 3
  store i32 %96, i32* %8, align 4
  %97 = load i32, i32* %8, align 4
  %98 = sext i32 %97 to i64
  %99 = mul i64 %98, 4
  %100 = trunc i64 %99 to i32
  %101 = call float* @msi_alloc(i32 %100)
  store float* %101, float** %13, align 8
  %102 = icmp ne float* %101, null
  br i1 %102, label %104, label %103

103:                                              ; preds = %84
  store float* null, float** %2, align 8
  store i32 1, i32* %14, align 4
  br label %135

104:                                              ; preds = %84
  %105 = load float*, float** %13, align 8
  %106 = call i32 @strcpyW(float* %105, float* %18)
  %107 = load float*, float** %13, align 8
  %108 = load float*, float** @szBackSlash, align 8
  %109 = call i32 @strcatW(float* %107, float* %108)
  %110 = load float*, float** %13, align 8
  %111 = call i32 @strcatW(float* %110, float* getelementptr inbounds ([25 x float], [25 x float]* @get_fusion_filename.subdir, i64 0, i64 0))
  %112 = load float*, float** %13, align 8
  %113 = call i32 @strcatW(float* %112, float* getelementptr inbounds ([11 x float], [11 x float]* @get_fusion_filename.v2050727, i64 0, i64 0))
  %114 = load float*, float** %13, align 8
  %115 = load float*, float** @szBackSlash, align 8
  %116 = call i32 @strcatW(float* %114, float* %115)
  %117 = load float*, float** %13, align 8
  %118 = call i32 @strcatW(float* %117, float* getelementptr inbounds ([11 x float], [11 x float]* @get_fusion_filename.fusion, i64 0, i64 0))
  %119 = load float*, float** %13, align 8
  %120 = call i64 @GetFileAttributesW(float* %119)
  %121 = load i64, i64* @INVALID_FILE_ATTRIBUTES, align 8
  %122 = icmp ne i64 %120, %121
  br i1 %122, label %123, label %130

123:                                              ; preds = %104
  %124 = load float*, float** %13, align 8
  %125 = call i32 @debugstr_w(float* %124)
  %126 = call i32 @TRACE(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %125)
  %127 = load i32, i32* %4, align 4
  %128 = call i32 @RegCloseKey(i32 %127)
  %129 = load float*, float** %13, align 8
  store float* %129, float** %2, align 8
  store i32 1, i32* %14, align 4
  br label %135

130:                                              ; preds = %104
  br label %131

131:                                              ; preds = %130, %79
  %132 = load i32, i32* %4, align 4
  %133 = call i32 @RegCloseKey(i32 %132)
  %134 = load float*, float** %13, align 8
  store float* %134, float** %2, align 8
  store i32 1, i32* %14, align 4
  br label %135

135:                                              ; preds = %131, %123, %103, %66, %53, %28
  %136 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %136)
  %137 = load float*, float** %2, align 8
  ret float* %137
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @RegOpenKeyExW(i32, float*, i32, i32, i32*) #2

declare dso_local i32 @RegCreateKeyExW(i32, float*, i32, i32*, i32, i32, i32*, i32*, i32*) #2

declare dso_local i32 @RegQueryValueExW(i32, float*, i32*, i32*, i32*, i32*) #2

declare dso_local i32 @strlenW(float*) #2

declare dso_local float* @msi_alloc(i32) #2

declare dso_local i32 @strcpyW(float*, float*) #2

declare dso_local i32 @strcatW(float*, float*) #2

declare dso_local i64 @GetFileAttributesW(float*) #2

declare dso_local i32 @TRACE(i8*, i32) #2

declare dso_local i32 @debugstr_w(float*) #2

declare dso_local i32 @RegCloseKey(i32) #2

declare dso_local i32 @GetWindowsDirectoryW(float*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
