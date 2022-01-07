; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/wbemprox/extr_builtin.c_get_installeddriver.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/wbemprox/extr_builtin.c_get_installeddriver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@get_installeddriver.driver_amdW = internal constant [13 x i8] c"aticfx32.dll\00", align 1
@get_installeddriver.driver_intelW = internal constant [15 x i8] c"igdumdim32.dll\00", align 1
@get_installeddriver.driver_nvidiaW = internal constant [12 x i8] c"nvd3dum.dll\00", align 1
@get_installeddriver.driver_wineW = internal constant [9 x i8] c"wine.dll\00", align 1
@HW_VENDOR_AMD = common dso_local global i64 0, align 8
@HW_VENDOR_NVIDIA = common dso_local global i64 0, align 8
@HW_VENDOR_INTEL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i64)* @get_installeddriver to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_installeddriver(i64 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %4 = load i64, i64* %3, align 8
  %5 = load i64, i64* @HW_VENDOR_AMD, align 8
  %6 = icmp eq i64 %4, %5
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @get_installeddriver.driver_amdW, i64 0, i64 0), i8** %2, align 8
  br label %21

8:                                                ; preds = %1
  %9 = load i64, i64* %3, align 8
  %10 = load i64, i64* @HW_VENDOR_NVIDIA, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @get_installeddriver.driver_nvidiaW, i64 0, i64 0), i8** %2, align 8
  br label %21

13:                                               ; preds = %8
  %14 = load i64, i64* %3, align 8
  %15 = load i64, i64* @HW_VENDOR_INTEL, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @get_installeddriver.driver_intelW, i64 0, i64 0), i8** %2, align 8
  br label %21

18:                                               ; preds = %13
  br label %19

19:                                               ; preds = %18
  br label %20

20:                                               ; preds = %19
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @get_installeddriver.driver_wineW, i64 0, i64 0), i8** %2, align 8
  br label %21

21:                                               ; preds = %20, %17, %12, %7
  %22 = load i8*, i8** %2, align 8
  ret i8* %22
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
