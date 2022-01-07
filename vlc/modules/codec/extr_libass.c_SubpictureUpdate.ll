; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/extr_libass.c_SubpictureUpdate.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/extr_libass.c_SubpictureUpdate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { %struct.TYPE_21__*, i64, i64, %struct.TYPE_18__ }
%struct.TYPE_21__ = type { i32, %struct.TYPE_21__*, i64, i64 }
%struct.TYPE_18__ = type { %struct.TYPE_23__* }
%struct.TYPE_23__ = type { i32*, %struct.TYPE_24__* }
%struct.TYPE_24__ = type { i32, %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i64, i64, i64, i64 }
%struct.TYPE_22__ = type { i64, i64, i64, i64 }

@SUBPICTURE_ALIGN_TOP = common dso_local global i32 0, align 4
@SUBPICTURE_ALIGN_LEFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_20__*, %struct.TYPE_19__*, %struct.TYPE_19__*, %struct.TYPE_19__*)* @SubpictureUpdate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SubpictureUpdate(%struct.TYPE_20__* %0, %struct.TYPE_19__* %1, %struct.TYPE_19__* %2, %struct.TYPE_19__* %3) #0 {
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca %struct.TYPE_19__*, align 8
  %7 = alloca %struct.TYPE_19__*, align 8
  %8 = alloca %struct.TYPE_19__*, align 8
  %9 = alloca %struct.TYPE_23__*, align 8
  %10 = alloca %struct.TYPE_24__*, align 8
  %11 = alloca %struct.TYPE_19__, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca [4 x %struct.TYPE_22__], align 16
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_21__**, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_21__*, align 8
  %19 = alloca %struct.TYPE_19__, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %5, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %6, align 8
  store %struct.TYPE_19__* %2, %struct.TYPE_19__** %7, align 8
  store %struct.TYPE_19__* %3, %struct.TYPE_19__** %8, align 8
  %20 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %21 = call i32 @VLC_UNUSED(%struct.TYPE_19__* %20)
  %22 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %23 = call i32 @VLC_UNUSED(%struct.TYPE_19__* %22)
  %24 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %25 = call i32 @VLC_UNUSED(%struct.TYPE_19__* %24)
  %26 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %26, i32 0, i32 3
  %28 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_23__*, %struct.TYPE_23__** %28, align 8
  store %struct.TYPE_23__* %29, %struct.TYPE_23__** %9, align 8
  %30 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_24__*, %struct.TYPE_24__** %31, align 8
  store %struct.TYPE_24__* %32, %struct.TYPE_24__** %10, align 8
  %33 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %34 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %33, i32 0, i32 1
  %35 = bitcast %struct.TYPE_19__* %11 to i8*
  %36 = bitcast %struct.TYPE_19__* %34 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %35, i8* align 8 %36, i64 32, i1 false)
  %37 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %38 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  store i32* %39, i32** %12, align 8
  %40 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %11, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %42, i32 0, i32 2
  store i64 %41, i64* %43, align 8
  %44 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %11, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %46, i32 0, i32 1
  store i64 %45, i64* %47, align 8
  store i32 4, i32* %13, align 4
  %48 = getelementptr inbounds [4 x %struct.TYPE_22__], [4 x %struct.TYPE_22__]* %14, i64 0, i64 0
  %49 = load i32*, i32** %12, align 8
  %50 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %11, i32 0, i32 3
  %51 = load i64, i64* %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %11, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = call i32 @BuildRegions(%struct.TYPE_22__* %48, i32 4, i32* %49, i64 %51, i64 %53)
  store i32 %54, i32* %15, align 4
  %55 = load i32, i32* %15, align 4
  %56 = icmp sle i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %4
  %58 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %59 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %58, i32 0, i32 0
  %60 = call i32 @vlc_mutex_unlock(i32* %59)
  br label %135

61:                                               ; preds = %4
  %62 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %62, i32 0, i32 0
  store %struct.TYPE_21__** %63, %struct.TYPE_21__*** %16, align 8
  store i32 0, i32* %17, align 4
  br label %64

64:                                               ; preds = %128, %61
  %65 = load i32, i32* %17, align 4
  %66 = load i32, i32* %15, align 4
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %68, label %131

68:                                               ; preds = %64
  %69 = bitcast %struct.TYPE_19__* %19 to i8*
  %70 = bitcast %struct.TYPE_19__* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %69, i8* align 8 %70, i64 32, i1 false)
  %71 = load i32, i32* %17, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds [4 x %struct.TYPE_22__], [4 x %struct.TYPE_22__]* %14, i64 0, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %73, i32 0, i32 3
  %75 = load i64, i64* %74, align 8
  %76 = load i32, i32* %17, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds [4 x %struct.TYPE_22__], [4 x %struct.TYPE_22__]* %14, i64 0, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = sub nsw i64 %75, %80
  %82 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %19, i32 0, i32 2
  store i64 %81, i64* %82, align 8
  %83 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %19, i32 0, i32 3
  store i64 %81, i64* %83, align 8
  %84 = load i32, i32* %17, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds [4 x %struct.TYPE_22__], [4 x %struct.TYPE_22__]* %14, i64 0, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 16
  %89 = load i32, i32* %17, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds [4 x %struct.TYPE_22__], [4 x %struct.TYPE_22__]* %14, i64 0, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 16
  %94 = sub nsw i64 %88, %93
  %95 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %19, i32 0, i32 0
  store i64 %94, i64* %95, align 8
  %96 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %19, i32 0, i32 1
  store i64 %94, i64* %96, align 8
  %97 = call %struct.TYPE_21__* @subpicture_region_New(%struct.TYPE_19__* %19)
  store %struct.TYPE_21__* %97, %struct.TYPE_21__** %18, align 8
  %98 = load %struct.TYPE_21__*, %struct.TYPE_21__** %18, align 8
  %99 = icmp ne %struct.TYPE_21__* %98, null
  br i1 %99, label %101, label %100

100:                                              ; preds = %68
  br label %131

101:                                              ; preds = %68
  %102 = load i32, i32* %17, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds [4 x %struct.TYPE_22__], [4 x %struct.TYPE_22__]* %14, i64 0, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = load %struct.TYPE_21__*, %struct.TYPE_21__** %18, align 8
  %108 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %107, i32 0, i32 3
  store i64 %106, i64* %108, align 8
  %109 = load i32, i32* %17, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds [4 x %struct.TYPE_22__], [4 x %struct.TYPE_22__]* %14, i64 0, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 16
  %114 = load %struct.TYPE_21__*, %struct.TYPE_21__** %18, align 8
  %115 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %114, i32 0, i32 2
  store i64 %113, i64* %115, align 8
  %116 = load i32, i32* @SUBPICTURE_ALIGN_TOP, align 4
  %117 = load i32, i32* @SUBPICTURE_ALIGN_LEFT, align 4
  %118 = or i32 %116, %117
  %119 = load %struct.TYPE_21__*, %struct.TYPE_21__** %18, align 8
  %120 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %119, i32 0, i32 0
  store i32 %118, i32* %120, align 8
  %121 = load %struct.TYPE_21__*, %struct.TYPE_21__** %18, align 8
  %122 = load i32*, i32** %12, align 8
  %123 = call i32 @RegionDraw(%struct.TYPE_21__* %121, i32* %122)
  %124 = load %struct.TYPE_21__*, %struct.TYPE_21__** %18, align 8
  %125 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %16, align 8
  store %struct.TYPE_21__* %124, %struct.TYPE_21__** %125, align 8
  %126 = load %struct.TYPE_21__*, %struct.TYPE_21__** %18, align 8
  %127 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %126, i32 0, i32 1
  store %struct.TYPE_21__** %127, %struct.TYPE_21__*** %16, align 8
  br label %128

128:                                              ; preds = %101
  %129 = load i32, i32* %17, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %17, align 4
  br label %64

131:                                              ; preds = %100, %64
  %132 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %133 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %132, i32 0, i32 0
  %134 = call i32 @vlc_mutex_unlock(i32* %133)
  br label %135

135:                                              ; preds = %131, %57
  ret void
}

declare dso_local i32 @VLC_UNUSED(%struct.TYPE_19__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @BuildRegions(%struct.TYPE_22__*, i32, i32*, i64, i64) #1

declare dso_local i32 @vlc_mutex_unlock(i32*) #1

declare dso_local %struct.TYPE_21__* @subpicture_region_New(%struct.TYPE_19__*) #1

declare dso_local i32 @RegionDraw(%struct.TYPE_21__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
