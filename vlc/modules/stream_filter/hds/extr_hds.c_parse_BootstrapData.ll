; ModuleID = '/home/carl/AnghaBench/vlc/modules/stream_filter/hds/extr_hds.c_parse_BootstrapData.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/stream_filter/hds/extr_hds.c_parse_BootstrapData.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64, i64, i32*, i8**, i8*, i32, i8* }

@.str = private unnamed_addr constant [26 x i8] c"Not enough bootstrap data\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"abst\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"Cant find abst in bootstrap\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"Not enough bootstrap after Movie Identifier\00", align 1
@MAX_HDS_SERVERS = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [17 x i8] c"Too many servers\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"Couldn't find server entry\00", align 1
@.str.6 = private unnamed_addr constant [54 x i8] c"Premature end of bootstrap info while reading servers\00", align 1
@.str.7 = private unnamed_addr constant [35 x i8] c"Not enough bootstrap after Servers\00", align 1
@.str.8 = private unnamed_addr constant [121 x i8] c"I don't know what to do with multiple quality levels in the bootstrap - shouldn't this be handled at the manifest level?\00", align 1
@.str.9 = private unnamed_addr constant [43 x i8] c"Not enough bootstrap after quality entries\00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"Couldn't find DRM Data\00", align 1
@.str.11 = private unnamed_addr constant [36 x i8] c"Not enough bootstrap after drm data\00", align 1
@.str.12 = private unnamed_addr constant [23 x i8] c"Couldn't find metadata\00", align 1
@.str.13 = private unnamed_addr constant [24 x i8] c"Couldn't find afrt data\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_5__*, i32*, i32*)* @parse_BootstrapData to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_BootstrapData(i32* %0, %struct.TYPE_5__* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %15 = load i32*, i32** %7, align 8
  store i32* %15, i32** %9, align 8
  %16 = load i32*, i32** %9, align 8
  %17 = call i8* @U32_AT(i32* %16)
  %18 = ptrtoint i8* %17 to i32
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %10, align 4
  %20 = sext i32 %19 to i64
  %21 = load i32*, i32** %8, align 8
  %22 = load i32*, i32** %7, align 8
  %23 = ptrtoint i32* %21 to i64
  %24 = ptrtoint i32* %22 to i64
  %25 = sub i64 %23, %24
  %26 = sdiv exact i64 %25, 4
  %27 = icmp sgt i64 %20, %26
  br i1 %27, label %36, label %28

28:                                               ; preds = %4
  %29 = load i32*, i32** %8, align 8
  %30 = load i32*, i32** %7, align 8
  %31 = ptrtoint i32* %29 to i64
  %32 = ptrtoint i32* %30 to i64
  %33 = sub i64 %31, %32
  %34 = sdiv exact i64 %33, 4
  %35 = icmp slt i64 %34, 29
  br i1 %35, label %36, label %39

36:                                               ; preds = %28, %4
  %37 = load i32*, i32** %5, align 8
  %38 = call i32 @msg_Warn(i32* %37, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %363

39:                                               ; preds = %28
  %40 = load i32*, i32** %9, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 4
  store i32* %41, i32** %9, align 8
  %42 = load i32*, i32** %9, align 8
  %43 = call i64 @memcmp(i32* %42, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 4)
  %44 = icmp ne i64 0, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %39
  %46 = load i32*, i32** %5, align 8
  %47 = call i32 @msg_Warn(i32* %46, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  br label %363

48:                                               ; preds = %39
  %49 = load i32*, i32** %9, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 4
  store i32* %50, i32** %9, align 8
  %51 = load i32*, i32** %9, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 4
  store i32* %52, i32** %9, align 8
  %53 = load i32*, i32** %9, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 4
  store i32* %54, i32** %9, align 8
  %55 = load i32*, i32** %9, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 1
  store i32* %56, i32** %9, align 8
  %57 = load i32*, i32** %9, align 8
  %58 = call i8* @U32_AT(i32* %57)
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 7
  store i8* %58, i8** %60, align 8
  %61 = load i32*, i32** %9, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 8
  store i32* %62, i32** %9, align 8
  %63 = load i32*, i32** %9, align 8
  %64 = call i32 @U64_AT(i32* %63)
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 6
  store i32 %64, i32* %66, align 8
  %67 = load i32*, i32** %9, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 4
  store i32* %68, i32** %9, align 8
  %69 = load i32*, i32** %9, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 8
  store i32* %70, i32** %9, align 8
  %71 = load i32*, i32** %9, align 8
  %72 = bitcast i32* %71 to i8*
  %73 = load i32*, i32** %8, align 8
  %74 = load i32*, i32** %9, align 8
  %75 = ptrtoint i32* %73 to i64
  %76 = ptrtoint i32* %74 to i64
  %77 = sub i64 %75, %76
  %78 = sdiv exact i64 %77, 4
  %79 = trunc i64 %78 to i32
  %80 = call i8* @strndup(i8* %72, i32 %79)
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 5
  store i8* %80, i8** %82, align 8
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 5
  %85 = load i8*, i8** %84, align 8
  %86 = call i64 @strlen(i8* %85)
  %87 = add nsw i64 %86, 1
  %88 = load i32*, i32** %9, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 %87
  store i32* %89, i32** %9, align 8
  %90 = load i32*, i32** %8, align 8
  %91 = load i32*, i32** %9, align 8
  %92 = ptrtoint i32* %90 to i64
  %93 = ptrtoint i32* %91 to i64
  %94 = sub i64 %92, %93
  %95 = sdiv exact i64 %94, 4
  %96 = icmp slt i64 %95, 4
  br i1 %96, label %97, label %100

97:                                               ; preds = %48
  %98 = load i32*, i32** %5, align 8
  %99 = call i32 @msg_Warn(i32* %98, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0))
  br label %363

100:                                              ; preds = %48
  store i32 0, i32* %11, align 4
  %101 = load i32*, i32** %9, align 8
  %102 = load i32, i32* %101, align 4
  store i32 %102, i32* %11, align 4
  %103 = load i32*, i32** %9, align 8
  %104 = getelementptr inbounds i32, i32* %103, i32 1
  store i32* %104, i32** %9, align 8
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 0
  store i64 0, i64* %106, align 8
  br label %107

107:                                              ; preds = %176, %100
  %108 = load i32, i32* %11, align 4
  %109 = add nsw i32 %108, -1
  store i32 %109, i32* %11, align 4
  %110 = icmp sgt i32 %108, 0
  br i1 %110, label %111, label %177

111:                                              ; preds = %107
  %112 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @MAX_HDS_SERVERS, align 8
  %116 = icmp slt i64 %114, %115
  br i1 %116, label %117, label %149

117:                                              ; preds = %111
  %118 = load i32*, i32** %9, align 8
  %119 = bitcast i32* %118 to i8*
  %120 = load i32*, i32** %8, align 8
  %121 = load i32*, i32** %9, align 8
  %122 = ptrtoint i32* %120 to i64
  %123 = ptrtoint i32* %121 to i64
  %124 = sub i64 %122, %123
  %125 = sdiv exact i64 %124, 4
  %126 = trunc i64 %125 to i32
  %127 = call i8* @strndup(i8* %119, i32 %126)
  %128 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 4
  %130 = load i8**, i8*** %129, align 8
  %131 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = add nsw i64 %133, 1
  store i64 %134, i64* %132, align 8
  %135 = getelementptr inbounds i8*, i8** %130, i64 %133
  store i8* %127, i8** %135, align 8
  %136 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i32 0, i32 4
  %138 = load i8**, i8*** %137, align 8
  %139 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = sub nsw i64 %141, 1
  %143 = getelementptr inbounds i8*, i8** %138, i64 %142
  %144 = load i8*, i8** %143, align 8
  %145 = call i64 @strlen(i8* %144)
  %146 = add nsw i64 %145, 1
  %147 = load i32*, i32** %9, align 8
  %148 = getelementptr inbounds i32, i32* %147, i64 %146
  store i32* %148, i32** %9, align 8
  br label %169

149:                                              ; preds = %111
  %150 = load i32*, i32** %5, align 8
  %151 = call i32 @msg_Warn(i32* %150, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  %152 = load i32*, i32** %9, align 8
  %153 = load i32*, i32** %8, align 8
  %154 = load i32*, i32** %9, align 8
  %155 = ptrtoint i32* %153 to i64
  %156 = ptrtoint i32* %154 to i64
  %157 = sub i64 %155, %156
  %158 = sdiv exact i64 %157, 4
  %159 = trunc i64 %158 to i32
  %160 = call i32* @memchr(i32* %152, i8 signext 0, i32 %159)
  store i32* %160, i32** %9, align 8
  %161 = load i32*, i32** %9, align 8
  %162 = icmp ne i32* %161, null
  br i1 %162, label %166, label %163

163:                                              ; preds = %149
  %164 = load i32*, i32** %5, align 8
  %165 = call i32 @msg_Err(i32* %164, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  br label %363

166:                                              ; preds = %149
  %167 = load i32*, i32** %9, align 8
  %168 = getelementptr inbounds i32, i32* %167, i32 1
  store i32* %168, i32** %9, align 8
  br label %169

169:                                              ; preds = %166, %117
  %170 = load i32*, i32** %9, align 8
  %171 = load i32*, i32** %8, align 8
  %172 = icmp uge i32* %170, %171
  br i1 %172, label %173, label %176

173:                                              ; preds = %169
  %174 = load i32*, i32** %5, align 8
  %175 = call i32 @msg_Warn(i32* %174, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.6, i64 0, i64 0))
  br label %363

176:                                              ; preds = %169
  br label %107

177:                                              ; preds = %107
  %178 = load i32*, i32** %8, align 8
  %179 = load i32*, i32** %9, align 8
  %180 = ptrtoint i32* %178 to i64
  %181 = ptrtoint i32* %179 to i64
  %182 = sub i64 %180, %181
  %183 = sdiv exact i64 %182, 4
  %184 = icmp slt i64 %183, 3
  br i1 %184, label %185, label %188

185:                                              ; preds = %177
  %186 = load i32*, i32** %5, align 8
  %187 = call i32 @msg_Warn(i32* %186, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0))
  br label %363

188:                                              ; preds = %177
  %189 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %190 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %189, i32 0, i32 3
  store i32* null, i32** %190, align 8
  %191 = load i32*, i32** %9, align 8
  %192 = load i32, i32* %191, align 4
  store i32 %192, i32* %12, align 4
  %193 = load i32*, i32** %9, align 8
  %194 = getelementptr inbounds i32, i32* %193, i32 1
  store i32* %194, i32** %9, align 8
  %195 = load i32, i32* %12, align 4
  %196 = icmp sgt i32 %195, 1
  br i1 %196, label %197, label %200

197:                                              ; preds = %188
  %198 = load i32*, i32** %5, align 8
  %199 = call i32 @msg_Err(i32* %198, i8* getelementptr inbounds ([121 x i8], [121 x i8]* @.str.8, i64 0, i64 0))
  br label %363

200:                                              ; preds = %188
  %201 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %202 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %201, i32 0, i32 3
  store i32* null, i32** %202, align 8
  br label %203

203:                                              ; preds = %226, %200
  %204 = load i32, i32* %12, align 4
  %205 = add nsw i32 %204, -1
  store i32 %205, i32* %12, align 4
  %206 = icmp sgt i32 %204, 0
  br i1 %206, label %207, label %240

207:                                              ; preds = %203
  %208 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %209 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %208, i32 0, i32 3
  %210 = load i32*, i32** %209, align 8
  %211 = icmp ne i32* %210, null
  br i1 %211, label %212, label %226

212:                                              ; preds = %207
  %213 = load i32*, i32** %9, align 8
  %214 = bitcast i32* %213 to i8*
  %215 = load i32*, i32** %8, align 8
  %216 = load i32*, i32** %9, align 8
  %217 = ptrtoint i32* %215 to i64
  %218 = ptrtoint i32* %216 to i64
  %219 = sub i64 %217, %218
  %220 = sdiv exact i64 %219, 4
  %221 = trunc i64 %220 to i32
  %222 = call i8* @strndup(i8* %214, i32 %221)
  %223 = bitcast i8* %222 to i32*
  %224 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %225 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %224, i32 0, i32 3
  store i32* %223, i32** %225, align 8
  br label %226

226:                                              ; preds = %212, %207
  %227 = load i32*, i32** %9, align 8
  %228 = bitcast i32* %227 to i8*
  %229 = load i32*, i32** %8, align 8
  %230 = load i32*, i32** %9, align 8
  %231 = ptrtoint i32* %229 to i64
  %232 = ptrtoint i32* %230 to i64
  %233 = sub i64 %231, %232
  %234 = sdiv exact i64 %233, 4
  %235 = trunc i64 %234 to i32
  %236 = call i64 @strnlen(i8* %228, i32 %235)
  %237 = add nsw i64 %236, 1
  %238 = load i32*, i32** %9, align 8
  %239 = getelementptr inbounds i32, i32* %238, i64 %237
  store i32* %239, i32** %9, align 8
  br label %203

240:                                              ; preds = %203
  %241 = load i32*, i32** %8, align 8
  %242 = load i32*, i32** %9, align 8
  %243 = ptrtoint i32* %241 to i64
  %244 = ptrtoint i32* %242 to i64
  %245 = sub i64 %243, %244
  %246 = sdiv exact i64 %245, 4
  %247 = icmp slt i64 %246, 2
  br i1 %247, label %248, label %251

248:                                              ; preds = %240
  %249 = load i32*, i32** %5, align 8
  %250 = call i32 @msg_Warn(i32* %249, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.9, i64 0, i64 0))
  br label %363

251:                                              ; preds = %240
  %252 = load i32*, i32** %9, align 8
  %253 = load i32*, i32** %8, align 8
  %254 = load i32*, i32** %9, align 8
  %255 = ptrtoint i32* %253 to i64
  %256 = ptrtoint i32* %254 to i64
  %257 = sub i64 %255, %256
  %258 = sdiv exact i64 %257, 4
  %259 = trunc i64 %258 to i32
  %260 = call i32* @memchr(i32* %252, i8 signext 0, i32 %259)
  store i32* %260, i32** %9, align 8
  %261 = load i32*, i32** %9, align 8
  %262 = icmp ne i32* %261, null
  br i1 %262, label %266, label %263

263:                                              ; preds = %251
  %264 = load i32*, i32** %5, align 8
  %265 = call i32 @msg_Err(i32* %264, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i64 0, i64 0))
  br label %363

266:                                              ; preds = %251
  %267 = load i32*, i32** %9, align 8
  %268 = getelementptr inbounds i32, i32* %267, i32 1
  store i32* %268, i32** %9, align 8
  %269 = load i32*, i32** %8, align 8
  %270 = load i32*, i32** %9, align 8
  %271 = ptrtoint i32* %269 to i64
  %272 = ptrtoint i32* %270 to i64
  %273 = sub i64 %271, %272
  %274 = sdiv exact i64 %273, 4
  %275 = icmp slt i64 %274, 2
  br i1 %275, label %276, label %279

276:                                              ; preds = %266
  %277 = load i32*, i32** %5, align 8
  %278 = call i32 @msg_Warn(i32* %277, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11, i64 0, i64 0))
  br label %363

279:                                              ; preds = %266
  %280 = load i32*, i32** %9, align 8
  %281 = load i32*, i32** %8, align 8
  %282 = load i32*, i32** %9, align 8
  %283 = ptrtoint i32* %281 to i64
  %284 = ptrtoint i32* %282 to i64
  %285 = sub i64 %283, %284
  %286 = sdiv exact i64 %285, 4
  %287 = trunc i64 %286 to i32
  %288 = call i32* @memchr(i32* %280, i8 signext 0, i32 %287)
  store i32* %288, i32** %9, align 8
  %289 = load i32*, i32** %9, align 8
  %290 = icmp ne i32* %289, null
  br i1 %290, label %294, label %291

291:                                              ; preds = %279
  %292 = load i32*, i32** %5, align 8
  %293 = call i32 @msg_Err(i32* %292, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i64 0, i64 0))
  br label %363

294:                                              ; preds = %279
  %295 = load i32*, i32** %9, align 8
  %296 = getelementptr inbounds i32, i32* %295, i32 1
  store i32* %296, i32** %9, align 8
  %297 = load i32*, i32** %8, align 8
  %298 = load i32*, i32** %9, align 8
  %299 = ptrtoint i32* %297 to i64
  %300 = ptrtoint i32* %298 to i64
  %301 = sub i64 %299, %300
  %302 = sdiv exact i64 %301, 4
  %303 = icmp slt i64 %302, 2
  br i1 %303, label %304, label %307

304:                                              ; preds = %294
  %305 = load i32*, i32** %5, align 8
  %306 = call i32 @msg_Warn(i32* %305, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11, i64 0, i64 0))
  br label %363

307:                                              ; preds = %294
  %308 = load i32*, i32** %9, align 8
  %309 = load i32, i32* %308, align 4
  store i32 %309, i32* %13, align 4
  %310 = load i32*, i32** %9, align 8
  %311 = getelementptr inbounds i32, i32* %310, i32 1
  store i32* %311, i32** %9, align 8
  %312 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %313 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %312, i32 0, i32 2
  store i64 0, i64* %313, align 8
  br label %314

314:                                              ; preds = %331, %307
  %315 = load i32, i32* %13, align 4
  %316 = add nsw i32 %315, -1
  store i32 %316, i32* %13, align 4
  %317 = icmp sgt i32 %315, 0
  br i1 %317, label %318, label %329

318:                                              ; preds = %314
  %319 = load i32*, i32** %8, align 8
  %320 = load i32*, i32** %9, align 8
  %321 = icmp ugt i32* %319, %320
  br i1 %321, label %322, label %329

322:                                              ; preds = %318
  %323 = load i32*, i32** %5, align 8
  %324 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %325 = load i32*, i32** %9, align 8
  %326 = load i32*, i32** %8, align 8
  %327 = call i32* @parse_asrt(i32* %323, %struct.TYPE_5__* %324, i32* %325, i32* %326)
  store i32* %327, i32** %9, align 8
  %328 = icmp ne i32* %327, null
  br label %329

329:                                              ; preds = %322, %318, %314
  %330 = phi i1 [ false, %318 ], [ false, %314 ], [ %328, %322 ]
  br i1 %330, label %331, label %332

331:                                              ; preds = %329
  br label %314

332:                                              ; preds = %329
  %333 = load i32*, i32** %9, align 8
  %334 = icmp ne i32* %333, null
  br i1 %334, label %338, label %335

335:                                              ; preds = %332
  %336 = load i32*, i32** %5, align 8
  %337 = call i32 @msg_Warn(i32* %336, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.13, i64 0, i64 0))
  br label %363

338:                                              ; preds = %332
  %339 = load i32*, i32** %9, align 8
  %340 = load i32, i32* %339, align 4
  store i32 %340, i32* %14, align 4
  %341 = load i32*, i32** %9, align 8
  %342 = getelementptr inbounds i32, i32* %341, i32 1
  store i32* %342, i32** %9, align 8
  %343 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %344 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %343, i32 0, i32 1
  store i64 0, i64* %344, align 8
  br label %345

345:                                              ; preds = %362, %338
  %346 = load i32, i32* %14, align 4
  %347 = add nsw i32 %346, -1
  store i32 %347, i32* %14, align 4
  %348 = icmp sgt i32 %346, 0
  br i1 %348, label %349, label %360

349:                                              ; preds = %345
  %350 = load i32*, i32** %8, align 8
  %351 = load i32*, i32** %9, align 8
  %352 = icmp ugt i32* %350, %351
  br i1 %352, label %353, label %360

353:                                              ; preds = %349
  %354 = load i32*, i32** %5, align 8
  %355 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %356 = load i32*, i32** %9, align 8
  %357 = load i32*, i32** %8, align 8
  %358 = call i32* @parse_afrt(i32* %354, %struct.TYPE_5__* %355, i32* %356, i32* %357)
  store i32* %358, i32** %9, align 8
  %359 = icmp ne i32* %358, null
  br label %360

360:                                              ; preds = %353, %349, %345
  %361 = phi i1 [ false, %349 ], [ false, %345 ], [ %359, %353 ]
  br i1 %361, label %362, label %363

362:                                              ; preds = %360
  br label %345

363:                                              ; preds = %36, %45, %97, %163, %173, %185, %197, %248, %263, %276, %291, %304, %335, %360
  ret void
}

declare dso_local i8* @U32_AT(i32*) #1

declare dso_local i32 @msg_Warn(i32*, i8*) #1

declare dso_local i64 @memcmp(i32*, i8*, i32) #1

declare dso_local i32 @U64_AT(i32*) #1

declare dso_local i8* @strndup(i8*, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32* @memchr(i32*, i8 signext, i32) #1

declare dso_local i32 @msg_Err(i32*, i8*) #1

declare dso_local i64 @strnlen(i8*, i32) #1

declare dso_local i32* @parse_asrt(i32*, %struct.TYPE_5__*, i32*, i32*) #1

declare dso_local i32* @parse_afrt(i32*, %struct.TYPE_5__*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
