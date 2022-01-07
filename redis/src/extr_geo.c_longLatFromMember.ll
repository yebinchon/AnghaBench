; ModuleID = '/home/carl/AnghaBench/redis/src/extr_geo.c_longLatFromMember.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_geo.c_longLatFromMember.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@C_ERR = common dso_local global i64 0, align 8
@C_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @longLatFromMember(%struct.TYPE_5__* %0, %struct.TYPE_5__* %1, double* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca double*, align 8
  %8 = alloca double, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %6, align 8
  store double* %2, double** %7, align 8
  store double 0.000000e+00, double* %8, align 8
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i64 @zsetScore(%struct.TYPE_5__* %9, i32 %12, double* %8)
  %14 = load i64, i64* @C_ERR, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load i64, i64* @C_ERR, align 8
  %18 = trunc i64 %17 to i32
  store i32 %18, i32* %4, align 4
  br label %29

19:                                               ; preds = %3
  %20 = load double, double* %8, align 8
  %21 = load double*, double** %7, align 8
  %22 = call i32 @decodeGeohash(double %20, double* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %19
  %25 = load i64, i64* @C_ERR, align 8
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %4, align 4
  br label %29

27:                                               ; preds = %19
  %28 = load i32, i32* @C_OK, align 4
  store i32 %28, i32* %4, align 4
  br label %29

29:                                               ; preds = %27, %24, %16
  %30 = load i32, i32* %4, align 4
  ret i32 %30
}

declare dso_local i64 @zsetScore(%struct.TYPE_5__*, i32, double*) #1

declare dso_local i32 @decodeGeohash(double, double*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
