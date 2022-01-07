; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/extr_libass.c_SubpictureValidate.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/extr_libass.c_SubpictureValidate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32*, i64, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32*, i64, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, i32, i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { double, i64, i64, i64, i64, i32 }

@VLC_CODEC_RGBA = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4
@VLC_EGENERIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, i32, %struct.TYPE_10__*, i32, %struct.TYPE_10__*, i64)* @SubpictureValidate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @SubpictureValidate(%struct.TYPE_11__* %0, i32 %1, %struct.TYPE_10__* %2, i32 %3, %struct.TYPE_10__* %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_10__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_12__*, align 8
  %15 = alloca %struct.TYPE_13__*, align 8
  %16 = alloca %struct.TYPE_10__, align 8
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %8, align 8
  store i32 %1, i32* %9, align 4
  store %struct.TYPE_10__* %2, %struct.TYPE_10__** %10, align 8
  store i32 %3, i32* %11, align 4
  store %struct.TYPE_10__* %4, %struct.TYPE_10__** %12, align 8
  store i64 %5, i64* %13, align 8
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %24, align 8
  store %struct.TYPE_12__* %25, %struct.TYPE_12__** %14, align 8
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 2
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %27, align 8
  store %struct.TYPE_13__* %28, %struct.TYPE_13__** %15, align 8
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 0
  %31 = call i32 @vlc_mutex_lock(i32* %30)
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %33 = bitcast %struct.TYPE_10__* %16 to i8*
  %34 = bitcast %struct.TYPE_10__* %32 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %33, i8* align 8 %34, i64 48, i1 false)
  %35 = load i32, i32* @VLC_CODEC_RGBA, align 4
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 5
  store i32 %35, i32* %36, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 4
  store i64 0, i64* %37, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 3
  store i64 0, i64* %38, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 2
  store i64 0, i64* %39, align 8
  %40 = load i32, i32* %9, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %6
  %43 = load i32, i32* %11, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %81

45:                                               ; preds = %42, %6
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 0
  %52 = load double, double* %51, align 8
  %53 = call i32 @ass_set_frame_size(i32 %48, i64 %50, double %52)
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = sitofp i64 %56 to double
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 0
  %60 = load double, double* %59, align 8
  %61 = fdiv double %57, %60
  store double %61, double* %17, align 8
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = sitofp i64 %64 to double
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 0
  %68 = load double, double* %67, align 8
  %69 = fdiv double %65, %68
  store double %69, double* %18, align 8
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = load double, double* %18, align 8
  %74 = load double, double* %17, align 8
  %75 = fdiv double %73, %74
  %76 = call i32 @ass_set_aspect_ratio(i32 %72, double %75, i32 1)
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 3
  %79 = bitcast %struct.TYPE_10__* %78 to i8*
  %80 = bitcast %struct.TYPE_10__* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %79, i8* align 8 %80, i64 48, i1 false)
  br label %81

81:                                               ; preds = %45, %42
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* %13, align 8
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = sub nsw i64 %85, %88
  %90 = add nsw i64 %84, %89
  store i64 %90, i64* %19, align 8
  %91 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %95 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load i64, i64* %19, align 8
  %98 = call i32 @MS_FROM_VLC_TICK(i64 %97)
  %99 = call i32* @ass_render_frame(i32 %93, i32 %96, i32 %98, i32* %20)
  store i32* %99, i32** %21, align 8
  %100 = load i32, i32* %20, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %123, label %102

102:                                              ; preds = %81
  %103 = load i32, i32* %9, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %123, label %105

105:                                              ; preds = %102
  %106 = load i32, i32* %11, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %123, label %108

108:                                              ; preds = %105
  %109 = load i32*, i32** %21, align 8
  %110 = icmp ne i32* %109, null
  %111 = zext i1 %110 to i32
  %112 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %112, i32 0, i32 0
  %114 = load i32*, i32** %113, align 8
  %115 = icmp ne i32* %114, null
  %116 = zext i1 %115 to i32
  %117 = icmp eq i32 %111, %116
  br i1 %117, label %118, label %123

118:                                              ; preds = %108
  %119 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %120 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %119, i32 0, i32 0
  %121 = call i32 @vlc_mutex_unlock(i32* %120)
  %122 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %122, i32* %7, align 4
  br label %128

123:                                              ; preds = %108, %105, %102, %81
  %124 = load i32*, i32** %21, align 8
  %125 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %126 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %125, i32 0, i32 0
  store i32* %124, i32** %126, align 8
  %127 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %127, i32* %7, align 4
  br label %128

128:                                              ; preds = %123, %118
  %129 = load i32, i32* %7, align 4
  ret i32 %129
}

declare dso_local i32 @vlc_mutex_lock(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ass_set_frame_size(i32, i64, double) #1

declare dso_local i32 @ass_set_aspect_ratio(i32, double, i32) #1

declare dso_local i32* @ass_render_frame(i32, i32, i32, i32*) #1

declare dso_local i32 @MS_FROM_VLC_TICK(i64) #1

declare dso_local i32 @vlc_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
