; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/extr_flac.c_ParseHeaders.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/extr_flac.c_ParseHeaders.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32, %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32, i32, %struct.TYPE_15__, i32, i32, i32 }
%struct.TYPE_15__ = type { i64, i32, i32, i32 }
%struct.TYPE_18__ = type { i32*, i32, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i64, i32, i32 }
%struct.TYPE_17__ = type { i64, i64 }

@VLC_EGENERIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"fLaC\00", align 1
@META_STREAMINFO = common dso_local global i32 0, align 4
@FLAC_STREAMINFO_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"invalid size %d for a STREAMINFO metadata block\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"failed to read STREAMINFO metadata block\00", align 1
@META_SEEKTABLE = common dso_local global i32 0, align 4
@META_COMMENT = common dso_local global i32 0, align 4
@META_PICTURE = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_19__*, %struct.TYPE_18__*)* @ParseHeaders to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ParseHeaders(%struct.TYPE_19__* %0, %struct.TYPE_18__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca %struct.TYPE_20__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_17__*, align 8
  %11 = alloca [4 x i32], align 16
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %4, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %5, align 8
  %14 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  store %struct.TYPE_20__* %16, %struct.TYPE_20__** %6, align 8
  %17 = call %struct.TYPE_17__* @xmalloc(i32 16)
  store %struct.TYPE_17__* %17, %struct.TYPE_17__** %10, align 8
  %18 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %19 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %18, i32 0, i32 1
  store i64 0, i64* %19, align 8
  %20 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %21 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %20, i32 0, i32 0
  store i64 0, i64* %21, align 8
  %22 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %22, i32 0, i32 5
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %29 = call i32 @TAB_APPEND(i32 %24, i32 %27, %struct.TYPE_17__* %28)
  %30 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 0
  %34 = call i32 @vlc_stream_Read(i32 %32, i32* %33, i32 4)
  %35 = icmp slt i32 %34, 4
  br i1 %35, label %36, label %38

36:                                               ; preds = %2
  %37 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %37, i32* %3, align 4
  br label %276

38:                                               ; preds = %2
  %39 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 0
  %40 = call i64 @memcmp(i32* %39, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %38
  %43 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %43, i32* %3, align 4
  br label %276

44:                                               ; preds = %38
  store i32 0, i32* %9, align 4
  br label %45

45:                                               ; preds = %260, %178, %44
  %46 = load i32, i32* %9, align 4
  %47 = icmp ne i32 %46, 0
  %48 = xor i1 %47, true
  br i1 %48, label %49, label %261

49:                                               ; preds = %45
  %50 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @vlc_stream_Peek(i32 %52, i32** %8, i32 4)
  store i32 %53, i32* %7, align 4
  %54 = load i32, i32* %7, align 4
  %55 = icmp slt i32 %54, 4
  br i1 %55, label %56, label %57

56:                                               ; preds = %49
  br label %261

57:                                               ; preds = %49
  %58 = load i32*, i32** %8, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 0
  %60 = load i32, i32* %59, align 4
  %61 = and i32 %60, 128
  store i32 %61, i32* %9, align 4
  %62 = load i32*, i32** %8, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 0
  %64 = load i32, i32* %63, align 4
  %65 = and i32 %64, 127
  store i32 %65, i32* %13, align 4
  %66 = load i32*, i32** %8, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 1
  %68 = call i32 @Get24bBE(i32* %67)
  store i32 %68, i32* %12, align 4
  %69 = load i32, i32* %13, align 4
  %70 = load i32, i32* @META_STREAMINFO, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %179

72:                                               ; preds = %57
  %73 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = icmp eq i32* %75, null
  br i1 %76, label %77, label %179

77:                                               ; preds = %72
  %78 = load i32, i32* %12, align 4
  %79 = load i32, i32* @FLAC_STREAMINFO_SIZE, align 4
  %80 = icmp ne i32 %78, %79
  br i1 %80, label %81, label %86

81:                                               ; preds = %77
  %82 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %83 = load i32, i32* %12, align 4
  %84 = call i32 (%struct.TYPE_19__*, i8*, ...) @msg_Err(%struct.TYPE_19__* %82, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %83)
  %85 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %85, i32* %3, align 4
  br label %276

86:                                               ; preds = %77
  %87 = load i32, i32* @FLAC_STREAMINFO_SIZE, align 4
  %88 = call i32* @malloc(i32 %87)
  %89 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %89, i32 0, i32 0
  store i32* %88, i32** %90, align 8
  %91 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %91, i32 0, i32 0
  %93 = load i32*, i32** %92, align 8
  %94 = icmp eq i32* %93, null
  br i1 %94, label %95, label %97

95:                                               ; preds = %86
  %96 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %96, i32* %3, align 4
  br label %276

97:                                               ; preds = %86
  %98 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @vlc_stream_Read(i32 %100, i32* null, i32 4)
  %102 = icmp slt i32 %101, 4
  br i1 %102, label %103, label %109

103:                                              ; preds = %97
  %104 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %104, i32 0, i32 0
  %106 = load i32*, i32** %105, align 8
  %107 = call i32 @FREENULL(i32* %106)
  %108 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %108, i32* %3, align 4
  br label %276

109:                                              ; preds = %97
  %110 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %113, i32 0, i32 0
  %115 = load i32*, i32** %114, align 8
  %116 = load i32, i32* @FLAC_STREAMINFO_SIZE, align 4
  %117 = call i32 @vlc_stream_Read(i32 %112, i32* %115, i32 %116)
  %118 = load i32, i32* @FLAC_STREAMINFO_SIZE, align 4
  %119 = icmp ne i32 %117, %118
  br i1 %119, label %120, label %128

120:                                              ; preds = %109
  %121 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %122 = call i32 (%struct.TYPE_19__*, i8*, ...) @msg_Err(%struct.TYPE_19__* %121, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  %123 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %123, i32 0, i32 0
  %125 = load i32*, i32** %124, align 8
  %126 = call i32 @FREENULL(i32* %125)
  %127 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %127, i32* %3, align 4
  br label %276

128:                                              ; preds = %109
  %129 = load i32, i32* @FLAC_STREAMINFO_SIZE, align 4
  %130 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %130, i32 0, i32 1
  store i32 %129, i32* %131, align 8
  %132 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %133 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %132, i32 0, i32 0
  store i32 1, i32* %133, align 8
  %134 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %135 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %134, i32 0, i32 0
  %136 = load i32*, i32** %135, align 8
  %137 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %138 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %137, i32 0, i32 2
  %139 = call i32 @FLAC_ParseStreamInfo(i32* %136, %struct.TYPE_15__* %138)
  %140 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %141 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %140, i32 0, i32 2
  %142 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %145 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %144, i32 0, i32 2
  %146 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %145, i32 0, i32 0
  store i64 %143, i64* %146, align 8
  %147 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %148 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %147, i32 0, i32 2
  %149 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %148, i32 0, i32 3
  %150 = load i32, i32* %149, align 8
  %151 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %152 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %151, i32 0, i32 2
  %153 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %152, i32 0, i32 2
  store i32 %150, i32* %153, align 4
  %154 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %155 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %154, i32 0, i32 2
  %156 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %155, i32 0, i32 2
  %157 = load i32, i32* %156, align 4
  %158 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %159 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %158, i32 0, i32 2
  %160 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %159, i32 0, i32 1
  store i32 %157, i32* %160, align 8
  %161 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %162 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %161, i32 0, i32 2
  %163 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = icmp sgt i64 %164, 0
  br i1 %165, label %166, label %178

166:                                              ; preds = %128
  %167 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %168 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %167, i32 0, i32 2
  %169 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 8
  %171 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %172 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %171, i32 0, i32 2
  %173 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = call i32 @vlc_tick_from_samples(i32 %170, i64 %174)
  %176 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %177 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %176, i32 0, i32 3
  store i32 %175, i32* %177, align 8
  br label %178

178:                                              ; preds = %166, %128
  br label %45

179:                                              ; preds = %72, %57
  %180 = load i32, i32* %13, align 4
  %181 = load i32, i32* @META_SEEKTABLE, align 4
  %182 = icmp eq i32 %180, %181
  br i1 %182, label %183, label %204

183:                                              ; preds = %179
  %184 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %185 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 8
  %187 = load i32, i32* %12, align 4
  %188 = add nsw i32 4, %187
  %189 = call i32 @vlc_stream_Peek(i32 %186, i32** %8, i32 %188)
  store i32 %189, i32* %7, align 4
  %190 = load i32, i32* %7, align 4
  %191 = load i32, i32* %12, align 4
  %192 = add nsw i32 4, %191
  %193 = icmp eq i32 %190, %192
  br i1 %193, label %194, label %203

194:                                              ; preds = %183
  %195 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %196 = load i32*, i32** %8, align 8
  %197 = load i32, i32* %7, align 4
  %198 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %199 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %198, i32 0, i32 2
  %200 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %199, i32 0, i32 0
  %201 = load i64, i64* %200, align 8
  %202 = call i32 @ParseSeekTable(%struct.TYPE_19__* %195, i32* %196, i32 %197, i64 %201)
  br label %203

203:                                              ; preds = %194, %183
  br label %248

204:                                              ; preds = %179
  %205 = load i32, i32* %13, align 4
  %206 = load i32, i32* @META_COMMENT, align 4
  %207 = icmp eq i32 %205, %206
  br i1 %207, label %208, label %225

208:                                              ; preds = %204
  %209 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %210 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 8
  %212 = load i32, i32* %12, align 4
  %213 = add nsw i32 4, %212
  %214 = call i32 @vlc_stream_Peek(i32 %211, i32** %8, i32 %213)
  store i32 %214, i32* %7, align 4
  %215 = load i32, i32* %7, align 4
  %216 = load i32, i32* %12, align 4
  %217 = add nsw i32 4, %216
  %218 = icmp eq i32 %215, %217
  br i1 %218, label %219, label %224

219:                                              ; preds = %208
  %220 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %221 = load i32*, i32** %8, align 8
  %222 = load i32, i32* %7, align 4
  %223 = call i32 @ParseComment(%struct.TYPE_19__* %220, i32* %221, i32 %222)
  br label %224

224:                                              ; preds = %219, %208
  br label %247

225:                                              ; preds = %204
  %226 = load i32, i32* %13, align 4
  %227 = load i32, i32* @META_PICTURE, align 4
  %228 = icmp eq i32 %226, %227
  br i1 %228, label %229, label %246

229:                                              ; preds = %225
  %230 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %231 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 8
  %233 = load i32, i32* %12, align 4
  %234 = add nsw i32 4, %233
  %235 = call i32 @vlc_stream_Peek(i32 %232, i32** %8, i32 %234)
  store i32 %235, i32* %7, align 4
  %236 = load i32, i32* %7, align 4
  %237 = load i32, i32* %12, align 4
  %238 = add nsw i32 4, %237
  %239 = icmp eq i32 %236, %238
  br i1 %239, label %240, label %245

240:                                              ; preds = %229
  %241 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %242 = load i32*, i32** %8, align 8
  %243 = load i32, i32* %7, align 4
  %244 = call i32 @ParsePicture(%struct.TYPE_19__* %241, i32* %242, i32 %243)
  br label %245

245:                                              ; preds = %240, %229
  br label %246

246:                                              ; preds = %245, %225
  br label %247

247:                                              ; preds = %246, %224
  br label %248

248:                                              ; preds = %247, %203
  br label %249

249:                                              ; preds = %248
  %250 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %251 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %250, i32 0, i32 0
  %252 = load i32, i32* %251, align 8
  %253 = load i32, i32* %12, align 4
  %254 = add nsw i32 4, %253
  %255 = call i32 @vlc_stream_Read(i32 %252, i32* null, i32 %254)
  %256 = load i32, i32* %12, align 4
  %257 = add nsw i32 4, %256
  %258 = icmp slt i32 %255, %257
  br i1 %258, label %259, label %260

259:                                              ; preds = %249
  br label %261

260:                                              ; preds = %249
  br label %45

261:                                              ; preds = %259, %56, %45
  %262 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %263 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %262, i32 0, i32 0
  %264 = load i32, i32* %263, align 8
  %265 = call i32 @vlc_stream_Tell(i32 %264)
  %266 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %267 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %266, i32 0, i32 1
  store i32 %265, i32* %267, align 4
  %268 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %269 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %268, i32 0, i32 0
  %270 = load i32*, i32** %269, align 8
  %271 = icmp eq i32* %270, null
  br i1 %271, label %272, label %274

272:                                              ; preds = %261
  %273 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %273, i32* %3, align 4
  br label %276

274:                                              ; preds = %261
  %275 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %275, i32* %3, align 4
  br label %276

276:                                              ; preds = %274, %272, %120, %103, %95, %81, %42, %36
  %277 = load i32, i32* %3, align 4
  ret i32 %277
}

declare dso_local %struct.TYPE_17__* @xmalloc(i32) #1

declare dso_local i32 @TAB_APPEND(i32, i32, %struct.TYPE_17__*) #1

declare dso_local i32 @vlc_stream_Read(i32, i32*, i32) #1

declare dso_local i64 @memcmp(i32*, i8*, i32) #1

declare dso_local i32 @vlc_stream_Peek(i32, i32**, i32) #1

declare dso_local i32 @Get24bBE(i32*) #1

declare dso_local i32 @msg_Err(%struct.TYPE_19__*, i8*, ...) #1

declare dso_local i32* @malloc(i32) #1

declare dso_local i32 @FREENULL(i32*) #1

declare dso_local i32 @FLAC_ParseStreamInfo(i32*, %struct.TYPE_15__*) #1

declare dso_local i32 @vlc_tick_from_samples(i32, i64) #1

declare dso_local i32 @ParseSeekTable(%struct.TYPE_19__*, i32*, i32, i64) #1

declare dso_local i32 @ParseComment(%struct.TYPE_19__*, i32*, i32) #1

declare dso_local i32 @ParsePicture(%struct.TYPE_19__*, i32*, i32) #1

declare dso_local i32 @vlc_stream_Tell(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
