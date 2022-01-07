; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/windowscodecs/extr_regsvr.c_register_encoders.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/windowscodecs/extr_regsvr.c_register_encoders.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regsvr_encoder = type { i32*, i32*, i32*, i32**, i64, i64, i64, i64, i64 }

@ERROR_SUCCESS = common dso_local global i64 0, align 8
@HKEY_CLASSES_ROOT = common dso_local global i32 0, align 4
@clsid_keyname = common dso_local global i32* null, align 8
@KEY_READ = common dso_local global i32 0, align 4
@KEY_WRITE = common dso_local global i32 0, align 4
@CATID_WICBitmapEncoders = common dso_local global i32 0, align 4
@instance_keyname = common dso_local global i32* null, align 8
@clsid_valuename = common dso_local global i32 0, align 4
@REG_SZ = common dso_local global i32 0, align 4
@author_valuename = common dso_local global i32 0, align 4
@friendlyname_valuename = common dso_local global i32 0, align 4
@vendor_valuename = common dso_local global i32 0, align 4
@containerformat_valuename = common dso_local global i32 0, align 4
@version_valuename = common dso_local global i32 0, align 4
@mimetypes_valuename = common dso_local global i32 0, align 4
@extensions_valuename = common dso_local global i32 0, align 4
@formats_keyname = common dso_local global i32* null, align 8
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regsvr_encoder*)* @register_encoders to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @register_encoders(%struct.regsvr_encoder* %0) #0 {
  %2 = alloca %struct.regsvr_encoder*, align 8
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
  store %struct.regsvr_encoder* %0, %struct.regsvr_encoder** %2, align 8
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
  %25 = call i32 @StringFromGUID2(i32* @CATID_WICBitmapEncoders, i32* %24, i32 39)
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
  br label %339

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
  br label %346

60:                                               ; preds = %55
  br label %61

61:                                               ; preds = %335, %60
  %62 = load i64, i64* %3, align 8
  %63 = load i64, i64* @ERROR_SUCCESS, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %70

65:                                               ; preds = %61
  %66 = load %struct.regsvr_encoder*, %struct.regsvr_encoder** %2, align 8
  %67 = getelementptr inbounds %struct.regsvr_encoder, %struct.regsvr_encoder* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = icmp ne i32* %68, null
  br label %70

70:                                               ; preds = %65, %61
  %71 = phi i1 [ false, %61 ], [ %69, %65 ]
  br i1 %71, label %72, label %338

72:                                               ; preds = %70
  %73 = load %struct.regsvr_encoder*, %struct.regsvr_encoder** %2, align 8
  %74 = getelementptr inbounds %struct.regsvr_encoder, %struct.regsvr_encoder* %73, i32 0, i32 0
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
  br label %339

88:                                               ; preds = %72
  %89 = load %struct.regsvr_encoder*, %struct.regsvr_encoder** %2, align 8
  %90 = getelementptr inbounds %struct.regsvr_encoder, %struct.regsvr_encoder* %89, i32 0, i32 0
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
  br label %332

116:                                              ; preds = %111
  %117 = load %struct.regsvr_encoder*, %struct.regsvr_encoder** %2, align 8
  %118 = getelementptr inbounds %struct.regsvr_encoder, %struct.regsvr_encoder* %117, i32 0, i32 8
  %119 = load i64, i64* %118, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %140

121:                                              ; preds = %116
  %122 = load i32, i32* %8, align 4
  %123 = load i32, i32* @author_valuename, align 4
  %124 = load i32, i32* @REG_SZ, align 4
  %125 = load %struct.regsvr_encoder*, %struct.regsvr_encoder** %2, align 8
  %126 = getelementptr inbounds %struct.regsvr_encoder, %struct.regsvr_encoder* %125, i32 0, i32 8
  %127 = load i64, i64* %126, align 8
  %128 = inttoptr i64 %127 to i32*
  %129 = load %struct.regsvr_encoder*, %struct.regsvr_encoder** %2, align 8
  %130 = getelementptr inbounds %struct.regsvr_encoder, %struct.regsvr_encoder* %129, i32 0, i32 8
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
  br label %332

139:                                              ; preds = %121
  br label %140

140:                                              ; preds = %139, %116
  %141 = load %struct.regsvr_encoder*, %struct.regsvr_encoder** %2, align 8
  %142 = getelementptr inbounds %struct.regsvr_encoder, %struct.regsvr_encoder* %141, i32 0, i32 7
  %143 = load i64, i64* %142, align 8
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %164

145:                                              ; preds = %140
  %146 = load i32, i32* %8, align 4
  %147 = load i32, i32* @friendlyname_valuename, align 4
  %148 = load i32, i32* @REG_SZ, align 4
  %149 = load %struct.regsvr_encoder*, %struct.regsvr_encoder** %2, align 8
  %150 = getelementptr inbounds %struct.regsvr_encoder, %struct.regsvr_encoder* %149, i32 0, i32 7
  %151 = load i64, i64* %150, align 8
  %152 = inttoptr i64 %151 to i32*
  %153 = load %struct.regsvr_encoder*, %struct.regsvr_encoder** %2, align 8
  %154 = getelementptr inbounds %struct.regsvr_encoder, %struct.regsvr_encoder* %153, i32 0, i32 7
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
  br label %332

163:                                              ; preds = %145
  br label %164

164:                                              ; preds = %163, %140
  %165 = load %struct.regsvr_encoder*, %struct.regsvr_encoder** %2, align 8
  %166 = getelementptr inbounds %struct.regsvr_encoder, %struct.regsvr_encoder* %165, i32 0, i32 1
  %167 = load i32*, i32** %166, align 8
  %168 = icmp ne i32* %167, null
  br i1 %168, label %169, label %185

169:                                              ; preds = %164
  %170 = load %struct.regsvr_encoder*, %struct.regsvr_encoder** %2, align 8
  %171 = getelementptr inbounds %struct.regsvr_encoder, %struct.regsvr_encoder* %170, i32 0, i32 1
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
  br label %332

184:                                              ; preds = %169
  br label %185

185:                                              ; preds = %184, %164
  %186 = load %struct.regsvr_encoder*, %struct.regsvr_encoder** %2, align 8
  %187 = getelementptr inbounds %struct.regsvr_encoder, %struct.regsvr_encoder* %186, i32 0, i32 2
  %188 = load i32*, i32** %187, align 8
  %189 = icmp ne i32* %188, null
  br i1 %189, label %190, label %206

190:                                              ; preds = %185
  %191 = load %struct.regsvr_encoder*, %struct.regsvr_encoder** %2, align 8
  %192 = getelementptr inbounds %struct.regsvr_encoder, %struct.regsvr_encoder* %191, i32 0, i32 2
  %193 = load i32*, i32** %192, align 8
  %194 = getelementptr inbounds [39 x i32], [39 x i32]* %5, i64 0, i64 0
  %195 = call i32 @StringFromGUID2(i32* %193, i32* %194, i32 39)
  %196 = load i32, i32* %8, align 4
  %197 = load i32, i32* @containerformat_valuename, align 4
  %198 = load i32, i32* @REG_SZ, align 4
  %199 = getelementptr inbounds [39 x i32], [39 x i32]* %5, i64 0, i64 0
  %200 = call i64 @RegSetValueExW(i32 %196, i32 %197, i32 0, i32 %198, i32* %199, i32 78)
  store i64 %200, i64* %3, align 8
  %201 = load i64, i64* %3, align 8
  %202 = load i64, i64* @ERROR_SUCCESS, align 8
  %203 = icmp ne i64 %201, %202
  br i1 %203, label %204, label %205

204:                                              ; preds = %190
  br label %332

205:                                              ; preds = %190
  br label %206

206:                                              ; preds = %205, %185
  %207 = load %struct.regsvr_encoder*, %struct.regsvr_encoder** %2, align 8
  %208 = getelementptr inbounds %struct.regsvr_encoder, %struct.regsvr_encoder* %207, i32 0, i32 6
  %209 = load i64, i64* %208, align 8
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %211, label %230

211:                                              ; preds = %206
  %212 = load i32, i32* %8, align 4
  %213 = load i32, i32* @version_valuename, align 4
  %214 = load i32, i32* @REG_SZ, align 4
  %215 = load %struct.regsvr_encoder*, %struct.regsvr_encoder** %2, align 8
  %216 = getelementptr inbounds %struct.regsvr_encoder, %struct.regsvr_encoder* %215, i32 0, i32 6
  %217 = load i64, i64* %216, align 8
  %218 = inttoptr i64 %217 to i32*
  %219 = load %struct.regsvr_encoder*, %struct.regsvr_encoder** %2, align 8
  %220 = getelementptr inbounds %struct.regsvr_encoder, %struct.regsvr_encoder* %219, i32 0, i32 6
  %221 = load i64, i64* %220, align 8
  %222 = call i64 @strlen(i64 %221)
  %223 = add nsw i64 %222, 1
  %224 = call i64 @RegSetValueExA(i32 %212, i32 %213, i32 0, i32 %214, i32* %218, i64 %223)
  store i64 %224, i64* %3, align 8
  %225 = load i64, i64* %3, align 8
  %226 = load i64, i64* @ERROR_SUCCESS, align 8
  %227 = icmp ne i64 %225, %226
  br i1 %227, label %228, label %229

228:                                              ; preds = %211
  br label %332

229:                                              ; preds = %211
  br label %230

230:                                              ; preds = %229, %206
  %231 = load %struct.regsvr_encoder*, %struct.regsvr_encoder** %2, align 8
  %232 = getelementptr inbounds %struct.regsvr_encoder, %struct.regsvr_encoder* %231, i32 0, i32 5
  %233 = load i64, i64* %232, align 8
  %234 = icmp ne i64 %233, 0
  br i1 %234, label %235, label %254

235:                                              ; preds = %230
  %236 = load i32, i32* %8, align 4
  %237 = load i32, i32* @mimetypes_valuename, align 4
  %238 = load i32, i32* @REG_SZ, align 4
  %239 = load %struct.regsvr_encoder*, %struct.regsvr_encoder** %2, align 8
  %240 = getelementptr inbounds %struct.regsvr_encoder, %struct.regsvr_encoder* %239, i32 0, i32 5
  %241 = load i64, i64* %240, align 8
  %242 = inttoptr i64 %241 to i32*
  %243 = load %struct.regsvr_encoder*, %struct.regsvr_encoder** %2, align 8
  %244 = getelementptr inbounds %struct.regsvr_encoder, %struct.regsvr_encoder* %243, i32 0, i32 5
  %245 = load i64, i64* %244, align 8
  %246 = call i64 @strlen(i64 %245)
  %247 = add nsw i64 %246, 1
  %248 = call i64 @RegSetValueExA(i32 %236, i32 %237, i32 0, i32 %238, i32* %242, i64 %247)
  store i64 %248, i64* %3, align 8
  %249 = load i64, i64* %3, align 8
  %250 = load i64, i64* @ERROR_SUCCESS, align 8
  %251 = icmp ne i64 %249, %250
  br i1 %251, label %252, label %253

252:                                              ; preds = %235
  br label %332

253:                                              ; preds = %235
  br label %254

254:                                              ; preds = %253, %230
  %255 = load %struct.regsvr_encoder*, %struct.regsvr_encoder** %2, align 8
  %256 = getelementptr inbounds %struct.regsvr_encoder, %struct.regsvr_encoder* %255, i32 0, i32 4
  %257 = load i64, i64* %256, align 8
  %258 = icmp ne i64 %257, 0
  br i1 %258, label %259, label %278

259:                                              ; preds = %254
  %260 = load i32, i32* %8, align 4
  %261 = load i32, i32* @extensions_valuename, align 4
  %262 = load i32, i32* @REG_SZ, align 4
  %263 = load %struct.regsvr_encoder*, %struct.regsvr_encoder** %2, align 8
  %264 = getelementptr inbounds %struct.regsvr_encoder, %struct.regsvr_encoder* %263, i32 0, i32 4
  %265 = load i64, i64* %264, align 8
  %266 = inttoptr i64 %265 to i32*
  %267 = load %struct.regsvr_encoder*, %struct.regsvr_encoder** %2, align 8
  %268 = getelementptr inbounds %struct.regsvr_encoder, %struct.regsvr_encoder* %267, i32 0, i32 4
  %269 = load i64, i64* %268, align 8
  %270 = call i64 @strlen(i64 %269)
  %271 = add nsw i64 %270, 1
  %272 = call i64 @RegSetValueExA(i32 %260, i32 %261, i32 0, i32 %262, i32* %266, i64 %271)
  store i64 %272, i64* %3, align 8
  %273 = load i64, i64* %3, align 8
  %274 = load i64, i64* @ERROR_SUCCESS, align 8
  %275 = icmp ne i64 %273, %274
  br i1 %275, label %276, label %277

276:                                              ; preds = %259
  br label %332

277:                                              ; preds = %259
  br label %278

278:                                              ; preds = %277, %254
  %279 = load %struct.regsvr_encoder*, %struct.regsvr_encoder** %2, align 8
  %280 = getelementptr inbounds %struct.regsvr_encoder, %struct.regsvr_encoder* %279, i32 0, i32 3
  %281 = load i32**, i32*** %280, align 8
  %282 = icmp ne i32** %281, null
  br i1 %282, label %283, label %331

283:                                              ; preds = %278
  %284 = load i32, i32* %8, align 4
  %285 = load i32*, i32** @formats_keyname, align 8
  %286 = load i32, i32* @KEY_READ, align 4
  %287 = load i32, i32* @KEY_WRITE, align 4
  %288 = or i32 %286, %287
  %289 = call i64 @RegCreateKeyExW(i32 %284, i32* %285, i32 0, i32* null, i32 0, i32 %288, i32* null, i32* %10, i32* null)
  store i64 %289, i64* %3, align 8
  %290 = load i64, i64* %3, align 8
  %291 = load i64, i64* @ERROR_SUCCESS, align 8
  %292 = icmp ne i64 %290, %291
  br i1 %292, label %293, label %294

293:                                              ; preds = %283
  br label %332

294:                                              ; preds = %283
  %295 = load %struct.regsvr_encoder*, %struct.regsvr_encoder** %2, align 8
  %296 = getelementptr inbounds %struct.regsvr_encoder, %struct.regsvr_encoder* %295, i32 0, i32 3
  %297 = load i32**, i32*** %296, align 8
  store i32** %297, i32*** %11, align 8
  br label %298

298:                                              ; preds = %320, %294
  %299 = load i32**, i32*** %11, align 8
  %300 = load i32*, i32** %299, align 8
  %301 = icmp ne i32* %300, null
  br i1 %301, label %302, label %323

302:                                              ; preds = %298
  %303 = load i32**, i32*** %11, align 8
  %304 = load i32*, i32** %303, align 8
  %305 = getelementptr inbounds [39 x i32], [39 x i32]* %5, i64 0, i64 0
  %306 = call i32 @StringFromGUID2(i32* %304, i32* %305, i32 39)
  %307 = load i32, i32* %10, align 4
  %308 = getelementptr inbounds [39 x i32], [39 x i32]* %5, i64 0, i64 0
  %309 = load i32, i32* @KEY_READ, align 4
  %310 = load i32, i32* @KEY_WRITE, align 4
  %311 = or i32 %309, %310
  %312 = call i64 @RegCreateKeyExW(i32 %307, i32* %308, i32 0, i32* null, i32 0, i32 %311, i32* null, i32* %12, i32* null)
  store i64 %312, i64* %3, align 8
  %313 = load i64, i64* %3, align 8
  %314 = load i64, i64* @ERROR_SUCCESS, align 8
  %315 = icmp ne i64 %313, %314
  br i1 %315, label %316, label %317

316:                                              ; preds = %302
  br label %323

317:                                              ; preds = %302
  %318 = load i32, i32* %12, align 4
  %319 = call i32 @RegCloseKey(i32 %318)
  br label %320

320:                                              ; preds = %317
  %321 = load i32**, i32*** %11, align 8
  %322 = getelementptr inbounds i32*, i32** %321, i32 1
  store i32** %322, i32*** %11, align 8
  br label %298

323:                                              ; preds = %316, %298
  %324 = load i32, i32* %10, align 4
  %325 = call i32 @RegCloseKey(i32 %324)
  %326 = load i64, i64* %3, align 8
  %327 = load i64, i64* @ERROR_SUCCESS, align 8
  %328 = icmp ne i64 %326, %327
  br i1 %328, label %329, label %330

329:                                              ; preds = %323
  br label %332

330:                                              ; preds = %323
  br label %331

331:                                              ; preds = %330, %278
  br label %332

332:                                              ; preds = %331, %329, %293, %276, %252, %228, %204, %183, %162, %138, %115
  %333 = load i32, i32* %8, align 4
  %334 = call i32 @RegCloseKey(i32 %333)
  br label %335

335:                                              ; preds = %332
  %336 = load %struct.regsvr_encoder*, %struct.regsvr_encoder** %2, align 8
  %337 = getelementptr inbounds %struct.regsvr_encoder, %struct.regsvr_encoder* %336, i32 1
  store %struct.regsvr_encoder* %337, %struct.regsvr_encoder** %2, align 8
  br label %61

338:                                              ; preds = %70
  br label %339

339:                                              ; preds = %338, %87, %45
  %340 = load i32, i32* %7, align 4
  %341 = call i32 @RegCloseKey(i32 %340)
  %342 = load i32, i32* %6, align 4
  %343 = call i32 @RegCloseKey(i32 %342)
  %344 = load i32, i32* %4, align 4
  %345 = call i32 @RegCloseKey(i32 %344)
  br label %346

346:                                              ; preds = %339, %59
  %347 = load i64, i64* %3, align 8
  %348 = load i64, i64* @ERROR_SUCCESS, align 8
  %349 = icmp ne i64 %347, %348
  br i1 %349, label %350, label %353

350:                                              ; preds = %346
  %351 = load i64, i64* %3, align 8
  %352 = call i32 @HRESULT_FROM_WIN32(i64 %351)
  br label %355

353:                                              ; preds = %346
  %354 = load i32, i32* @S_OK, align 4
  br label %355

355:                                              ; preds = %353, %350
  %356 = phi i32 [ %352, %350 ], [ %354, %353 ]
  ret i32 %356
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
