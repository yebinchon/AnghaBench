; ModuleID = '/home/carl/AnghaBench/redis/src/extr_geo.c_geoAppendIfWithinRadius.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_geo.c_geoAppendIfWithinRadius.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { double, double, double, double, i32 }

@C_ERR = common dso_local global i32 0, align 4
@C_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @geoAppendIfWithinRadius(i32* %0, double %1, double %2, double %3, double %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca i32, align 4
  %14 = alloca double, align 8
  %15 = alloca [2 x double], align 16
  %16 = alloca %struct.TYPE_3__*, align 8
  store i32* %0, i32** %8, align 8
  store double %1, double* %9, align 8
  store double %2, double* %10, align 8
  store double %3, double* %11, align 8
  store double %4, double* %12, align 8
  store i32 %5, i32* %13, align 4
  %17 = load double, double* %12, align 8
  %18 = getelementptr inbounds [2 x double], [2 x double]* %15, i64 0, i64 0
  %19 = call i32 @decodeGeohash(double %17, double* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %6
  %22 = load i32, i32* @C_ERR, align 4
  store i32 %22, i32* %7, align 4
  br label %56

23:                                               ; preds = %6
  %24 = load double, double* %9, align 8
  %25 = load double, double* %10, align 8
  %26 = getelementptr inbounds [2 x double], [2 x double]* %15, i64 0, i64 0
  %27 = load double, double* %26, align 16
  %28 = getelementptr inbounds [2 x double], [2 x double]* %15, i64 0, i64 1
  %29 = load double, double* %28, align 8
  %30 = load double, double* %11, align 8
  %31 = call i32 @geohashGetDistanceIfInRadiusWGS84(double %24, double %25, double %27, double %29, double %30, double* %14)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %23
  %34 = load i32, i32* @C_ERR, align 4
  store i32 %34, i32* %7, align 4
  br label %56

35:                                               ; preds = %23
  %36 = load i32*, i32** %8, align 8
  %37 = call %struct.TYPE_3__* @geoArrayAppend(i32* %36)
  store %struct.TYPE_3__* %37, %struct.TYPE_3__** %16, align 8
  %38 = getelementptr inbounds [2 x double], [2 x double]* %15, i64 0, i64 0
  %39 = load double, double* %38, align 16
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  store double %39, double* %41, align 8
  %42 = getelementptr inbounds [2 x double], [2 x double]* %15, i64 0, i64 1
  %43 = load double, double* %42, align 8
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 1
  store double %43, double* %45, align 8
  %46 = load double, double* %14, align 8
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 2
  store double %46, double* %48, align 8
  %49 = load i32, i32* %13, align 4
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 4
  store i32 %49, i32* %51, align 8
  %52 = load double, double* %12, align 8
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 3
  store double %52, double* %54, align 8
  %55 = load i32, i32* @C_OK, align 4
  store i32 %55, i32* %7, align 4
  br label %56

56:                                               ; preds = %35, %33, %21
  %57 = load i32, i32* %7, align 4
  ret i32 %57
}

declare dso_local i32 @decodeGeohash(double, double*) #1

declare dso_local i32 @geohashGetDistanceIfInRadiusWGS84(double, double, double, double, double, double*) #1

declare dso_local %struct.TYPE_3__* @geoArrayAppend(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
