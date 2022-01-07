; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/oleaut32/extr_safearray.c_SAFEARRAY_CopyData.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/oleaut32/extr_safearray.c_SAFEARRAY_CopyData.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i32** }

@S_OK = common dso_local global i32 0, align 4
@FADF_DATADELETED = common dso_local global i32 0, align 4
@E_INVALIDARG = common dso_local global i32 0, align 4
@FADF_CREATEVECTOR = common dso_local global i32 0, align 4
@ignored_copy_features = common dso_local global i32 0, align 4
@FADF_VARIANT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"VariantCopy failed with 0x%08x, element %u\0A\00", align 1
@FADF_BSTR = common dso_local global i32 0, align 4
@E_OUTOFMEMORY = common dso_local global i32 0, align 4
@FADF_RECORD = common dso_local global i32 0, align 4
@FADF_UNKNOWN = common dso_local global i32 0, align 4
@FADF_DISPATCH = common dso_local global i32 0, align 4
@FADF_HAVEIID = common dso_local global i32 0, align 4
@FADF_HAVEVARTYPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, %struct.TYPE_11__*)* @SAFEARRAY_CopyData to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @SAFEARRAY_CopyData(%struct.TYPE_11__* %0, %struct.TYPE_11__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32**, align 8
  %9 = alloca i32**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32**, align 8
  %12 = alloca i32**, align 8
  %13 = alloca i32**, align 8
  %14 = alloca i32**, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32**, align 8
  %17 = alloca i32**, align 8
  %18 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %5, align 8
  %19 = load i32, i32* @S_OK, align 4
  store i32 %19, i32* %6, align 4
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 2
  %22 = load i32**, i32*** %21, align 8
  %23 = icmp ne i32** %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %2
  %25 = load i32, i32* @S_OK, align 4
  store i32 %25, i32* %3, align 4
  br label %281

26:                                               ; preds = %2
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 2
  %29 = load i32**, i32*** %28, align 8
  %30 = icmp ne i32** %29, null
  br i1 %30, label %31, label %38

31:                                               ; preds = %26
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @FADF_DATADELETED, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %31, %26
  %39 = load i32, i32* @E_INVALIDARG, align 4
  store i32 %39, i32* %3, align 4
  br label %281

40:                                               ; preds = %31
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %42 = call i32 @SAFEARRAY_GetCellCount(%struct.TYPE_11__* %41)
  store i32 %42, i32* %7, align 4
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @FADF_CREATEVECTOR, align 4
  %47 = and i32 %45, %46
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @ignored_copy_features, align 4
  %52 = xor i32 %51, -1
  %53 = and i32 %50, %52
  %54 = or i32 %47, %53
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 8
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @FADF_VARIANT, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %91

63:                                               ; preds = %40
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 2
  %66 = load i32**, i32*** %65, align 8
  store i32** %66, i32*** %8, align 8
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 2
  %69 = load i32**, i32*** %68, align 8
  store i32** %69, i32*** %9, align 8
  br label %70

70:                                               ; preds = %85, %63
  %71 = load i32, i32* %7, align 4
  %72 = add nsw i32 %71, -1
  store i32 %72, i32* %7, align 4
  %73 = icmp ne i32 %71, 0
  br i1 %73, label %74, label %90

74:                                               ; preds = %70
  %75 = load i32**, i32*** %9, align 8
  %76 = load i32**, i32*** %8, align 8
  %77 = call i32 @VariantCopy(i32** %75, i32** %76)
  store i32 %77, i32* %10, align 4
  %78 = load i32, i32* %10, align 4
  %79 = call i64 @FAILED(i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %74
  %82 = load i32, i32* %10, align 4
  %83 = load i32, i32* %7, align 4
  %84 = call i32 @FIXME(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %82, i32 %83)
  br label %85

85:                                               ; preds = %81, %74
  %86 = load i32**, i32*** %8, align 8
  %87 = getelementptr inbounds i32*, i32** %86, i32 1
  store i32** %87, i32*** %8, align 8
  %88 = load i32**, i32*** %9, align 8
  %89 = getelementptr inbounds i32*, i32** %88, i32 1
  store i32** %89, i32*** %9, align 8
  br label %70

90:                                               ; preds = %70
  br label %253

91:                                               ; preds = %40
  %92 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @FADF_BSTR, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %139

98:                                               ; preds = %91
  %99 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 2
  %101 = load i32**, i32*** %100, align 8
  store i32** %101, i32*** %11, align 8
  %102 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %102, i32 0, i32 2
  %104 = load i32**, i32*** %103, align 8
  store i32** %104, i32*** %12, align 8
  br label %105

105:                                              ; preds = %133, %98
  %106 = load i32, i32* %7, align 4
  %107 = add nsw i32 %106, -1
  store i32 %107, i32* %7, align 4
  %108 = icmp ne i32 %106, 0
  br i1 %108, label %109, label %138

109:                                              ; preds = %105
  %110 = load i32**, i32*** %12, align 8
  %111 = load i32*, i32** %110, align 8
  %112 = call i32 @SysFreeString(i32* %111)
  %113 = load i32**, i32*** %11, align 8
  %114 = load i32*, i32** %113, align 8
  %115 = icmp ne i32* %114, null
  br i1 %115, label %116, label %131

116:                                              ; preds = %109
  %117 = load i32**, i32*** %11, align 8
  %118 = load i32*, i32** %117, align 8
  %119 = bitcast i32* %118 to i8*
  %120 = load i32**, i32*** %11, align 8
  %121 = load i32*, i32** %120, align 8
  %122 = call i32 @SysStringByteLen(i32* %121)
  %123 = call i32* @SysAllocStringByteLen(i8* %119, i32 %122)
  %124 = load i32**, i32*** %12, align 8
  store i32* %123, i32** %124, align 8
  %125 = load i32**, i32*** %12, align 8
  %126 = load i32*, i32** %125, align 8
  %127 = icmp ne i32* %126, null
  br i1 %127, label %130, label %128

128:                                              ; preds = %116
  %129 = load i32, i32* @E_OUTOFMEMORY, align 4
  store i32 %129, i32* %3, align 4
  br label %281

130:                                              ; preds = %116
  br label %133

131:                                              ; preds = %109
  %132 = load i32**, i32*** %12, align 8
  store i32* null, i32** %132, align 8
  br label %133

133:                                              ; preds = %131, %130
  %134 = load i32**, i32*** %11, align 8
  %135 = getelementptr inbounds i32*, i32** %134, i32 1
  store i32** %135, i32*** %11, align 8
  %136 = load i32**, i32*** %12, align 8
  %137 = getelementptr inbounds i32*, i32** %136, i32 1
  store i32** %137, i32*** %12, align 8
  br label %105

138:                                              ; preds = %105
  br label %252

139:                                              ; preds = %91
  %140 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %141 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = load i32, i32* @FADF_RECORD, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %192

146:                                              ; preds = %139
  %147 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %148 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %147, i32 0, i32 2
  %149 = load i32**, i32*** %148, align 8
  store i32** %149, i32*** %13, align 8
  %150 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %151 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %150, i32 0, i32 2
  %152 = load i32**, i32*** %151, align 8
  store i32** %152, i32*** %14, align 8
  %153 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %154 = call i32 @SafeArrayGetRecordInfo(%struct.TYPE_11__* %153, i32** %15)
  br label %155

155:                                              ; preds = %168, %146
  %156 = load i32, i32* %7, align 4
  %157 = add nsw i32 %156, -1
  store i32 %157, i32* %7, align 4
  %158 = icmp ne i32 %156, 0
  br i1 %158, label %159, label %181

159:                                              ; preds = %155
  %160 = load i32*, i32** %15, align 8
  %161 = load i32**, i32*** %14, align 8
  %162 = load i32**, i32*** %13, align 8
  %163 = call i32 @IRecordInfo_RecordCopy(i32* %160, i32** %161, i32** %162)
  store i32 %163, i32* %6, align 4
  %164 = load i32, i32* %6, align 4
  %165 = call i64 @FAILED(i32 %164)
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %168

167:                                              ; preds = %159
  br label %181

168:                                              ; preds = %159
  %169 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %170 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = load i32**, i32*** %14, align 8
  %173 = sext i32 %171 to i64
  %174 = getelementptr inbounds i32*, i32** %172, i64 %173
  store i32** %174, i32*** %14, align 8
  %175 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %176 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  %178 = load i32**, i32*** %13, align 8
  %179 = sext i32 %177 to i64
  %180 = getelementptr inbounds i32*, i32** %178, i64 %179
  store i32** %180, i32*** %13, align 8
  br label %155

181:                                              ; preds = %167, %155
  %182 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %183 = load i32*, i32** %15, align 8
  %184 = call i32 @SafeArraySetRecordInfo(%struct.TYPE_11__* %182, i32* %183)
  %185 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %186 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 4
  %188 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %189 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %188, i32 0, i32 1
  store i32 %187, i32* %189, align 4
  %190 = load i32*, i32** %15, align 8
  %191 = call i32 @IRecordInfo_Release(i32* %190)
  br label %251

192:                                              ; preds = %139
  %193 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %194 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = load i32, i32* @FADF_UNKNOWN, align 4
  %197 = load i32, i32* @FADF_DISPATCH, align 4
  %198 = or i32 %196, %197
  %199 = and i32 %195, %198
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %237

201:                                              ; preds = %192
  %202 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %203 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %202, i32 0, i32 2
  %204 = load i32**, i32*** %203, align 8
  store i32** %204, i32*** %16, align 8
  %205 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %206 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %205, i32 0, i32 2
  %207 = load i32**, i32*** %206, align 8
  store i32** %207, i32*** %17, align 8
  br label %208

208:                                              ; preds = %231, %201
  %209 = load i32, i32* %7, align 4
  %210 = add nsw i32 %209, -1
  store i32 %210, i32* %7, align 4
  %211 = icmp ne i32 %209, 0
  br i1 %211, label %212, label %236

212:                                              ; preds = %208
  %213 = load i32**, i32*** %16, align 8
  %214 = load i32*, i32** %213, align 8
  %215 = icmp ne i32* %214, null
  br i1 %215, label %216, label %220

216:                                              ; preds = %212
  %217 = load i32**, i32*** %16, align 8
  %218 = load i32*, i32** %217, align 8
  %219 = call i32 @IUnknown_Release(i32* %218)
  br label %220

220:                                              ; preds = %216, %212
  %221 = load i32**, i32*** %17, align 8
  %222 = load i32*, i32** %221, align 8
  %223 = load i32**, i32*** %16, align 8
  store i32* %222, i32** %223, align 8
  %224 = load i32**, i32*** %16, align 8
  %225 = load i32*, i32** %224, align 8
  %226 = icmp ne i32* %225, null
  br i1 %226, label %227, label %231

227:                                              ; preds = %220
  %228 = load i32**, i32*** %16, align 8
  %229 = load i32*, i32** %228, align 8
  %230 = call i32 @IUnknown_AddRef(i32* %229)
  br label %231

231:                                              ; preds = %227, %220
  %232 = load i32**, i32*** %17, align 8
  %233 = getelementptr inbounds i32*, i32** %232, i32 1
  store i32** %233, i32*** %17, align 8
  %234 = load i32**, i32*** %16, align 8
  %235 = getelementptr inbounds i32*, i32** %234, i32 1
  store i32** %235, i32*** %16, align 8
  br label %208

236:                                              ; preds = %208
  br label %250

237:                                              ; preds = %192
  %238 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %239 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %238, i32 0, i32 2
  %240 = load i32**, i32*** %239, align 8
  %241 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %242 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %241, i32 0, i32 2
  %243 = load i32**, i32*** %242, align 8
  %244 = load i32, i32* %7, align 4
  %245 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %246 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %245, i32 0, i32 1
  %247 = load i32, i32* %246, align 4
  %248 = mul nsw i32 %244, %247
  %249 = call i32 @memcpy(i32** %240, i32** %243, i32 %248)
  br label %250

250:                                              ; preds = %237, %236
  br label %251

251:                                              ; preds = %250, %181
  br label %252

252:                                              ; preds = %251, %138
  br label %253

253:                                              ; preds = %252, %90
  %254 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %255 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %254, i32 0, i32 0
  %256 = load i32, i32* %255, align 8
  %257 = load i32, i32* @FADF_HAVEIID, align 4
  %258 = and i32 %256, %257
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %260, label %265

260:                                              ; preds = %253
  %261 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %262 = call i32 @SafeArrayGetIID(%struct.TYPE_11__* %261, i32* %18)
  %263 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %264 = call i32 @SafeArraySetIID(%struct.TYPE_11__* %263, i32* %18)
  br label %278

265:                                              ; preds = %253
  %266 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %267 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %266, i32 0, i32 0
  %268 = load i32, i32* %267, align 8
  %269 = load i32, i32* @FADF_HAVEVARTYPE, align 4
  %270 = and i32 %268, %269
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %272, label %277

272:                                              ; preds = %265
  %273 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %274 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %275 = call i32 @SAFEARRAY_GetHiddenDWORD(%struct.TYPE_11__* %274)
  %276 = call i32 @SAFEARRAY_SetHiddenDWORD(%struct.TYPE_11__* %273, i32 %275)
  br label %277

277:                                              ; preds = %272, %265
  br label %278

278:                                              ; preds = %277, %260
  br label %279

279:                                              ; preds = %278
  %280 = load i32, i32* %6, align 4
  store i32 %280, i32* %3, align 4
  br label %281

281:                                              ; preds = %279, %128, %38, %24
  %282 = load i32, i32* %3, align 4
  ret i32 %282
}

declare dso_local i32 @SAFEARRAY_GetCellCount(%struct.TYPE_11__*) #1

declare dso_local i32 @VariantCopy(i32**, i32**) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @FIXME(i8*, i32, i32) #1

declare dso_local i32 @SysFreeString(i32*) #1

declare dso_local i32* @SysAllocStringByteLen(i8*, i32) #1

declare dso_local i32 @SysStringByteLen(i32*) #1

declare dso_local i32 @SafeArrayGetRecordInfo(%struct.TYPE_11__*, i32**) #1

declare dso_local i32 @IRecordInfo_RecordCopy(i32*, i32**, i32**) #1

declare dso_local i32 @SafeArraySetRecordInfo(%struct.TYPE_11__*, i32*) #1

declare dso_local i32 @IRecordInfo_Release(i32*) #1

declare dso_local i32 @IUnknown_Release(i32*) #1

declare dso_local i32 @IUnknown_AddRef(i32*) #1

declare dso_local i32 @memcpy(i32**, i32**, i32) #1

declare dso_local i32 @SafeArrayGetIID(%struct.TYPE_11__*, i32*) #1

declare dso_local i32 @SafeArraySetIID(%struct.TYPE_11__*, i32*) #1

declare dso_local i32 @SAFEARRAY_SetHiddenDWORD(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @SAFEARRAY_GetHiddenDWORD(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
