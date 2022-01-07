; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_rdpsnd_sgi.c_wave_out_volume.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_rdpsnd_sgi.c_wave_out_volume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32* }

@IRIX_MAX_VOL = common dso_local global double 0.000000e+00, align 8
@min_volume = common dso_local global i64 0, align 8
@volume_range = common dso_local global double 0.000000e+00, align 8
@AL_GAIN = common dso_local global i32 0, align 4
@AL_DEFAULT_OUTPUT = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"wave_out_volume: alSetParams failed: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wave_out_volume(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca [1 x %struct.TYPE_5__], align 16
  %8 = alloca [8 x i32], align 16
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* %3, align 4
  %10 = sitofp i32 %9 to double
  %11 = load double, double* @IRIX_MAX_VOL, align 8
  %12 = fdiv double %10, %11
  store double %12, double* %5, align 8
  %13 = load i32, i32* %4, align 4
  %14 = sitofp i32 %13 to double
  %15 = load double, double* @IRIX_MAX_VOL, align 8
  %16 = fdiv double %14, %15
  store double %16, double* %6, align 8
  %17 = load i64, i64* @min_volume, align 8
  %18 = sitofp i64 %17 to double
  %19 = load double, double* %5, align 8
  %20 = load double, double* @volume_range, align 8
  %21 = fmul double %19, %20
  %22 = fadd double %18, %21
  %23 = fptosi double %22 to i64
  %24 = call i32 @alDoubleToFixed(i64 %23)
  %25 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 0
  store i32 %24, i32* %25, align 16
  %26 = load i64, i64* @min_volume, align 8
  %27 = sitofp i64 %26 to double
  %28 = load double, double* %6, align 8
  %29 = load double, double* @volume_range, align 8
  %30 = fmul double %28, %29
  %31 = fadd double %27, %30
  %32 = fptosi double %31 to i64
  %33 = call i32 @alDoubleToFixed(i64 %32)
  %34 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 1
  store i32 %33, i32* %34, align 4
  %35 = load i32, i32* @AL_GAIN, align 4
  %36 = getelementptr inbounds [1 x %struct.TYPE_5__], [1 x %struct.TYPE_5__]* %7, i64 0, i64 0
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 2
  store i32 %35, i32* %37, align 16
  %38 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 0
  %39 = getelementptr inbounds [1 x %struct.TYPE_5__], [1 x %struct.TYPE_5__]* %7, i64 0, i64 0
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  store i32* %38, i32** %41, align 8
  %42 = getelementptr inbounds [1 x %struct.TYPE_5__], [1 x %struct.TYPE_5__]* %7, i64 0, i64 0
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  store i32 8, i32* %43, align 16
  %44 = load i32, i32* @AL_DEFAULT_OUTPUT, align 4
  %45 = getelementptr inbounds [1 x %struct.TYPE_5__], [1 x %struct.TYPE_5__]* %7, i64 0, i64 0
  %46 = call i64 @alSetParams(i32 %44, %struct.TYPE_5__* %45, i32 1)
  %47 = icmp slt i64 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %2
  %49 = load i32, i32* @stderr, align 4
  %50 = call i32 (...) @oserror()
  %51 = call i8* @alGetErrorString(i32 %50)
  %52 = call i32 (i32, i8*, ...) @fprintf(i32 %49, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i8* %51)
  br label %53

53:                                               ; preds = %48, %2
  ret void
}

declare dso_local i32 @alDoubleToFixed(i64) #1

declare dso_local i64 @alSetParams(i32, %struct.TYPE_5__*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i8* @alGetErrorString(i32) #1

declare dso_local i32 @oserror(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
