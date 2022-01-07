; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/gdi/gdi32/wine/enhmfdrv/extr_dc.c_emfpathdrv_PolyBezier.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/gdi/gdi32/wine/enhmfdrv/extr_dc.c_emfpathdrv_PolyBezier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64 (%struct.TYPE_11__*, i32*, i32)* }

@pPolyBezier = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, i32*, i32)* @emfpathdrv_PolyBezier to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @emfpathdrv_PolyBezier(%struct.TYPE_11__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %10 = call %struct.TYPE_11__* @get_emfdev(%struct.TYPE_11__* %9)
  store %struct.TYPE_11__* %10, %struct.TYPE_11__** %7, align 8
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %12 = load i32, i32* @pPolyBezier, align 4
  %13 = call %struct.TYPE_11__* @GET_NEXT_PHYSDEV(%struct.TYPE_11__* %11, i32 %12)
  store %struct.TYPE_11__* %13, %struct.TYPE_11__** %8, align 8
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 0
  %18 = load i64 (%struct.TYPE_11__*, i32*, i32)*, i64 (%struct.TYPE_11__*, i32*, i32)** %17, align 8
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %20 = load i32*, i32** %5, align 8
  %21 = load i32, i32* %6, align 4
  %22 = call i64 %18(%struct.TYPE_11__* %19, i32* %20, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %35

24:                                               ; preds = %3
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  %29 = load i64 (%struct.TYPE_11__*, i32*, i32)*, i64 (%struct.TYPE_11__*, i32*, i32)** %28, align 8
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %31 = load i32*, i32** %5, align 8
  %32 = load i32, i32* %6, align 4
  %33 = call i64 %29(%struct.TYPE_11__* %30, i32* %31, i32 %32)
  %34 = icmp ne i64 %33, 0
  br label %35

35:                                               ; preds = %24, %3
  %36 = phi i1 [ false, %3 ], [ %34, %24 ]
  %37 = zext i1 %36 to i32
  ret i32 %37
}

declare dso_local %struct.TYPE_11__* @get_emfdev(%struct.TYPE_11__*) #1

declare dso_local %struct.TYPE_11__* @GET_NEXT_PHYSDEV(%struct.TYPE_11__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
