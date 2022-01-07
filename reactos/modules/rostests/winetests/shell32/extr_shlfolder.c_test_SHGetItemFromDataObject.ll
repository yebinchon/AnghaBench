; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/shell32/extr_shlfolder.c_test_SHGetItemFromDataObject.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/shell32/extr_shlfolder.c_test_SHGetItemFromDataObject.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IID_IShellItem = common dso_local global i32 0, align 4
@E_INVALIDARG = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [12 x i8] c"got 0x%08x\0A\00", align 1
@IID_IShellView = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@SHCONTF_NONFOLDERS = common dso_local global i32 0, align 4
@SHCONTF_FOLDERS = common dso_local global i32 0, align 4
@SHCONTF_INCLUDEHIDDEN = common dso_local global i32 0, align 4
@IID_IDataObject = common dso_local global i32 0, align 4
@DOGIF_DEFAULT = common dso_local global i32 0, align 4
@DOGIF_TRAVERSE_LINK = common dso_local global i32 0, align 4
@DOGIF_NO_HDROP = common dso_local global i32 0, align 4
@DOGIF_NO_URL = common dso_local global i32 0, align 4
@DOGIF_ONLY_IF_ONE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"No file(s) found - skipping single-file test.\0A\00", align 1
@E_FAIL = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [52 x i8] c"zero or one file found - skipping multi-file test.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_SHGetItemFromDataObject to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_SHGetItemFromDataObject() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [5 x i32], align 16
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = bitcast i32** %3 to i8**
  %12 = call i64 @pSHGetItemFromDataObject(i32* null, i32 0, i32* @IID_IShellItem, i8** %11)
  store i64 %12, i64* %4, align 8
  %13 = load i64, i64* %4, align 8
  %14 = load i64, i64* @E_INVALIDARG, align 8
  %15 = icmp eq i64 %13, %14
  %16 = zext i1 %15 to i32
  %17 = load i64, i64* %4, align 8
  %18 = call i32 @ok(i32 %16, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 %17)
  %19 = call i32 @SHGetDesktopFolder(i32** %1)
  %20 = load i32*, i32** %1, align 8
  %21 = bitcast i32** %3 to i8**
  %22 = call i64 @IShellFolder_CreateViewObject(i32* %20, i32* null, i32* @IID_IShellView, i8** %21)
  store i64 %22, i64* %4, align 8
  %23 = load i64, i64* %4, align 8
  %24 = load i64, i64* @S_OK, align 8
  %25 = icmp eq i64 %23, %24
  %26 = zext i1 %25 to i32
  %27 = load i64, i64* %4, align 8
  %28 = call i32 @ok(i32 %26, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 %27)
  %29 = load i64, i64* %4, align 8
  %30 = call i64 @SUCCEEDED(i64 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %304

32:                                               ; preds = %0
  %33 = load i32, i32* @SHCONTF_NONFOLDERS, align 4
  %34 = load i32, i32* @SHCONTF_FOLDERS, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @SHCONTF_INCLUDEHIDDEN, align 4
  %37 = or i32 %35, %36
  store i32 %37, i32* %7, align 4
  %38 = load i32*, i32** %1, align 8
  %39 = load i32, i32* %7, align 4
  %40 = call i64 @IShellFolder_EnumObjects(i32* %38, i32* null, i32 %39, i32** %5)
  store i64 %40, i64* %4, align 8
  %41 = load i64, i64* %4, align 8
  %42 = load i64, i64* @S_OK, align 8
  %43 = icmp eq i64 %41, %42
  %44 = zext i1 %43 to i32
  %45 = load i64, i64* %4, align 8
  %46 = call i32 @ok(i32 %44, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 %45)
  %47 = load i64, i64* %4, align 8
  %48 = call i64 @SUCCEEDED(i64 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %301

50:                                               ; preds = %32
  store i32 0, i32* %9, align 4
  store i32 0, i32* %9, align 4
  br label %51

51:                                               ; preds = %64, %50
  %52 = load i32, i32* %9, align 4
  %53 = icmp slt i32 %52, 5
  br i1 %53, label %54, label %67

54:                                               ; preds = %51
  %55 = load i32*, i32** %5, align 8
  %56 = load i32, i32* %9, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [5 x i32], [5 x i32]* %8, i64 0, i64 %57
  %59 = call i64 @IEnumIDList_Next(i32* %55, i32 1, i32* %58, i32* null)
  %60 = load i64, i64* @S_OK, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %54
  br label %67

63:                                               ; preds = %54
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %9, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %9, align 4
  br label %51

67:                                               ; preds = %62, %51
  %68 = load i32, i32* %9, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %173

70:                                               ; preds = %67
  %71 = load i32*, i32** %1, align 8
  %72 = getelementptr inbounds [5 x i32], [5 x i32]* %8, i64 0, i64 0
  %73 = bitcast i32** %6 to i8**
  %74 = call i64 @IShellFolder_GetUIObjectOf(i32* %71, i32* null, i32 1, i32* %72, i32* @IID_IDataObject, i32* null, i8** %73)
  store i64 %74, i64* %4, align 8
  %75 = load i64, i64* %4, align 8
  %76 = load i64, i64* @S_OK, align 8
  %77 = icmp eq i64 %75, %76
  %78 = zext i1 %77 to i32
  %79 = load i64, i64* %4, align 8
  %80 = call i32 @ok(i32 %78, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 %79)
  %81 = load i64, i64* %4, align 8
  %82 = call i64 @SUCCEEDED(i64 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %172

84:                                               ; preds = %70
  %85 = load i32*, i32** %6, align 8
  %86 = load i32, i32* @DOGIF_DEFAULT, align 4
  %87 = bitcast i32** %2 to i8**
  %88 = call i64 @pSHGetItemFromDataObject(i32* %85, i32 %86, i32* @IID_IShellItem, i8** %87)
  store i64 %88, i64* %4, align 8
  %89 = load i64, i64* %4, align 8
  %90 = load i64, i64* @S_OK, align 8
  %91 = icmp eq i64 %89, %90
  %92 = zext i1 %91 to i32
  %93 = load i64, i64* %4, align 8
  %94 = call i32 @ok(i32 %92, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 %93)
  %95 = load i64, i64* %4, align 8
  %96 = call i64 @SUCCEEDED(i64 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %84
  %99 = load i32*, i32** %2, align 8
  %100 = call i32 @IShellItem_Release(i32* %99)
  br label %101

101:                                              ; preds = %98, %84
  %102 = load i32*, i32** %6, align 8
  %103 = load i32, i32* @DOGIF_TRAVERSE_LINK, align 4
  %104 = bitcast i32** %2 to i8**
  %105 = call i64 @pSHGetItemFromDataObject(i32* %102, i32 %103, i32* @IID_IShellItem, i8** %104)
  store i64 %105, i64* %4, align 8
  %106 = load i64, i64* %4, align 8
  %107 = load i64, i64* @S_OK, align 8
  %108 = icmp eq i64 %106, %107
  %109 = zext i1 %108 to i32
  %110 = load i64, i64* %4, align 8
  %111 = call i32 @ok(i32 %109, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 %110)
  %112 = load i64, i64* %4, align 8
  %113 = call i64 @SUCCEEDED(i64 %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %101
  %116 = load i32*, i32** %2, align 8
  %117 = call i32 @IShellItem_Release(i32* %116)
  br label %118

118:                                              ; preds = %115, %101
  %119 = load i32*, i32** %6, align 8
  %120 = load i32, i32* @DOGIF_NO_HDROP, align 4
  %121 = bitcast i32** %2 to i8**
  %122 = call i64 @pSHGetItemFromDataObject(i32* %119, i32 %120, i32* @IID_IShellItem, i8** %121)
  store i64 %122, i64* %4, align 8
  %123 = load i64, i64* %4, align 8
  %124 = load i64, i64* @S_OK, align 8
  %125 = icmp eq i64 %123, %124
  %126 = zext i1 %125 to i32
  %127 = load i64, i64* %4, align 8
  %128 = call i32 @ok(i32 %126, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 %127)
  %129 = load i64, i64* %4, align 8
  %130 = call i64 @SUCCEEDED(i64 %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %135

132:                                              ; preds = %118
  %133 = load i32*, i32** %2, align 8
  %134 = call i32 @IShellItem_Release(i32* %133)
  br label %135

135:                                              ; preds = %132, %118
  %136 = load i32*, i32** %6, align 8
  %137 = load i32, i32* @DOGIF_NO_URL, align 4
  %138 = bitcast i32** %2 to i8**
  %139 = call i64 @pSHGetItemFromDataObject(i32* %136, i32 %137, i32* @IID_IShellItem, i8** %138)
  store i64 %139, i64* %4, align 8
  %140 = load i64, i64* %4, align 8
  %141 = load i64, i64* @S_OK, align 8
  %142 = icmp eq i64 %140, %141
  %143 = zext i1 %142 to i32
  %144 = load i64, i64* %4, align 8
  %145 = call i32 @ok(i32 %143, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 %144)
  %146 = load i64, i64* %4, align 8
  %147 = call i64 @SUCCEEDED(i64 %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %152

149:                                              ; preds = %135
  %150 = load i32*, i32** %2, align 8
  %151 = call i32 @IShellItem_Release(i32* %150)
  br label %152

152:                                              ; preds = %149, %135
  %153 = load i32*, i32** %6, align 8
  %154 = load i32, i32* @DOGIF_ONLY_IF_ONE, align 4
  %155 = bitcast i32** %2 to i8**
  %156 = call i64 @pSHGetItemFromDataObject(i32* %153, i32 %154, i32* @IID_IShellItem, i8** %155)
  store i64 %156, i64* %4, align 8
  %157 = load i64, i64* %4, align 8
  %158 = load i64, i64* @S_OK, align 8
  %159 = icmp eq i64 %157, %158
  %160 = zext i1 %159 to i32
  %161 = load i64, i64* %4, align 8
  %162 = call i32 @ok(i32 %160, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 %161)
  %163 = load i64, i64* %4, align 8
  %164 = call i64 @SUCCEEDED(i64 %163)
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %169

166:                                              ; preds = %152
  %167 = load i32*, i32** %2, align 8
  %168 = call i32 @IShellItem_Release(i32* %167)
  br label %169

169:                                              ; preds = %166, %152
  %170 = load i32*, i32** %6, align 8
  %171 = call i32 @IDataObject_Release(i32* %170)
  br label %172

172:                                              ; preds = %169, %70
  br label %175

173:                                              ; preds = %67
  %174 = call i32 @skip(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  br label %175

175:                                              ; preds = %173, %172
  %176 = load i32, i32* %9, align 4
  %177 = icmp sgt i32 %176, 1
  br i1 %177, label %178, label %282

178:                                              ; preds = %175
  %179 = load i32*, i32** %1, align 8
  %180 = load i32, i32* %9, align 4
  %181 = getelementptr inbounds [5 x i32], [5 x i32]* %8, i64 0, i64 0
  %182 = bitcast i32** %6 to i8**
  %183 = call i64 @IShellFolder_GetUIObjectOf(i32* %179, i32* null, i32 %180, i32* %181, i32* @IID_IDataObject, i32* null, i8** %182)
  store i64 %183, i64* %4, align 8
  %184 = load i64, i64* %4, align 8
  %185 = load i64, i64* @S_OK, align 8
  %186 = icmp eq i64 %184, %185
  %187 = zext i1 %186 to i32
  %188 = load i64, i64* %4, align 8
  %189 = call i32 @ok(i32 %187, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 %188)
  %190 = load i64, i64* %4, align 8
  %191 = call i64 @SUCCEEDED(i64 %190)
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %281

193:                                              ; preds = %178
  %194 = load i32*, i32** %6, align 8
  %195 = load i32, i32* @DOGIF_DEFAULT, align 4
  %196 = bitcast i32** %2 to i8**
  %197 = call i64 @pSHGetItemFromDataObject(i32* %194, i32 %195, i32* @IID_IShellItem, i8** %196)
  store i64 %197, i64* %4, align 8
  %198 = load i64, i64* %4, align 8
  %199 = load i64, i64* @S_OK, align 8
  %200 = icmp eq i64 %198, %199
  %201 = zext i1 %200 to i32
  %202 = load i64, i64* %4, align 8
  %203 = call i32 @ok(i32 %201, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 %202)
  %204 = load i64, i64* %4, align 8
  %205 = call i64 @SUCCEEDED(i64 %204)
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %207, label %210

207:                                              ; preds = %193
  %208 = load i32*, i32** %2, align 8
  %209 = call i32 @IShellItem_Release(i32* %208)
  br label %210

210:                                              ; preds = %207, %193
  %211 = load i32*, i32** %6, align 8
  %212 = load i32, i32* @DOGIF_TRAVERSE_LINK, align 4
  %213 = bitcast i32** %2 to i8**
  %214 = call i64 @pSHGetItemFromDataObject(i32* %211, i32 %212, i32* @IID_IShellItem, i8** %213)
  store i64 %214, i64* %4, align 8
  %215 = load i64, i64* %4, align 8
  %216 = load i64, i64* @S_OK, align 8
  %217 = icmp eq i64 %215, %216
  %218 = zext i1 %217 to i32
  %219 = load i64, i64* %4, align 8
  %220 = call i32 @ok(i32 %218, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 %219)
  %221 = load i64, i64* %4, align 8
  %222 = call i64 @SUCCEEDED(i64 %221)
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %224, label %227

224:                                              ; preds = %210
  %225 = load i32*, i32** %2, align 8
  %226 = call i32 @IShellItem_Release(i32* %225)
  br label %227

227:                                              ; preds = %224, %210
  %228 = load i32*, i32** %6, align 8
  %229 = load i32, i32* @DOGIF_NO_HDROP, align 4
  %230 = bitcast i32** %2 to i8**
  %231 = call i64 @pSHGetItemFromDataObject(i32* %228, i32 %229, i32* @IID_IShellItem, i8** %230)
  store i64 %231, i64* %4, align 8
  %232 = load i64, i64* %4, align 8
  %233 = load i64, i64* @S_OK, align 8
  %234 = icmp eq i64 %232, %233
  %235 = zext i1 %234 to i32
  %236 = load i64, i64* %4, align 8
  %237 = call i32 @ok(i32 %235, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 %236)
  %238 = load i64, i64* %4, align 8
  %239 = call i64 @SUCCEEDED(i64 %238)
  %240 = icmp ne i64 %239, 0
  br i1 %240, label %241, label %244

241:                                              ; preds = %227
  %242 = load i32*, i32** %2, align 8
  %243 = call i32 @IShellItem_Release(i32* %242)
  br label %244

244:                                              ; preds = %241, %227
  %245 = load i32*, i32** %6, align 8
  %246 = load i32, i32* @DOGIF_NO_URL, align 4
  %247 = bitcast i32** %2 to i8**
  %248 = call i64 @pSHGetItemFromDataObject(i32* %245, i32 %246, i32* @IID_IShellItem, i8** %247)
  store i64 %248, i64* %4, align 8
  %249 = load i64, i64* %4, align 8
  %250 = load i64, i64* @S_OK, align 8
  %251 = icmp eq i64 %249, %250
  %252 = zext i1 %251 to i32
  %253 = load i64, i64* %4, align 8
  %254 = call i32 @ok(i32 %252, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 %253)
  %255 = load i64, i64* %4, align 8
  %256 = call i64 @SUCCEEDED(i64 %255)
  %257 = icmp ne i64 %256, 0
  br i1 %257, label %258, label %261

258:                                              ; preds = %244
  %259 = load i32*, i32** %2, align 8
  %260 = call i32 @IShellItem_Release(i32* %259)
  br label %261

261:                                              ; preds = %258, %244
  %262 = load i32*, i32** %6, align 8
  %263 = load i32, i32* @DOGIF_ONLY_IF_ONE, align 4
  %264 = bitcast i32** %2 to i8**
  %265 = call i64 @pSHGetItemFromDataObject(i32* %262, i32 %263, i32* @IID_IShellItem, i8** %264)
  store i64 %265, i64* %4, align 8
  %266 = load i64, i64* %4, align 8
  %267 = load i64, i64* @E_FAIL, align 8
  %268 = icmp eq i64 %266, %267
  %269 = zext i1 %268 to i32
  %270 = load i64, i64* %4, align 8
  %271 = call i32 @ok(i32 %269, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 %270)
  %272 = load i64, i64* %4, align 8
  %273 = call i64 @SUCCEEDED(i64 %272)
  %274 = icmp ne i64 %273, 0
  br i1 %274, label %275, label %278

275:                                              ; preds = %261
  %276 = load i32*, i32** %2, align 8
  %277 = call i32 @IShellItem_Release(i32* %276)
  br label %278

278:                                              ; preds = %275, %261
  %279 = load i32*, i32** %6, align 8
  %280 = call i32 @IDataObject_Release(i32* %279)
  br label %281

281:                                              ; preds = %278, %178
  br label %284

282:                                              ; preds = %175
  %283 = call i32 @skip(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0))
  br label %284

284:                                              ; preds = %282, %281
  store i32 0, i32* %10, align 4
  br label %285

285:                                              ; preds = %295, %284
  %286 = load i32, i32* %10, align 4
  %287 = load i32, i32* %9, align 4
  %288 = icmp slt i32 %286, %287
  br i1 %288, label %289, label %298

289:                                              ; preds = %285
  %290 = load i32, i32* %10, align 4
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds [5 x i32], [5 x i32]* %8, i64 0, i64 %291
  %293 = load i32, i32* %292, align 4
  %294 = call i32 @ILFree(i32 %293)
  br label %295

295:                                              ; preds = %289
  %296 = load i32, i32* %10, align 4
  %297 = add nsw i32 %296, 1
  store i32 %297, i32* %10, align 4
  br label %285

298:                                              ; preds = %285
  %299 = load i32*, i32** %5, align 8
  %300 = call i32 @IEnumIDList_Release(i32* %299)
  br label %301

301:                                              ; preds = %298, %32
  %302 = load i32*, i32** %3, align 8
  %303 = call i32 @IShellView_Release(i32* %302)
  br label %304

304:                                              ; preds = %301, %0
  %305 = load i32*, i32** %1, align 8
  %306 = call i32 @IShellFolder_Release(i32* %305)
  ret void
}

declare dso_local i64 @pSHGetItemFromDataObject(i32*, i32, i32*, i8**) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

declare dso_local i32 @SHGetDesktopFolder(i32**) #1

declare dso_local i64 @IShellFolder_CreateViewObject(i32*, i32*, i32*, i8**) #1

declare dso_local i64 @SUCCEEDED(i64) #1

declare dso_local i64 @IShellFolder_EnumObjects(i32*, i32*, i32, i32**) #1

declare dso_local i64 @IEnumIDList_Next(i32*, i32, i32*, i32*) #1

declare dso_local i64 @IShellFolder_GetUIObjectOf(i32*, i32*, i32, i32*, i32*, i32*, i8**) #1

declare dso_local i32 @IShellItem_Release(i32*) #1

declare dso_local i32 @IDataObject_Release(i32*) #1

declare dso_local i32 @skip(i8*) #1

declare dso_local i32 @ILFree(i32) #1

declare dso_local i32 @IEnumIDList_Release(i32*) #1

declare dso_local i32 @IShellView_Release(i32*) #1

declare dso_local i32 @IShellFolder_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
