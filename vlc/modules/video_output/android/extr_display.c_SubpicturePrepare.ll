; ModuleID = '/home/carl/AnghaBench/vlc/modules/video_output/android/extr_display.c_SubpicturePrepare.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/video_output/android/extr_display.c_SubpicturePrepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i64, i32, %struct.TYPE_24__*, i32, %struct.TYPE_23__ }
%struct.TYPE_24__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i32, i32, i32* }
%struct.TYPE_23__ = type { i32, i32, i32, i32 }
%struct.TYPE_22__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_20__*, %struct.TYPE_22__*)* @SubpicturePrepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SubpicturePrepare(%struct.TYPE_20__* %0, %struct.TYPE_22__* %1) #0 {
  %3 = alloca %struct.TYPE_20__*, align 8
  %4 = alloca %struct.TYPE_22__*, align 8
  %5 = alloca %struct.TYPE_21__*, align 8
  %6 = alloca %struct.TYPE_23__, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %3, align 8
  store %struct.TYPE_22__* %1, %struct.TYPE_22__** %4, align 8
  %10 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  store %struct.TYPE_21__* %12, %struct.TYPE_21__** %5, align 8
  %13 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %14 = call i32 @SubtitleRegionToBounds(%struct.TYPE_22__* %13, %struct.TYPE_23__* %6)
  %15 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %16 = icmp ne %struct.TYPE_22__* %15, null
  br i1 %16, label %17, label %41

17:                                               ; preds = %2
  %18 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %20, %23
  br i1 %24, label %25, label %31

25:                                               ; preds = %17
  %26 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %26, i32 0, i32 4
  %28 = call i64 @memcmp(%struct.TYPE_23__* %6, %struct.TYPE_23__* %27, i32 16)
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  br label %127

31:                                               ; preds = %25, %17
  %32 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %35, i32 0, i32 0
  store i64 %34, i64* %36, align 8
  %37 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %37, i32 0, i32 4
  %39 = bitcast %struct.TYPE_23__* %38 to i8*
  %40 = bitcast %struct.TYPE_23__* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %39, i8* align 4 %40, i64 16, i1 false)
  br label %41

41:                                               ; preds = %31, %2
  %42 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %43 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %46, i32 0, i32 2
  %48 = load %struct.TYPE_24__*, %struct.TYPE_24__** %47, align 8
  %49 = call i64 @AndroidWindow_LockPicture(%struct.TYPE_21__* %42, i32 %45, %struct.TYPE_24__* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %41
  br label %127

52:                                               ; preds = %41
  %53 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %54 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %55 = call i32 @SubtitleGetDirtyBounds(%struct.TYPE_20__* %53, %struct.TYPE_22__* %54, %struct.TYPE_23__* %6)
  %56 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %6, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %58, i32 0, i32 2
  %60 = load %struct.TYPE_24__*, %struct.TYPE_24__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_19__*, %struct.TYPE_19__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %62, i64 0
  %64 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = mul nsw i32 %57, %65
  store i32 %66, i32* %7, align 4
  %67 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %6, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %6, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = sub nsw i32 %68, %70
  %72 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %72, i32 0, i32 2
  %74 = load %struct.TYPE_24__*, %struct.TYPE_24__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_19__*, %struct.TYPE_19__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = mul nsw i32 %71, %78
  store i32 %79, i32* %8, align 4
  %80 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %6, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  store i32 %81, i32* %9, align 4
  br label %82

82:                                               ; preds = %112, %52
  %83 = load i32, i32* %9, align 4
  %84 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %6, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = icmp slt i32 %83, %85
  br i1 %86, label %87, label %115

87:                                               ; preds = %82
  %88 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %88, i32 0, i32 2
  %90 = load %struct.TYPE_24__*, %struct.TYPE_24__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %90, i32 0, i32 0
  %92 = load %struct.TYPE_19__*, %struct.TYPE_19__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %92, i64 0
  %94 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %93, i32 0, i32 2
  %95 = load i32*, i32** %94, align 8
  %96 = load i32, i32* %9, align 4
  %97 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %97, i32 0, i32 2
  %99 = load %struct.TYPE_24__*, %struct.TYPE_24__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %99, i32 0, i32 0
  %101 = load %struct.TYPE_19__*, %struct.TYPE_19__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %101, i64 0
  %103 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = mul nsw i32 %96, %104
  %106 = load i32, i32* %7, align 4
  %107 = add nsw i32 %105, %106
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %95, i64 %108
  %110 = load i32, i32* %8, align 4
  %111 = call i32 @memset(i32* %109, i32 0, i32 %110)
  br label %112

112:                                              ; preds = %87
  %113 = load i32, i32* %9, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %9, align 4
  br label %82

115:                                              ; preds = %82
  %116 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %117 = icmp ne %struct.TYPE_22__* %116, null
  br i1 %117, label %118, label %127

118:                                              ; preds = %115
  %119 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %119, i32 0, i32 2
  %121 = load %struct.TYPE_24__*, %struct.TYPE_24__** %120, align 8
  %122 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 8
  %125 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %126 = call i32 @picture_BlendSubpicture(%struct.TYPE_24__* %121, i32 %124, %struct.TYPE_22__* %125)
  br label %127

127:                                              ; preds = %30, %51, %118, %115
  ret void
}

declare dso_local i32 @SubtitleRegionToBounds(%struct.TYPE_22__*, %struct.TYPE_23__*) #1

declare dso_local i64 @memcmp(%struct.TYPE_23__*, %struct.TYPE_23__*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @AndroidWindow_LockPicture(%struct.TYPE_21__*, i32, %struct.TYPE_24__*) #1

declare dso_local i32 @SubtitleGetDirtyBounds(%struct.TYPE_20__*, %struct.TYPE_22__*, %struct.TYPE_23__*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @picture_BlendSubpicture(%struct.TYPE_24__*, i32, %struct.TYPE_22__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
