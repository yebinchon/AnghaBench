; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_image.c_test_getadjustedpalette.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdiplus/extr_image.c_test_getadjustedpalette.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_11__ = type { i32, i32* }

@Ok = common dso_local global i32 0, align 4
@ColorAdjustTypeBitmap = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@ColorAdjustTypeDefault = common dso_local global i32 0, align 4
@InvalidParameter = common dso_local global i32 0, align 4
@ColorAdjustTypeBrush = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_getadjustedpalette to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_getadjustedpalette() #0 {
  %1 = alloca %struct.TYPE_12__, align 4
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca i32, align 4
  %5 = call i32 @GdipCreateImageAttributes(i32** %2)
  store i32 %5, i32* %4, align 4
  %6 = load i32, i32* @Ok, align 4
  %7 = load i32, i32* %4, align 4
  %8 = call i32 @expect(i32 %6, i32 %7)
  %9 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %1, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 0
  store i32 -256, i32* %10, align 4
  %11 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %1, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  store i32 -65281, i32* %12, align 4
  %13 = load i32*, i32** %2, align 8
  %14 = load i32, i32* @ColorAdjustTypeBitmap, align 4
  %15 = load i32, i32* @TRUE, align 4
  %16 = call i32 @GdipSetImageAttributesRemapTable(i32* %13, i32 %14, i32 %15, i32 1, %struct.TYPE_12__* %1)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* @Ok, align 4
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @expect(i32 %17, i32 %18)
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %1, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  store i32 -128, i32* %21, align 4
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %1, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  store i32 -32513, i32* %23, align 4
  %24 = load i32*, i32** %2, align 8
  %25 = load i32, i32* @ColorAdjustTypeDefault, align 4
  %26 = load i32, i32* @TRUE, align 4
  %27 = call i32 @GdipSetImageAttributesRemapTable(i32* %24, i32 %25, i32 %26, i32 1, %struct.TYPE_12__* %1)
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* @Ok, align 4
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @expect(i32 %28, i32 %29)
  %31 = call %struct.TYPE_11__* @GdipAlloc(i32 24)
  store %struct.TYPE_11__* %31, %struct.TYPE_11__** %3, align 8
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 0
  store i32 0, i32* %33, align 8
  %34 = load i32*, i32** %2, align 8
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %36 = load i32, i32* @ColorAdjustTypeBitmap, align 4
  %37 = call i32 @GdipGetImageAttributesAdjustedPalette(i32* %34, %struct.TYPE_11__* %35, i32 %36)
  store i32 %37, i32* %4, align 4
  %38 = load i32, i32* @InvalidParameter, align 4
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @expect(i32 %38, i32 %39)
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 0
  store i32 3, i32* %42, align 8
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 0
  store i32 -256, i32* %46, align 4
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 1
  store i32 -128, i32* %50, align 4
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 2
  store i32 -1, i32* %54, align 4
  %55 = load i32*, i32** %2, align 8
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %57 = load i32, i32* @ColorAdjustTypeBitmap, align 4
  %58 = call i32 @GdipGetImageAttributesAdjustedPalette(i32* %55, %struct.TYPE_11__* %56, i32 %57)
  store i32 %58, i32* %4, align 4
  %59 = load i32, i32* @Ok, align 4
  %60 = load i32, i32* %4, align 4
  %61 = call i32 @expect(i32 %59, i32 %60)
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @expect(i32 -65281, i32 %66)
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 1
  %70 = load i32*, i32** %69, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 1
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @expect(i32 -128, i32 %72)
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 1
  %76 = load i32*, i32** %75, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 2
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @expect(i32 -1, i32 %78)
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 1
  %82 = load i32*, i32** %81, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 0
  store i32 -256, i32* %83, align 4
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 1
  %86 = load i32*, i32** %85, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 1
  store i32 -128, i32* %87, align 4
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 1
  %90 = load i32*, i32** %89, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 2
  store i32 -1, i32* %91, align 4
  %92 = load i32*, i32** %2, align 8
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %94 = load i32, i32* @ColorAdjustTypeBrush, align 4
  %95 = call i32 @GdipGetImageAttributesAdjustedPalette(i32* %92, %struct.TYPE_11__* %93, i32 %94)
  store i32 %95, i32* %4, align 4
  %96 = load i32, i32* @Ok, align 4
  %97 = load i32, i32* %4, align 4
  %98 = call i32 @expect(i32 %96, i32 %97)
  %99 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 1
  %101 = load i32*, i32** %100, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 0
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @expect(i32 -256, i32 %103)
  %105 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %105, i32 0, i32 1
  %107 = load i32*, i32** %106, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 1
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @expect(i32 -32513, i32 %109)
  %111 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %111, i32 0, i32 1
  %113 = load i32*, i32** %112, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 2
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @expect(i32 -1, i32 %115)
  %117 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %118 = load i32, i32* @ColorAdjustTypeBitmap, align 4
  %119 = call i32 @GdipGetImageAttributesAdjustedPalette(i32* null, %struct.TYPE_11__* %117, i32 %118)
  store i32 %119, i32* %4, align 4
  %120 = load i32, i32* @InvalidParameter, align 4
  %121 = load i32, i32* %4, align 4
  %122 = call i32 @expect(i32 %120, i32 %121)
  %123 = load i32*, i32** %2, align 8
  %124 = load i32, i32* @ColorAdjustTypeBitmap, align 4
  %125 = call i32 @GdipGetImageAttributesAdjustedPalette(i32* %123, %struct.TYPE_11__* null, i32 %124)
  store i32 %125, i32* %4, align 4
  %126 = load i32, i32* @InvalidParameter, align 4
  %127 = load i32, i32* %4, align 4
  %128 = call i32 @expect(i32 %126, i32 %127)
  %129 = load i32*, i32** %2, align 8
  %130 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %131 = call i32 @GdipGetImageAttributesAdjustedPalette(i32* %129, %struct.TYPE_11__* %130, i32 -1)
  store i32 %131, i32* %4, align 4
  %132 = load i32, i32* @InvalidParameter, align 4
  %133 = load i32, i32* %4, align 4
  %134 = call i32 @expect(i32 %132, i32 %133)
  %135 = load i32*, i32** %2, align 8
  %136 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %137 = load i32, i32* @ColorAdjustTypeDefault, align 4
  %138 = call i32 @GdipGetImageAttributesAdjustedPalette(i32* %135, %struct.TYPE_11__* %136, i32 %137)
  store i32 %138, i32* %4, align 4
  %139 = load i32, i32* @InvalidParameter, align 4
  %140 = load i32, i32* %4, align 4
  %141 = call i32 @expect(i32 %139, i32 %140)
  %142 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %143 = call i32 @GdipFree(%struct.TYPE_11__* %142)
  %144 = load i32*, i32** %2, align 8
  %145 = call i32 @GdipDisposeImageAttributes(i32* %144)
  ret void
}

declare dso_local i32 @GdipCreateImageAttributes(i32**) #1

declare dso_local i32 @expect(i32, i32) #1

declare dso_local i32 @GdipSetImageAttributesRemapTable(i32*, i32, i32, i32, %struct.TYPE_12__*) #1

declare dso_local %struct.TYPE_11__* @GdipAlloc(i32) #1

declare dso_local i32 @GdipGetImageAttributesAdjustedPalette(i32*, %struct.TYPE_11__*, i32) #1

declare dso_local i32 @GdipFree(%struct.TYPE_11__*) #1

declare dso_local i32 @GdipDisposeImageAttributes(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
