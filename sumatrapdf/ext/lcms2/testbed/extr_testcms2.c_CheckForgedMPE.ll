; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testcms2.c_CheckForgedMPE.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testcms2.c_CheckForgedMPE.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [12 x i8] c"bad_mpe.icc\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@cmsSigLabData = common dso_local global i64 0, align 8
@PT_Lab = common dso_local global i32 0, align 4
@PT_ANY = common dso_local global i32 0, align 4
@ErrorReportingFunction = common dso_local global i32 0, align 4
@TYPE_BGR_8 = common dso_local global i32 0, align 4
@FatalErrorQuit = common dso_local global i32 0, align 4
@TrappedError = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @CheckForgedMPE to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CheckForgedMPE() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca [4 x double], align 16
  %12 = alloca [128 x double], align 16
  %13 = alloca [128 x double], align 16
  store i64 0, i64* %8, align 8
  store i64 0, i64* %9, align 8
  %14 = call i32 (...) @DbgThread()
  %15 = call i32 @cmsOpenProfileFromFile(i32 %14, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* %3, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %0
  store i32 0, i32* %1, align 4
  br label %125

19:                                               ; preds = %0
  %20 = call i32 (...) @DbgThread()
  %21 = call i32 @cmsCreate_sRGBProfile(i32 %20)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %19
  %25 = call i32 (...) @DbgThread()
  %26 = load i32, i32* %3, align 4
  %27 = call i32 @cmsCloseProfile(i32 %25, i32 %26)
  store i32 0, i32* %1, align 4
  br label %125

28:                                               ; preds = %19
  %29 = call i32 (...) @DbgThread()
  %30 = load i32, i32* %3, align 4
  %31 = call i64 @cmsGetColorSpace(i32 %29, i32 %30)
  store i64 %31, i64* %5, align 8
  %32 = call i32 (...) @DbgThread()
  %33 = load i64, i64* %5, align 8
  %34 = call i64 @cmsChannelsOf(i32 %32, i64 %33)
  store i64 %34, i64* %6, align 8
  %35 = load i64, i64* %5, align 8
  %36 = load i64, i64* @cmsSigLabData, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %46

38:                                               ; preds = %28
  %39 = load i32, i32* @PT_Lab, align 4
  %40 = call i64 @COLORSPACE_SH(i32 %39)
  %41 = load i64, i64* %6, align 8
  %42 = call i64 @CHANNELS_SH(i64 %41)
  %43 = or i64 %40, %42
  %44 = call i64 @BYTES_SH(i32 0)
  %45 = or i64 %43, %44
  store i64 %45, i64* %7, align 8
  br label %54

46:                                               ; preds = %28
  %47 = load i32, i32* @PT_ANY, align 4
  %48 = call i64 @COLORSPACE_SH(i32 %47)
  %49 = load i64, i64* %6, align 8
  %50 = call i64 @CHANNELS_SH(i64 %49)
  %51 = or i64 %48, %50
  %52 = call i64 @BYTES_SH(i32 1)
  %53 = or i64 %51, %52
  store i64 %53, i64* %7, align 8
  br label %54

54:                                               ; preds = %46, %38
  %55 = call i32 (...) @DbgThread()
  %56 = load i32, i32* @ErrorReportingFunction, align 4
  %57 = call i32 @cmsSetLogErrorHandler(i32 %55, i32 %56)
  %58 = call i32 (...) @DbgThread()
  %59 = load i32, i32* %3, align 4
  %60 = load i64, i64* %7, align 8
  %61 = load i32, i32* %4, align 4
  %62 = load i32, i32* @TYPE_BGR_8, align 4
  %63 = load i64, i64* %8, align 8
  %64 = load i64, i64* %9, align 8
  %65 = call i32 @cmsCreateTransform(i32 %58, i32 %59, i64 %60, i32 %61, i32 %62, i64 %63, i64 %64)
  store i32 %65, i32* %10, align 4
  %66 = call i32 (...) @DbgThread()
  %67 = load i32, i32* %3, align 4
  %68 = call i32 @cmsCloseProfile(i32 %66, i32 %67)
  %69 = call i32 (...) @DbgThread()
  %70 = load i32, i32* %4, align 4
  %71 = call i32 @cmsCloseProfile(i32 %69, i32 %70)
  %72 = call i32 (...) @DbgThread()
  %73 = load i32, i32* @FatalErrorQuit, align 4
  %74 = call i32 @cmsSetLogErrorHandler(i32 %72, i32 %73)
  %75 = load i64, i64* @TrappedError, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %78, label %77

77:                                               ; preds = %54
  store i32 0, i32* %1, align 4
  br label %125

78:                                               ; preds = %54
  %79 = load i64, i64* @FALSE, align 8
  store i64 %79, i64* @TrappedError, align 8
  %80 = load i32, i32* %10, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %83, label %82

82:                                               ; preds = %78
  store i32 1, i32* %1, align 4
  br label %125

83:                                               ; preds = %78
  %84 = load i64, i64* %7, align 8
  %85 = call i64 @T_BYTES(i64 %84)
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %87, label %104

87:                                               ; preds = %83
  store i64 0, i64* %2, align 8
  br label %88

88:                                               ; preds = %95, %87
  %89 = load i64, i64* %2, align 8
  %90 = load i64, i64* %6, align 8
  %91 = icmp ult i64 %89, %90
  br i1 %91, label %92, label %98

92:                                               ; preds = %88
  %93 = load i64, i64* %2, align 8
  %94 = getelementptr inbounds [128 x double], [128 x double]* %12, i64 0, i64 %93
  store double 5.000000e-01, double* %94, align 8
  br label %95

95:                                               ; preds = %92
  %96 = load i64, i64* %2, align 8
  %97 = add i64 %96, 1
  store i64 %97, i64* %2, align 8
  br label %88

98:                                               ; preds = %88
  %99 = call i32 (...) @DbgThread()
  %100 = load i32, i32* %10, align 4
  %101 = getelementptr inbounds [128 x double], [128 x double]* %12, i64 0, i64 0
  %102 = getelementptr inbounds [4 x double], [4 x double]* %11, i64 0, i64 0
  %103 = call i32 @cmsDoTransform(i32 %99, i32 %100, double* %101, double* %102, i32 1)
  br label %121

104:                                              ; preds = %83
  store i64 0, i64* %2, align 8
  br label %105

105:                                              ; preds = %112, %104
  %106 = load i64, i64* %2, align 8
  %107 = load i64, i64* %6, align 8
  %108 = icmp ult i64 %106, %107
  br i1 %108, label %109, label %115

109:                                              ; preds = %105
  %110 = load i64, i64* %2, align 8
  %111 = getelementptr inbounds [128 x double], [128 x double]* %13, i64 0, i64 %110
  store double 1.280000e+02, double* %111, align 8
  br label %112

112:                                              ; preds = %109
  %113 = load i64, i64* %2, align 8
  %114 = add i64 %113, 1
  store i64 %114, i64* %2, align 8
  br label %105

115:                                              ; preds = %105
  %116 = call i32 (...) @DbgThread()
  %117 = load i32, i32* %10, align 4
  %118 = getelementptr inbounds [128 x double], [128 x double]* %13, i64 0, i64 0
  %119 = getelementptr inbounds [4 x double], [4 x double]* %11, i64 0, i64 0
  %120 = call i32 @cmsDoTransform(i32 %116, i32 %117, double* %118, double* %119, i32 1)
  br label %121

121:                                              ; preds = %115, %98
  %122 = call i32 (...) @DbgThread()
  %123 = load i32, i32* %10, align 4
  %124 = call i32 @cmsDeleteTransform(i32 %122, i32 %123)
  store i32 0, i32* %1, align 4
  br label %125

125:                                              ; preds = %121, %82, %77, %24, %18
  %126 = load i32, i32* %1, align 4
  ret i32 %126
}

declare dso_local i32 @cmsOpenProfileFromFile(i32, i8*, i8*) #1

declare dso_local i32 @DbgThread(...) #1

declare dso_local i32 @cmsCreate_sRGBProfile(i32) #1

declare dso_local i32 @cmsCloseProfile(i32, i32) #1

declare dso_local i64 @cmsGetColorSpace(i32, i32) #1

declare dso_local i64 @cmsChannelsOf(i32, i64) #1

declare dso_local i64 @COLORSPACE_SH(i32) #1

declare dso_local i64 @CHANNELS_SH(i64) #1

declare dso_local i64 @BYTES_SH(i32) #1

declare dso_local i32 @cmsSetLogErrorHandler(i32, i32) #1

declare dso_local i32 @cmsCreateTransform(i32, i32, i64, i32, i32, i64, i64) #1

declare dso_local i64 @T_BYTES(i64) #1

declare dso_local i32 @cmsDoTransform(i32, i32, double*, double*, i32) #1

declare dso_local i32 @cmsDeleteTransform(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
