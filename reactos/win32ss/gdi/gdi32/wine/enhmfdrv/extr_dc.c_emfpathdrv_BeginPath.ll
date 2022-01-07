; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/gdi/gdi32/wine/enhmfdrv/extr_dc.c_emfpathdrv_BeginPath.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/gdi/gdi32/wine/enhmfdrv/extr_dc.c_emfpathdrv_BeginPath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64 (%struct.TYPE_11__*)* }

@pBeginPath = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*)* @emfpathdrv_BeginPath to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @emfpathdrv_BeginPath(%struct.TYPE_11__* %0) #0 {
  %2 = alloca %struct.TYPE_11__*, align 8
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %2, align 8
  %5 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %6 = call %struct.TYPE_11__* @get_emfdev(%struct.TYPE_11__* %5)
  store %struct.TYPE_11__* %6, %struct.TYPE_11__** %3, align 8
  %7 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %8 = load i32, i32* @pBeginPath, align 4
  %9 = call %struct.TYPE_11__* @GET_NEXT_PHYSDEV(%struct.TYPE_11__* %7, i32 %8)
  store %struct.TYPE_11__* %9, %struct.TYPE_11__** %4, align 8
  %10 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 0
  %14 = load i64 (%struct.TYPE_11__*)*, i64 (%struct.TYPE_11__*)** %13, align 8
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %16 = call i64 %14(%struct.TYPE_11__* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %27

18:                                               ; preds = %1
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  %23 = load i64 (%struct.TYPE_11__*)*, i64 (%struct.TYPE_11__*)** %22, align 8
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %25 = call i64 %23(%struct.TYPE_11__* %24)
  %26 = icmp ne i64 %25, 0
  br label %27

27:                                               ; preds = %18, %1
  %28 = phi i1 [ false, %1 ], [ %26, %18 ]
  %29 = zext i1 %28 to i32
  ret i32 %29
}

declare dso_local %struct.TYPE_11__* @get_emfdev(%struct.TYPE_11__*) #1

declare dso_local %struct.TYPE_11__* @GET_NEXT_PHYSDEV(%struct.TYPE_11__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
