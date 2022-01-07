; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/wbemprox/extr_builtin.c_get_service_type.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/wbemprox/extr_builtin.c_get_service_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@get_service_type.filesystem_driverW = internal constant [19 x float] [float 7.000000e+01, float 1.050000e+02, float 1.080000e+02, float 1.010000e+02, float 3.200000e+01, float 8.300000e+01, float 1.210000e+02, float 1.150000e+02, float 1.160000e+02, float 1.010000e+02, float 1.090000e+02, float 3.200000e+01, float 6.800000e+01, float 1.140000e+02, float 1.050000e+02, float 1.180000e+02, float 1.010000e+02, float 1.140000e+02, float 0.000000e+00], align 16
@get_service_type.kernel_driverW = internal constant [14 x float] [float 7.500000e+01, float 1.010000e+02, float 1.140000e+02, float 1.100000e+02, float 1.010000e+02, float 1.080000e+02, float 3.200000e+01, float 6.800000e+01, float 1.140000e+02, float 1.050000e+02, float 1.180000e+02, float 1.010000e+02, float 1.140000e+02, float 0.000000e+00], align 16
@get_service_type.own_processW = internal constant [12 x float] [float 7.900000e+01, float 1.190000e+02, float 1.100000e+02, float 3.200000e+01, float 8.000000e+01, float 1.140000e+02, float 1.110000e+02, float 9.900000e+01, float 1.010000e+02, float 1.150000e+02, float 1.150000e+02, float 0.000000e+00], align 16
@get_service_type.share_processW = internal constant [14 x float] [float 8.300000e+01, float 1.040000e+02, float 9.700000e+01, float 1.140000e+02, float 1.010000e+02, float 3.200000e+01, float 8.000000e+01, float 1.140000e+02, float 1.110000e+02, float 9.900000e+01, float 1.010000e+02, float 1.150000e+02, float 1.150000e+02, float 0.000000e+00], align 16
@SERVICE_KERNEL_DRIVER = common dso_local global i32 0, align 4
@SERVICE_FILE_SYSTEM_DRIVER = common dso_local global i32 0, align 4
@SERVICE_WIN32_OWN_PROCESS = common dso_local global i32 0, align 4
@SERVICE_WIN32_SHARE_PROCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"unhandled type 0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (float* (i32)* @get_service_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal float* @get_service_type(i32 %0) #0 {
  %2 = alloca float*, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = load i32, i32* @SERVICE_KERNEL_DRIVER, align 4
  %6 = and i32 %4, %5
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store float* getelementptr inbounds ([14 x float], [14 x float]* @get_service_type.kernel_driverW, i64 0, i64 0), float** %2, align 8
  br label %34

9:                                                ; preds = %1
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @SERVICE_FILE_SYSTEM_DRIVER, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %9
  store float* getelementptr inbounds ([19 x float], [19 x float]* @get_service_type.filesystem_driverW, i64 0, i64 0), float** %2, align 8
  br label %34

15:                                               ; preds = %9
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* @SERVICE_WIN32_OWN_PROCESS, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  store float* getelementptr inbounds ([12 x float], [12 x float]* @get_service_type.own_processW, i64 0, i64 0), float** %2, align 8
  br label %34

21:                                               ; preds = %15
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* @SERVICE_WIN32_SHARE_PROCESS, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  store float* getelementptr inbounds ([14 x float], [14 x float]* @get_service_type.share_processW, i64 0, i64 0), float** %2, align 8
  br label %34

27:                                               ; preds = %21
  %28 = load i32, i32* %3, align 4
  %29 = call i32 @ERR(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %28)
  br label %30

30:                                               ; preds = %27
  br label %31

31:                                               ; preds = %30
  br label %32

32:                                               ; preds = %31
  br label %33

33:                                               ; preds = %32
  store float* null, float** %2, align 8
  br label %34

34:                                               ; preds = %33, %26, %20, %14, %8
  %35 = load float*, float** %2, align 8
  ret float* %35
}

declare dso_local i32 @ERR(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
