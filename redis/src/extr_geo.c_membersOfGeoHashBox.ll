; ModuleID = '/home/carl/AnghaBench/redis/src/extr_geo.c_membersOfGeoHashBox.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_geo.c_membersOfGeoHashBox.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @membersOfGeoHashBox(i32* %0, i32 %1, i32* %2, double %3, double %4, double %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store double %3, double* %10, align 8
  store double %4, double* %11, align 8
  store double %5, double* %12, align 8
  %15 = load i32, i32* %8, align 4
  %16 = call i32 @scoresOfGeoHashBox(i32 %15, i32* %13, i32* %14)
  %17 = load i32*, i32** %7, align 8
  %18 = load i32, i32* %13, align 4
  %19 = load i32, i32* %14, align 4
  %20 = load double, double* %10, align 8
  %21 = load double, double* %11, align 8
  %22 = load double, double* %12, align 8
  %23 = load i32*, i32** %9, align 8
  %24 = call i32 @geoGetPointsInRange(i32* %17, i32 %18, i32 %19, double %20, double %21, double %22, i32* %23)
  ret i32 %24
}

declare dso_local i32 @scoresOfGeoHashBox(i32, i32*, i32*) #1

declare dso_local i32 @geoGetPointsInRange(i32*, i32, i32, double, double, double, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
