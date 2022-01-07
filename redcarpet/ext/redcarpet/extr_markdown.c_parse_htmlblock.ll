; ModuleID = '/home/carl/AnghaBench/redcarpet/ext/redcarpet/extr_markdown.c_parse_htmlblock.c'
source_filename = "/home/carl/AnghaBench/redcarpet/ext/redcarpet/extr_markdown.c_parse_htmlblock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buf = type { i8*, i64, i32, i32, i32 }
%struct.sd_markdown = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.buf.0*, %struct.buf.0*, i32)* }
%struct.buf.0 = type opaque

@.str = private unnamed_addr constant [4 x i8] c"ins\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"del\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.buf*, %struct.sd_markdown*, i8*, i64, i32)* @parse_htmlblock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @parse_htmlblock(%struct.buf* %0, %struct.sd_markdown* %1, i8* %2, i64 %3, i32 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.buf*, align 8
  %8 = alloca %struct.sd_markdown*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca %struct.buf, align 8
  store %struct.buf* %0, %struct.buf** %7, align 8
  store %struct.sd_markdown* %1, %struct.sd_markdown** %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  store i64 0, i64* %13, align 8
  store i8* null, i8** %15, align 8
  %17 = getelementptr inbounds %struct.buf, %struct.buf* %16, i32 0, i32 0
  %18 = load i8*, i8** %9, align 8
  store i8* %18, i8** %17, align 8
  %19 = getelementptr inbounds %struct.buf, %struct.buf* %16, i32 0, i32 1
  store i64 0, i64* %19, align 8
  %20 = getelementptr inbounds %struct.buf, %struct.buf* %16, i32 0, i32 2
  store i32 0, i32* %20, align 8
  %21 = getelementptr inbounds %struct.buf, %struct.buf* %16, i32 0, i32 3
  store i32 0, i32* %21, align 4
  %22 = getelementptr inbounds %struct.buf, %struct.buf* %16, i32 0, i32 4
  store i32 0, i32* %22, align 8
  %23 = load i64, i64* %10, align 8
  %24 = icmp ult i64 %23, 2
  br i1 %24, label %31, label %25

25:                                               ; preds = %5
  %26 = load i8*, i8** %9, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 0
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp ne i32 %29, 60
  br i1 %30, label %31, label %32

31:                                               ; preds = %25, %5
  store i64 0, i64* %6, align 8
  br label %316

32:                                               ; preds = %25
  store i64 1, i64* %12, align 8
  br label %33

33:                                               ; preds = %53, %32
  %34 = load i64, i64* %12, align 8
  %35 = load i64, i64* %10, align 8
  %36 = icmp ult i64 %34, %35
  br i1 %36, label %37, label %51

37:                                               ; preds = %33
  %38 = load i8*, i8** %9, align 8
  %39 = load i64, i64* %12, align 8
  %40 = getelementptr inbounds i8, i8* %38, i64 %39
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp ne i32 %42, 62
  br i1 %43, label %44, label %51

44:                                               ; preds = %37
  %45 = load i8*, i8** %9, align 8
  %46 = load i64, i64* %12, align 8
  %47 = getelementptr inbounds i8, i8* %45, i64 %46
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp ne i32 %49, 32
  br label %51

51:                                               ; preds = %44, %37, %33
  %52 = phi i1 [ false, %37 ], [ false, %33 ], [ %50, %44 ]
  br i1 %52, label %53, label %56

53:                                               ; preds = %51
  %54 = load i64, i64* %12, align 8
  %55 = add i64 %54, 1
  store i64 %55, i64* %12, align 8
  br label %33

56:                                               ; preds = %51
  %57 = load i64, i64* %12, align 8
  %58 = load i64, i64* %10, align 8
  %59 = icmp ult i64 %57, %58
  br i1 %59, label %60, label %67

60:                                               ; preds = %56
  %61 = load i8*, i8** %9, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 1
  %63 = load i64, i64* %12, align 8
  %64 = trunc i64 %63 to i32
  %65 = sub nsw i32 %64, 1
  %66 = call i8* @find_block_tag(i8* %62, i32 %65)
  store i8* %66, i8** %15, align 8
  br label %67

67:                                               ; preds = %60, %56
  %68 = load i8*, i8** %15, align 8
  %69 = icmp ne i8* %68, null
  br i1 %69, label %265, label %70

70:                                               ; preds = %67
  %71 = load i64, i64* %10, align 8
  %72 = icmp ugt i64 %71, 5
  br i1 %72, label %73, label %173

73:                                               ; preds = %70
  %74 = load i8*, i8** %9, align 8
  %75 = getelementptr inbounds i8, i8* %74, i64 1
  %76 = load i8, i8* %75, align 1
  %77 = sext i8 %76 to i32
  %78 = icmp eq i32 %77, 33
  br i1 %78, label %79, label %173

79:                                               ; preds = %73
  %80 = load i8*, i8** %9, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 2
  %82 = load i8, i8* %81, align 1
  %83 = sext i8 %82 to i32
  %84 = icmp eq i32 %83, 45
  br i1 %84, label %85, label %173

85:                                               ; preds = %79
  %86 = load i8*, i8** %9, align 8
  %87 = getelementptr inbounds i8, i8* %86, i64 3
  %88 = load i8, i8* %87, align 1
  %89 = sext i8 %88 to i32
  %90 = icmp eq i32 %89, 45
  br i1 %90, label %91, label %173

91:                                               ; preds = %85
  store i64 5, i64* %12, align 8
  br label %92

92:                                               ; preds = %124, %91
  %93 = load i64, i64* %12, align 8
  %94 = load i64, i64* %10, align 8
  %95 = icmp ult i64 %93, %94
  br i1 %95, label %96, label %122

96:                                               ; preds = %92
  %97 = load i8*, i8** %9, align 8
  %98 = load i64, i64* %12, align 8
  %99 = sub i64 %98, 2
  %100 = getelementptr inbounds i8, i8* %97, i64 %99
  %101 = load i8, i8* %100, align 1
  %102 = sext i8 %101 to i32
  %103 = icmp eq i32 %102, 45
  br i1 %103, label %104, label %119

104:                                              ; preds = %96
  %105 = load i8*, i8** %9, align 8
  %106 = load i64, i64* %12, align 8
  %107 = sub i64 %106, 1
  %108 = getelementptr inbounds i8, i8* %105, i64 %107
  %109 = load i8, i8* %108, align 1
  %110 = sext i8 %109 to i32
  %111 = icmp eq i32 %110, 45
  br i1 %111, label %112, label %119

112:                                              ; preds = %104
  %113 = load i8*, i8** %9, align 8
  %114 = load i64, i64* %12, align 8
  %115 = getelementptr inbounds i8, i8* %113, i64 %114
  %116 = load i8, i8* %115, align 1
  %117 = sext i8 %116 to i32
  %118 = icmp eq i32 %117, 62
  br label %119

119:                                              ; preds = %112, %104, %96
  %120 = phi i1 [ false, %104 ], [ false, %96 ], [ %118, %112 ]
  %121 = xor i1 %120, true
  br label %122

122:                                              ; preds = %119, %92
  %123 = phi i1 [ false, %92 ], [ %121, %119 ]
  br i1 %123, label %124, label %127

124:                                              ; preds = %122
  %125 = load i64, i64* %12, align 8
  %126 = add i64 %125, 1
  store i64 %126, i64* %12, align 8
  br label %92

127:                                              ; preds = %122
  %128 = load i64, i64* %12, align 8
  %129 = add i64 %128, 1
  store i64 %129, i64* %12, align 8
  %130 = load i64, i64* %12, align 8
  %131 = load i64, i64* %10, align 8
  %132 = icmp ult i64 %130, %131
  br i1 %132, label %133, label %141

133:                                              ; preds = %127
  %134 = load i8*, i8** %9, align 8
  %135 = load i64, i64* %12, align 8
  %136 = getelementptr inbounds i8, i8* %134, i64 %135
  %137 = load i64, i64* %10, align 8
  %138 = load i64, i64* %12, align 8
  %139 = sub i64 %137, %138
  %140 = call i64 @is_empty(i8* %136, i64 %139)
  store i64 %140, i64* %13, align 8
  br label %141

141:                                              ; preds = %133, %127
  %142 = load i64, i64* %13, align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %172

144:                                              ; preds = %141
  %145 = load i64, i64* %12, align 8
  %146 = load i64, i64* %13, align 8
  %147 = add i64 %145, %146
  %148 = getelementptr inbounds %struct.buf, %struct.buf* %16, i32 0, i32 1
  store i64 %147, i64* %148, align 8
  %149 = load i32, i32* %11, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %169

151:                                              ; preds = %144
  %152 = load %struct.sd_markdown*, %struct.sd_markdown** %8, align 8
  %153 = getelementptr inbounds %struct.sd_markdown, %struct.sd_markdown* %152, i32 0, i32 1
  %154 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %153, i32 0, i32 0
  %155 = load i32 (%struct.buf.0*, %struct.buf.0*, i32)*, i32 (%struct.buf.0*, %struct.buf.0*, i32)** %154, align 8
  %156 = icmp ne i32 (%struct.buf.0*, %struct.buf.0*, i32)* %155, null
  br i1 %156, label %157, label %169

157:                                              ; preds = %151
  %158 = load %struct.sd_markdown*, %struct.sd_markdown** %8, align 8
  %159 = getelementptr inbounds %struct.sd_markdown, %struct.sd_markdown* %158, i32 0, i32 1
  %160 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %159, i32 0, i32 0
  %161 = load i32 (%struct.buf.0*, %struct.buf.0*, i32)*, i32 (%struct.buf.0*, %struct.buf.0*, i32)** %160, align 8
  %162 = load %struct.buf*, %struct.buf** %7, align 8
  %163 = bitcast %struct.buf* %162 to %struct.buf.0*
  %164 = bitcast %struct.buf* %16 to %struct.buf.0*
  %165 = load %struct.sd_markdown*, %struct.sd_markdown** %8, align 8
  %166 = getelementptr inbounds %struct.sd_markdown, %struct.sd_markdown* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = call i32 %161(%struct.buf.0* %163, %struct.buf.0* %164, i32 %167)
  br label %169

169:                                              ; preds = %157, %151, %144
  %170 = getelementptr inbounds %struct.buf, %struct.buf* %16, i32 0, i32 1
  %171 = load i64, i64* %170, align 8
  store i64 %171, i64* %6, align 8
  br label %316

172:                                              ; preds = %141
  br label %173

173:                                              ; preds = %172, %85, %79, %73, %70
  %174 = load i64, i64* %10, align 8
  %175 = icmp ugt i64 %174, 4
  br i1 %175, label %176, label %264

176:                                              ; preds = %173
  %177 = load i8*, i8** %9, align 8
  %178 = getelementptr inbounds i8, i8* %177, i64 1
  %179 = load i8, i8* %178, align 1
  %180 = sext i8 %179 to i32
  %181 = icmp eq i32 %180, 104
  br i1 %181, label %188, label %182

182:                                              ; preds = %176
  %183 = load i8*, i8** %9, align 8
  %184 = getelementptr inbounds i8, i8* %183, i64 1
  %185 = load i8, i8* %184, align 1
  %186 = sext i8 %185 to i32
  %187 = icmp eq i32 %186, 72
  br i1 %187, label %188, label %264

188:                                              ; preds = %182, %176
  %189 = load i8*, i8** %9, align 8
  %190 = getelementptr inbounds i8, i8* %189, i64 2
  %191 = load i8, i8* %190, align 1
  %192 = sext i8 %191 to i32
  %193 = icmp eq i32 %192, 114
  br i1 %193, label %200, label %194

194:                                              ; preds = %188
  %195 = load i8*, i8** %9, align 8
  %196 = getelementptr inbounds i8, i8* %195, i64 2
  %197 = load i8, i8* %196, align 1
  %198 = sext i8 %197 to i32
  %199 = icmp eq i32 %198, 82
  br i1 %199, label %200, label %264

200:                                              ; preds = %194, %188
  store i64 3, i64* %12, align 8
  br label %201

201:                                              ; preds = %214, %200
  %202 = load i64, i64* %12, align 8
  %203 = load i64, i64* %10, align 8
  %204 = icmp ult i64 %202, %203
  br i1 %204, label %205, label %212

205:                                              ; preds = %201
  %206 = load i8*, i8** %9, align 8
  %207 = load i64, i64* %12, align 8
  %208 = getelementptr inbounds i8, i8* %206, i64 %207
  %209 = load i8, i8* %208, align 1
  %210 = sext i8 %209 to i32
  %211 = icmp ne i32 %210, 62
  br label %212

212:                                              ; preds = %205, %201
  %213 = phi i1 [ false, %201 ], [ %211, %205 ]
  br i1 %213, label %214, label %217

214:                                              ; preds = %212
  %215 = load i64, i64* %12, align 8
  %216 = add i64 %215, 1
  store i64 %216, i64* %12, align 8
  br label %201

217:                                              ; preds = %212
  %218 = load i64, i64* %12, align 8
  %219 = add i64 %218, 1
  %220 = load i64, i64* %10, align 8
  %221 = icmp ult i64 %219, %220
  br i1 %221, label %222, label %263

222:                                              ; preds = %217
  %223 = load i64, i64* %12, align 8
  %224 = add i64 %223, 1
  store i64 %224, i64* %12, align 8
  %225 = load i8*, i8** %9, align 8
  %226 = load i64, i64* %12, align 8
  %227 = getelementptr inbounds i8, i8* %225, i64 %226
  %228 = load i64, i64* %10, align 8
  %229 = load i64, i64* %12, align 8
  %230 = sub i64 %228, %229
  %231 = call i64 @is_empty(i8* %227, i64 %230)
  store i64 %231, i64* %13, align 8
  %232 = load i64, i64* %13, align 8
  %233 = icmp ne i64 %232, 0
  br i1 %233, label %234, label %262

234:                                              ; preds = %222
  %235 = load i64, i64* %12, align 8
  %236 = load i64, i64* %13, align 8
  %237 = add i64 %235, %236
  %238 = getelementptr inbounds %struct.buf, %struct.buf* %16, i32 0, i32 1
  store i64 %237, i64* %238, align 8
  %239 = load i32, i32* %11, align 4
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %259

241:                                              ; preds = %234
  %242 = load %struct.sd_markdown*, %struct.sd_markdown** %8, align 8
  %243 = getelementptr inbounds %struct.sd_markdown, %struct.sd_markdown* %242, i32 0, i32 1
  %244 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %243, i32 0, i32 0
  %245 = load i32 (%struct.buf.0*, %struct.buf.0*, i32)*, i32 (%struct.buf.0*, %struct.buf.0*, i32)** %244, align 8
  %246 = icmp ne i32 (%struct.buf.0*, %struct.buf.0*, i32)* %245, null
  br i1 %246, label %247, label %259

247:                                              ; preds = %241
  %248 = load %struct.sd_markdown*, %struct.sd_markdown** %8, align 8
  %249 = getelementptr inbounds %struct.sd_markdown, %struct.sd_markdown* %248, i32 0, i32 1
  %250 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %249, i32 0, i32 0
  %251 = load i32 (%struct.buf.0*, %struct.buf.0*, i32)*, i32 (%struct.buf.0*, %struct.buf.0*, i32)** %250, align 8
  %252 = load %struct.buf*, %struct.buf** %7, align 8
  %253 = bitcast %struct.buf* %252 to %struct.buf.0*
  %254 = bitcast %struct.buf* %16 to %struct.buf.0*
  %255 = load %struct.sd_markdown*, %struct.sd_markdown** %8, align 8
  %256 = getelementptr inbounds %struct.sd_markdown, %struct.sd_markdown* %255, i32 0, i32 0
  %257 = load i32, i32* %256, align 8
  %258 = call i32 %251(%struct.buf.0* %253, %struct.buf.0* %254, i32 %257)
  br label %259

259:                                              ; preds = %247, %241, %234
  %260 = getelementptr inbounds %struct.buf, %struct.buf* %16, i32 0, i32 1
  %261 = load i64, i64* %260, align 8
  store i64 %261, i64* %6, align 8
  br label %316

262:                                              ; preds = %222
  br label %263

263:                                              ; preds = %262, %217
  br label %264

264:                                              ; preds = %263, %194, %182, %173
  store i64 0, i64* %6, align 8
  br label %316

265:                                              ; preds = %67
  %266 = load i8*, i8** %15, align 8
  %267 = load %struct.sd_markdown*, %struct.sd_markdown** %8, align 8
  %268 = load i8*, i8** %9, align 8
  %269 = load i64, i64* %10, align 8
  %270 = call i64 @htmlblock_end(i8* %266, %struct.sd_markdown* %267, i8* %268, i64 %269, i32 1)
  store i64 %270, i64* %14, align 8
  %271 = load i64, i64* %14, align 8
  %272 = icmp ne i64 %271, 0
  br i1 %272, label %287, label %273

273:                                              ; preds = %265
  %274 = load i8*, i8** %15, align 8
  %275 = call i64 @strcmp(i8* %274, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %276 = icmp ne i64 %275, 0
  br i1 %276, label %277, label %287

277:                                              ; preds = %273
  %278 = load i8*, i8** %15, align 8
  %279 = call i64 @strcmp(i8* %278, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %280 = icmp ne i64 %279, 0
  br i1 %280, label %281, label %287

281:                                              ; preds = %277
  %282 = load i8*, i8** %15, align 8
  %283 = load %struct.sd_markdown*, %struct.sd_markdown** %8, align 8
  %284 = load i8*, i8** %9, align 8
  %285 = load i64, i64* %10, align 8
  %286 = call i64 @htmlblock_end(i8* %282, %struct.sd_markdown* %283, i8* %284, i64 %285, i32 0)
  store i64 %286, i64* %14, align 8
  br label %287

287:                                              ; preds = %281, %277, %273, %265
  %288 = load i64, i64* %14, align 8
  %289 = icmp ne i64 %288, 0
  br i1 %289, label %291, label %290

290:                                              ; preds = %287
  store i64 0, i64* %6, align 8
  br label %316

291:                                              ; preds = %287
  %292 = load i64, i64* %14, align 8
  %293 = getelementptr inbounds %struct.buf, %struct.buf* %16, i32 0, i32 1
  store i64 %292, i64* %293, align 8
  %294 = load i32, i32* %11, align 4
  %295 = icmp ne i32 %294, 0
  br i1 %295, label %296, label %314

296:                                              ; preds = %291
  %297 = load %struct.sd_markdown*, %struct.sd_markdown** %8, align 8
  %298 = getelementptr inbounds %struct.sd_markdown, %struct.sd_markdown* %297, i32 0, i32 1
  %299 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %298, i32 0, i32 0
  %300 = load i32 (%struct.buf.0*, %struct.buf.0*, i32)*, i32 (%struct.buf.0*, %struct.buf.0*, i32)** %299, align 8
  %301 = icmp ne i32 (%struct.buf.0*, %struct.buf.0*, i32)* %300, null
  br i1 %301, label %302, label %314

302:                                              ; preds = %296
  %303 = load %struct.sd_markdown*, %struct.sd_markdown** %8, align 8
  %304 = getelementptr inbounds %struct.sd_markdown, %struct.sd_markdown* %303, i32 0, i32 1
  %305 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %304, i32 0, i32 0
  %306 = load i32 (%struct.buf.0*, %struct.buf.0*, i32)*, i32 (%struct.buf.0*, %struct.buf.0*, i32)** %305, align 8
  %307 = load %struct.buf*, %struct.buf** %7, align 8
  %308 = bitcast %struct.buf* %307 to %struct.buf.0*
  %309 = bitcast %struct.buf* %16 to %struct.buf.0*
  %310 = load %struct.sd_markdown*, %struct.sd_markdown** %8, align 8
  %311 = getelementptr inbounds %struct.sd_markdown, %struct.sd_markdown* %310, i32 0, i32 0
  %312 = load i32, i32* %311, align 8
  %313 = call i32 %306(%struct.buf.0* %308, %struct.buf.0* %309, i32 %312)
  br label %314

314:                                              ; preds = %302, %296, %291
  %315 = load i64, i64* %14, align 8
  store i64 %315, i64* %6, align 8
  br label %316

316:                                              ; preds = %314, %290, %264, %259, %169, %31
  %317 = load i64, i64* %6, align 8
  ret i64 %317
}

declare dso_local i8* @find_block_tag(i8*, i32) #1

declare dso_local i64 @is_empty(i8*, i64) #1

declare dso_local i64 @htmlblock_end(i8*, %struct.sd_markdown*, i8*, i64, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
