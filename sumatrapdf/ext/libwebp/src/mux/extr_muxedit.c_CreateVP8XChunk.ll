; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/mux/extr_muxedit.c_CreateVP8XChunk.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/mux/extr_muxedit.c_CreateVP8XChunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { i64 }
%struct.TYPE_22__ = type { i32, i32, i32*, %struct.TYPE_32__*, %struct.TYPE_30__*, %struct.TYPE_28__*, %struct.TYPE_21__* }
%struct.TYPE_32__ = type { %struct.TYPE_31__ }
%struct.TYPE_31__ = type { i32* }
%struct.TYPE_30__ = type { %struct.TYPE_29__ }
%struct.TYPE_29__ = type { i32* }
%struct.TYPE_28__ = type { %struct.TYPE_27__ }
%struct.TYPE_27__ = type { i32* }
%struct.TYPE_21__ = type { %struct.TYPE_33__*, %struct.TYPE_26__* }
%struct.TYPE_33__ = type { i64 }
%struct.TYPE_26__ = type { %struct.TYPE_25__ }
%struct.TYPE_25__ = type { i32* }
%struct.TYPE_23__ = type { i32, i32* }

@WEBP_MUX_OK = common dso_local global i64 0, align 8
@VP8X_CHUNK_SIZE = common dso_local global i32 0, align 4
@WEBP_MUX_INVALID_ARGUMENT = common dso_local global i64 0, align 8
@kChunks = common dso_local global %struct.TYPE_24__* null, align 8
@IDX_VP8X = common dso_local global i64 0, align 8
@WEBP_MUX_NOT_FOUND = common dso_local global i64 0, align 8
@ICCP_FLAG = common dso_local global i32 0, align 4
@EXIF_FLAG = common dso_local global i32 0, align 4
@XMP_FLAG = common dso_local global i32 0, align 4
@IDX_ANMF = common dso_local global i64 0, align 8
@ANIMATION_FLAG = common dso_local global i32 0, align 4
@WEBP_CHUNK_ALPHA = common dso_local global i32 0, align 4
@ALPHA_FLAG = common dso_local global i32 0, align 4
@MAX_CANVAS_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_22__*)* @CreateVP8XChunk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @CreateVP8XChunk(%struct.TYPE_22__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_22__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_23__, align 8
  %11 = alloca %struct.TYPE_21__*, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %3, align 8
  %13 = load i64, i64* @WEBP_MUX_OK, align 8
  store i64 %13, i64* %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %14 = load i32, i32* @VP8X_CHUNK_SIZE, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %8, align 8
  %17 = alloca i32, i64 %15, align 16
  store i64 %15, i64* %9, align 8
  %18 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %10, i32 0, i32 0
  %19 = ptrtoint i32* %17 to i32
  store i32 %19, i32* %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %10, i32 0, i32 1
  %21 = load i32, i32* @VP8X_CHUNK_SIZE, align 4
  %22 = sext i32 %21 to i64
  %23 = inttoptr i64 %22 to i32*
  store i32* %23, i32** %20, align 8
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %11, align 8
  %24 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %25 = icmp ne %struct.TYPE_22__* %24, null
  %26 = zext i1 %25 to i32
  %27 = call i32 @assert(i32 %26)
  %28 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %28, i32 0, i32 6
  %30 = load %struct.TYPE_21__*, %struct.TYPE_21__** %29, align 8
  store %struct.TYPE_21__* %30, %struct.TYPE_21__** %11, align 8
  %31 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %32 = icmp eq %struct.TYPE_21__* %31, null
  br i1 %32, label %46, label %33

33:                                               ; preds = %1
  %34 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %35 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %34, i32 0, i32 1
  %36 = load %struct.TYPE_26__*, %struct.TYPE_26__** %35, align 8
  %37 = icmp eq %struct.TYPE_26__* %36, null
  br i1 %37, label %46, label %38

38:                                               ; preds = %33
  %39 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %40 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %39, i32 0, i32 1
  %41 = load %struct.TYPE_26__*, %struct.TYPE_26__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = icmp eq i32* %44, null
  br i1 %45, label %46, label %48

46:                                               ; preds = %38, %33, %1
  %47 = load i64, i64* @WEBP_MUX_INVALID_ARGUMENT, align 8
  store i64 %47, i64* %2, align 8
  store i32 1, i32* %12, align 4
  br label %241

48:                                               ; preds = %38
  %49 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %50 = load %struct.TYPE_24__*, %struct.TYPE_24__** @kChunks, align 8
  %51 = load i64, i64* @IDX_VP8X, align 8
  %52 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %50, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = call i64 @MuxDeleteAllNamedData(%struct.TYPE_22__* %49, i64 %54)
  store i64 %55, i64* %4, align 8
  %56 = load i64, i64* %4, align 8
  %57 = load i64, i64* @WEBP_MUX_OK, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %65

59:                                               ; preds = %48
  %60 = load i64, i64* %4, align 8
  %61 = load i64, i64* @WEBP_MUX_NOT_FOUND, align 8
  %62 = icmp ne i64 %60, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %59
  %64 = load i64, i64* %4, align 8
  store i64 %64, i64* %2, align 8
  store i32 1, i32* %12, align 4
  br label %241

65:                                               ; preds = %59, %48
  %66 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %66, i32 0, i32 5
  %68 = load %struct.TYPE_28__*, %struct.TYPE_28__** %67, align 8
  %69 = icmp ne %struct.TYPE_28__* %68, null
  br i1 %69, label %70, label %82

70:                                               ; preds = %65
  %71 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %71, i32 0, i32 5
  %73 = load %struct.TYPE_28__*, %struct.TYPE_28__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = icmp ne i32* %76, null
  br i1 %77, label %78, label %82

78:                                               ; preds = %70
  %79 = load i32, i32* @ICCP_FLAG, align 4
  %80 = load i32, i32* %5, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %5, align 4
  br label %82

82:                                               ; preds = %78, %70, %65
  %83 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %83, i32 0, i32 4
  %85 = load %struct.TYPE_30__*, %struct.TYPE_30__** %84, align 8
  %86 = icmp ne %struct.TYPE_30__* %85, null
  br i1 %86, label %87, label %99

87:                                               ; preds = %82
  %88 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %88, i32 0, i32 4
  %90 = load %struct.TYPE_30__*, %struct.TYPE_30__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %91, i32 0, i32 0
  %93 = load i32*, i32** %92, align 8
  %94 = icmp ne i32* %93, null
  br i1 %94, label %95, label %99

95:                                               ; preds = %87
  %96 = load i32, i32* @EXIF_FLAG, align 4
  %97 = load i32, i32* %5, align 4
  %98 = or i32 %97, %96
  store i32 %98, i32* %5, align 4
  br label %99

99:                                               ; preds = %95, %87, %82
  %100 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %100, i32 0, i32 3
  %102 = load %struct.TYPE_32__*, %struct.TYPE_32__** %101, align 8
  %103 = icmp ne %struct.TYPE_32__* %102, null
  br i1 %103, label %104, label %116

104:                                              ; preds = %99
  %105 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %106 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %105, i32 0, i32 3
  %107 = load %struct.TYPE_32__*, %struct.TYPE_32__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %108, i32 0, i32 0
  %110 = load i32*, i32** %109, align 8
  %111 = icmp ne i32* %110, null
  br i1 %111, label %112, label %116

112:                                              ; preds = %104
  %113 = load i32, i32* @XMP_FLAG, align 4
  %114 = load i32, i32* %5, align 4
  %115 = or i32 %114, %113
  store i32 %115, i32* %5, align 4
  br label %116

116:                                              ; preds = %112, %104, %99
  %117 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %118 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %117, i32 0, i32 0
  %119 = load %struct.TYPE_33__*, %struct.TYPE_33__** %118, align 8
  %120 = icmp ne %struct.TYPE_33__* %119, null
  br i1 %120, label %121, label %138

121:                                              ; preds = %116
  %122 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %123 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %122, i32 0, i32 0
  %124 = load %struct.TYPE_33__*, %struct.TYPE_33__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = load %struct.TYPE_24__*, %struct.TYPE_24__** @kChunks, align 8
  %128 = load i64, i64* @IDX_ANMF, align 8
  %129 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %127, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = icmp eq i64 %126, %131
  br i1 %132, label %133, label %137

133:                                              ; preds = %121
  %134 = load i32, i32* @ANIMATION_FLAG, align 4
  %135 = load i32, i32* %5, align 4
  %136 = or i32 %135, %134
  store i32 %136, i32* %5, align 4
  br label %137

137:                                              ; preds = %133, %121
  br label %138

138:                                              ; preds = %137, %116
  %139 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %140 = load i32, i32* @WEBP_CHUNK_ALPHA, align 4
  %141 = call i64 @MuxImageCount(%struct.TYPE_21__* %139, i32 %140)
  %142 = icmp sgt i64 %141, 0
  br i1 %142, label %143, label %147

143:                                              ; preds = %138
  %144 = load i32, i32* @ALPHA_FLAG, align 4
  %145 = load i32, i32* %5, align 4
  %146 = or i32 %145, %144
  store i32 %146, i32* %5, align 4
  br label %147

147:                                              ; preds = %143, %138
  %148 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %149 = call i64 @GetAdjustedCanvasSize(%struct.TYPE_22__* %148, i32* %6, i32* %7)
  store i64 %149, i64* %4, align 8
  %150 = load i64, i64* %4, align 8
  %151 = load i64, i64* @WEBP_MUX_OK, align 8
  %152 = icmp ne i64 %150, %151
  br i1 %152, label %153, label %155

153:                                              ; preds = %147
  %154 = load i64, i64* %4, align 8
  store i64 %154, i64* %2, align 8
  store i32 1, i32* %12, align 4
  br label %241

155:                                              ; preds = %147
  %156 = load i32, i32* %6, align 4
  %157 = icmp sle i32 %156, 0
  br i1 %157, label %161, label %158

158:                                              ; preds = %155
  %159 = load i32, i32* %7, align 4
  %160 = icmp sle i32 %159, 0
  br i1 %160, label %161, label %163

161:                                              ; preds = %158, %155
  %162 = load i64, i64* @WEBP_MUX_INVALID_ARGUMENT, align 8
  store i64 %162, i64* %2, align 8
  store i32 1, i32* %12, align 4
  br label %241

163:                                              ; preds = %158
  %164 = load i32, i32* %6, align 4
  %165 = load i32, i32* @MAX_CANVAS_SIZE, align 4
  %166 = icmp sgt i32 %164, %165
  br i1 %166, label %171, label %167

167:                                              ; preds = %163
  %168 = load i32, i32* %7, align 4
  %169 = load i32, i32* @MAX_CANVAS_SIZE, align 4
  %170 = icmp sgt i32 %168, %169
  br i1 %170, label %171, label %173

171:                                              ; preds = %167, %163
  %172 = load i64, i64* @WEBP_MUX_INVALID_ARGUMENT, align 8
  store i64 %172, i64* %2, align 8
  store i32 1, i32* %12, align 4
  br label %241

173:                                              ; preds = %167
  %174 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %175 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %183, label %178

178:                                              ; preds = %173
  %179 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %180 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %204

183:                                              ; preds = %178, %173
  %184 = load i32, i32* %6, align 4
  %185 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %186 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = icmp sgt i32 %184, %187
  br i1 %188, label %195, label %189

189:                                              ; preds = %183
  %190 = load i32, i32* %7, align 4
  %191 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %192 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 4
  %194 = icmp sgt i32 %190, %193
  br i1 %194, label %195, label %197

195:                                              ; preds = %189, %183
  %196 = load i64, i64* @WEBP_MUX_INVALID_ARGUMENT, align 8
  store i64 %196, i64* %2, align 8
  store i32 1, i32* %12, align 4
  br label %241

197:                                              ; preds = %189
  %198 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %199 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  store i32 %200, i32* %6, align 4
  %201 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %202 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %201, i32 0, i32 1
  %203 = load i32, i32* %202, align 4
  store i32 %203, i32* %7, align 4
  br label %204

204:                                              ; preds = %197, %178
  %205 = load i32, i32* %5, align 4
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %207, label %214

207:                                              ; preds = %204
  %208 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %209 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %208, i32 0, i32 2
  %210 = load i32*, i32** %209, align 8
  %211 = icmp eq i32* %210, null
  br i1 %211, label %212, label %214

212:                                              ; preds = %207
  %213 = load i64, i64* @WEBP_MUX_OK, align 8
  store i64 %213, i64* %2, align 8
  store i32 1, i32* %12, align 4
  br label %241

214:                                              ; preds = %207, %204
  %215 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %216 = call i64 @MuxHasAlpha(%struct.TYPE_21__* %215)
  %217 = icmp ne i64 %216, 0
  br i1 %217, label %218, label %222

218:                                              ; preds = %214
  %219 = load i32, i32* @ALPHA_FLAG, align 4
  %220 = load i32, i32* %5, align 4
  %221 = or i32 %220, %219
  store i32 %221, i32* %5, align 4
  br label %222

222:                                              ; preds = %218, %214
  %223 = getelementptr inbounds i32, i32* %17, i64 0
  %224 = load i32, i32* %5, align 4
  %225 = call i32 @PutLE32(i32* %223, i32 %224)
  %226 = getelementptr inbounds i32, i32* %17, i64 4
  %227 = load i32, i32* %6, align 4
  %228 = sub nsw i32 %227, 1
  %229 = call i32 @PutLE24(i32* %226, i32 %228)
  %230 = getelementptr inbounds i32, i32* %17, i64 7
  %231 = load i32, i32* %7, align 4
  %232 = sub nsw i32 %231, 1
  %233 = call i32 @PutLE24(i32* %230, i32 %232)
  %234 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %235 = load %struct.TYPE_24__*, %struct.TYPE_24__** @kChunks, align 8
  %236 = load i64, i64* @IDX_VP8X, align 8
  %237 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %235, i64 %236
  %238 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %237, i32 0, i32 0
  %239 = load i64, i64* %238, align 8
  %240 = call i64 @MuxSet(%struct.TYPE_22__* %234, i64 %239, %struct.TYPE_23__* %10, i32 1)
  store i64 %240, i64* %2, align 8
  store i32 1, i32* %12, align 4
  br label %241

241:                                              ; preds = %222, %212, %195, %171, %161, %153, %63, %46
  %242 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %242)
  %243 = load i64, i64* %2, align 8
  ret i64 %243
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @assert(i32) #2

declare dso_local i64 @MuxDeleteAllNamedData(%struct.TYPE_22__*, i64) #2

declare dso_local i64 @MuxImageCount(%struct.TYPE_21__*, i32) #2

declare dso_local i64 @GetAdjustedCanvasSize(%struct.TYPE_22__*, i32*, i32*) #2

declare dso_local i64 @MuxHasAlpha(%struct.TYPE_21__*) #2

declare dso_local i32 @PutLE32(i32*, i32) #2

declare dso_local i32 @PutLE24(i32*, i32) #2

declare dso_local i64 @MuxSet(%struct.TYPE_22__*, i64, %struct.TYPE_23__*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
