; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/extr_cvdsub.c_DecodePacket.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/extr_cvdsub.c_DecodePacket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i32, %struct.TYPE_24__*, i64, i64 }
%struct.TYPE_24__ = type { i32, i32 }
%struct.TYPE_25__ = type { %struct.TYPE_26__* }
%struct.TYPE_26__ = type { i32, i32, i32**, i32, i32, i64 }
%struct.TYPE_27__ = type { i64 }
%struct.TYPE_22__ = type { i32, i32, %struct.TYPE_21__*, i64, i64, i32, i32, i32, i32 }
%struct.TYPE_21__ = type { i32, i32** }

@VLC_CODEC_YUVP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"cannot allocate SPU region\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_23__* (%struct.TYPE_25__*, %struct.TYPE_27__*)* @DecodePacket to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_23__* @DecodePacket(%struct.TYPE_25__* %0, %struct.TYPE_27__* %1) #0 {
  %3 = alloca %struct.TYPE_23__*, align 8
  %4 = alloca %struct.TYPE_25__*, align 8
  %5 = alloca %struct.TYPE_27__*, align 8
  %6 = alloca %struct.TYPE_26__*, align 8
  %7 = alloca %struct.TYPE_23__*, align 8
  %8 = alloca %struct.TYPE_24__*, align 8
  %9 = alloca %struct.TYPE_22__, align 8
  %10 = alloca %struct.TYPE_21__, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %4, align 8
  store %struct.TYPE_27__* %1, %struct.TYPE_27__** %5, align 8
  %12 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  store %struct.TYPE_26__* %14, %struct.TYPE_26__** %6, align 8
  %15 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %16 = call %struct.TYPE_23__* @decoder_NewSubpicture(%struct.TYPE_25__* %15, i32* null)
  store %struct.TYPE_23__* %16, %struct.TYPE_23__** %7, align 8
  %17 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %18 = icmp ne %struct.TYPE_23__* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %2
  store %struct.TYPE_23__* null, %struct.TYPE_23__** %3, align 8
  br label %175

20:                                               ; preds = %2
  %21 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %24, i32 0, i32 3
  store i64 %23, i64* %25, align 8
  %26 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %29, i32 0, i32 5
  %31 = load i64, i64* %30, align 8
  %32 = add nsw i64 %28, %31
  %33 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %33, i32 0, i32 2
  store i64 %32, i64* %34, align 8
  %35 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %35, i32 0, i32 0
  store i32 1, i32* %36, align 8
  %37 = load i32, i32* @VLC_CODEC_YUVP, align 4
  %38 = call i32 @video_format_Init(%struct.TYPE_22__* %9, i32 %37)
  %39 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %9, i32 0, i32 0
  store i32 1, i32* %39, align 8
  %40 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %9, i32 0, i32 1
  store i32 1, i32* %40, align 4
  %41 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 4
  %44 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %9, i32 0, i32 7
  store i32 %43, i32* %44, align 8
  %45 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %9, i32 0, i32 8
  store i32 %43, i32* %45, align 4
  %46 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %9, i32 0, i32 5
  store i32 %48, i32* %49, align 8
  %50 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %9, i32 0, i32 6
  store i32 %48, i32* %50, align 4
  %51 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %9, i32 0, i32 3
  store i64 0, i64* %51, align 8
  %52 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %9, i32 0, i32 4
  store i64 0, i64* %52, align 8
  %53 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %9, i32 0, i32 2
  store %struct.TYPE_21__* %10, %struct.TYPE_21__** %53, align 8
  %54 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %9, i32 0, i32 2
  %55 = load %struct.TYPE_21__*, %struct.TYPE_21__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %55, i32 0, i32 0
  store i32 4, i32* %56, align 8
  store i32 0, i32* %11, align 4
  br label %57

57:                                               ; preds = %137, %20
  %58 = load i32, i32* %11, align 4
  %59 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %9, i32 0, i32 2
  %60 = load %struct.TYPE_21__*, %struct.TYPE_21__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp slt i32 %58, %62
  br i1 %63, label %64, label %140

64:                                               ; preds = %57
  %65 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %65, i32 0, i32 2
  %67 = load i32**, i32*** %66, align 8
  %68 = load i32, i32* %11, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32*, i32** %67, i64 %69
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 0
  %73 = load i32, i32* %72, align 4
  %74 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %9, i32 0, i32 2
  %75 = load %struct.TYPE_21__*, %struct.TYPE_21__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %75, i32 0, i32 1
  %77 = load i32**, i32*** %76, align 8
  %78 = load i32, i32* %11, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32*, i32** %77, i64 %79
  %81 = load i32*, i32** %80, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 0
  store i32 %73, i32* %82, align 4
  %83 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %83, i32 0, i32 2
  %85 = load i32**, i32*** %84, align 8
  %86 = load i32, i32* %11, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32*, i32** %85, i64 %87
  %89 = load i32*, i32** %88, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 1
  %91 = load i32, i32* %90, align 4
  %92 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %9, i32 0, i32 2
  %93 = load %struct.TYPE_21__*, %struct.TYPE_21__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %93, i32 0, i32 1
  %95 = load i32**, i32*** %94, align 8
  %96 = load i32, i32* %11, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32*, i32** %95, i64 %97
  %99 = load i32*, i32** %98, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 1
  store i32 %91, i32* %100, align 4
  %101 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %101, i32 0, i32 2
  %103 = load i32**, i32*** %102, align 8
  %104 = load i32, i32* %11, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32*, i32** %103, i64 %105
  %107 = load i32*, i32** %106, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 2
  %109 = load i32, i32* %108, align 4
  %110 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %9, i32 0, i32 2
  %111 = load %struct.TYPE_21__*, %struct.TYPE_21__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %111, i32 0, i32 1
  %113 = load i32**, i32*** %112, align 8
  %114 = load i32, i32* %11, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32*, i32** %113, i64 %115
  %117 = load i32*, i32** %116, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 2
  store i32 %109, i32* %118, align 4
  %119 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %120 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %119, i32 0, i32 2
  %121 = load i32**, i32*** %120, align 8
  %122 = load i32, i32* %11, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32*, i32** %121, i64 %123
  %125 = load i32*, i32** %124, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 3
  %127 = load i32, i32* %126, align 4
  %128 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %9, i32 0, i32 2
  %129 = load %struct.TYPE_21__*, %struct.TYPE_21__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %129, i32 0, i32 1
  %131 = load i32**, i32*** %130, align 8
  %132 = load i32, i32* %11, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i32*, i32** %131, i64 %133
  %135 = load i32*, i32** %134, align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 3
  store i32 %127, i32* %136, align 4
  br label %137

137:                                              ; preds = %64
  %138 = load i32, i32* %11, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %11, align 4
  br label %57

140:                                              ; preds = %57
  %141 = call %struct.TYPE_24__* @subpicture_region_New(%struct.TYPE_22__* %9)
  store %struct.TYPE_24__* %141, %struct.TYPE_24__** %8, align 8
  %142 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %143 = icmp ne %struct.TYPE_24__* %142, null
  br i1 %143, label %149, label %144

144:                                              ; preds = %140
  %145 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %146 = call i32 @msg_Err(%struct.TYPE_25__* %145, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %147 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %148 = call i32 @subpicture_Delete(%struct.TYPE_23__* %147)
  store %struct.TYPE_23__* null, %struct.TYPE_23__** %3, align 8
  br label %175

149:                                              ; preds = %140
  %150 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %151 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %152 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %151, i32 0, i32 1
  store %struct.TYPE_24__* %150, %struct.TYPE_24__** %152, align 8
  %153 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %154 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %157 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %156, i32 0, i32 0
  store i32 %155, i32* %157, align 4
  %158 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %159 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = mul nsw i32 %160, 3
  %162 = sdiv i32 %161, 4
  %163 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %164 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %163, i32 0, i32 0
  store i32 %162, i32* %164, align 4
  %165 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %166 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %169 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %168, i32 0, i32 1
  store i32 %167, i32* %169, align 4
  %170 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %171 = load %struct.TYPE_27__*, %struct.TYPE_27__** %5, align 8
  %172 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %173 = call i32 @RenderImage(%struct.TYPE_25__* %170, %struct.TYPE_27__* %171, %struct.TYPE_24__* %172)
  %174 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  store %struct.TYPE_23__* %174, %struct.TYPE_23__** %3, align 8
  br label %175

175:                                              ; preds = %149, %144, %19
  %176 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  ret %struct.TYPE_23__* %176
}

declare dso_local %struct.TYPE_23__* @decoder_NewSubpicture(%struct.TYPE_25__*, i32*) #1

declare dso_local i32 @video_format_Init(%struct.TYPE_22__*, i32) #1

declare dso_local %struct.TYPE_24__* @subpicture_region_New(%struct.TYPE_22__*) #1

declare dso_local i32 @msg_Err(%struct.TYPE_25__*, i8*) #1

declare dso_local i32 @subpicture_Delete(%struct.TYPE_23__*) #1

declare dso_local i32 @RenderImage(%struct.TYPE_25__*, %struct.TYPE_27__*, %struct.TYPE_24__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
