; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/screensavers/butterflies/extr_butterflies.c_SetObject.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/screensavers/butterflies/extr_butterflies.c_SetObject.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, float, i32, i32, float, float, float }

@obj = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SetObject(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = call i32 (...) @rand()
  %4 = srem i32 %3, 3
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** @obj, align 8
  %6 = load i32, i32* %2, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i64 %7
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  store i32 %4, i32* %9, align 4
  %10 = call i32 (...) @rand()
  %11 = srem i32 %10, 34
  %12 = sitofp i32 %11 to float
  %13 = fsub float %12, 1.700000e+01
  %14 = fptosi float %13 to i32
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** @obj, align 8
  %16 = load i32, i32* %2, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  store i32 %14, i32* %19, align 4
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** @obj, align 8
  %21 = load i32, i32* %2, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 2
  store float 1.800000e+01, float* %24, align 4
  %25 = call i32 (...) @rand()
  %26 = srem i32 %25, 30000
  %27 = sitofp i32 %26 to float
  %28 = fdiv float %27, 1.000000e+03
  %29 = fadd float %28, 1.000000e+01
  %30 = fneg float %29
  %31 = fptosi float %30 to i32
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** @obj, align 8
  %33 = load i32, i32* %2, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 3
  store i32 %31, i32* %36, align 4
  %37 = call i32 (...) @rand()
  %38 = srem i32 %37, 10000
  %39 = sitofp i32 %38 to float
  %40 = fdiv float %39, 5.000000e+03
  %41 = fsub float %40, 1.000000e+00
  %42 = fptosi float %41 to i32
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** @obj, align 8
  %44 = load i32, i32* %2, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 4
  store i32 %42, i32* %47, align 4
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** @obj, align 8
  %49 = load i32, i32* %2, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 5
  store float 0.000000e+00, float* %52, align 4
  %53 = call i32 (...) @rand()
  %54 = srem i32 %53, 100
  %55 = sitofp i32 %54 to float
  %56 = fdiv float %55, 1.000000e+03
  %57 = fadd float 0x3FA99999A0000000, %56
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** @obj, align 8
  %59 = load i32, i32* %2, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 6
  store float %57, float* %62, align 4
  %63 = call i32 (...) @rand()
  %64 = srem i32 %63, 1000
  %65 = sitofp i32 %64 to float
  %66 = fdiv float %65, 1.000000e+04
  %67 = fadd float 0x3F50624DE0000000, %66
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** @obj, align 8
  %69 = load i32, i32* %2, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 7
  store float %67, float* %72, align 4
  ret void
}

declare dso_local i32 @rand(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
