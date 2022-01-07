; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/gdi/gdi32/wine/enhmfdrv/extr_dc.c_emfpathdrv_ExtTextOut.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/gdi/gdi32/wine/enhmfdrv/extr_dc.c_emfpathdrv_ExtTextOut.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64 (%struct.TYPE_11__*, i32, i32, i32, i32*, i32, i32, i32*)* }

@pExtTextOut = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, i32, i32, i32, i32*, i32, i32, i32*)* @emfpathdrv_ExtTextOut to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @emfpathdrv_ExtTextOut(%struct.TYPE_11__* %0, i32 %1, i32 %2, i32 %3, i32* %4, i32 %5, i32 %6, i32* %7) #0 {
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca %struct.TYPE_11__*, align 8
  %18 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32* %4, i32** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32* %7, i32** %16, align 8
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %20 = call %struct.TYPE_11__* @get_emfdev(%struct.TYPE_11__* %19)
  store %struct.TYPE_11__* %20, %struct.TYPE_11__** %17, align 8
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %22 = load i32, i32* @pExtTextOut, align 4
  %23 = call %struct.TYPE_11__* @GET_NEXT_PHYSDEV(%struct.TYPE_11__* %21, i32 %22)
  store %struct.TYPE_11__* %23, %struct.TYPE_11__** %18, align 8
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 0
  %28 = load i64 (%struct.TYPE_11__*, i32, i32, i32, i32*, i32, i32, i32*)*, i64 (%struct.TYPE_11__*, i32, i32, i32, i32*, i32, i32, i32*)** %27, align 8
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* %11, align 4
  %32 = load i32, i32* %12, align 4
  %33 = load i32*, i32** %13, align 8
  %34 = load i32, i32* %14, align 4
  %35 = load i32, i32* %15, align 4
  %36 = load i32*, i32** %16, align 8
  %37 = call i64 %28(%struct.TYPE_11__* %29, i32 %30, i32 %31, i32 %32, i32* %33, i32 %34, i32 %35, i32* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %55

39:                                               ; preds = %8
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 0
  %44 = load i64 (%struct.TYPE_11__*, i32, i32, i32, i32*, i32, i32, i32*)*, i64 (%struct.TYPE_11__*, i32, i32, i32, i32*, i32, i32, i32*)** %43, align 8
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* %11, align 4
  %48 = load i32, i32* %12, align 4
  %49 = load i32*, i32** %13, align 8
  %50 = load i32, i32* %14, align 4
  %51 = load i32, i32* %15, align 4
  %52 = load i32*, i32** %16, align 8
  %53 = call i64 %44(%struct.TYPE_11__* %45, i32 %46, i32 %47, i32 %48, i32* %49, i32 %50, i32 %51, i32* %52)
  %54 = icmp ne i64 %53, 0
  br label %55

55:                                               ; preds = %39, %8
  %56 = phi i1 [ false, %8 ], [ %54, %39 ]
  %57 = zext i1 %56 to i32
  ret i32 %57
}

declare dso_local %struct.TYPE_11__* @get_emfdev(%struct.TYPE_11__*) #1

declare dso_local %struct.TYPE_11__* @GET_NEXT_PHYSDEV(%struct.TYPE_11__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
