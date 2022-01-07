; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/freetype/src/tools/ftrandom/extr_ftrandom.c_getErrorCnt.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/freetype/src/tools/ftrandom/extr_ftrandom.c_getErrorCnt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fontlist = type { double }

@error_count = common dso_local global i64 0, align 8
@error_fraction = common dso_local global double 0.000000e+00, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fontlist*)* @getErrorCnt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @getErrorCnt(%struct.fontlist* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fontlist*, align 8
  store %struct.fontlist* %0, %struct.fontlist** %3, align 8
  %4 = load i64, i64* @error_count, align 8
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %6, label %10

6:                                                ; preds = %1
  %7 = load double, double* @error_fraction, align 8
  %8 = fcmp oeq double %7, 0.000000e+00
  br i1 %8, label %9, label %10

9:                                                ; preds = %6
  store i32 0, i32* %2, align 4
  br label %21

10:                                               ; preds = %6, %1
  %11 = load i64, i64* @error_count, align 8
  %12 = load double, double* @error_fraction, align 8
  %13 = load %struct.fontlist*, %struct.fontlist** %3, align 8
  %14 = getelementptr inbounds %struct.fontlist, %struct.fontlist* %13, i32 0, i32 0
  %15 = load double, double* %14, align 8
  %16 = fmul double %12, %15
  %17 = fptoui double %16 to i32
  %18 = zext i32 %17 to i64
  %19 = add nsw i64 %11, %18
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %2, align 4
  br label %21

21:                                               ; preds = %10, %9
  %22 = load i32, i32* %2, align 4
  ret i32 %22
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
