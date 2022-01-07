; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/ttml/extr_substtml.c_TTMLRegionsToSpuBitmapRegions.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/ttml/extr_substtml.c_TTMLRegionsToSpuBitmapRegions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_23__ = type { %struct.TYPE_21__, %struct.TYPE_16__ }
%struct.TYPE_21__ = type { %struct.TYPE_20__, %struct.TYPE_18__, i32, i64 }
%struct.TYPE_20__ = type { i32, i32 }
%struct.TYPE_18__ = type { i32, i32 }
%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_24__ = type { %struct.TYPE_19__, %struct.TYPE_17__, i32 }
%struct.TYPE_19__ = type { i32, i32 }
%struct.TYPE_17__ = type { i32, i32 }

@UPDT_REGION_ORIGIN_X_IS_RATIO = common dso_local global i64 0, align 8
@ORIGIN_X_IS_RATIO = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"flag enums values differs\00", align 1
@UPDT_REGION_EXTENT_Y_IS_RATIO = common dso_local global i64 0, align 8
@EXTENT_Y_IS_RATIO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_15__*, %struct.TYPE_23__*)* @TTMLRegionsToSpuBitmapRegions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @TTMLRegionsToSpuBitmapRegions(i32* %0, %struct.TYPE_15__* %1, %struct.TYPE_23__* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca %struct.TYPE_23__*, align 8
  %7 = alloca %struct.TYPE_23__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_24__*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %5, align 8
  store %struct.TYPE_23__* %2, %struct.TYPE_23__** %6, align 8
  %10 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  store %struct.TYPE_23__* %10, %struct.TYPE_23__** %7, align 8
  br label %11

11:                                               ; preds = %95, %3
  %12 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %13 = icmp ne %struct.TYPE_23__* %12, null
  br i1 %13, label %14, label %101

14:                                               ; preds = %11
  %15 = load i32*, i32** %4, align 8
  %16 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32* @picture_CreateFromPNG(i32* %15, i32 %19, i32 %23)
  store i32* %24, i32** %8, align 8
  %25 = load i32*, i32** %8, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %94

27:                                               ; preds = %14
  %28 = load i32*, i32** %8, align 8
  %29 = call %struct.TYPE_24__* @TTML_ImageUpdaterRegionNew(i32* %28)
  store %struct.TYPE_24__* %29, %struct.TYPE_24__** %9, align 8
  %30 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %31 = icmp ne %struct.TYPE_24__* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %27
  %33 = load i32*, i32** %8, align 8
  %34 = call i32 @picture_Release(i32* %33)
  br label %95

35:                                               ; preds = %27
  %36 = load i64, i64* @UPDT_REGION_ORIGIN_X_IS_RATIO, align 8
  %37 = trunc i64 %36 to i32
  %38 = load i64, i64* @ORIGIN_X_IS_RATIO, align 8
  %39 = trunc i64 %38 to i32
  %40 = icmp eq i32 %37, %39
  %41 = zext i1 %40 to i32
  %42 = call i32 @static_assert(i32 %41, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %43 = load i64, i64* @UPDT_REGION_EXTENT_Y_IS_RATIO, align 8
  %44 = trunc i64 %43 to i32
  %45 = load i64, i64* @EXTENT_Y_IS_RATIO, align 8
  %46 = trunc i64 %45 to i32
  %47 = icmp eq i32 %44, %46
  %48 = zext i1 %47 to i32
  %49 = call i32 @static_assert(i32 %48, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %50 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %55 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %54, i32 0, i32 2
  store i32 %53, i32* %55, align 4
  %56 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %62 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %62, i32 0, i32 1
  store i32 %60, i32* %63, align 4
  %64 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %70 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %70, i32 0, i32 0
  store i32 %68, i32* %71, align 4
  %72 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %78 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %78, i32 0, i32 1
  store i32 %76, i32* %79, align 4
  %80 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %86 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %86, i32 0, i32 0
  store i32 %84, i32* %87, align 4
  %88 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %93 = call i32 @TTML_ImageSpuAppendRegion(i32 %91, %struct.TYPE_24__* %92)
  br label %94

94:                                               ; preds = %35, %14
  br label %95

95:                                               ; preds = %94, %32
  %96 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %97 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %97, i32 0, i32 3
  %99 = load i64, i64* %98, align 8
  %100 = inttoptr i64 %99 to %struct.TYPE_23__*
  store %struct.TYPE_23__* %100, %struct.TYPE_23__** %7, align 8
  br label %11

101:                                              ; preds = %11
  ret void
}

declare dso_local i32* @picture_CreateFromPNG(i32*, i32, i32) #1

declare dso_local %struct.TYPE_24__* @TTML_ImageUpdaterRegionNew(i32*) #1

declare dso_local i32 @picture_Release(i32*) #1

declare dso_local i32 @static_assert(i32, i8*) #1

declare dso_local i32 @TTML_ImageSpuAppendRegion(i32, %struct.TYPE_24__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
