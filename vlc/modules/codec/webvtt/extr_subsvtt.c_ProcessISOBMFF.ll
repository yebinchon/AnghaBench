; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/webvtt/extr_subsvtt.c_ProcessISOBMFF.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/webvtt/extr_subsvtt.c_ProcessISOBMFF.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { %struct.TYPE_25__* }
%struct.TYPE_25__ = type { %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_23__ = type { i64, i64, i32* }
%struct.TYPE_22__ = type { i8*, i32*, %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_21__ = type { i32 }

@ATOM_vttc = common dso_local global i64 0, align 8
@ATOM_vttx = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_24__*, i32*, i64, i32, i32)* @ProcessISOBMFF to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ProcessISOBMFF(%struct.TYPE_24__* %0, i32* %1, i64 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_24__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_25__*, align 8
  %12 = alloca %struct.TYPE_23__, align 8
  %13 = alloca %struct.TYPE_22__*, align 8
  %14 = alloca %struct.TYPE_23__, align 8
  %15 = alloca i8*, align 8
  %16 = alloca %struct.TYPE_21__*, align 8
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %17 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_25__*, %struct.TYPE_25__** %18, align 8
  store %struct.TYPE_25__* %19, %struct.TYPE_25__** %11, align 8
  %20 = load i32*, i32** %7, align 8
  %21 = load i64, i64* %8, align 8
  %22 = call i32 @mp4_box_iterator_Init(%struct.TYPE_23__* %12, i32* %20, i64 %21)
  br label %23

23:                                               ; preds = %132, %42, %5
  %24 = call i64 @mp4_box_iterator_Next(%struct.TYPE_23__* %12)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %133

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %12, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @ATOM_vttc, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %36, label %31

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %12, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @ATOM_vttx, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %132

36:                                               ; preds = %31, %26
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* %10, align 4
  %39 = call %struct.TYPE_22__* @webvtt_dom_cue_New(i32 %37, i32 %38)
  store %struct.TYPE_22__* %39, %struct.TYPE_22__** %13, align 8
  %40 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %41 = icmp ne %struct.TYPE_22__* %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %36
  br label %23

43:                                               ; preds = %36
  %44 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %12, i32 0, i32 2
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %12, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = call i32 @mp4_box_iterator_Init(%struct.TYPE_23__* %14, i32* %45, i64 %47)
  br label %49

49:                                               ; preds = %98, %43
  %50 = call i64 @mp4_box_iterator_Next(%struct.TYPE_23__* %14)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %101

52:                                               ; preds = %49
  store i8* null, i8** %15, align 8
  %53 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %14, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  switch i64 %54, label %98 [
    i64 130, label %55
    i64 128, label %68
    i64 129, label %83
  ]

55:                                               ; preds = %52
  %56 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %57 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %56, i32 0, i32 0
  %58 = load i8*, i8** %57, align 8
  %59 = call i32 @free(i8* %58)
  %60 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %14, i32 0, i32 2
  %61 = load i32*, i32** %60, align 8
  %62 = bitcast i32* %61 to i8*
  %63 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %14, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = call i8* @strndup(i8* %62, i64 %64)
  %66 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %67 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %66, i32 0, i32 0
  store i8* %65, i8** %67, align 8
  br label %98

68:                                               ; preds = %52
  %69 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %14, i32 0, i32 2
  %70 = load i32*, i32** %69, align 8
  %71 = bitcast i32* %70 to i8*
  %72 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %14, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = call i8* @strndup(i8* %71, i64 %73)
  store i8* %74, i8** %15, align 8
  %75 = load i8*, i8** %15, align 8
  %76 = icmp ne i8* %75, null
  br i1 %76, label %77, label %82

77:                                               ; preds = %68
  %78 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %79 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %78, i32 0, i32 2
  %80 = load i8*, i8** %15, align 8
  %81 = call i32 @webvtt_cue_settings_Parse(%struct.TYPE_19__* %79, i8* %80)
  br label %82

82:                                               ; preds = %77, %68
  br label %98

83:                                               ; preds = %52
  %84 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %14, i32 0, i32 2
  %85 = load i32*, i32** %84, align 8
  %86 = bitcast i32* %85 to i8*
  %87 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %14, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = call i8* @strndup(i8* %86, i64 %88)
  store i8* %89, i8** %15, align 8
  %90 = load i8*, i8** %15, align 8
  %91 = icmp ne i8* %90, null
  br i1 %91, label %92, label %97

92:                                               ; preds = %83
  %93 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %94 = load i8*, i8** %15, align 8
  %95 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %96 = call i32 @ProcessCue(%struct.TYPE_24__* %93, i8* %94, %struct.TYPE_22__* %95)
  br label %97

97:                                               ; preds = %92, %83
  br label %98

98:                                               ; preds = %52, %97, %82, %55
  %99 = load i8*, i8** %15, align 8
  %100 = call i32 @free(i8* %99)
  br label %49

101:                                              ; preds = %49
  %102 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %103 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %104 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %103, i32 0, i32 2
  %105 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = call %struct.TYPE_21__* @webvtt_region_GetByID(%struct.TYPE_25__* %102, i32 %106)
  store %struct.TYPE_21__* %107, %struct.TYPE_21__** %16, align 8
  %108 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %109 = icmp ne %struct.TYPE_21__* %108, null
  br i1 %109, label %110, label %118

110:                                              ; preds = %101
  %111 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %112 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %113 = call i32 @webvtt_region_AddCue(%struct.TYPE_21__* %111, %struct.TYPE_22__* %112)
  %114 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %115 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @assert(i32 %116)
  br label %131

118:                                              ; preds = %101
  %119 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %120 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %119, i32 0, i32 0
  %121 = load %struct.TYPE_20__*, %struct.TYPE_20__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %121, i32 0, i32 0
  %123 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %124 = call i32 @webvtt_domnode_AppendLast(i32* %122, %struct.TYPE_22__* %123)
  %125 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %126 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %125, i32 0, i32 0
  %127 = load %struct.TYPE_20__*, %struct.TYPE_20__** %126, align 8
  %128 = bitcast %struct.TYPE_20__* %127 to i32*
  %129 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %130 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %129, i32 0, i32 1
  store i32* %128, i32** %130, align 8
  br label %131

131:                                              ; preds = %118, %110
  br label %132

132:                                              ; preds = %131, %31
  br label %23

133:                                              ; preds = %23
  ret i32 0
}

declare dso_local i32 @mp4_box_iterator_Init(%struct.TYPE_23__*, i32*, i64) #1

declare dso_local i64 @mp4_box_iterator_Next(%struct.TYPE_23__*) #1

declare dso_local %struct.TYPE_22__* @webvtt_dom_cue_New(i32, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @strndup(i8*, i64) #1

declare dso_local i32 @webvtt_cue_settings_Parse(%struct.TYPE_19__*, i8*) #1

declare dso_local i32 @ProcessCue(%struct.TYPE_24__*, i8*, %struct.TYPE_22__*) #1

declare dso_local %struct.TYPE_21__* @webvtt_region_GetByID(%struct.TYPE_25__*, i32) #1

declare dso_local i32 @webvtt_region_AddCue(%struct.TYPE_21__*, %struct.TYPE_22__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @webvtt_domnode_AppendLast(i32*, %struct.TYPE_22__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
