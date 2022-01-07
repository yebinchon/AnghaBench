; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/windowscodecs/extr_regsvr.c_register_converters.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/windowscodecs/extr_regsvr.c_register_converters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regsvr_converter = type { i32*, i32*, i32**, i64, i64, i64 }

@ERROR_SUCCESS = common dso_local global i64 0, align 8
@HKEY_CLASSES_ROOT = common dso_local global i32 0, align 4
@clsid_keyname = common dso_local global i32* null, align 8
@KEY_READ = common dso_local global i32 0, align 4
@KEY_WRITE = common dso_local global i32 0, align 4
@CATID_WICFormatConverters = common dso_local global i32 0, align 4
@instance_keyname = common dso_local global i32* null, align 8
@clsid_valuename = common dso_local global i32 0, align 4
@REG_SZ = common dso_local global i32 0, align 4
@author_valuename = common dso_local global i32 0, align 4
@friendlyname_valuename = common dso_local global i32 0, align 4
@vendor_valuename = common dso_local global i32 0, align 4
@version_valuename = common dso_local global i32 0, align 4
@pixelformats_keyname = common dso_local global i32* null, align 8
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regsvr_converter*)* @register_converters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @register_converters(%struct.regsvr_converter* %0) #0 {
  %2 = alloca %struct.regsvr_converter*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca [39 x i32], align 16
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32**, align 8
  %12 = alloca i32, align 4
  store %struct.regsvr_converter* %0, %struct.regsvr_converter** %2, align 8
  %13 = load i64, i64* @ERROR_SUCCESS, align 8
  store i64 %13, i64* %3, align 8
  %14 = load i32, i32* @HKEY_CLASSES_ROOT, align 4
  %15 = load i32*, i32** @clsid_keyname, align 8
  %16 = load i32, i32* @KEY_READ, align 4
  %17 = load i32, i32* @KEY_WRITE, align 4
  %18 = or i32 %16, %17
  %19 = call i64 @RegCreateKeyExW(i32 %14, i32* %15, i32 0, i32* null, i32 0, i32 %18, i32* null, i32* %4, i32* null)
  store i64 %19, i64* %3, align 8
  %20 = load i64, i64* %3, align 8
  %21 = load i64, i64* @ERROR_SUCCESS, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %55

23:                                               ; preds = %1
  %24 = getelementptr inbounds [39 x i32], [39 x i32]* %5, i64 0, i64 0
  %25 = call i32 @StringFromGUID2(i32* @CATID_WICFormatConverters, i32* %24, i32 39)
  %26 = load i32, i32* %4, align 4
  %27 = getelementptr inbounds [39 x i32], [39 x i32]* %5, i64 0, i64 0
  %28 = load i32, i32* @KEY_READ, align 4
  %29 = load i32, i32* @KEY_WRITE, align 4
  %30 = or i32 %28, %29
  %31 = call i64 @RegCreateKeyExW(i32 %26, i32* %27, i32 0, i32* null, i32 0, i32 %30, i32* null, i32* %6, i32* null)
  store i64 %31, i64* %3, align 8
  %32 = load i64, i64* %3, align 8
  %33 = load i64, i64* @ERROR_SUCCESS, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %47

35:                                               ; preds = %23
  %36 = load i32, i32* %6, align 4
  %37 = load i32*, i32** @instance_keyname, align 8
  %38 = load i32, i32* @KEY_READ, align 4
  %39 = load i32, i32* @KEY_WRITE, align 4
  %40 = or i32 %38, %39
  %41 = call i64 @RegCreateKeyExW(i32 %36, i32* %37, i32 0, i32* null, i32 0, i32 %40, i32* null, i32* %7, i32* null)
  store i64 %41, i64* %3, align 8
  %42 = load i64, i64* %3, align 8
  %43 = load i64, i64* @ERROR_SUCCESS, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %35
  br label %270

46:                                               ; preds = %35
  br label %47

47:                                               ; preds = %46, %23
  %48 = load i64, i64* %3, align 8
  %49 = load i64, i64* @ERROR_SUCCESS, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %47
  %52 = load i32, i32* %4, align 4
  %53 = call i32 @RegCloseKey(i32 %52)
  br label %54

54:                                               ; preds = %51, %47
  br label %55

55:                                               ; preds = %54, %1
  %56 = load i64, i64* %3, align 8
  %57 = load i64, i64* @ERROR_SUCCESS, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %55
  br label %277

60:                                               ; preds = %55
  br label %61

61:                                               ; preds = %266, %60
  %62 = load i64, i64* %3, align 8
  %63 = load i64, i64* @ERROR_SUCCESS, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %70

65:                                               ; preds = %61
  %66 = load %struct.regsvr_converter*, %struct.regsvr_converter** %2, align 8
  %67 = getelementptr inbounds %struct.regsvr_converter, %struct.regsvr_converter* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = icmp ne i32* %68, null
  br label %70

70:                                               ; preds = %65, %61
  %71 = phi i1 [ false, %61 ], [ %69, %65 ]
  br i1 %71, label %72, label %269

72:                                               ; preds = %70
  %73 = load %struct.regsvr_converter*, %struct.regsvr_converter** %2, align 8
  %74 = getelementptr inbounds %struct.regsvr_converter, %struct.regsvr_converter* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds [39 x i32], [39 x i32]* %5, i64 0, i64 0
  %77 = call i32 @StringFromGUID2(i32* %75, i32* %76, i32 39)
  %78 = load i32, i32* %4, align 4
  %79 = getelementptr inbounds [39 x i32], [39 x i32]* %5, i64 0, i64 0
  %80 = load i32, i32* @KEY_READ, align 4
  %81 = load i32, i32* @KEY_WRITE, align 4
  %82 = or i32 %80, %81
  %83 = call i64 @RegCreateKeyExW(i32 %78, i32* %79, i32 0, i32* null, i32 0, i32 %82, i32* null, i32* %8, i32* null)
  store i64 %83, i64* %3, align 8
  %84 = load i64, i64* %3, align 8
  %85 = load i64, i64* @ERROR_SUCCESS, align 8
  %86 = icmp ne i64 %84, %85
  br i1 %86, label %87, label %88

87:                                               ; preds = %72
  br label %270

88:                                               ; preds = %72
  %89 = load %struct.regsvr_converter*, %struct.regsvr_converter** %2, align 8
  %90 = getelementptr inbounds %struct.regsvr_converter, %struct.regsvr_converter* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = getelementptr inbounds [39 x i32], [39 x i32]* %5, i64 0, i64 0
  %93 = call i32 @StringFromGUID2(i32* %91, i32* %92, i32 39)
  %94 = load i32, i32* %7, align 4
  %95 = getelementptr inbounds [39 x i32], [39 x i32]* %5, i64 0, i64 0
  %96 = load i32, i32* @KEY_READ, align 4
  %97 = load i32, i32* @KEY_WRITE, align 4
  %98 = or i32 %96, %97
  %99 = call i64 @RegCreateKeyExW(i32 %94, i32* %95, i32 0, i32* null, i32 0, i32 %98, i32* null, i32* %9, i32* null)
  store i64 %99, i64* %3, align 8
  %100 = load i64, i64* %3, align 8
  %101 = load i64, i64* @ERROR_SUCCESS, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %103, label %111

103:                                              ; preds = %88
  %104 = load i32, i32* %9, align 4
  %105 = load i32, i32* @clsid_valuename, align 4
  %106 = load i32, i32* @REG_SZ, align 4
  %107 = getelementptr inbounds [39 x i32], [39 x i32]* %5, i64 0, i64 0
  %108 = call i64 @RegSetValueExW(i32 %104, i32 %105, i32 0, i32 %106, i32* %107, i32 78)
  store i64 %108, i64* %3, align 8
  %109 = load i32, i32* %9, align 4
  %110 = call i32 @RegCloseKey(i32 %109)
  br label %111

111:                                              ; preds = %103, %88
  %112 = load i64, i64* %3, align 8
  %113 = load i64, i64* @ERROR_SUCCESS, align 8
  %114 = icmp ne i64 %112, %113
  br i1 %114, label %115, label %116

115:                                              ; preds = %111
  br label %263

116:                                              ; preds = %111
  %117 = load %struct.regsvr_converter*, %struct.regsvr_converter** %2, align 8
  %118 = getelementptr inbounds %struct.regsvr_converter, %struct.regsvr_converter* %117, i32 0, i32 5
  %119 = load i64, i64* %118, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %140

121:                                              ; preds = %116
  %122 = load i32, i32* %8, align 4
  %123 = load i32, i32* @author_valuename, align 4
  %124 = load i32, i32* @REG_SZ, align 4
  %125 = load %struct.regsvr_converter*, %struct.regsvr_converter** %2, align 8
  %126 = getelementptr inbounds %struct.regsvr_converter, %struct.regsvr_converter* %125, i32 0, i32 5
  %127 = load i64, i64* %126, align 8
  %128 = inttoptr i64 %127 to i32*
  %129 = load %struct.regsvr_converter*, %struct.regsvr_converter** %2, align 8
  %130 = getelementptr inbounds %struct.regsvr_converter, %struct.regsvr_converter* %129, i32 0, i32 5
  %131 = load i64, i64* %130, align 8
  %132 = call i64 @strlen(i64 %131)
  %133 = add nsw i64 %132, 1
  %134 = call i64 @RegSetValueExA(i32 %122, i32 %123, i32 0, i32 %124, i32* %128, i64 %133)
  store i64 %134, i64* %3, align 8
  %135 = load i64, i64* %3, align 8
  %136 = load i64, i64* @ERROR_SUCCESS, align 8
  %137 = icmp ne i64 %135, %136
  br i1 %137, label %138, label %139

138:                                              ; preds = %121
  br label %263

139:                                              ; preds = %121
  br label %140

140:                                              ; preds = %139, %116
  %141 = load %struct.regsvr_converter*, %struct.regsvr_converter** %2, align 8
  %142 = getelementptr inbounds %struct.regsvr_converter, %struct.regsvr_converter* %141, i32 0, i32 4
  %143 = load i64, i64* %142, align 8
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %164

145:                                              ; preds = %140
  %146 = load i32, i32* %8, align 4
  %147 = load i32, i32* @friendlyname_valuename, align 4
  %148 = load i32, i32* @REG_SZ, align 4
  %149 = load %struct.regsvr_converter*, %struct.regsvr_converter** %2, align 8
  %150 = getelementptr inbounds %struct.regsvr_converter, %struct.regsvr_converter* %149, i32 0, i32 4
  %151 = load i64, i64* %150, align 8
  %152 = inttoptr i64 %151 to i32*
  %153 = load %struct.regsvr_converter*, %struct.regsvr_converter** %2, align 8
  %154 = getelementptr inbounds %struct.regsvr_converter, %struct.regsvr_converter* %153, i32 0, i32 4
  %155 = load i64, i64* %154, align 8
  %156 = call i64 @strlen(i64 %155)
  %157 = add nsw i64 %156, 1
  %158 = call i64 @RegSetValueExA(i32 %146, i32 %147, i32 0, i32 %148, i32* %152, i64 %157)
  store i64 %158, i64* %3, align 8
  %159 = load i64, i64* %3, align 8
  %160 = load i64, i64* @ERROR_SUCCESS, align 8
  %161 = icmp ne i64 %159, %160
  br i1 %161, label %162, label %163

162:                                              ; preds = %145
  br label %263

163:                                              ; preds = %145
  br label %164

164:                                              ; preds = %163, %140
  %165 = load %struct.regsvr_converter*, %struct.regsvr_converter** %2, align 8
  %166 = getelementptr inbounds %struct.regsvr_converter, %struct.regsvr_converter* %165, i32 0, i32 1
  %167 = load i32*, i32** %166, align 8
  %168 = icmp ne i32* %167, null
  br i1 %168, label %169, label %185

169:                                              ; preds = %164
  %170 = load %struct.regsvr_converter*, %struct.regsvr_converter** %2, align 8
  %171 = getelementptr inbounds %struct.regsvr_converter, %struct.regsvr_converter* %170, i32 0, i32 1
  %172 = load i32*, i32** %171, align 8
  %173 = getelementptr inbounds [39 x i32], [39 x i32]* %5, i64 0, i64 0
  %174 = call i32 @StringFromGUID2(i32* %172, i32* %173, i32 39)
  %175 = load i32, i32* %8, align 4
  %176 = load i32, i32* @vendor_valuename, align 4
  %177 = load i32, i32* @REG_SZ, align 4
  %178 = getelementptr inbounds [39 x i32], [39 x i32]* %5, i64 0, i64 0
  %179 = call i64 @RegSetValueExW(i32 %175, i32 %176, i32 0, i32 %177, i32* %178, i32 78)
  store i64 %179, i64* %3, align 8
  %180 = load i64, i64* %3, align 8
  %181 = load i64, i64* @ERROR_SUCCESS, align 8
  %182 = icmp ne i64 %180, %181
  br i1 %182, label %183, label %184

183:                                              ; preds = %169
  br label %263

184:                                              ; preds = %169
  br label %185

185:                                              ; preds = %184, %164
  %186 = load %struct.regsvr_converter*, %struct.regsvr_converter** %2, align 8
  %187 = getelementptr inbounds %struct.regsvr_converter, %struct.regsvr_converter* %186, i32 0, i32 3
  %188 = load i64, i64* %187, align 8
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %209

190:                                              ; preds = %185
  %191 = load i32, i32* %8, align 4
  %192 = load i32, i32* @version_valuename, align 4
  %193 = load i32, i32* @REG_SZ, align 4
  %194 = load %struct.regsvr_converter*, %struct.regsvr_converter** %2, align 8
  %195 = getelementptr inbounds %struct.regsvr_converter, %struct.regsvr_converter* %194, i32 0, i32 3
  %196 = load i64, i64* %195, align 8
  %197 = inttoptr i64 %196 to i32*
  %198 = load %struct.regsvr_converter*, %struct.regsvr_converter** %2, align 8
  %199 = getelementptr inbounds %struct.regsvr_converter, %struct.regsvr_converter* %198, i32 0, i32 3
  %200 = load i64, i64* %199, align 8
  %201 = call i64 @strlen(i64 %200)
  %202 = add nsw i64 %201, 1
  %203 = call i64 @RegSetValueExA(i32 %191, i32 %192, i32 0, i32 %193, i32* %197, i64 %202)
  store i64 %203, i64* %3, align 8
  %204 = load i64, i64* %3, align 8
  %205 = load i64, i64* @ERROR_SUCCESS, align 8
  %206 = icmp ne i64 %204, %205
  br i1 %206, label %207, label %208

207:                                              ; preds = %190
  br label %263

208:                                              ; preds = %190
  br label %209

209:                                              ; preds = %208, %185
  %210 = load %struct.regsvr_converter*, %struct.regsvr_converter** %2, align 8
  %211 = getelementptr inbounds %struct.regsvr_converter, %struct.regsvr_converter* %210, i32 0, i32 2
  %212 = load i32**, i32*** %211, align 8
  %213 = icmp ne i32** %212, null
  br i1 %213, label %214, label %262

214:                                              ; preds = %209
  %215 = load i32, i32* %8, align 4
  %216 = load i32*, i32** @pixelformats_keyname, align 8
  %217 = load i32, i32* @KEY_READ, align 4
  %218 = load i32, i32* @KEY_WRITE, align 4
  %219 = or i32 %217, %218
  %220 = call i64 @RegCreateKeyExW(i32 %215, i32* %216, i32 0, i32* null, i32 0, i32 %219, i32* null, i32* %10, i32* null)
  store i64 %220, i64* %3, align 8
  %221 = load i64, i64* %3, align 8
  %222 = load i64, i64* @ERROR_SUCCESS, align 8
  %223 = icmp ne i64 %221, %222
  br i1 %223, label %224, label %225

224:                                              ; preds = %214
  br label %263

225:                                              ; preds = %214
  %226 = load %struct.regsvr_converter*, %struct.regsvr_converter** %2, align 8
  %227 = getelementptr inbounds %struct.regsvr_converter, %struct.regsvr_converter* %226, i32 0, i32 2
  %228 = load i32**, i32*** %227, align 8
  store i32** %228, i32*** %11, align 8
  br label %229

229:                                              ; preds = %251, %225
  %230 = load i32**, i32*** %11, align 8
  %231 = load i32*, i32** %230, align 8
  %232 = icmp ne i32* %231, null
  br i1 %232, label %233, label %254

233:                                              ; preds = %229
  %234 = load i32**, i32*** %11, align 8
  %235 = load i32*, i32** %234, align 8
  %236 = getelementptr inbounds [39 x i32], [39 x i32]* %5, i64 0, i64 0
  %237 = call i32 @StringFromGUID2(i32* %235, i32* %236, i32 39)
  %238 = load i32, i32* %10, align 4
  %239 = getelementptr inbounds [39 x i32], [39 x i32]* %5, i64 0, i64 0
  %240 = load i32, i32* @KEY_READ, align 4
  %241 = load i32, i32* @KEY_WRITE, align 4
  %242 = or i32 %240, %241
  %243 = call i64 @RegCreateKeyExW(i32 %238, i32* %239, i32 0, i32* null, i32 0, i32 %242, i32* null, i32* %12, i32* null)
  store i64 %243, i64* %3, align 8
  %244 = load i64, i64* %3, align 8
  %245 = load i64, i64* @ERROR_SUCCESS, align 8
  %246 = icmp ne i64 %244, %245
  br i1 %246, label %247, label %248

247:                                              ; preds = %233
  br label %254

248:                                              ; preds = %233
  %249 = load i32, i32* %12, align 4
  %250 = call i32 @RegCloseKey(i32 %249)
  br label %251

251:                                              ; preds = %248
  %252 = load i32**, i32*** %11, align 8
  %253 = getelementptr inbounds i32*, i32** %252, i32 1
  store i32** %253, i32*** %11, align 8
  br label %229

254:                                              ; preds = %247, %229
  %255 = load i32, i32* %10, align 4
  %256 = call i32 @RegCloseKey(i32 %255)
  %257 = load i64, i64* %3, align 8
  %258 = load i64, i64* @ERROR_SUCCESS, align 8
  %259 = icmp ne i64 %257, %258
  br i1 %259, label %260, label %261

260:                                              ; preds = %254
  br label %263

261:                                              ; preds = %254
  br label %262

262:                                              ; preds = %261, %209
  br label %263

263:                                              ; preds = %262, %260, %224, %207, %183, %162, %138, %115
  %264 = load i32, i32* %8, align 4
  %265 = call i32 @RegCloseKey(i32 %264)
  br label %266

266:                                              ; preds = %263
  %267 = load %struct.regsvr_converter*, %struct.regsvr_converter** %2, align 8
  %268 = getelementptr inbounds %struct.regsvr_converter, %struct.regsvr_converter* %267, i32 1
  store %struct.regsvr_converter* %268, %struct.regsvr_converter** %2, align 8
  br label %61

269:                                              ; preds = %70
  br label %270

270:                                              ; preds = %269, %87, %45
  %271 = load i32, i32* %7, align 4
  %272 = call i32 @RegCloseKey(i32 %271)
  %273 = load i32, i32* %6, align 4
  %274 = call i32 @RegCloseKey(i32 %273)
  %275 = load i32, i32* %4, align 4
  %276 = call i32 @RegCloseKey(i32 %275)
  br label %277

277:                                              ; preds = %270, %59
  %278 = load i64, i64* %3, align 8
  %279 = load i64, i64* @ERROR_SUCCESS, align 8
  %280 = icmp ne i64 %278, %279
  br i1 %280, label %281, label %284

281:                                              ; preds = %277
  %282 = load i64, i64* %3, align 8
  %283 = call i32 @HRESULT_FROM_WIN32(i64 %282)
  br label %286

284:                                              ; preds = %277
  %285 = load i32, i32* @S_OK, align 4
  br label %286

286:                                              ; preds = %284, %281
  %287 = phi i32 [ %283, %281 ], [ %285, %284 ]
  ret i32 %287
}

declare dso_local i64 @RegCreateKeyExW(i32, i32*, i32, i32*, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @StringFromGUID2(i32*, i32*, i32) #1

declare dso_local i32 @RegCloseKey(i32) #1

declare dso_local i64 @RegSetValueExW(i32, i32, i32, i32, i32*, i32) #1

declare dso_local i64 @RegSetValueExA(i32, i32, i32, i32, i32*, i64) #1

declare dso_local i64 @strlen(i64) #1

declare dso_local i32 @HRESULT_FROM_WIN32(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
