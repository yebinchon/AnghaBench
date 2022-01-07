; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/gdi/gdi32/wine/enhmfdrv/extr_dc.c_emfpathdrv_Pie.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/gdi/gdi32/wine/enhmfdrv/extr_dc.c_emfpathdrv_Pie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64 (%struct.TYPE_11__*, i32, i32, i32, i32, i32, i32, i32, i32)* }

@pPie = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, i32, i32, i32, i32, i32, i32, i32, i32)* @emfpathdrv_Pie to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @emfpathdrv_Pie(%struct.TYPE_11__* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_11__*, align 8
  %20 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i32 %8, i32* %18, align 4
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %22 = call %struct.TYPE_11__* @get_emfdev(%struct.TYPE_11__* %21)
  store %struct.TYPE_11__* %22, %struct.TYPE_11__** %19, align 8
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %24 = load i32, i32* @pPie, align 4
  %25 = call %struct.TYPE_11__* @GET_NEXT_PHYSDEV(%struct.TYPE_11__* %23, i32 %24)
  store %struct.TYPE_11__* %25, %struct.TYPE_11__** %20, align 8
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  %30 = load i64 (%struct.TYPE_11__*, i32, i32, i32, i32, i32, i32, i32, i32)*, i64 (%struct.TYPE_11__*, i32, i32, i32, i32, i32, i32, i32, i32)** %29, align 8
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %32 = load i32, i32* %11, align 4
  %33 = load i32, i32* %12, align 4
  %34 = load i32, i32* %13, align 4
  %35 = load i32, i32* %14, align 4
  %36 = load i32, i32* %15, align 4
  %37 = load i32, i32* %16, align 4
  %38 = load i32, i32* %17, align 4
  %39 = load i32, i32* %18, align 4
  %40 = call i64 %30(%struct.TYPE_11__* %31, i32 %32, i32 %33, i32 %34, i32 %35, i32 %36, i32 %37, i32 %38, i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %59

42:                                               ; preds = %9
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %20, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 0
  %47 = load i64 (%struct.TYPE_11__*, i32, i32, i32, i32, i32, i32, i32, i32)*, i64 (%struct.TYPE_11__*, i32, i32, i32, i32, i32, i32, i32, i32)** %46, align 8
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %20, align 8
  %49 = load i32, i32* %11, align 4
  %50 = load i32, i32* %12, align 4
  %51 = load i32, i32* %13, align 4
  %52 = load i32, i32* %14, align 4
  %53 = load i32, i32* %15, align 4
  %54 = load i32, i32* %16, align 4
  %55 = load i32, i32* %17, align 4
  %56 = load i32, i32* %18, align 4
  %57 = call i64 %47(%struct.TYPE_11__* %48, i32 %49, i32 %50, i32 %51, i32 %52, i32 %53, i32 %54, i32 %55, i32 %56)
  %58 = icmp ne i64 %57, 0
  br label %59

59:                                               ; preds = %42, %9
  %60 = phi i1 [ false, %9 ], [ %58, %42 ]
  %61 = zext i1 %60 to i32
  ret i32 %61
}

declare dso_local %struct.TYPE_11__* @get_emfdev(%struct.TYPE_11__*) #1

declare dso_local %struct.TYPE_11__* @GET_NEXT_PHYSDEV(%struct.TYPE_11__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
