; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/platform/java/extr_mupdf_native.c_fz_java_device_begin_group.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/platform/java/extr_mupdf_native.c_fz_java_device_begin_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.TYPE_9__** }
%struct.TYPE_9__ = type { i64 (%struct.TYPE_9__**)*, i32 (%struct.TYPE_9__**, i32, i32, i32, i32, i32, i32, i32, float)* }

@mid_Device_beginGroup = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32, i32*, i32, i32, i32, float)* @fz_java_device_begin_group to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fz_java_device_begin_group(i32* %0, i32* %1, i32 %2, i32* %3, i32 %4, i32 %5, i32 %6, float %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca float, align 4
  %17 = alloca %struct.TYPE_8__*, align 8
  %18 = alloca %struct.TYPE_9__**, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store i32* %1, i32** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32* %3, i32** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store float %7, float* %16, align 4
  %21 = load i32*, i32** %10, align 8
  %22 = bitcast i32* %21 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %22, %struct.TYPE_8__** %17, align 8
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 1
  %25 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %24, align 8
  store %struct.TYPE_9__** %25, %struct.TYPE_9__*** %18, align 8
  %26 = load i32*, i32** %9, align 8
  %27 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %18, align 8
  %28 = load i32, i32* %11, align 4
  %29 = call i32 @to_Rect(i32* %26, %struct.TYPE_9__** %27, i32 %28)
  store i32 %29, i32* %19, align 4
  %30 = load i32*, i32** %9, align 8
  %31 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %18, align 8
  %32 = load i32*, i32** %12, align 8
  %33 = call i32 @to_ColorSpace(i32* %30, %struct.TYPE_9__** %31, i32* %32)
  store i32 %33, i32* %20, align 4
  %34 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %18, align 8
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 1
  %37 = load i32 (%struct.TYPE_9__**, i32, i32, i32, i32, i32, i32, i32, float)*, i32 (%struct.TYPE_9__**, i32, i32, i32, i32, i32, i32, i32, float)** %36, align 8
  %38 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %18, align 8
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @mid_Device_beginGroup, align 4
  %43 = load i32, i32* %19, align 4
  %44 = load i32, i32* %20, align 4
  %45 = load i32, i32* %13, align 4
  %46 = load i32, i32* %14, align 4
  %47 = load i32, i32* %15, align 4
  %48 = load float, float* %16, align 4
  %49 = call i32 %37(%struct.TYPE_9__** %38, i32 %41, i32 %42, i32 %43, i32 %44, i32 %45, i32 %46, i32 %47, float %48)
  %50 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %18, align 8
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 0
  %53 = load i64 (%struct.TYPE_9__**)*, i64 (%struct.TYPE_9__**)** %52, align 8
  %54 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %18, align 8
  %55 = call i64 %53(%struct.TYPE_9__** %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %8
  %58 = load i32*, i32** %9, align 8
  %59 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %18, align 8
  %60 = call i32 @fz_throw_java(i32* %58, %struct.TYPE_9__** %59)
  br label %61

61:                                               ; preds = %57, %8
  ret void
}

declare dso_local i32 @to_Rect(i32*, %struct.TYPE_9__**, i32) #1

declare dso_local i32 @to_ColorSpace(i32*, %struct.TYPE_9__**, i32*) #1

declare dso_local i32 @fz_throw_java(i32*, %struct.TYPE_9__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
