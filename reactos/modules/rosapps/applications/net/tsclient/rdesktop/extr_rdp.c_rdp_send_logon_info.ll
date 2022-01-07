; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_rdp.c_rdp_send_logon_info.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_rdp.c_rdp_send_logon_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, i64 }

@.str = private unnamed_addr constant [30 x i32] [i32 67, i32 58, i32 92, i32 87, i32 73, i32 78, i32 78, i32 84, i32 92, i32 83, i32 121, i32 115, i32 116, i32 101, i32 109, i32 51, i32 50, i32 92, i32 109, i32 115, i32 116, i32 115, i32 99, i32 97, i32 120, i32 46, i32 100, i32 108, i32 108, i32 0], align 4
@SEC_LOGON_INFO = common dso_local global i32 0, align 4
@SEC_ENCRYPT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Sending RDP4-style Logon packet\0A\00", align 1
@False = common dso_local global i32 0, align 4
@RDP_LOGON_BLOB = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"Sending RDP5-style Logon packet\0A\00", align 1
@RDP_LOGON_AUTO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"Called sec_init with packetlen %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [15 x i32] [i32 71, i32 84, i32 66, i32 44, i32 32, i32 110, i32 111, i32 114, i32 109, i32 97, i32 108, i32 116, i32 105, i32 100, i32 0], align 4
@.str.5 = private unnamed_addr constant [15 x i32] [i32 71, i32 84, i32 66, i32 44, i32 32, i32 115, i32 111, i32 109, i32 109, i32 97, i32 114, i32 116, i32 105, i32 100, i32 0], align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i32, i8*, i8*, i8*, i8*, i8*)* @rdp_send_logon_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rdp_send_logon_info(%struct.TYPE_7__* %0, i32 %1, i8* %2, i8* %3, i8* %4, i8* %5, i8* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32*, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %9, align 8
  store i32 %1, i32* %10, align 4
  store i8* %2, i8** %11, align 8
  store i8* %3, i8** %12, align 8
  store i8* %4, i8** %13, align 8
  store i8* %5, i8** %14, align 8
  store i8* %6, i8** %15, align 8
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %30 = call i8* @tcp_get_address(%struct.TYPE_7__* %29)
  store i8* %30, i8** %16, align 8
  %31 = load i8*, i8** %11, align 8
  %32 = call i32 @wcslen(i8* %31)
  %33 = mul nsw i32 2, %32
  store i32 %33, i32* %17, align 4
  %34 = load i8*, i8** %12, align 8
  %35 = call i32 @wcslen(i8* %34)
  %36 = mul nsw i32 2, %35
  store i32 %36, i32* %18, align 4
  %37 = load i8*, i8** %13, align 8
  %38 = call i32 @wcslen(i8* %37)
  %39 = mul nsw i32 2, %38
  store i32 %39, i32* %19, align 4
  %40 = load i8*, i8** %14, align 8
  %41 = call i32 @wcslen(i8* %40)
  %42 = mul nsw i32 2, %41
  store i32 %42, i32* %20, align 4
  %43 = load i8*, i8** %15, align 8
  %44 = call i32 @wcslen(i8* %43)
  %45 = mul nsw i32 2, %44
  store i32 %45, i32* %21, align 4
  %46 = load i8*, i8** %16, align 8
  %47 = call i32 @wcslen(i8* %46)
  %48 = mul nsw i32 2, %47
  store i32 %48, i32* %22, align 4
  %49 = call i32 @wcslen(i8* bitcast ([30 x i32]* @.str to i8*))
  %50 = mul nsw i32 2, %49
  store i32 %50, i32* %23, align 4
  store i32 0, i32* %24, align 4
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 3
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %7
  %56 = load i32, i32* @SEC_LOGON_INFO, align 4
  %57 = load i32, i32* @SEC_ENCRYPT, align 4
  %58 = or i32 %56, %57
  br label %61

59:                                               ; preds = %7
  %60 = load i32, i32* @SEC_LOGON_INFO, align 4
  br label %61

61:                                               ; preds = %59, %55
  %62 = phi i32 [ %58, %55 ], [ %60, %59 ]
  store i32 %62, i32* %25, align 4
  %63 = call i32 @time(i32* null)
  store i32 %63, i32* %27, align 4
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %61
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = icmp eq i32 1, %71
  br i1 %72, label %73, label %139

73:                                               ; preds = %68, %61
  %74 = call i32 @DEBUG_RDP5(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %76 = load i32, i32* %25, align 4
  %77 = load i32, i32* %17, align 4
  %78 = add nsw i32 18, %77
  %79 = load i32, i32* %18, align 4
  %80 = add nsw i32 %78, %79
  %81 = load i32, i32* %19, align 4
  %82 = add nsw i32 %80, %81
  %83 = load i32, i32* %20, align 4
  %84 = add nsw i32 %82, %83
  %85 = load i32, i32* %21, align 4
  %86 = add nsw i32 %84, %85
  %87 = add nsw i32 %86, 10
  %88 = call i32* @sec_init(%struct.TYPE_7__* %75, i32 %76, i32 %87)
  store i32* %88, i32** %26, align 8
  %89 = load i32*, i32** %26, align 8
  %90 = icmp eq i32* %89, null
  br i1 %90, label %91, label %93

91:                                               ; preds = %73
  %92 = load i32, i32* @False, align 4
  store i32 %92, i32* %8, align 4
  br label %426

93:                                               ; preds = %73
  %94 = load i32*, i32** %26, align 8
  %95 = call i32 @out_uint32(i32* %94, i32 0)
  %96 = load i32*, i32** %26, align 8
  %97 = load i32, i32* %10, align 4
  %98 = call i32 @out_uint32_le(i32* %96, i32 %97)
  %99 = load i32*, i32** %26, align 8
  %100 = load i32, i32* %17, align 4
  %101 = call i32 @out_uint16_le(i32* %99, i32 %100)
  %102 = load i32*, i32** %26, align 8
  %103 = load i32, i32* %18, align 4
  %104 = call i32 @out_uint16_le(i32* %102, i32 %103)
  %105 = load i32*, i32** %26, align 8
  %106 = load i32, i32* %19, align 4
  %107 = call i32 @out_uint16_le(i32* %105, i32 %106)
  %108 = load i32*, i32** %26, align 8
  %109 = load i32, i32* %20, align 4
  %110 = call i32 @out_uint16_le(i32* %108, i32 %109)
  %111 = load i32*, i32** %26, align 8
  %112 = load i32, i32* %21, align 4
  %113 = call i32 @out_uint16_le(i32* %111, i32 %112)
  %114 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %115 = load i32*, i32** %26, align 8
  %116 = load i8*, i8** %11, align 8
  %117 = load i32, i32* %17, align 4
  %118 = call i32 @rdp_out_unistr(%struct.TYPE_7__* %114, i32* %115, i8* %116, i32 %117)
  %119 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %120 = load i32*, i32** %26, align 8
  %121 = load i8*, i8** %12, align 8
  %122 = load i32, i32* %18, align 4
  %123 = call i32 @rdp_out_unistr(%struct.TYPE_7__* %119, i32* %120, i8* %121, i32 %122)
  %124 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %125 = load i32*, i32** %26, align 8
  %126 = load i8*, i8** %13, align 8
  %127 = load i32, i32* %19, align 4
  %128 = call i32 @rdp_out_unistr(%struct.TYPE_7__* %124, i32* %125, i8* %126, i32 %127)
  %129 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %130 = load i32*, i32** %26, align 8
  %131 = load i8*, i8** %14, align 8
  %132 = load i32, i32* %20, align 4
  %133 = call i32 @rdp_out_unistr(%struct.TYPE_7__* %129, i32* %130, i8* %131, i32 %132)
  %134 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %135 = load i32*, i32** %26, align 8
  %136 = load i8*, i8** %15, align 8
  %137 = load i32, i32* %21, align 4
  %138 = call i32 @rdp_out_unistr(%struct.TYPE_7__* %134, i32* %135, i8* %136, i32 %137)
  br label %419

139:                                              ; preds = %68
  %140 = load i32, i32* @RDP_LOGON_BLOB, align 4
  %141 = load i32, i32* %10, align 4
  %142 = or i32 %141, %140
  store i32 %142, i32* %10, align 4
  %143 = call i32 @DEBUG_RDP5(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %144 = load i32, i32* %10, align 4
  %145 = load i32, i32* @RDP_LOGON_AUTO, align 4
  %146 = and i32 %144, %145
  %147 = icmp ne i32 %146, 0
  %148 = zext i1 %147 to i64
  %149 = select i1 %147, i32 2, i32 0
  %150 = add nsw i32 12, %149
  %151 = load i32, i32* %10, align 4
  %152 = load i32, i32* @RDP_LOGON_BLOB, align 4
  %153 = and i32 %151, %152
  %154 = icmp ne i32 %153, 0
  %155 = zext i1 %154 to i64
  %156 = select i1 %154, i32 2, i32 0
  %157 = add nsw i32 %150, %156
  %158 = add nsw i32 %157, 2
  %159 = add nsw i32 %158, 2
  %160 = load i32, i32* %17, align 4
  %161 = icmp slt i32 0, %160
  br i1 %161, label %162, label %164

162:                                              ; preds = %139
  %163 = load i32, i32* %17, align 4
  br label %165

164:                                              ; preds = %139
  br label %165

165:                                              ; preds = %164, %162
  %166 = phi i32 [ %163, %162 ], [ 2, %164 ]
  %167 = add nsw i32 %159, %166
  %168 = load i32, i32* %18, align 4
  %169 = add nsw i32 %167, %168
  %170 = load i32, i32* %10, align 4
  %171 = load i32, i32* @RDP_LOGON_AUTO, align 4
  %172 = and i32 %170, %171
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %176

174:                                              ; preds = %165
  %175 = load i32, i32* %19, align 4
  br label %177

176:                                              ; preds = %165
  br label %177

177:                                              ; preds = %176, %174
  %178 = phi i32 [ %175, %174 ], [ 0, %176 ]
  %179 = add nsw i32 %169, %178
  %180 = add nsw i32 %179, 0
  %181 = load i32, i32* %10, align 4
  %182 = load i32, i32* @RDP_LOGON_BLOB, align 4
  %183 = and i32 %181, %182
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %191

185:                                              ; preds = %177
  %186 = load i32, i32* %10, align 4
  %187 = load i32, i32* @RDP_LOGON_AUTO, align 4
  %188 = and i32 %186, %187
  %189 = icmp ne i32 %188, 0
  %190 = xor i1 %189, true
  br label %191

191:                                              ; preds = %185, %177
  %192 = phi i1 [ false, %177 ], [ %190, %185 ]
  %193 = zext i1 %192 to i64
  %194 = select i1 %192, i32 2, i32 0
  %195 = add nsw i32 %180, %194
  %196 = load i32, i32* %20, align 4
  %197 = icmp slt i32 0, %196
  br i1 %197, label %198, label %200

198:                                              ; preds = %191
  %199 = load i32, i32* %20, align 4
  br label %201

200:                                              ; preds = %191
  br label %201

201:                                              ; preds = %200, %198
  %202 = phi i32 [ %199, %198 ], [ 2, %200 ]
  %203 = add nsw i32 %195, %202
  %204 = load i32, i32* %21, align 4
  %205 = icmp slt i32 0, %204
  br i1 %205, label %206, label %208

206:                                              ; preds = %201
  %207 = load i32, i32* %21, align 4
  br label %209

208:                                              ; preds = %201
  br label %209

209:                                              ; preds = %208, %206
  %210 = phi i32 [ %207, %206 ], [ 2, %208 ]
  %211 = add nsw i32 %203, %210
  %212 = add nsw i32 %211, 2
  %213 = add nsw i32 %212, 2
  %214 = load i32, i32* %22, align 4
  %215 = add nsw i32 %213, %214
  %216 = add nsw i32 %215, 2
  %217 = load i32, i32* %23, align 4
  %218 = add nsw i32 %216, %217
  %219 = add nsw i32 %218, 2
  %220 = add nsw i32 %219, 2
  %221 = add nsw i32 %220, 64
  %222 = add nsw i32 %221, 2
  %223 = add nsw i32 %222, 64
  %224 = add nsw i32 %223, 32
  store i32 %224, i32* %24, align 4
  %225 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %226 = load i32, i32* %25, align 4
  %227 = load i32, i32* %24, align 4
  %228 = call i32* @sec_init(%struct.TYPE_7__* %225, i32 %226, i32 %227)
  store i32* %228, i32** %26, align 8
  %229 = load i32, i32* %24, align 4
  %230 = sext i32 %229 to i64
  %231 = inttoptr i64 %230 to i8*
  %232 = call i32 @DEBUG_RDP5(i8* %231)
  %233 = load i32*, i32** %26, align 8
  %234 = icmp eq i32* %233, null
  br i1 %234, label %235, label %237

235:                                              ; preds = %209
  %236 = load i32, i32* @False, align 4
  store i32 %236, i32* %8, align 4
  br label %426

237:                                              ; preds = %209
  %238 = load i32*, i32** %26, align 8
  %239 = call i32 @out_uint32(i32* %238, i32 0)
  %240 = load i32*, i32** %26, align 8
  %241 = load i32, i32* %10, align 4
  %242 = call i32 @out_uint32_le(i32* %240, i32 %241)
  %243 = load i32*, i32** %26, align 8
  %244 = load i32, i32* %17, align 4
  %245 = call i32 @out_uint16_le(i32* %243, i32 %244)
  %246 = load i32*, i32** %26, align 8
  %247 = load i32, i32* %18, align 4
  %248 = call i32 @out_uint16_le(i32* %246, i32 %247)
  %249 = load i32, i32* %10, align 4
  %250 = load i32, i32* @RDP_LOGON_AUTO, align 4
  %251 = and i32 %249, %250
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %253, label %257

253:                                              ; preds = %237
  %254 = load i32*, i32** %26, align 8
  %255 = load i32, i32* %19, align 4
  %256 = call i32 @out_uint16_le(i32* %254, i32 %255)
  br label %257

257:                                              ; preds = %253, %237
  %258 = load i32, i32* %10, align 4
  %259 = load i32, i32* @RDP_LOGON_BLOB, align 4
  %260 = and i32 %258, %259
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %262, label %270

262:                                              ; preds = %257
  %263 = load i32, i32* %10, align 4
  %264 = load i32, i32* @RDP_LOGON_AUTO, align 4
  %265 = and i32 %263, %264
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %270, label %267

267:                                              ; preds = %262
  %268 = load i32*, i32** %26, align 8
  %269 = call i32 @out_uint16_le(i32* %268, i32 0)
  br label %270

270:                                              ; preds = %267, %262, %257
  %271 = load i32*, i32** %26, align 8
  %272 = load i32, i32* %20, align 4
  %273 = call i32 @out_uint16_le(i32* %271, i32 %272)
  %274 = load i32*, i32** %26, align 8
  %275 = load i32, i32* %21, align 4
  %276 = call i32 @out_uint16_le(i32* %274, i32 %275)
  %277 = load i32, i32* %17, align 4
  %278 = icmp slt i32 0, %277
  br i1 %278, label %279, label %285

279:                                              ; preds = %270
  %280 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %281 = load i32*, i32** %26, align 8
  %282 = load i8*, i8** %11, align 8
  %283 = load i32, i32* %17, align 4
  %284 = call i32 @rdp_out_unistr(%struct.TYPE_7__* %280, i32* %281, i8* %282, i32 %283)
  br label %288

285:                                              ; preds = %270
  %286 = load i32*, i32** %26, align 8
  %287 = call i32 @out_uint16_le(i32* %286, i32 0)
  br label %288

288:                                              ; preds = %285, %279
  %289 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %290 = load i32*, i32** %26, align 8
  %291 = load i8*, i8** %12, align 8
  %292 = load i32, i32* %18, align 4
  %293 = call i32 @rdp_out_unistr(%struct.TYPE_7__* %289, i32* %290, i8* %291, i32 %292)
  %294 = load i32, i32* %10, align 4
  %295 = load i32, i32* @RDP_LOGON_AUTO, align 4
  %296 = and i32 %294, %295
  %297 = icmp ne i32 %296, 0
  br i1 %297, label %298, label %304

298:                                              ; preds = %288
  %299 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %300 = load i32*, i32** %26, align 8
  %301 = load i8*, i8** %13, align 8
  %302 = load i32, i32* %19, align 4
  %303 = call i32 @rdp_out_unistr(%struct.TYPE_7__* %299, i32* %300, i8* %301, i32 %302)
  br label %304

304:                                              ; preds = %298, %288
  %305 = load i32, i32* %10, align 4
  %306 = load i32, i32* @RDP_LOGON_BLOB, align 4
  %307 = and i32 %305, %306
  %308 = icmp ne i32 %307, 0
  br i1 %308, label %309, label %317

309:                                              ; preds = %304
  %310 = load i32, i32* %10, align 4
  %311 = load i32, i32* @RDP_LOGON_AUTO, align 4
  %312 = and i32 %310, %311
  %313 = icmp ne i32 %312, 0
  br i1 %313, label %317, label %314

314:                                              ; preds = %309
  %315 = load i32*, i32** %26, align 8
  %316 = call i32 @out_uint16_le(i32* %315, i32 0)
  br label %317

317:                                              ; preds = %314, %309, %304
  %318 = load i32, i32* %20, align 4
  %319 = icmp slt i32 0, %318
  br i1 %319, label %320, label %326

320:                                              ; preds = %317
  %321 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %322 = load i32*, i32** %26, align 8
  %323 = load i8*, i8** %14, align 8
  %324 = load i32, i32* %20, align 4
  %325 = call i32 @rdp_out_unistr(%struct.TYPE_7__* %321, i32* %322, i8* %323, i32 %324)
  br label %329

326:                                              ; preds = %317
  %327 = load i32*, i32** %26, align 8
  %328 = call i32 @out_uint16_le(i32* %327, i32 0)
  br label %329

329:                                              ; preds = %326, %320
  %330 = load i32, i32* %21, align 4
  %331 = icmp slt i32 0, %330
  br i1 %331, label %332, label %338

332:                                              ; preds = %329
  %333 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %334 = load i32*, i32** %26, align 8
  %335 = load i8*, i8** %15, align 8
  %336 = load i32, i32* %21, align 4
  %337 = call i32 @rdp_out_unistr(%struct.TYPE_7__* %333, i32* %334, i8* %335, i32 %336)
  br label %341

338:                                              ; preds = %329
  %339 = load i32*, i32** %26, align 8
  %340 = call i32 @out_uint16_le(i32* %339, i32 0)
  br label %341

341:                                              ; preds = %338, %332
  %342 = load i32*, i32** %26, align 8
  %343 = call i32 @out_uint16_le(i32* %342, i32 2)
  %344 = load i32*, i32** %26, align 8
  %345 = load i32, i32* %22, align 4
  %346 = add nsw i32 %345, 2
  %347 = call i32 @out_uint16_le(i32* %344, i32 %346)
  %348 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %349 = load i32*, i32** %26, align 8
  %350 = load i8*, i8** %16, align 8
  %351 = load i32, i32* %22, align 4
  %352 = call i32 @rdp_out_unistr(%struct.TYPE_7__* %348, i32* %349, i8* %350, i32 %351)
  %353 = load i32*, i32** %26, align 8
  %354 = load i32, i32* %23, align 4
  %355 = add nsw i32 %354, 2
  %356 = call i32 @out_uint16_le(i32* %353, i32 %355)
  %357 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %358 = load i32*, i32** %26, align 8
  %359 = load i32, i32* %23, align 4
  %360 = call i32 @rdp_out_unistr(%struct.TYPE_7__* %357, i32* %358, i8* bitcast ([30 x i32]* @.str to i8*), i32 %359)
  %361 = call i32 @gmtime(i32* %27)
  %362 = call i32 @mktime(i32 %361)
  %363 = call i32 @localtime(i32* %27)
  %364 = call i32 @mktime(i32 %363)
  %365 = sub nsw i32 %362, %364
  %366 = sdiv i32 %365, 60
  store i32 %366, i32* %28, align 4
  %367 = load i32*, i32** %26, align 8
  %368 = load i32, i32* %28, align 4
  %369 = call i32 @out_uint32_le(i32* %367, i32 %368)
  %370 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %371 = load i32*, i32** %26, align 8
  %372 = call i32 @wcslen(i8* bitcast ([15 x i32]* @.str.4 to i8*))
  %373 = mul nsw i32 2, %372
  %374 = call i32 @rdp_out_unistr(%struct.TYPE_7__* %370, i32* %371, i8* bitcast ([15 x i32]* @.str.4 to i8*), i32 %373)
  %375 = load i32*, i32** %26, align 8
  %376 = call i32 @wcslen(i8* bitcast ([15 x i32]* @.str.4 to i8*))
  %377 = mul nsw i32 2, %376
  %378 = sub nsw i32 62, %377
  %379 = call i32 @out_uint8s(i32* %375, i32 %378)
  %380 = load i32*, i32** %26, align 8
  %381 = call i32 @out_uint32_le(i32* %380, i32 655360)
  %382 = load i32*, i32** %26, align 8
  %383 = call i32 @out_uint32_le(i32* %382, i32 327680)
  %384 = load i32*, i32** %26, align 8
  %385 = call i32 @out_uint32_le(i32* %384, i32 3)
  %386 = load i32*, i32** %26, align 8
  %387 = call i32 @out_uint32_le(i32* %386, i32 0)
  %388 = load i32*, i32** %26, align 8
  %389 = call i32 @out_uint32_le(i32* %388, i32 0)
  %390 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %391 = load i32*, i32** %26, align 8
  %392 = call i32 @wcslen(i8* bitcast ([15 x i32]* @.str.5 to i8*))
  %393 = mul nsw i32 2, %392
  %394 = call i32 @rdp_out_unistr(%struct.TYPE_7__* %390, i32* %391, i8* bitcast ([15 x i32]* @.str.5 to i8*), i32 %393)
  %395 = load i32*, i32** %26, align 8
  %396 = call i32 @wcslen(i8* bitcast ([15 x i32]* @.str.5 to i8*))
  %397 = mul nsw i32 2, %396
  %398 = sub nsw i32 62, %397
  %399 = call i32 @out_uint8s(i32* %395, i32 %398)
  %400 = load i32*, i32** %26, align 8
  %401 = call i32 @out_uint32_le(i32* %400, i32 196608)
  %402 = load i32*, i32** %26, align 8
  %403 = call i32 @out_uint32_le(i32* %402, i32 327680)
  %404 = load i32*, i32** %26, align 8
  %405 = call i32 @out_uint32_le(i32* %404, i32 2)
  %406 = load i32*, i32** %26, align 8
  %407 = call i32 @out_uint32(i32* %406, i32 0)
  %408 = load i32*, i32** %26, align 8
  %409 = call i32 @out_uint32_le(i32* %408, i32 -60)
  %410 = load i32*, i32** %26, align 8
  %411 = call i32 @out_uint32_le(i32* %410, i32 -2)
  %412 = load i32*, i32** %26, align 8
  %413 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %414 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %413, i32 0, i32 1
  %415 = load i32, i32* %414, align 4
  %416 = call i32 @out_uint32_le(i32* %412, i32 %415)
  %417 = load i32*, i32** %26, align 8
  %418 = call i32 @out_uint32(i32* %417, i32 0)
  br label %419

419:                                              ; preds = %341, %93
  %420 = load i32*, i32** %26, align 8
  %421 = call i32 @s_mark_end(i32* %420)
  %422 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %423 = load i32*, i32** %26, align 8
  %424 = load i32, i32* %25, align 4
  %425 = call i32 @sec_send(%struct.TYPE_7__* %422, i32* %423, i32 %424)
  store i32 %425, i32* %8, align 4
  br label %426

426:                                              ; preds = %419, %235, %91
  %427 = load i32, i32* %8, align 4
  ret i32 %427
}

declare dso_local i8* @tcp_get_address(%struct.TYPE_7__*) #1

declare dso_local i32 @wcslen(i8*) #1

declare dso_local i32 @time(i32*) #1

declare dso_local i32 @DEBUG_RDP5(i8*) #1

declare dso_local i32* @sec_init(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @out_uint32(i32*, i32) #1

declare dso_local i32 @out_uint32_le(i32*, i32) #1

declare dso_local i32 @out_uint16_le(i32*, i32) #1

declare dso_local i32 @rdp_out_unistr(%struct.TYPE_7__*, i32*, i8*, i32) #1

declare dso_local i32 @mktime(i32) #1

declare dso_local i32 @gmtime(i32*) #1

declare dso_local i32 @localtime(i32*) #1

declare dso_local i32 @out_uint8s(i32*, i32) #1

declare dso_local i32 @s_mark_end(i32*) #1

declare dso_local i32 @sec_send(%struct.TYPE_7__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
