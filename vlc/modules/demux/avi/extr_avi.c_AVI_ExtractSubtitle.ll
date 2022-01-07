; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/avi/extr_avi.c_AVI_ExtractSubtitle.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/avi/extr_avi.c_AVI_ExtractSubtitle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_29__ = type { i32, %struct.TYPE_30__* }
%struct.TYPE_30__ = type { i32, i32, i32 }
%struct.TYPE_24__ = type { i64 }
%struct.TYPE_31__ = type { i8* }
%struct.TYPE_33__ = type { i64, i32, i64, %struct.TYPE_27__, i64 }
%struct.TYPE_27__ = type { %struct.TYPE_26__*, %struct.TYPE_25__* }
%struct.TYPE_26__ = type { i32, i64 }
%struct.TYPE_25__ = type { i64 }
%struct.TYPE_32__ = type { %struct.TYPE_33__ }
%struct.TYPE_23__ = type { i32, %struct.TYPE_28__* }
%struct.TYPE_28__ = type { i32, i64, i32 }

@AVIFOURCC_indx = common dso_local global i32 0, align 4
@AVI_INDEX_OF_INDEXES = common dso_local global i64 0, align 8
@AVI_INDEX_OF_CHUNKS = common dso_local global i64 0, align 8
@SPU_ES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Attached subtitle too big: %u\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"GAB2\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"UTF-16LE\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"subtitle%d.srt\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"application/x-srt\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"Loaded an embedded subtitle\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"Failed to load an embedded subtitle\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_29__*, i32, i32*, %struct.TYPE_24__*)* @AVI_ExtractSubtitle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @AVI_ExtractSubtitle(%struct.TYPE_29__* %0, i32 %1, i32* %2, %struct.TYPE_24__* %3) #0 {
  %5 = alloca %struct.TYPE_29__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_24__*, align 8
  %9 = alloca %struct.TYPE_30__*, align 8
  %10 = alloca %struct.TYPE_31__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.TYPE_33__*, align 8
  %14 = alloca %struct.TYPE_32__, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_23__*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.TYPE_28__*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i8*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i8*, align 8
  store %struct.TYPE_29__* %0, %struct.TYPE_29__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store %struct.TYPE_24__* %3, %struct.TYPE_24__** %8, align 8
  %27 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_30__*, %struct.TYPE_30__** %28, align 8
  store %struct.TYPE_30__* %29, %struct.TYPE_30__** %9, align 8
  store %struct.TYPE_31__* null, %struct.TYPE_31__** %10, align 8
  store i32* null, i32** %11, align 8
  store i8* null, i8** %12, align 8
  store %struct.TYPE_33__* null, %struct.TYPE_33__** %13, align 8
  %30 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %4
  br label %325

35:                                               ; preds = %4
  %36 = load i32*, i32** %7, align 8
  %37 = load i32, i32* @AVIFOURCC_indx, align 4
  %38 = call %struct.TYPE_33__* @AVI_ChunkFind(i32* %36, i32 %37, i32 0, i32 0)
  store %struct.TYPE_33__* %38, %struct.TYPE_33__** %13, align 8
  %39 = load %struct.TYPE_33__*, %struct.TYPE_33__** %13, align 8
  %40 = icmp ne %struct.TYPE_33__* %39, null
  br i1 %40, label %41, label %113

41:                                               ; preds = %35
  %42 = load %struct.TYPE_33__*, %struct.TYPE_33__** %13, align 8
  %43 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @AVI_INDEX_OF_INDEXES, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %74

47:                                               ; preds = %41
  %48 = load %struct.TYPE_33__*, %struct.TYPE_33__** %13, align 8
  %49 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = icmp sgt i32 %50, 0
  br i1 %51, label %52, label %74

52:                                               ; preds = %47
  %53 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.TYPE_33__*, %struct.TYPE_33__** %13, align 8
  %57 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %56, i32 0, i32 3
  %58 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %57, i32 0, i32 1
  %59 = load %struct.TYPE_25__*, %struct.TYPE_25__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %59, i64 0
  %61 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = call i64 @vlc_stream_Seek(i32 %55, i64 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %71, label %65

65:                                               ; preds = %52
  %66 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i64 @AVI_ChunkRead(i32 %68, %struct.TYPE_32__* %14, i32* null)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %65, %52
  br label %325

72:                                               ; preds = %65
  %73 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %14, i32 0, i32 0
  store %struct.TYPE_33__* %73, %struct.TYPE_33__** %13, align 8
  br label %74

74:                                               ; preds = %72, %47, %41
  %75 = load %struct.TYPE_33__*, %struct.TYPE_33__** %13, align 8
  %76 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @AVI_INDEX_OF_CHUNKS, align 8
  %79 = icmp ne i64 %77, %78
  br i1 %79, label %90, label %80

80:                                               ; preds = %74
  %81 = load %struct.TYPE_33__*, %struct.TYPE_33__** %13, align 8
  %82 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = icmp ne i32 %83, 1
  br i1 %84, label %90, label %85

85:                                               ; preds = %80
  %86 = load %struct.TYPE_33__*, %struct.TYPE_33__** %13, align 8
  %87 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %85, %80, %74
  br label %325

91:                                               ; preds = %85
  %92 = load %struct.TYPE_33__*, %struct.TYPE_33__** %13, align 8
  %93 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %92, i32 0, i32 4
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.TYPE_33__*, %struct.TYPE_33__** %13, align 8
  %96 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %95, i32 0, i32 3
  %97 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %96, i32 0, i32 0
  %98 = load %struct.TYPE_26__*, %struct.TYPE_26__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %98, i64 0
  %100 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = add nsw i64 %94, %101
  %103 = sub nsw i64 %102, 8
  store i64 %103, i64* %15, align 8
  %104 = load %struct.TYPE_33__*, %struct.TYPE_33__** %13, align 8
  %105 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %104, i32 0, i32 3
  %106 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %105, i32 0, i32 0
  %107 = load %struct.TYPE_26__*, %struct.TYPE_26__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %107, i64 0
  %109 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = and i32 %110, 2147483647
  %112 = add nsw i32 %111, 8
  store i32 %112, i32* %16, align 4
  br label %162

113:                                              ; preds = %35
  %114 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %115 = call i64 @AVI_IndexFind_idx1(%struct.TYPE_29__* %114, %struct.TYPE_23__** %17, i64* %18)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %113
  br label %325

118:                                              ; preds = %113
  store i32 0, i32* %16, align 4
  store i32 0, i32* %19, align 4
  br label %119

119:                                              ; preds = %154, %118
  %120 = load i32, i32* %19, align 4
  %121 = load %struct.TYPE_23__*, %struct.TYPE_23__** %17, align 8
  %122 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = icmp ult i32 %120, %123
  br i1 %124, label %125, label %157

125:                                              ; preds = %119
  %126 = load %struct.TYPE_23__*, %struct.TYPE_23__** %17, align 8
  %127 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %126, i32 0, i32 1
  %128 = load %struct.TYPE_28__*, %struct.TYPE_28__** %127, align 8
  %129 = load i32, i32* %19, align 4
  %130 = zext i32 %129 to i64
  %131 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %128, i64 %130
  store %struct.TYPE_28__* %131, %struct.TYPE_28__** %20, align 8
  %132 = load %struct.TYPE_28__*, %struct.TYPE_28__** %20, align 8
  %133 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 8
  %135 = call i32 @AVI_ParseStreamHeader(i32 %134, i32* %22, i32* %21)
  %136 = load i32, i32* %21, align 4
  %137 = load i32, i32* @SPU_ES, align 4
  %138 = icmp eq i32 %136, %137
  br i1 %138, label %139, label %153

139:                                              ; preds = %125
  %140 = load i32, i32* %22, align 4
  %141 = load i32, i32* %6, align 4
  %142 = icmp eq i32 %140, %141
  br i1 %142, label %143, label %153

143:                                              ; preds = %139
  %144 = load %struct.TYPE_28__*, %struct.TYPE_28__** %20, align 8
  %145 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %144, i32 0, i32 1
  %146 = load i64, i64* %145, align 8
  %147 = load i64, i64* %18, align 8
  %148 = add nsw i64 %146, %147
  store i64 %148, i64* %15, align 8
  %149 = load %struct.TYPE_28__*, %struct.TYPE_28__** %20, align 8
  %150 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = add nsw i32 %151, 8
  store i32 %152, i32* %16, align 4
  br label %157

153:                                              ; preds = %139, %125
  br label %154

154:                                              ; preds = %153
  %155 = load i32, i32* %19, align 4
  %156 = add i32 %155, 1
  store i32 %156, i32* %19, align 4
  br label %119

157:                                              ; preds = %143, %119
  %158 = load i32, i32* %16, align 4
  %159 = icmp ule i32 %158, 0
  br i1 %159, label %160, label %161

160:                                              ; preds = %157
  br label %325

161:                                              ; preds = %157
  br label %162

162:                                              ; preds = %161, %91
  %163 = load i32, i32* %16, align 4
  %164 = icmp ugt i32 %163, 10000000
  br i1 %164, label %165, label %169

165:                                              ; preds = %162
  %166 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %167 = load i32, i32* %16, align 4
  %168 = call i32 (%struct.TYPE_29__*, i8*, ...) @msg_Dbg(%struct.TYPE_29__* %166, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %167)
  br label %325

169:                                              ; preds = %162
  %170 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %171 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = load i64, i64* %15, align 8
  %174 = call i64 @vlc_stream_Seek(i32 %172, i64 %173)
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %177

176:                                              ; preds = %169
  br label %325

177:                                              ; preds = %169
  %178 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %179 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = load i32, i32* %16, align 4
  %182 = call %struct.TYPE_31__* @vlc_stream_Block(i32 %180, i32 %181)
  store %struct.TYPE_31__* %182, %struct.TYPE_31__** %10, align 8
  %183 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  %184 = icmp ne %struct.TYPE_31__* %183, null
  br i1 %184, label %186, label %185

185:                                              ; preds = %177
  br label %325

186:                                              ; preds = %177
  %187 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  %188 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %187, i32 0, i32 0
  %189 = load i8*, i8** %188, align 8
  store i8* %189, i8** %23, align 8
  %190 = load i32, i32* %16, align 4
  %191 = icmp ult i32 %190, 8
  br i1 %191, label %204, label %192

192:                                              ; preds = %186
  %193 = load i8*, i8** %23, align 8
  %194 = getelementptr inbounds i8, i8* %193, i64 2
  %195 = load i8, i8* %194, align 1
  %196 = sext i8 %195 to i32
  %197 = icmp ne i32 %196, 116
  br i1 %197, label %204, label %198

198:                                              ; preds = %192
  %199 = load i8*, i8** %23, align 8
  %200 = getelementptr inbounds i8, i8* %199, i64 3
  %201 = load i8, i8* %200, align 1
  %202 = sext i8 %201 to i32
  %203 = icmp ne i32 %202, 120
  br i1 %203, label %204, label %205

204:                                              ; preds = %198, %192, %186
  br label %325

205:                                              ; preds = %198
  %206 = load i8*, i8** %23, align 8
  %207 = getelementptr inbounds i8, i8* %206, i64 8
  store i8* %207, i8** %23, align 8
  %208 = load i32, i32* %16, align 4
  %209 = sub i32 %208, 8
  store i32 %209, i32* %16, align 4
  %210 = load i32, i32* %16, align 4
  %211 = icmp ult i32 %210, 11
  br i1 %211, label %227, label %212

212:                                              ; preds = %205
  %213 = load i8*, i8** %23, align 8
  %214 = call i64 @memcmp(i8* %213, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 4)
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %227, label %216

216:                                              ; preds = %212
  %217 = load i8*, i8** %23, align 8
  %218 = getelementptr inbounds i8, i8* %217, i64 4
  %219 = load i8, i8* %218, align 1
  %220 = sext i8 %219 to i32
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %227, label %222

222:                                              ; preds = %216
  %223 = load i8*, i8** %23, align 8
  %224 = getelementptr inbounds i8, i8* %223, i64 5
  %225 = call i32 @GetWLE(i8* %224)
  %226 = icmp ne i32 %225, 2
  br i1 %226, label %227, label %228

227:                                              ; preds = %222, %216, %212, %205
  br label %325

228:                                              ; preds = %222
  %229 = load i8*, i8** %23, align 8
  %230 = getelementptr inbounds i8, i8* %229, i64 7
  %231 = call i32 @GetDWLE(i8* %230)
  store i32 %231, i32* %24, align 4
  %232 = load i32, i32* %16, align 4
  %233 = add i32 11, %232
  %234 = load i32, i32* %24, align 4
  %235 = icmp ule i32 %233, %234
  br i1 %235, label %236, label %237

236:                                              ; preds = %228
  br label %325

237:                                              ; preds = %228
  %238 = load i32, i32* %24, align 4
  %239 = icmp ugt i32 %238, 0
  br i1 %239, label %240, label %245

240:                                              ; preds = %237
  %241 = load i8*, i8** %23, align 8
  %242 = getelementptr inbounds i8, i8* %241, i64 11
  %243 = load i32, i32* %24, align 4
  %244 = call i8* @FromCharset(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* %242, i32 %243)
  store i8* %244, i8** %12, align 8
  br label %245

245:                                              ; preds = %240, %237
  %246 = load i32, i32* %24, align 4
  %247 = add i32 11, %246
  %248 = load i8*, i8** %23, align 8
  %249 = zext i32 %247 to i64
  %250 = getelementptr inbounds i8, i8* %248, i64 %249
  store i8* %250, i8** %23, align 8
  %251 = load i32, i32* %24, align 4
  %252 = add i32 11, %251
  %253 = load i32, i32* %16, align 4
  %254 = sub i32 %253, %252
  store i32 %254, i32* %16, align 4
  %255 = load i32, i32* %16, align 4
  %256 = icmp ult i32 %255, 6
  br i1 %256, label %262, label %257

257:                                              ; preds = %245
  %258 = load i8*, i8** %23, align 8
  %259 = getelementptr inbounds i8, i8* %258, i64 0
  %260 = call i32 @GetWLE(i8* %259)
  %261 = icmp ne i32 %260, 4
  br i1 %261, label %262, label %263

262:                                              ; preds = %257, %245
  br label %325

263:                                              ; preds = %257
  %264 = load i8*, i8** %23, align 8
  %265 = getelementptr inbounds i8, i8* %264, i64 2
  %266 = call i32 @GetDWLE(i8* %265)
  store i32 %266, i32* %25, align 4
  %267 = load i32, i32* %16, align 4
  %268 = load i32, i32* %25, align 4
  %269 = add i32 6, %268
  %270 = icmp ult i32 %267, %269
  br i1 %270, label %274, label %271

271:                                              ; preds = %263
  %272 = load i32, i32* %25, align 4
  %273 = icmp ule i32 %272, 0
  br i1 %273, label %274, label %275

274:                                              ; preds = %271, %263
  br label %325

275:                                              ; preds = %271
  %276 = load i8*, i8** %23, align 8
  %277 = getelementptr inbounds i8, i8* %276, i64 6
  store i8* %277, i8** %23, align 8
  %278 = load i32, i32* %16, align 4
  %279 = sub i32 %278, 6
  store i32 %279, i32* %16, align 4
  %280 = load i8*, i8** %12, align 8
  %281 = icmp ne i8* %280, null
  br i1 %281, label %298, label %282

282:                                              ; preds = %275
  %283 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %284 = icmp ne %struct.TYPE_24__* %283, null
  br i1 %284, label %285, label %295

285:                                              ; preds = %282
  %286 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %287 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %286, i32 0, i32 0
  %288 = load i64, i64* %287, align 8
  %289 = icmp ne i64 %288, 0
  br i1 %289, label %290, label %295

290:                                              ; preds = %285
  %291 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %292 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %291, i32 0, i32 0
  %293 = load i64, i64* %292, align 8
  %294 = call i8* @FromACP(i64 %293)
  br label %296

295:                                              ; preds = %285, %282
  br label %296

296:                                              ; preds = %295, %290
  %297 = phi i8* [ %294, %290 ], [ null, %295 ]
  store i8* %297, i8** %12, align 8
  br label %298

298:                                              ; preds = %296, %275
  %299 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %300 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %299, i32 0, i32 1
  %301 = load i32, i32* %300, align 4
  %302 = call i64 @asprintf(i8** %26, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 %301)
  %303 = icmp sle i64 %302, 0
  br i1 %303, label %304, label %305

304:                                              ; preds = %298
  store i8* null, i8** %26, align 8
  br label %305

305:                                              ; preds = %304, %298
  %306 = load i8*, i8** %26, align 8
  %307 = load i8*, i8** %12, align 8
  %308 = load i8*, i8** %23, align 8
  %309 = load i32, i32* %25, align 4
  %310 = call i32* @vlc_input_attachment_New(i8* %306, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i8* %307, i8* %308, i32 %309)
  store i32* %310, i32** %11, align 8
  %311 = load i32*, i32** %11, align 8
  %312 = icmp ne i32* %311, null
  br i1 %312, label %313, label %322

313:                                              ; preds = %305
  %314 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %315 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %314, i32 0, i32 1
  %316 = load i32, i32* %315, align 4
  %317 = load %struct.TYPE_30__*, %struct.TYPE_30__** %9, align 8
  %318 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %317, i32 0, i32 0
  %319 = load i32, i32* %318, align 4
  %320 = load i32*, i32** %11, align 8
  %321 = call i32 @TAB_APPEND(i32 %316, i32 %319, i32* %320)
  br label %322

322:                                              ; preds = %313, %305
  %323 = load i8*, i8** %26, align 8
  %324 = call i32 @free(i8* %323)
  br label %325

325:                                              ; preds = %322, %274, %262, %236, %227, %204, %185, %176, %165, %160, %117, %90, %71, %34
  %326 = load i8*, i8** %12, align 8
  %327 = call i32 @free(i8* %326)
  %328 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  %329 = icmp ne %struct.TYPE_31__* %328, null
  br i1 %329, label %330, label %333

330:                                              ; preds = %325
  %331 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  %332 = call i32 @block_Release(%struct.TYPE_31__* %331)
  br label %333

333:                                              ; preds = %330, %325
  %334 = load i32*, i32** %11, align 8
  %335 = icmp ne i32* %334, null
  br i1 %335, label %336, label %339

336:                                              ; preds = %333
  %337 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %338 = call i32 (%struct.TYPE_29__*, i8*, ...) @msg_Dbg(%struct.TYPE_29__* %337, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  br label %342

339:                                              ; preds = %333
  %340 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %341 = call i32 @msg_Warn(%struct.TYPE_29__* %340, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0))
  br label %342

342:                                              ; preds = %339, %336
  %343 = load %struct.TYPE_33__*, %struct.TYPE_33__** %13, align 8
  %344 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %14, i32 0, i32 0
  %345 = icmp eq %struct.TYPE_33__* %343, %344
  br i1 %345, label %346, label %351

346:                                              ; preds = %342
  %347 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %348 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %347, i32 0, i32 0
  %349 = load i32, i32* %348, align 8
  %350 = call i32 @AVI_ChunkClean(i32 %349, %struct.TYPE_32__* %14)
  br label %351

351:                                              ; preds = %346, %342
  ret void
}

declare dso_local %struct.TYPE_33__* @AVI_ChunkFind(i32*, i32, i32, i32) #1

declare dso_local i64 @vlc_stream_Seek(i32, i64) #1

declare dso_local i64 @AVI_ChunkRead(i32, %struct.TYPE_32__*, i32*) #1

declare dso_local i64 @AVI_IndexFind_idx1(%struct.TYPE_29__*, %struct.TYPE_23__**, i64*) #1

declare dso_local i32 @AVI_ParseStreamHeader(i32, i32*, i32*) #1

declare dso_local i32 @msg_Dbg(%struct.TYPE_29__*, i8*, ...) #1

declare dso_local %struct.TYPE_31__* @vlc_stream_Block(i32, i32) #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @GetWLE(i8*) #1

declare dso_local i32 @GetDWLE(i8*) #1

declare dso_local i8* @FromCharset(i8*, i8*, i32) #1

declare dso_local i8* @FromACP(i64) #1

declare dso_local i64 @asprintf(i8**, i8*, i32) #1

declare dso_local i32* @vlc_input_attachment_New(i8*, i8*, i8*, i8*, i32) #1

declare dso_local i32 @TAB_APPEND(i32, i32, i32*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @block_Release(%struct.TYPE_31__*) #1

declare dso_local i32 @msg_Warn(%struct.TYPE_29__*, i8*) #1

declare dso_local i32 @AVI_ChunkClean(i32, %struct.TYPE_32__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
