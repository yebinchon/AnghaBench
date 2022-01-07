; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/extr_svcdsub.c_DecodePacket.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/extr_svcdsub.c_DecodePacket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { i32, %struct.TYPE_25__*, i64, i64 }
%struct.TYPE_25__ = type { i32, i32 }
%struct.TYPE_26__ = type { %struct.TYPE_27__* }
%struct.TYPE_27__ = type { i32, i32, i32**, i32, i32, i64 }
%struct.TYPE_28__ = type { i64 }
%struct.TYPE_23__ = type { %struct.TYPE_22__*, i64, i64, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_22__ = type { i32, i32** }

@VLC_CODEC_YUVP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"cannot allocate SVCD subtitle region\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_24__* (%struct.TYPE_26__*, %struct.TYPE_28__*)* @DecodePacket to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_24__* @DecodePacket(%struct.TYPE_26__* %0, %struct.TYPE_28__* %1) #0 {
  %3 = alloca %struct.TYPE_24__*, align 8
  %4 = alloca %struct.TYPE_26__*, align 8
  %5 = alloca %struct.TYPE_28__*, align 8
  %6 = alloca %struct.TYPE_27__*, align 8
  %7 = alloca %struct.TYPE_24__*, align 8
  %8 = alloca %struct.TYPE_25__*, align 8
  %9 = alloca %struct.TYPE_23__, align 8
  %10 = alloca %struct.TYPE_22__, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_26__* %0, %struct.TYPE_26__** %4, align 8
  store %struct.TYPE_28__* %1, %struct.TYPE_28__** %5, align 8
  %12 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  store %struct.TYPE_27__* %14, %struct.TYPE_27__** %6, align 8
  %15 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %16 = call %struct.TYPE_24__* @decoder_NewSubpicture(%struct.TYPE_26__* %15, i32* null)
  store %struct.TYPE_24__* %16, %struct.TYPE_24__** %7, align 8
  %17 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %18 = icmp ne %struct.TYPE_24__* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %2
  store %struct.TYPE_24__* null, %struct.TYPE_24__** %3, align 8
  br label %176

20:                                               ; preds = %2
  %21 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %24, i32 0, i32 3
  store i64 %23, i64* %25, align 8
  %26 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %29, i32 0, i32 5
  %31 = load i64, i64* %30, align 8
  %32 = add nsw i64 %28, %31
  %33 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %33, i32 0, i32 2
  store i64 %32, i64* %34, align 8
  %35 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %35, i32 0, i32 0
  store i32 1, i32* %36, align 8
  %37 = load i32, i32* @VLC_CODEC_YUVP, align 4
  %38 = call i32 @video_format_Init(%struct.TYPE_23__* %9, i32 %37)
  %39 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %9, i32 0, i32 8
  store i32 %41, i32* %42, align 4
  %43 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 4
  %46 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %9, i32 0, i32 7
  store i32 %45, i32* %46, align 8
  %47 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 4
  %50 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %9, i32 0, i32 5
  store i32 %49, i32* %50, align 8
  %51 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %9, i32 0, i32 6
  store i32 %49, i32* %51, align 4
  %52 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %9, i32 0, i32 3
  store i32 %54, i32* %55, align 8
  %56 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %9, i32 0, i32 4
  store i32 %54, i32* %56, align 4
  %57 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %9, i32 0, i32 1
  store i64 0, i64* %57, align 8
  %58 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %9, i32 0, i32 2
  store i64 0, i64* %58, align 8
  %59 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %9, i32 0, i32 0
  store %struct.TYPE_22__* %10, %struct.TYPE_22__** %59, align 8
  %60 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %9, i32 0, i32 0
  %61 = load %struct.TYPE_22__*, %struct.TYPE_22__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %61, i32 0, i32 0
  store i32 4, i32* %62, align 8
  store i32 0, i32* %11, align 4
  br label %63

63:                                               ; preds = %143, %20
  %64 = load i32, i32* %11, align 4
  %65 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %9, i32 0, i32 0
  %66 = load %struct.TYPE_22__*, %struct.TYPE_22__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = icmp slt i32 %64, %68
  br i1 %69, label %70, label %146

70:                                               ; preds = %63
  %71 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %71, i32 0, i32 2
  %73 = load i32**, i32*** %72, align 8
  %74 = load i32, i32* %11, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32*, i32** %73, i64 %75
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 0
  %79 = load i32, i32* %78, align 4
  %80 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %9, i32 0, i32 0
  %81 = load %struct.TYPE_22__*, %struct.TYPE_22__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %81, i32 0, i32 1
  %83 = load i32**, i32*** %82, align 8
  %84 = load i32, i32* %11, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32*, i32** %83, i64 %85
  %87 = load i32*, i32** %86, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 0
  store i32 %79, i32* %88, align 4
  %89 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %89, i32 0, i32 2
  %91 = load i32**, i32*** %90, align 8
  %92 = load i32, i32* %11, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32*, i32** %91, i64 %93
  %95 = load i32*, i32** %94, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 1
  %97 = load i32, i32* %96, align 4
  %98 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %9, i32 0, i32 0
  %99 = load %struct.TYPE_22__*, %struct.TYPE_22__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %99, i32 0, i32 1
  %101 = load i32**, i32*** %100, align 8
  %102 = load i32, i32* %11, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32*, i32** %101, i64 %103
  %105 = load i32*, i32** %104, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 1
  store i32 %97, i32* %106, align 4
  %107 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %107, i32 0, i32 2
  %109 = load i32**, i32*** %108, align 8
  %110 = load i32, i32* %11, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32*, i32** %109, i64 %111
  %113 = load i32*, i32** %112, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 2
  %115 = load i32, i32* %114, align 4
  %116 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %9, i32 0, i32 0
  %117 = load %struct.TYPE_22__*, %struct.TYPE_22__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %117, i32 0, i32 1
  %119 = load i32**, i32*** %118, align 8
  %120 = load i32, i32* %11, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32*, i32** %119, i64 %121
  %123 = load i32*, i32** %122, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 2
  store i32 %115, i32* %124, align 4
  %125 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %126 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %125, i32 0, i32 2
  %127 = load i32**, i32*** %126, align 8
  %128 = load i32, i32* %11, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32*, i32** %127, i64 %129
  %131 = load i32*, i32** %130, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 3
  %133 = load i32, i32* %132, align 4
  %134 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %9, i32 0, i32 0
  %135 = load %struct.TYPE_22__*, %struct.TYPE_22__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %135, i32 0, i32 1
  %137 = load i32**, i32*** %136, align 8
  %138 = load i32, i32* %11, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32*, i32** %137, i64 %139
  %141 = load i32*, i32** %140, align 8
  %142 = getelementptr inbounds i32, i32* %141, i64 3
  store i32 %133, i32* %142, align 4
  br label %143

143:                                              ; preds = %70
  %144 = load i32, i32* %11, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %11, align 4
  br label %63

146:                                              ; preds = %63
  %147 = call %struct.TYPE_25__* @subpicture_region_New(%struct.TYPE_23__* %9)
  store %struct.TYPE_25__* %147, %struct.TYPE_25__** %8, align 8
  %148 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %9, i32 0, i32 0
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %148, align 8
  %149 = call i32 @video_format_Clean(%struct.TYPE_23__* %9)
  %150 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %151 = icmp ne %struct.TYPE_25__* %150, null
  br i1 %151, label %157, label %152

152:                                              ; preds = %146
  %153 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %154 = call i32 @msg_Err(%struct.TYPE_26__* %153, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %155 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %156 = call i32 @subpicture_Delete(%struct.TYPE_24__* %155)
  store %struct.TYPE_24__* null, %struct.TYPE_24__** %3, align 8
  br label %176

157:                                              ; preds = %146
  %158 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %159 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %160 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %159, i32 0, i32 1
  store %struct.TYPE_25__* %158, %struct.TYPE_25__** %160, align 8
  %161 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %162 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %165 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %164, i32 0, i32 1
  store i32 %163, i32* %165, align 4
  %166 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %167 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %170 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %169, i32 0, i32 0
  store i32 %168, i32* %170, align 4
  %171 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %172 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %173 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %174 = call i32 @SVCDSubRenderImage(%struct.TYPE_26__* %171, %struct.TYPE_28__* %172, %struct.TYPE_25__* %173)
  %175 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  store %struct.TYPE_24__* %175, %struct.TYPE_24__** %3, align 8
  br label %176

176:                                              ; preds = %157, %152, %19
  %177 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  ret %struct.TYPE_24__* %177
}

declare dso_local %struct.TYPE_24__* @decoder_NewSubpicture(%struct.TYPE_26__*, i32*) #1

declare dso_local i32 @video_format_Init(%struct.TYPE_23__*, i32) #1

declare dso_local %struct.TYPE_25__* @subpicture_region_New(%struct.TYPE_23__*) #1

declare dso_local i32 @video_format_Clean(%struct.TYPE_23__*) #1

declare dso_local i32 @msg_Err(%struct.TYPE_26__*, i8*) #1

declare dso_local i32 @subpicture_Delete(%struct.TYPE_24__*) #1

declare dso_local i32 @SVCDSubRenderImage(%struct.TYPE_26__*, %struct.TYPE_28__*, %struct.TYPE_25__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
