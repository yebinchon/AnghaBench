; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/mp4/extr_mp4.c_MP4_TrackGetReadSize.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/mp4/extr_mp4.c_MP4_TrackGetReadSize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64, i64, i64, i32*, i64, %struct.TYPE_14__, %struct.TYPE_16__*, %struct.TYPE_12__* }
%struct.TYPE_14__ = type { i64, i64, i32, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, i32, i32 }
%struct.TYPE_16__ = type { i32, i32, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32, i32, i32, i32, i32, i32, i32 }

@AUDIO_ES = common dso_local global i64 0, align 8
@VLC_CODEC_DVD_LPCM = common dso_local global i64 0, align 8
@UINT32_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*, i32*)* @MP4_TrackGetReadSize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @MP4_TrackGetReadSize(%struct.TYPE_15__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca %struct.TYPE_16__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %6, align 4
  %14 = load i32*, i32** %5, align 8
  store i32 0, i32* %14, align 4
  %15 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %17, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %392

23:                                               ; preds = %2
  %24 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %24, i32 0, i32 5
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @AUDIO_ES, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %50

30:                                               ; preds = %23
  %31 = load i32*, i32** %5, align 8
  store i32 1, i32* %31, align 4
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %30
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %37, i32 0, i32 3
  %39 = load i32*, i32** %38, align 8
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = getelementptr inbounds i32, i32* %39, i64 %42
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %3, align 4
  br label %392

45:                                               ; preds = %30
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %3, align 4
  br label %392

50:                                               ; preds = %23
  %51 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %51, i32 0, i32 7
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_17__*, %struct.TYPE_17__** %55, align 8
  store %struct.TYPE_17__* %56, %struct.TYPE_17__** %7, align 8
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %57, i32 0, i32 6
  %59 = load %struct.TYPE_16__*, %struct.TYPE_16__** %58, align 8
  %60 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %60, i32 0, i32 4
  %62 = load i64, i64* %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %59, i64 %62
  store %struct.TYPE_16__* %63, %struct.TYPE_16__** %8, align 8
  %64 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = sub nsw i32 %66, %69
  store i32 %70, i32* %9, align 4
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %71, i32 0, i32 5
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @VLC_CODEC_DVD_LPCM, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %118

77:                                               ; preds = %50
  %78 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %118

82:                                               ; preds = %77
  %83 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %118

87:                                               ; preds = %82
  %88 = load i32, i32* %9, align 4
  %89 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %90 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = sdiv i32 %88, %91
  store i32 %92, i32* %10, align 4
  %93 = load i32, i32* @UINT32_MAX, align 4
  %94 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %95 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = sdiv i32 %93, %96
  %98 = load i32, i32* %10, align 4
  %99 = icmp slt i32 %97, %98
  br i1 %99, label %100, label %106

100:                                              ; preds = %87
  %101 = load i32, i32* @UINT32_MAX, align 4
  %102 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %103 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = sdiv i32 %101, %104
  store i32 %105, i32* %10, align 4
  br label %106

106:                                              ; preds = %100, %87
  %107 = load i32, i32* %10, align 4
  %108 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %109 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = mul nsw i32 %107, %110
  %112 = load i32*, i32** %5, align 8
  store i32 %111, i32* %112, align 4
  %113 = load i32, i32* %10, align 4
  %114 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %115 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = mul nsw i32 %113, %116
  store i32 %117, i32* %3, align 4
  br label %392

118:                                              ; preds = %82, %77, %50
  %119 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %119, i32 0, i32 5
  %121 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = call i64 @VLC_FOURCC(i8 signext 114, i8 signext 114, i8 signext 116, i8 signext 112)
  %124 = icmp eq i64 %122, %123
  br i1 %124, label %125, label %131

125:                                              ; preds = %118
  %126 = load i32*, i32** %5, align 8
  store i32 1, i32* %126, align 4
  %127 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %128 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %127, i32 0, i32 2
  %129 = load i64, i64* %128, align 8
  %130 = trunc i64 %129 to i32
  store i32 %130, i32* %3, align 4
  br label %392

131:                                              ; preds = %118
  %132 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %132, i32 0, i32 2
  %134 = load i64, i64* %133, align 8
  %135 = icmp eq i64 %134, 0
  br i1 %135, label %136, label %146

136:                                              ; preds = %131
  %137 = load i32*, i32** %5, align 8
  store i32 1, i32* %137, align 4
  %138 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %139 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %138, i32 0, i32 3
  %140 = load i32*, i32** %139, align 8
  %141 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %142 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = getelementptr inbounds i32, i32* %140, i64 %143
  %145 = load i32, i32* %144, align 4
  store i32 %145, i32* %3, align 4
  br label %392

146:                                              ; preds = %131
  %147 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %148 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 4
  %150 = icmp eq i32 %149, 1
  br i1 %150, label %151, label %253

151:                                              ; preds = %146
  %152 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %153 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %152, i32 0, i32 3
  %154 = load i32, i32* %153, align 4
  %155 = icmp eq i32 %154, 65534
  br i1 %155, label %156, label %176

156:                                              ; preds = %151
  %157 = load i32*, i32** %5, align 8
  store i32 1, i32* %157, align 4
  %158 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %159 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %158, i32 0, i32 2
  %160 = load i64, i64* %159, align 8
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %167

162:                                              ; preds = %156
  %163 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %164 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %163, i32 0, i32 2
  %165 = load i64, i64* %164, align 8
  %166 = trunc i64 %165 to i32
  store i32 %166, i32* %3, align 4
  br label %392

167:                                              ; preds = %156
  %168 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %169 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %168, i32 0, i32 3
  %170 = load i32*, i32** %169, align 8
  %171 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %172 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %171, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = getelementptr inbounds i32, i32* %170, i64 %173
  %175 = load i32, i32* %174, align 4
  store i32 %175, i32* %3, align 4
  br label %392

176:                                              ; preds = %151
  %177 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %178 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %177, i32 0, i32 3
  %179 = load i32, i32* %178, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %186, label %181

181:                                              ; preds = %176
  %182 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %183 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %182, i32 0, i32 4
  %184 = load i32, i32* %183, align 4
  %185 = icmp sgt i32 %184, 1
  br i1 %185, label %186, label %212

186:                                              ; preds = %181, %176
  %187 = load i32, i32* %9, align 4
  %188 = load i32*, i32** %5, align 8
  store i32 %187, i32* %188, align 4
  %189 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %190 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %189, i32 0, i32 5
  %191 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %190, i32 0, i32 3
  %192 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 4
  %194 = icmp sgt i32 %193, 1
  br i1 %194, label %195, label %200

195:                                              ; preds = %186
  %196 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %197 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %196, i32 0, i32 5
  %198 = load i32, i32* %197, align 4
  %199 = load i32*, i32** %5, align 8
  store i32 %198, i32* %199, align 4
  br label %200

200:                                              ; preds = %195, %186
  %201 = load i32*, i32** %5, align 8
  %202 = load i32, i32* %201, align 4
  %203 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %204 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %203, i32 0, i32 5
  %205 = load i32, i32* %204, align 4
  %206 = sdiv i32 %202, %205
  %207 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %208 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %207, i32 0, i32 6
  %209 = load i32, i32* %208, align 4
  %210 = mul nsw i32 %206, %209
  store i32 %210, i32* %6, align 4
  %211 = load i32, i32* %6, align 4
  store i32 %211, i32* %3, align 4
  br label %392

212:                                              ; preds = %181
  %213 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %214 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %213, i32 0, i32 5
  %215 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %214, i32 0, i32 3
  %216 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 4
  %218 = icmp sgt i32 %217, 1
  br i1 %218, label %219, label %220

219:                                              ; preds = %212
  store i32 1, i32* %11, align 4
  br label %226

220:                                              ; preds = %212
  %221 = load i32, i32* %9, align 4
  %222 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %223 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %222, i32 0, i32 5
  %224 = load i32, i32* %223, align 4
  %225 = sdiv i32 %221, %224
  store i32 %225, i32* %11, align 4
  br label %226

226:                                              ; preds = %220, %219
  %227 = load i32, i32* @UINT32_MAX, align 4
  %228 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %229 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %228, i32 0, i32 6
  %230 = load i32, i32* %229, align 4
  %231 = sdiv i32 %227, %230
  %232 = load i32, i32* %11, align 4
  %233 = icmp slt i32 %231, %232
  br i1 %233, label %234, label %240

234:                                              ; preds = %226
  %235 = load i32, i32* @UINT32_MAX, align 4
  %236 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %237 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %236, i32 0, i32 6
  %238 = load i32, i32* %237, align 4
  %239 = sdiv i32 %235, %238
  store i32 %239, i32* %11, align 4
  br label %240

240:                                              ; preds = %234, %226
  %241 = load i32, i32* %11, align 4
  %242 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %243 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %242, i32 0, i32 5
  %244 = load i32, i32* %243, align 4
  %245 = mul nsw i32 %241, %244
  %246 = load i32*, i32** %5, align 8
  store i32 %245, i32* %246, align 4
  %247 = load i32, i32* %11, align 4
  %248 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %249 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %248, i32 0, i32 6
  %250 = load i32, i32* %249, align 4
  %251 = mul nsw i32 %247, %250
  store i32 %251, i32* %6, align 4
  %252 = load i32, i32* %6, align 4
  store i32 %252, i32* %3, align 4
  br label %392

253:                                              ; preds = %146
  %254 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %255 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %254, i32 0, i32 3
  %256 = load i32, i32* %255, align 4
  %257 = icmp eq i32 %256, 0
  br i1 %257, label %258, label %298

258:                                              ; preds = %253
  %259 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %260 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %259, i32 0, i32 2
  %261 = load i64, i64* %260, align 8
  %262 = icmp eq i64 %261, 1
  br i1 %262, label %263, label %298

263:                                              ; preds = %258
  %264 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %265 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %264, i32 0, i32 5
  %266 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %265, i32 0, i32 2
  %267 = load i32, i32* %266, align 8
  switch i32 %267, label %296 [
    i32 132, label %268
    i32 136, label %282
  ]

268:                                              ; preds = %263
  %269 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %270 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %269, i32 0, i32 5
  %271 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %270, i32 0, i32 3
  %272 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %271, i32 0, i32 1
  %273 = load i32, i32* %272, align 4
  %274 = mul nsw i32 160, %273
  %275 = load i32*, i32** %5, align 8
  store i32 %274, i32* %275, align 4
  %276 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %277 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %276, i32 0, i32 5
  %278 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %277, i32 0, i32 3
  %279 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %278, i32 0, i32 1
  %280 = load i32, i32* %279, align 4
  %281 = mul nsw i32 33, %280
  store i32 %281, i32* %3, align 4
  br label %392

282:                                              ; preds = %263
  %283 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %284 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %283, i32 0, i32 5
  %285 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %284, i32 0, i32 3
  %286 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %285, i32 0, i32 1
  %287 = load i32, i32* %286, align 4
  %288 = mul nsw i32 64, %287
  %289 = load i32*, i32** %5, align 8
  store i32 %288, i32* %289, align 4
  %290 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %291 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %290, i32 0, i32 5
  %292 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %291, i32 0, i32 3
  %293 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %292, i32 0, i32 1
  %294 = load i32, i32* %293, align 4
  %295 = mul nsw i32 34, %294
  store i32 %295, i32* %3, align 4
  br label %392

296:                                              ; preds = %263
  br label %297

297:                                              ; preds = %296
  br label %298

298:                                              ; preds = %297, %258, %253
  %299 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %300 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %299, i32 0, i32 5
  %301 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %300, i32 0, i32 2
  %302 = load i32, i32* %301, align 8
  switch i32 %302, label %305 [
    i32 135, label %303
    i32 134, label %303
    i32 128, label %304
    i32 131, label %304
    i32 130, label %304
    i32 133, label %304
    i32 129, label %304
    i32 137, label %304
  ]

303:                                              ; preds = %298, %298
  store i32 16, i32* %12, align 4
  br label %322

304:                                              ; preds = %298, %298, %298, %298, %298, %298
  store i32 1, i32* %12, align 4
  br label %322

305:                                              ; preds = %298
  %306 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %307 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %306, i32 0, i32 5
  %308 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %307, i32 0, i32 3
  %309 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %308, i32 0, i32 2
  %310 = load i32, i32* %309, align 4
  %311 = sdiv i32 %310, 40
  %312 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %313 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %312, i32 0, i32 5
  %314 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %313, i32 0, i32 3
  %315 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %314, i32 0, i32 1
  %316 = load i32, i32* %315, align 4
  %317 = mul nsw i32 %311, %316
  store i32 %317, i32* %12, align 4
  %318 = load i32, i32* %12, align 4
  %319 = icmp slt i32 %318, 1
  br i1 %319, label %320, label %321

320:                                              ; preds = %305
  store i32 1, i32* %12, align 4
  br label %321

321:                                              ; preds = %320, %305
  br label %322

322:                                              ; preds = %321, %304, %303
  %323 = load i32*, i32** %5, align 8
  store i32 0, i32* %323, align 4
  %324 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %325 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %324, i32 0, i32 0
  %326 = load i64, i64* %325, align 8
  %327 = trunc i64 %326 to i32
  store i32 %327, i32* %13, align 4
  br label %328

328:                                              ; preds = %386, %322
  %329 = load i32, i32* %13, align 4
  %330 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %331 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %330, i32 0, i32 2
  %332 = load i32, i32* %331, align 4
  %333 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %334 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %333, i32 0, i32 0
  %335 = load i32, i32* %334, align 4
  %336 = add nsw i32 %332, %335
  %337 = icmp slt i32 %329, %336
  br i1 %337, label %338, label %345

338:                                              ; preds = %328
  %339 = load i32, i32* %13, align 4
  %340 = sext i32 %339 to i64
  %341 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %342 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %341, i32 0, i32 1
  %343 = load i64, i64* %342, align 8
  %344 = icmp ult i64 %340, %343
  br label %345

345:                                              ; preds = %338, %328
  %346 = phi i1 [ false, %328 ], [ %344, %338 ]
  br i1 %346, label %347, label %389

347:                                              ; preds = %345
  %348 = load i32*, i32** %5, align 8
  %349 = load i32, i32* %348, align 4
  %350 = add nsw i32 %349, 1
  store i32 %350, i32* %348, align 4
  %351 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %352 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %351, i32 0, i32 2
  %353 = load i64, i64* %352, align 8
  %354 = icmp eq i64 %353, 0
  br i1 %354, label %355, label %365

355:                                              ; preds = %347
  %356 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %357 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %356, i32 0, i32 3
  %358 = load i32*, i32** %357, align 8
  %359 = load i32, i32* %13, align 4
  %360 = sext i32 %359 to i64
  %361 = getelementptr inbounds i32, i32* %358, i64 %360
  %362 = load i32, i32* %361, align 4
  %363 = load i32, i32* %6, align 4
  %364 = add nsw i32 %363, %362
  store i32 %364, i32* %6, align 4
  br label %373

365:                                              ; preds = %347
  %366 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %367 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %368 = call i64 @MP4_GetFixedSampleSize(%struct.TYPE_15__* %366, %struct.TYPE_17__* %367)
  %369 = load i32, i32* %6, align 4
  %370 = sext i32 %369 to i64
  %371 = add nsw i64 %370, %368
  %372 = trunc i64 %371 to i32
  store i32 %372, i32* %6, align 4
  br label %373

373:                                              ; preds = %365, %355
  %374 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %375 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %374, i32 0, i32 3
  %376 = load i32, i32* %375, align 4
  %377 = icmp ne i32 %376, 0
  br i1 %377, label %378, label %379

378:                                              ; preds = %373
  br label %389

379:                                              ; preds = %373
  %380 = load i32*, i32** %5, align 8
  %381 = load i32, i32* %380, align 4
  %382 = load i32, i32* %12, align 4
  %383 = icmp eq i32 %381, %382
  br i1 %383, label %384, label %385

384:                                              ; preds = %379
  br label %389

385:                                              ; preds = %379
  br label %386

386:                                              ; preds = %385
  %387 = load i32, i32* %13, align 4
  %388 = add nsw i32 %387, 1
  store i32 %388, i32* %13, align 4
  br label %328

389:                                              ; preds = %384, %378, %345
  br label %390

390:                                              ; preds = %389
  %391 = load i32, i32* %6, align 4
  store i32 %391, i32* %3, align 4
  br label %392

392:                                              ; preds = %390, %282, %268, %240, %200, %167, %162, %136, %125, %106, %45, %36, %22
  %393 = load i32, i32* %3, align 4
  ret i32 %393
}

declare dso_local i64 @VLC_FOURCC(i8 signext, i8 signext, i8 signext, i8 signext) #1

declare dso_local i64 @MP4_GetFixedSampleSize(%struct.TYPE_15__*, %struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
