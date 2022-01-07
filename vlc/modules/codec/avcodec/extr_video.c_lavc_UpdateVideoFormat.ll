; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/avcodec/extr_video.c_lavc_UpdateVideoFormat.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/avcodec/extr_video.c_lavc_UpdateVideoFormat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { %struct.TYPE_21__, %struct.TYPE_17__, %struct.TYPE_24__* }
%struct.TYPE_21__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i32, %struct.TYPE_19__, i32, i32, i32, i32 }
%struct.TYPE_19__ = type { i64 }
%struct.TYPE_17__ = type { %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i32, i32, %struct.TYPE_19__, i32, i32, i32, i32, i32, i32*, i32 }
%struct.TYPE_24__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i64 }
%struct.TYPE_25__ = type { i32 }

@VIDEO_ES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_23__*, %struct.TYPE_25__*, i32, i32, i32**)* @lavc_UpdateVideoFormat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lavc_UpdateVideoFormat(%struct.TYPE_23__* %0, %struct.TYPE_25__* %1, i32 %2, i32 %3, i32** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_23__*, align 8
  %8 = alloca %struct.TYPE_25__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32**, align 8
  %12 = alloca %struct.TYPE_22__, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_24__*, align 8
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %7, align 8
  store %struct.TYPE_25__* %1, %struct.TYPE_25__** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32** %4, i32*** %11, align 8
  %15 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %16 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* %10, align 4
  %19 = call i32 @lavc_GetVideoFormat(%struct.TYPE_23__* %15, %struct.TYPE_22__* %12, %struct.TYPE_25__* %16, i32 %17, i32 %18)
  store i32 %19, i32* %13, align 4
  %20 = load i32, i32* %13, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %5
  %23 = load i32, i32* %13, align 4
  store i32 %23, i32* %6, align 4
  br label %156

24:                                               ; preds = %5
  %25 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %25, i32 0, i32 2
  %27 = load %struct.TYPE_24__*, %struct.TYPE_24__** %26, align 8
  store %struct.TYPE_24__* %27, %struct.TYPE_24__** %14, align 8
  %28 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %29 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %46

33:                                               ; preds = %24
  %34 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %35 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %12, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @__MAX(i32 %40, i32 1)
  %42 = mul nsw i32 %37, %41
  %43 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %12, i32 0, i32 9
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @date_Change(%struct.TYPE_18__* %35, i32 %42, i32 %44)
  br label %59

46:                                               ; preds = %24
  %47 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %48 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %12, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @__MAX(i32 %53, i32 1)
  %55 = mul nsw i32 %50, %54
  %56 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %12, i32 0, i32 9
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @date_Init(%struct.TYPE_18__* %48, i32 %55, i32 %57)
  br label %59

59:                                               ; preds = %46, %33
  %60 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %62, i32 0, i32 8
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %12, i32 0, i32 8
  store i32* %64, i32** %65, align 8
  %66 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %68, i32 0, i32 8
  store i32* null, i32** %69, align 8
  %70 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %70, i32 0, i32 1
  %72 = load i32, i32* @VIDEO_ES, align 4
  %73 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %12, i32 0, i32 7
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @es_format_Change(%struct.TYPE_17__* %71, i32 %72, i32 %74)
  %76 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %77, i32 0, i32 0
  %79 = bitcast %struct.TYPE_22__* %78 to i8*
  %80 = bitcast %struct.TYPE_22__* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %79, i8* align 8 %80, i64 56, i1 false)
  %81 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %83, i32 0, i32 5
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %88, i32 0, i32 6
  store i32 %85, i32* %89, align 4
  %90 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %91 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %92, i32 0, i32 4
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %96 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %97, i32 0, i32 5
  store i32 %94, i32* %98, align 8
  %99 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %100 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %105 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %106, i32 0, i32 4
  store i32 %103, i32* %107, align 4
  %108 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %109 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %114 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %115, i32 0, i32 3
  store i32 %112, i32* %116, align 8
  %117 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %118 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %135

124:                                              ; preds = %59
  %125 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %126 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %127, i32 0, i32 2
  %129 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %130 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %131, i32 0, i32 1
  %133 = bitcast %struct.TYPE_19__* %128 to i8*
  %134 = bitcast %struct.TYPE_19__* %132 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %133, i8* align 8 %134, i64 8, i1 false)
  br label %135

135:                                              ; preds = %124, %59
  %136 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %137 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %142 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %141, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %143, i32 0, i32 1
  store i32 %140, i32* %144, align 4
  %145 = load i32**, i32*** %11, align 8
  %146 = icmp ne i32** %145, null
  br i1 %146, label %147, label %155

147:                                              ; preds = %135
  %148 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %149 = call i32* @decoder_GetDecoderDevice(%struct.TYPE_23__* %148)
  %150 = load i32**, i32*** %11, align 8
  store i32* %149, i32** %150, align 8
  %151 = load i32**, i32*** %11, align 8
  %152 = load i32*, i32** %151, align 8
  %153 = icmp eq i32* %152, null
  %154 = zext i1 %153 to i32
  store i32 %154, i32* %6, align 4
  br label %156

155:                                              ; preds = %135
  store i32 0, i32* %6, align 4
  br label %156

156:                                              ; preds = %155, %147, %22
  %157 = load i32, i32* %6, align 4
  ret i32 %157
}

declare dso_local i32 @lavc_GetVideoFormat(%struct.TYPE_23__*, %struct.TYPE_22__*, %struct.TYPE_25__*, i32, i32) #1

declare dso_local i32 @date_Change(%struct.TYPE_18__*, i32, i32) #1

declare dso_local i32 @__MAX(i32, i32) #1

declare dso_local i32 @date_Init(%struct.TYPE_18__*, i32, i32) #1

declare dso_local i32 @es_format_Change(%struct.TYPE_17__*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32* @decoder_GetDecoderDevice(%struct.TYPE_23__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
