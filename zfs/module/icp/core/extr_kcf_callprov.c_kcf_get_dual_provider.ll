; ModuleID = '/home/carl/AnghaBench/zfs/module/icp/core/extr_kcf_callprov.c_kcf_get_dual_provider.c'
source_filename = "/home/carl/AnghaBench/zfs/module/icp/core/extr_kcf_callprov.c_kcf_get_dual_provider.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32 }
%struct.TYPE_23__ = type { i64 }
%struct.TYPE_22__ = type { i64, i64, i32, %struct.TYPE_21__*, %struct.TYPE_21__* }
%struct.TYPE_21__ = type { %struct.TYPE_19__, %struct.TYPE_24__*, %struct.TYPE_20__*, %struct.TYPE_21__* }
%struct.TYPE_19__ = type { i64 }
%struct.TYPE_24__ = type { i64, %struct.TYPE_18__, %struct.TYPE_24__* }
%struct.TYPE_18__ = type { i32, i64 }

@INT_MAX = common dso_local global i32 0, align 4
@KCF_SUCCESS = common dso_local global i64 0, align 8
@CRYPTO_MECHANISM_INVALID = common dso_local global i32 0, align 4
@CRYPTO_MECH_INVALID = common dso_local global i64 0, align 8
@KCF_PROV_RESTRICTED = common dso_local global i32 0, align 4
@CRYPTO_MECH_NOT_SUPPORTED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_20__* @kcf_get_dual_provider(%struct.TYPE_23__* %0, %struct.TYPE_23__* %1, %struct.TYPE_22__** %2, i64* %3, i64* %4, i32* %5, i32* %6, i32 %7, i32 %8, i64 %9, i64 %10) #0 {
  %12 = alloca %struct.TYPE_20__*, align 8
  %13 = alloca %struct.TYPE_23__*, align 8
  %14 = alloca %struct.TYPE_23__*, align 8
  %15 = alloca %struct.TYPE_22__**, align 8
  %16 = alloca i64*, align 8
  %17 = alloca i64*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca %struct.TYPE_20__*, align 8
  %25 = alloca %struct.TYPE_20__*, align 8
  %26 = alloca %struct.TYPE_20__*, align 8
  %27 = alloca %struct.TYPE_21__*, align 8
  %28 = alloca %struct.TYPE_21__*, align 8
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca %struct.TYPE_24__*, align 8
  %33 = alloca i64, align 8
  %34 = alloca %struct.TYPE_22__*, align 8
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %13, align 8
  store %struct.TYPE_23__* %1, %struct.TYPE_23__** %14, align 8
  store %struct.TYPE_22__** %2, %struct.TYPE_22__*** %15, align 8
  store i64* %3, i64** %16, align 8
  store i64* %4, i64** %17, align 8
  store i32* %5, i32** %18, align 8
  store i32* %6, i32** %19, align 8
  store i32 %7, i32* %20, align 4
  store i32 %8, i32* %21, align 4
  store i64 %9, i64* %22, align 8
  store i64 %10, i64* %23, align 8
  store %struct.TYPE_20__* null, %struct.TYPE_20__** %24, align 8
  store %struct.TYPE_20__* null, %struct.TYPE_20__** %25, align 8
  store %struct.TYPE_20__* null, %struct.TYPE_20__** %26, align 8
  %35 = load i32, i32* @INT_MAX, align 4
  store i32 %35, i32* %30, align 4
  %36 = load i32, i32* @INT_MAX, align 4
  store i32 %36, i32* %31, align 4
  %37 = load %struct.TYPE_23__*, %struct.TYPE_23__** %14, align 8
  %38 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  store i64 %39, i64* %33, align 8
  %40 = load %struct.TYPE_23__*, %struct.TYPE_23__** %13, align 8
  %41 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = call i64 @kcf_get_mech_entry(i64 %42, %struct.TYPE_22__** %34)
  %44 = load i64, i64* @KCF_SUCCESS, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %11
  %47 = load i32, i32* @CRYPTO_MECHANISM_INVALID, align 4
  %48 = load i32*, i32** %18, align 8
  store i32 %47, i32* %48, align 4
  store %struct.TYPE_20__* null, %struct.TYPE_20__** %12, align 8
  br label %302

49:                                               ; preds = %11
  %50 = load i64, i64* @CRYPTO_MECH_INVALID, align 8
  %51 = load i64*, i64** %17, align 8
  store i64 %50, i64* %51, align 8
  %52 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %15, align 8
  %53 = icmp ne %struct.TYPE_22__** %52, null
  br i1 %53, label %54, label %57

54:                                               ; preds = %49
  %55 = load %struct.TYPE_22__*, %struct.TYPE_22__** %34, align 8
  %56 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %15, align 8
  store %struct.TYPE_22__* %55, %struct.TYPE_22__** %56, align 8
  br label %57

57:                                               ; preds = %54, %49
  %58 = load %struct.TYPE_22__*, %struct.TYPE_22__** %34, align 8
  %59 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %58, i32 0, i32 2
  %60 = call i32 @mutex_enter(i32* %59)
  %61 = load %struct.TYPE_22__*, %struct.TYPE_22__** %34, align 8
  %62 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %61, i32 0, i32 4
  %63 = load %struct.TYPE_21__*, %struct.TYPE_21__** %62, align 8
  store %struct.TYPE_21__* %63, %struct.TYPE_21__** %27, align 8
  %64 = load %struct.TYPE_21__*, %struct.TYPE_21__** %27, align 8
  %65 = icmp ne %struct.TYPE_21__* %64, null
  br i1 %65, label %66, label %208

66:                                               ; preds = %57
  %67 = load i64, i64* %23, align 8
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %96, label %69

69:                                               ; preds = %66
  %70 = load %struct.TYPE_22__*, %struct.TYPE_22__** %34, align 8
  %71 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %96, label %74

74:                                               ; preds = %69
  %75 = load i64, i64* %23, align 8
  %76 = load %struct.TYPE_22__*, %struct.TYPE_22__** %34, align 8
  %77 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp uge i64 %75, %78
  br i1 %79, label %96, label %80

80:                                               ; preds = %74
  %81 = load %struct.TYPE_22__*, %struct.TYPE_22__** %34, align 8
  %82 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %81, i32 0, i32 3
  %83 = load %struct.TYPE_21__*, %struct.TYPE_21__** %82, align 8
  store %struct.TYPE_21__* %83, %struct.TYPE_21__** %28, align 8
  %84 = icmp eq %struct.TYPE_21__* %83, null
  br i1 %84, label %96, label %85

85:                                               ; preds = %80
  %86 = load %struct.TYPE_21__*, %struct.TYPE_21__** %28, align 8
  %87 = load i32, i32* %20, align 4
  %88 = call i32 @IS_FG_SUPPORTED(%struct.TYPE_21__* %86, i32 %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %96

90:                                               ; preds = %85
  %91 = load %struct.TYPE_21__*, %struct.TYPE_21__** %28, align 8
  %92 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %91, i32 0, i32 2
  %93 = load %struct.TYPE_20__*, %struct.TYPE_20__** %92, align 8
  %94 = call i32 @KCF_IS_PROV_USABLE(%struct.TYPE_20__* %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %208, label %96

96:                                               ; preds = %90, %85, %80, %74, %69, %66
  %97 = load %struct.TYPE_22__*, %struct.TYPE_22__** %34, align 8
  %98 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = icmp sgt i64 %99, 0
  %101 = zext i1 %100 to i32
  %102 = call i32 @ASSERT(i32 %101)
  br label %103

103:                                              ; preds = %195, %135, %96
  %104 = load %struct.TYPE_21__*, %struct.TYPE_21__** %27, align 8
  %105 = icmp ne %struct.TYPE_21__* %104, null
  br i1 %105, label %106, label %199

106:                                              ; preds = %103
  %107 = load %struct.TYPE_21__*, %struct.TYPE_21__** %27, align 8
  %108 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %107, i32 0, i32 2
  %109 = load %struct.TYPE_20__*, %struct.TYPE_20__** %108, align 8
  store %struct.TYPE_20__* %109, %struct.TYPE_20__** %24, align 8
  %110 = load %struct.TYPE_20__*, %struct.TYPE_20__** %24, align 8
  %111 = call i32 @KCF_PROV_LOAD(%struct.TYPE_20__* %110)
  store i32 %111, i32* %29, align 4
  %112 = load %struct.TYPE_21__*, %struct.TYPE_21__** %27, align 8
  %113 = load i32, i32* %20, align 4
  %114 = call i32 @IS_FG_SUPPORTED(%struct.TYPE_21__* %112, i32 %113)
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %135

116:                                              ; preds = %106
  %117 = load %struct.TYPE_20__*, %struct.TYPE_20__** %24, align 8
  %118 = call i32 @KCF_IS_PROV_USABLE(%struct.TYPE_20__* %117)
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %135

120:                                              ; preds = %116
  %121 = load %struct.TYPE_20__*, %struct.TYPE_20__** %24, align 8
  %122 = load i32*, i32** %19, align 8
  %123 = call i64 @IS_PROVIDER_TRIED(%struct.TYPE_20__* %121, i32* %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %135, label %125

125:                                              ; preds = %120
  %126 = load i64, i64* %22, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %139

128:                                              ; preds = %125
  %129 = load %struct.TYPE_20__*, %struct.TYPE_20__** %24, align 8
  %130 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* @KCF_PROV_RESTRICTED, align 4
  %133 = and i32 %131, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %139

135:                                              ; preds = %128, %120, %116, %106
  %136 = load %struct.TYPE_21__*, %struct.TYPE_21__** %27, align 8
  %137 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %136, i32 0, i32 3
  %138 = load %struct.TYPE_21__*, %struct.TYPE_21__** %137, align 8
  store %struct.TYPE_21__* %138, %struct.TYPE_21__** %27, align 8
  br label %103

139:                                              ; preds = %128, %125
  %140 = load i32, i32* %29, align 4
  %141 = load i32, i32* %30, align 4
  %142 = icmp slt i32 %140, %141
  br i1 %142, label %143, label %151

143:                                              ; preds = %139
  %144 = load %struct.TYPE_21__*, %struct.TYPE_21__** %27, align 8
  %145 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = load i64*, i64** %16, align 8
  store i64 %147, i64* %148, align 8
  %149 = load i32, i32* %29, align 4
  store i32 %149, i32* %30, align 4
  %150 = load %struct.TYPE_20__*, %struct.TYPE_20__** %24, align 8
  store %struct.TYPE_20__* %150, %struct.TYPE_20__** %25, align 8
  br label %151

151:                                              ; preds = %143, %139
  %152 = load %struct.TYPE_21__*, %struct.TYPE_21__** %27, align 8
  %153 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %152, i32 0, i32 1
  %154 = load %struct.TYPE_24__*, %struct.TYPE_24__** %153, align 8
  store %struct.TYPE_24__* %154, %struct.TYPE_24__** %32, align 8
  br label %155

155:                                              ; preds = %191, %151
  %156 = load %struct.TYPE_24__*, %struct.TYPE_24__** %32, align 8
  %157 = icmp ne %struct.TYPE_24__* %156, null
  br i1 %157, label %158, label %195

158:                                              ; preds = %155
  %159 = load %struct.TYPE_24__*, %struct.TYPE_24__** %32, align 8
  %160 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %159, i32 0, i32 1
  %161 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = load i32, i32* %21, align 4
  %164 = and i32 %162, %163
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %166, label %167

166:                                              ; preds = %158
  br label %191

167:                                              ; preds = %158
  %168 = load %struct.TYPE_24__*, %struct.TYPE_24__** %32, align 8
  %169 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = load i64, i64* %33, align 8
  %172 = icmp eq i64 %170, %171
  br i1 %172, label %173, label %190

173:                                              ; preds = %167
  %174 = load i32, i32* %29, align 4
  %175 = load i32, i32* %31, align 4
  %176 = icmp slt i32 %174, %175
  br i1 %176, label %177, label %190

177:                                              ; preds = %173
  %178 = load i32, i32* %29, align 4
  store i32 %178, i32* %31, align 4
  %179 = load %struct.TYPE_20__*, %struct.TYPE_20__** %24, align 8
  store %struct.TYPE_20__* %179, %struct.TYPE_20__** %26, align 8
  %180 = load %struct.TYPE_24__*, %struct.TYPE_24__** %32, align 8
  %181 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %180, i32 0, i32 1
  %182 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %181, i32 0, i32 1
  %183 = load i64, i64* %182, align 8
  %184 = load i64*, i64** %17, align 8
  store i64 %183, i64* %184, align 8
  %185 = load %struct.TYPE_21__*, %struct.TYPE_21__** %27, align 8
  %186 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %186, i32 0, i32 0
  %188 = load i64, i64* %187, align 8
  %189 = load i64*, i64** %16, align 8
  store i64 %188, i64* %189, align 8
  br label %195

190:                                              ; preds = %173, %167
  br label %191

191:                                              ; preds = %190, %166
  %192 = load %struct.TYPE_24__*, %struct.TYPE_24__** %32, align 8
  %193 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %192, i32 0, i32 2
  %194 = load %struct.TYPE_24__*, %struct.TYPE_24__** %193, align 8
  store %struct.TYPE_24__* %194, %struct.TYPE_24__** %32, align 8
  br label %155

195:                                              ; preds = %177, %155
  %196 = load %struct.TYPE_21__*, %struct.TYPE_21__** %27, align 8
  %197 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %196, i32 0, i32 3
  %198 = load %struct.TYPE_21__*, %struct.TYPE_21__** %197, align 8
  store %struct.TYPE_21__* %198, %struct.TYPE_21__** %27, align 8
  br label %103

199:                                              ; preds = %103
  %200 = load %struct.TYPE_20__*, %struct.TYPE_20__** %26, align 8
  %201 = icmp ne %struct.TYPE_20__* %200, null
  br i1 %201, label %202, label %204

202:                                              ; preds = %199
  %203 = load %struct.TYPE_20__*, %struct.TYPE_20__** %26, align 8
  br label %206

204:                                              ; preds = %199
  %205 = load %struct.TYPE_20__*, %struct.TYPE_20__** %25, align 8
  br label %206

206:                                              ; preds = %204, %202
  %207 = phi %struct.TYPE_20__* [ %203, %202 ], [ %205, %204 ]
  store %struct.TYPE_20__* %207, %struct.TYPE_20__** %24, align 8
  br label %208

208:                                              ; preds = %206, %90, %57
  %209 = load %struct.TYPE_20__*, %struct.TYPE_20__** %24, align 8
  %210 = icmp eq %struct.TYPE_20__* %209, null
  br i1 %210, label %211, label %288

211:                                              ; preds = %208
  %212 = load %struct.TYPE_22__*, %struct.TYPE_22__** %34, align 8
  %213 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %212, i32 0, i32 3
  %214 = load %struct.TYPE_21__*, %struct.TYPE_21__** %213, align 8
  store %struct.TYPE_21__* %214, %struct.TYPE_21__** %28, align 8
  %215 = icmp ne %struct.TYPE_21__* %214, null
  br i1 %215, label %216, label %288

216:                                              ; preds = %211
  %217 = load %struct.TYPE_21__*, %struct.TYPE_21__** %28, align 8
  %218 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %217, i32 0, i32 2
  %219 = load %struct.TYPE_20__*, %struct.TYPE_20__** %218, align 8
  store %struct.TYPE_20__* %219, %struct.TYPE_20__** %24, align 8
  %220 = load %struct.TYPE_21__*, %struct.TYPE_21__** %28, align 8
  %221 = load i32, i32* %20, align 4
  %222 = call i32 @IS_FG_SUPPORTED(%struct.TYPE_21__* %220, i32 %221)
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %243

224:                                              ; preds = %216
  %225 = load %struct.TYPE_20__*, %struct.TYPE_20__** %24, align 8
  %226 = call i32 @KCF_IS_PROV_USABLE(%struct.TYPE_20__* %225)
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %243

228:                                              ; preds = %224
  %229 = load %struct.TYPE_20__*, %struct.TYPE_20__** %24, align 8
  %230 = load i32*, i32** %19, align 8
  %231 = call i64 @IS_PROVIDER_TRIED(%struct.TYPE_20__* %229, i32* %230)
  %232 = icmp ne i64 %231, 0
  br i1 %232, label %243, label %233

233:                                              ; preds = %228
  %234 = load i64, i64* %22, align 8
  %235 = icmp ne i64 %234, 0
  br i1 %235, label %236, label %244

236:                                              ; preds = %233
  %237 = load %struct.TYPE_20__*, %struct.TYPE_20__** %24, align 8
  %238 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 4
  %240 = load i32, i32* @KCF_PROV_RESTRICTED, align 4
  %241 = and i32 %239, %240
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %244

243:                                              ; preds = %236, %228, %224, %216
  store %struct.TYPE_20__* null, %struct.TYPE_20__** %24, align 8
  br label %287

244:                                              ; preds = %236, %233
  %245 = load %struct.TYPE_22__*, %struct.TYPE_22__** %34, align 8
  %246 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %245, i32 0, i32 3
  %247 = load %struct.TYPE_21__*, %struct.TYPE_21__** %246, align 8
  %248 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %247, i32 0, i32 1
  %249 = load %struct.TYPE_24__*, %struct.TYPE_24__** %248, align 8
  store %struct.TYPE_24__* %249, %struct.TYPE_24__** %32, align 8
  br label %250

250:                                              ; preds = %275, %244
  %251 = load %struct.TYPE_24__*, %struct.TYPE_24__** %32, align 8
  %252 = icmp ne %struct.TYPE_24__* %251, null
  br i1 %252, label %253, label %279

253:                                              ; preds = %250
  %254 = load %struct.TYPE_24__*, %struct.TYPE_24__** %32, align 8
  %255 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %254, i32 0, i32 1
  %256 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %255, i32 0, i32 0
  %257 = load i32, i32* %256, align 8
  %258 = load i32, i32* %21, align 4
  %259 = and i32 %257, %258
  %260 = icmp eq i32 %259, 0
  br i1 %260, label %261, label %262

261:                                              ; preds = %253
  br label %275

262:                                              ; preds = %253
  %263 = load %struct.TYPE_24__*, %struct.TYPE_24__** %32, align 8
  %264 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %263, i32 0, i32 0
  %265 = load i64, i64* %264, align 8
  %266 = load i64, i64* %33, align 8
  %267 = icmp eq i64 %265, %266
  br i1 %267, label %268, label %274

268:                                              ; preds = %262
  %269 = load %struct.TYPE_24__*, %struct.TYPE_24__** %32, align 8
  %270 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %269, i32 0, i32 1
  %271 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %270, i32 0, i32 1
  %272 = load i64, i64* %271, align 8
  %273 = load i64*, i64** %17, align 8
  store i64 %272, i64* %273, align 8
  br label %279

274:                                              ; preds = %262
  br label %275

275:                                              ; preds = %274, %261
  %276 = load %struct.TYPE_24__*, %struct.TYPE_24__** %32, align 8
  %277 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %276, i32 0, i32 2
  %278 = load %struct.TYPE_24__*, %struct.TYPE_24__** %277, align 8
  store %struct.TYPE_24__* %278, %struct.TYPE_24__** %32, align 8
  br label %250

279:                                              ; preds = %268, %250
  %280 = load %struct.TYPE_22__*, %struct.TYPE_22__** %34, align 8
  %281 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %280, i32 0, i32 3
  %282 = load %struct.TYPE_21__*, %struct.TYPE_21__** %281, align 8
  %283 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %282, i32 0, i32 0
  %284 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %283, i32 0, i32 0
  %285 = load i64, i64* %284, align 8
  %286 = load i64*, i64** %16, align 8
  store i64 %285, i64* %286, align 8
  br label %287

287:                                              ; preds = %279, %243
  br label %288

288:                                              ; preds = %287, %211, %208
  %289 = load %struct.TYPE_20__*, %struct.TYPE_20__** %24, align 8
  %290 = icmp eq %struct.TYPE_20__* %289, null
  br i1 %290, label %291, label %294

291:                                              ; preds = %288
  %292 = load i32, i32* @CRYPTO_MECH_NOT_SUPPORTED, align 4
  %293 = load i32*, i32** %18, align 8
  store i32 %292, i32* %293, align 4
  br label %297

294:                                              ; preds = %288
  %295 = load %struct.TYPE_20__*, %struct.TYPE_20__** %24, align 8
  %296 = call i32 @KCF_PROV_REFHOLD(%struct.TYPE_20__* %295)
  br label %297

297:                                              ; preds = %294, %291
  %298 = load %struct.TYPE_22__*, %struct.TYPE_22__** %34, align 8
  %299 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %298, i32 0, i32 2
  %300 = call i32 @mutex_exit(i32* %299)
  %301 = load %struct.TYPE_20__*, %struct.TYPE_20__** %24, align 8
  store %struct.TYPE_20__* %301, %struct.TYPE_20__** %12, align 8
  br label %302

302:                                              ; preds = %297, %46
  %303 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  ret %struct.TYPE_20__* %303
}

declare dso_local i64 @kcf_get_mech_entry(i64, %struct.TYPE_22__**) #1

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local i32 @IS_FG_SUPPORTED(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @KCF_IS_PROV_USABLE(%struct.TYPE_20__*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @KCF_PROV_LOAD(%struct.TYPE_20__*) #1

declare dso_local i64 @IS_PROVIDER_TRIED(%struct.TYPE_20__*, i32*) #1

declare dso_local i32 @KCF_PROV_REFHOLD(%struct.TYPE_20__*) #1

declare dso_local i32 @mutex_exit(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
