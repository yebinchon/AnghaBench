; ModuleID = '/home/carl/AnghaBench/vlc/modules/stream_out/transcode/extr_spu.c_transcode_spu_process.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/stream_out/transcode/extr_spu.c_transcode_spu_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i64 (i32, i32*, i32*)*, i32, %struct.TYPE_21__*, i32, i32 (i32, %struct.TYPE_22__*)*, i64 (i32)*, %struct.TYPE_19__* }
%struct.TYPE_21__ = type { i64, %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i32, i32 }
%struct.TYPE_22__ = type { i32, i64, %struct.TYPE_22__* }
%struct.TYPE_19__ = type { i32 (%struct.TYPE_19__*, i32*)* }
%struct.TYPE_24__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32, i32, i32, i32, i32, i32 }

@VLCDEC_SUCCESS = common dso_local global i32 0, align 4
@VLC_EGENERIC = common dso_local global i32 0, align 4
@VIDEO_ES = common dso_local global i32 0, align 4
@VLC_CODEC_TEXT = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @transcode_spu_process(i32* %0, %struct.TYPE_23__* %1, i32* %2, i32** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_23__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_22__*, align 8
  %13 = alloca %struct.TYPE_22__*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_24__, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_23__* %1, %struct.TYPE_23__** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32** %3, i32*** %9, align 8
  %19 = load i32*, i32** %6, align 8
  %20 = call i32 @VLC_UNUSED(i32* %19)
  %21 = load i32**, i32*** %9, align 8
  store i32* null, i32** %21, align 8
  store i32 0, i32* %10, align 4
  %22 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %22, i32 0, i32 6
  %24 = load %struct.TYPE_19__*, %struct.TYPE_19__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %24, i32 0, i32 0
  %26 = load i32 (%struct.TYPE_19__*, i32*)*, i32 (%struct.TYPE_19__*, i32*)** %25, align 8
  %27 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %27, i32 0, i32 6
  %29 = load %struct.TYPE_19__*, %struct.TYPE_19__** %28, align 8
  %30 = load i32*, i32** %8, align 8
  %31 = call i32 %26(%struct.TYPE_19__* %29, i32* %30)
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %11, align 4
  %33 = load i32, i32* @VLCDEC_SUCCESS, align 4
  %34 = icmp ne i32 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %4
  %36 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %36, i32* %5, align 4
  br label %198

37:                                               ; preds = %4
  %38 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %39 = call %struct.TYPE_22__* @transcode_dequeue_all_subs(%struct.TYPE_23__* %38)
  store %struct.TYPE_22__* %39, %struct.TYPE_22__** %12, align 8
  br label %40

40:                                               ; preds = %184, %37
  %41 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  store %struct.TYPE_22__* %41, %struct.TYPE_22__** %13, align 8
  %42 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %43 = icmp eq %struct.TYPE_22__* %42, null
  br i1 %43, label %44, label %45

44:                                               ; preds = %40
  br label %187

45:                                               ; preds = %40
  %46 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %47 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %46, i32 0, i32 2
  %48 = load %struct.TYPE_22__*, %struct.TYPE_22__** %47, align 8
  store %struct.TYPE_22__* %48, %struct.TYPE_22__** %12, align 8
  %49 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %50 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %49, i32 0, i32 2
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %50, align 8
  %51 = load i32, i32* %10, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %45
  %54 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %55 = call i32 @subpicture_Delete(%struct.TYPE_22__* %54)
  br label %184

56:                                               ; preds = %45
  %57 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %57, i32 0, i32 5
  %59 = load i64 (i32)*, i64 (i32)** %58, align 8
  %60 = icmp ne i64 (i32)* %59, null
  br i1 %60, label %61, label %89

61:                                               ; preds = %56
  %62 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %62, i32 0, i32 5
  %64 = load i64 (i32)*, i64 (i32)** %63, align 8
  %65 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 8
  %68 = call i64 %64(i32 %67)
  store i64 %68, i64* %14, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %89

70:                                               ; preds = %61
  %71 = load i64, i64* %14, align 8
  %72 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %73 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = sext i32 %74 to i64
  %76 = sub nsw i64 %75, %71
  %77 = trunc i64 %76 to i32
  store i32 %77, i32* %73, align 8
  %78 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %79 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %88

82:                                               ; preds = %70
  %83 = load i64, i64* %14, align 8
  %84 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %85 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = sub nsw i64 %86, %83
  store i64 %87, i64* %85, align 8
  br label %88

88:                                               ; preds = %82, %70
  br label %89

89:                                               ; preds = %88, %61, %56
  %90 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %91 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %90, i32 0, i32 2
  %92 = load %struct.TYPE_21__*, %struct.TYPE_21__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = icmp eq i64 %94, 0
  br i1 %95, label %96, label %114

96:                                               ; preds = %89
  %97 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %98 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %97, i32 0, i32 4
  %99 = load i32 (i32, %struct.TYPE_22__*)*, i32 (i32, %struct.TYPE_22__*)** %98, align 8
  %100 = icmp ne i32 (i32, %struct.TYPE_22__*)* %99, null
  br i1 %100, label %104, label %101

101:                                              ; preds = %96
  %102 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %103 = call i32 @subpicture_Delete(%struct.TYPE_22__* %102)
  store i32 1, i32* %10, align 4
  br label %113

104:                                              ; preds = %96
  %105 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %106 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %105, i32 0, i32 4
  %107 = load i32 (i32, %struct.TYPE_22__*)*, i32 (i32, %struct.TYPE_22__*)** %106, align 8
  %108 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %109 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %112 = call i32 %107(i32 %110, %struct.TYPE_22__* %111)
  br label %113

113:                                              ; preds = %104, %101
  br label %183

114:                                              ; preds = %89
  %115 = load i32, i32* @VIDEO_ES, align 4
  %116 = load i32, i32* @VLC_CODEC_TEXT, align 4
  %117 = call i32 @es_format_Init(%struct.TYPE_24__* %16, i32 %115, i32 %116)
  %118 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %119 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %118, i32 0, i32 0
  %120 = load i64 (i32, i32*, i32*)*, i64 (i32, i32*, i32*)** %119, align 8
  %121 = icmp eq i64 (i32, i32*, i32*)* %120, null
  br i1 %121, label %132, label %122

122:                                              ; preds = %114
  %123 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %124 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %123, i32 0, i32 0
  %125 = load i64 (i32, i32*, i32*)*, i64 (i32, i32*, i32*)** %124, align 8
  %126 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %127 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %126, i32 0, i32 3
  %128 = load i32, i32* %127, align 8
  %129 = call i64 %125(i32 %128, i32* %17, i32* %18)
  %130 = load i64, i64* @VLC_SUCCESS, align 8
  %131 = icmp ne i64 %129, %130
  br i1 %131, label %132, label %145

132:                                              ; preds = %122, %114
  %133 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %134 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %133, i32 0, i32 2
  %135 = load %struct.TYPE_21__*, %struct.TYPE_21__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  store i32 %138, i32* %17, align 4
  %139 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %140 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %139, i32 0, i32 2
  %141 = load %struct.TYPE_21__*, %struct.TYPE_21__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %141, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  store i32 %144, i32* %18, align 4
  br label %145

145:                                              ; preds = %132, %122
  %146 = load i32, i32* %17, align 4
  %147 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %16, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %147, i32 0, i32 2
  store i32 %146, i32* %148, align 4
  %149 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %16, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %149, i32 0, i32 1
  store i32 %146, i32* %150, align 4
  %151 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %16, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %151, i32 0, i32 0
  store i32 %146, i32* %152, align 4
  %153 = load i32, i32* %18, align 4
  %154 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %16, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %154, i32 0, i32 5
  store i32 %153, i32* %155, align 4
  %156 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %16, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %156, i32 0, i32 4
  store i32 %153, i32* %157, align 4
  %158 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %16, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %158, i32 0, i32 3
  store i32 %153, i32* %159, align 4
  %160 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %161 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %16, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %16, i32 0, i32 0
  %163 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %164 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = call i32 @subpicture_Update(%struct.TYPE_22__* %160, %struct.TYPE_18__* %161, %struct.TYPE_18__* %162, i32 %165)
  %167 = call i32 @es_format_Clean(%struct.TYPE_24__* %16)
  %168 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %169 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 8
  %171 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %172 = call i32* @transcode_encoder_encode(i32 %170, %struct.TYPE_22__* %171)
  store i32* %172, i32** %15, align 8
  %173 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %174 = call i32 @subpicture_Delete(%struct.TYPE_22__* %173)
  %175 = load i32*, i32** %15, align 8
  %176 = icmp ne i32* %175, null
  br i1 %176, label %177, label %181

177:                                              ; preds = %145
  %178 = load i32**, i32*** %9, align 8
  %179 = load i32*, i32** %15, align 8
  %180 = call i32 @block_ChainAppend(i32** %178, i32* %179)
  br label %182

181:                                              ; preds = %145
  store i32 1, i32* %10, align 4
  br label %182

182:                                              ; preds = %181, %177
  br label %183

183:                                              ; preds = %182, %113
  br label %184

184:                                              ; preds = %183, %53
  %185 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %186 = icmp ne %struct.TYPE_22__* %185, null
  br i1 %186, label %40, label %187

187:                                              ; preds = %184, %44
  %188 = load i32, i32* %10, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %193

190:                                              ; preds = %187
  %191 = load i32, i32* @VLC_EGENERIC, align 4
  %192 = sext i32 %191 to i64
  br label %195

193:                                              ; preds = %187
  %194 = load i64, i64* @VLC_SUCCESS, align 8
  br label %195

195:                                              ; preds = %193, %190
  %196 = phi i64 [ %192, %190 ], [ %194, %193 ]
  %197 = trunc i64 %196 to i32
  store i32 %197, i32* %5, align 4
  br label %198

198:                                              ; preds = %195, %35
  %199 = load i32, i32* %5, align 4
  ret i32 %199
}

declare dso_local i32 @VLC_UNUSED(i32*) #1

declare dso_local %struct.TYPE_22__* @transcode_dequeue_all_subs(%struct.TYPE_23__*) #1

declare dso_local i32 @subpicture_Delete(%struct.TYPE_22__*) #1

declare dso_local i32 @es_format_Init(%struct.TYPE_24__*, i32, i32) #1

declare dso_local i32 @subpicture_Update(%struct.TYPE_22__*, %struct.TYPE_18__*, %struct.TYPE_18__*, i32) #1

declare dso_local i32 @es_format_Clean(%struct.TYPE_24__*) #1

declare dso_local i32* @transcode_encoder_encode(i32, %struct.TYPE_22__*) #1

declare dso_local i32 @block_ChainAppend(i32**, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
