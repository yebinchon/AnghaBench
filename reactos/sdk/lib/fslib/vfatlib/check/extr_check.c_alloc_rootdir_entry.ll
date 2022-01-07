; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/fslib/vfatlib/check/extr_check.c_alloc_rootdir_entry.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/fslib/vfatlib/check/extr_check.c_alloc_rootdir_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_20__ = type { i64, i64 }
%struct.TYPE_18__ = type { i32 }

@alloc_rootdir_entry.curr_num = internal global i32 0, align 4
@VFAT_LN_ATTR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [41 x i8] c"Root directory has no cluster allocated!\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"Root directory full and no free cluster\00", align 1
@MSDOS_NAME = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"Unable to create unique name\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"Root directory is full.\00", align 1
@n_files = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @alloc_rootdir_entry(%struct.TYPE_19__* %0, %struct.TYPE_20__* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca %struct.TYPE_20__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_20__, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_18__, align 4
  %17 = alloca [12 x i8], align 1
  %18 = alloca %struct.TYPE_20__*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca [12 x i8], align 1
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %5, align 8
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %22 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %266

26:                                               ; preds = %4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %14, align 4
  %27 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %13, align 4
  %30 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %31 = load i32, i32* %13, align 4
  %32 = call i32 @cluster_start(%struct.TYPE_19__* %30, i32 %31)
  store i32 %32, i32* %9, align 4
  br label %33

33:                                               ; preds = %83, %26
  %34 = load i32, i32* %13, align 4
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %33
  %37 = load i32, i32* %13, align 4
  %38 = icmp ne i32 %37, -1
  br label %39

39:                                               ; preds = %36, %33
  %40 = phi i1 [ false, %33 ], [ %38, %36 ]
  br i1 %40, label %41, label %84

41:                                               ; preds = %39
  %42 = load i32, i32* %9, align 4
  %43 = call i32 @fs_read(i32 %42, i32 16, %struct.TYPE_20__* %10)
  %44 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %10, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = call i64 @IS_FREE(i64 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %41
  %49 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %10, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @VFAT_LN_ATTR, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %48
  store i32 1, i32* %12, align 4
  br label %84

54:                                               ; preds = %48, %41
  %55 = load i32, i32* %11, align 4
  %56 = sext i32 %55 to i64
  %57 = add i64 %56, 16
  %58 = trunc i64 %57 to i32
  store i32 %58, i32* %11, align 4
  %59 = load i32, i32* %9, align 4
  %60 = sext i32 %59 to i64
  %61 = add i64 %60, 16
  %62 = trunc i64 %61 to i32
  store i32 %62, i32* %9, align 4
  %63 = load i32, i32* %11, align 4
  %64 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = srem i32 %63, %66
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %83

69:                                               ; preds = %54
  %70 = load i32, i32* %13, align 4
  store i32 %70, i32* %14, align 4
  %71 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %72 = load i32, i32* %13, align 4
  %73 = call i32 @next_cluster(%struct.TYPE_19__* %71, i32 %72)
  store i32 %73, i32* %13, align 4
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %78, label %75

75:                                               ; preds = %69
  %76 = load i32, i32* %13, align 4
  %77 = icmp eq i32 %76, -1
  br i1 %77, label %78, label %79

78:                                               ; preds = %75, %69
  br label %84

79:                                               ; preds = %75
  %80 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %81 = load i32, i32* %13, align 4
  %82 = call i32 @cluster_start(%struct.TYPE_19__* %80, i32 %81)
  store i32 %82, i32* %9, align 4
  br label %83

83:                                               ; preds = %79, %54
  br label %33

84:                                               ; preds = %78, %53, %39
  %85 = load i32, i32* %12, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %165, label %87

87:                                               ; preds = %84
  %88 = load i32, i32* %14, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %92, label %90

90:                                               ; preds = %87
  %91 = call i32 @die(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  br label %92

92:                                               ; preds = %90, %87
  %93 = load i32, i32* %14, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %13, align 4
  br label %95

95:                                               ; preds = %119, %92
  %96 = load i32, i32* %13, align 4
  %97 = load i32, i32* %14, align 4
  %98 = icmp ne i32 %96, %97
  br i1 %98, label %99, label %122

99:                                               ; preds = %95
  %100 = load i32, i32* %13, align 4
  %101 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = add nsw i32 %103, 2
  %105 = icmp sge i32 %100, %104
  br i1 %105, label %106, label %107

106:                                              ; preds = %99
  store i32 2, i32* %13, align 4
  br label %107

107:                                              ; preds = %106, %99
  %108 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %108, i32 0, i32 5
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* %13, align 4
  %112 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %113 = call i32 @get_fat(%struct.TYPE_18__* %16, i32 %110, i32 %111, %struct.TYPE_19__* %112)
  %114 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %16, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %118, label %117

117:                                              ; preds = %107
  br label %122

118:                                              ; preds = %107
  br label %119

119:                                              ; preds = %118
  %120 = load i32, i32* %13, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %13, align 4
  br label %95

122:                                              ; preds = %117, %95
  %123 = load i32, i32* %13, align 4
  %124 = load i32, i32* %14, align 4
  %125 = icmp eq i32 %123, %124
  br i1 %125, label %126, label %128

126:                                              ; preds = %122
  %127 = call i32 @die(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  br label %128

128:                                              ; preds = %126, %122
  %129 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %130 = load i32, i32* %14, align 4
  %131 = load i32, i32* %13, align 4
  %132 = call i32 @set_fat(%struct.TYPE_19__* %129, i32 %130, i32 %131)
  %133 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %134 = load i32, i32* %13, align 4
  %135 = call i32 @set_fat(%struct.TYPE_19__* %133, i32 %134, i32 -1)
  %136 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %137 = load i32, i32* %13, align 4
  %138 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %139 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %140 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @get_owner(%struct.TYPE_19__* %138, i32 %141)
  %143 = call i32 @set_owner(%struct.TYPE_19__* %136, i32 %137, i32 %142)
  %144 = call i32 @memset(%struct.TYPE_20__* %10, i32 0, i32 16)
  %145 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %146 = load i32, i32* %13, align 4
  %147 = call i32 @cluster_start(%struct.TYPE_19__* %145, i32 %146)
  store i32 %147, i32* %9, align 4
  store i32 0, i32* %11, align 4
  br label %148

148:                                              ; preds = %159, %128
  %149 = load i32, i32* %11, align 4
  %150 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %151 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = icmp slt i32 %149, %152
  br i1 %153, label %154, label %164

154:                                              ; preds = %148
  %155 = load i32, i32* %9, align 4
  %156 = load i32, i32* %11, align 4
  %157 = add nsw i32 %155, %156
  %158 = call i32 @fs_write(i32 %157, i32 16, %struct.TYPE_20__* %10)
  br label %159

159:                                              ; preds = %154
  %160 = load i32, i32* %11, align 4
  %161 = sext i32 %160 to i64
  %162 = add i64 %161, 16
  %163 = trunc i64 %162 to i32
  store i32 %163, i32* %11, align 4
  br label %148

164:                                              ; preds = %148
  br label %165

165:                                              ; preds = %164, %84
  %166 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %167 = call i32 @memset(%struct.TYPE_20__* %166, i32 0, i32 16)
  %168 = load i32, i32* %8, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %258

170:                                              ; preds = %165
  br label %171

171:                                              ; preds = %170, %256
  %172 = getelementptr inbounds [12 x i8], [12 x i8]* %17, i64 0, i64 0
  %173 = load i8*, i8** %7, align 8
  %174 = load i32, i32* @alloc_rootdir_entry.curr_num, align 4
  %175 = call i32 @sprintf(i8* %172, i8* %173, i32 %174)
  %176 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %177 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %176, i32 0, i32 1
  %178 = load i64, i64* %177, align 8
  %179 = getelementptr inbounds [12 x i8], [12 x i8]* %17, i64 0, i64 0
  %180 = load i32, i32* @MSDOS_NAME, align 4
  %181 = call i32 @memcpy(i64 %178, i8* %179, i32 %180)
  %182 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %183 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  store i32 %184, i32* %13, align 4
  store i32 0, i32* %11, align 4
  %185 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %186 = load i32, i32* %13, align 4
  %187 = call i32 @cluster_start(%struct.TYPE_19__* %185, i32 %186)
  store i32 %187, i32* %15, align 4
  br label %188

188:                                              ; preds = %242, %171
  %189 = load i32, i32* %13, align 4
  %190 = icmp sgt i32 %189, 0
  br i1 %190, label %191, label %194

191:                                              ; preds = %188
  %192 = load i32, i32* %13, align 4
  %193 = icmp ne i32 %192, -1
  br label %194

194:                                              ; preds = %191, %188
  %195 = phi i1 [ false, %188 ], [ %193, %191 ]
  br i1 %195, label %196, label %243

196:                                              ; preds = %194
  %197 = load i32, i32* %15, align 4
  %198 = call i32 @fs_read(i32 %197, i32 16, %struct.TYPE_20__* %10)
  %199 = load i32, i32* %15, align 4
  %200 = load i32, i32* %9, align 4
  %201 = icmp ne i32 %199, %200
  br i1 %201, label %202, label %214

202:                                              ; preds = %196
  %203 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %10, i32 0, i32 1
  %204 = load i64, i64* %203, align 8
  %205 = inttoptr i64 %204 to i8*
  %206 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %207 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %206, i32 0, i32 1
  %208 = load i64, i64* %207, align 8
  %209 = inttoptr i64 %208 to i8*
  %210 = load i32, i32* @MSDOS_NAME, align 4
  %211 = call i32 @strncmp(i8* %205, i8* %209, i32 %210)
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %214, label %213

213:                                              ; preds = %202
  br label %243

214:                                              ; preds = %202, %196
  %215 = load i32, i32* %11, align 4
  %216 = sext i32 %215 to i64
  %217 = add i64 %216, 16
  %218 = trunc i64 %217 to i32
  store i32 %218, i32* %11, align 4
  %219 = load i32, i32* %15, align 4
  %220 = sext i32 %219 to i64
  %221 = add i64 %220, 16
  %222 = trunc i64 %221 to i32
  store i32 %222, i32* %15, align 4
  %223 = load i32, i32* %11, align 4
  %224 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %225 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %224, i32 0, i32 1
  %226 = load i32, i32* %225, align 4
  %227 = srem i32 %223, %226
  %228 = icmp eq i32 %227, 0
  br i1 %228, label %229, label %242

229:                                              ; preds = %214
  %230 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %231 = load i32, i32* %13, align 4
  %232 = call i32 @next_cluster(%struct.TYPE_19__* %230, i32 %231)
  store i32 %232, i32* %13, align 4
  %233 = icmp eq i32 %232, 0
  br i1 %233, label %237, label %234

234:                                              ; preds = %229
  %235 = load i32, i32* %13, align 4
  %236 = icmp eq i32 %235, -1
  br i1 %236, label %237, label %238

237:                                              ; preds = %234, %229
  br label %243

238:                                              ; preds = %234
  %239 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %240 = load i32, i32* %13, align 4
  %241 = call i32 @cluster_start(%struct.TYPE_19__* %239, i32 %240)
  store i32 %241, i32* %15, align 4
  br label %242

242:                                              ; preds = %238, %214
  br label %188

243:                                              ; preds = %237, %213, %194
  %244 = load i32, i32* %13, align 4
  %245 = icmp eq i32 %244, 0
  br i1 %245, label %249, label %246

246:                                              ; preds = %243
  %247 = load i32, i32* %13, align 4
  %248 = icmp eq i32 %247, -1
  br i1 %248, label %249, label %250

249:                                              ; preds = %246, %243
  br label %257

250:                                              ; preds = %246
  %251 = load i32, i32* @alloc_rootdir_entry.curr_num, align 4
  %252 = add nsw i32 %251, 1
  store i32 %252, i32* @alloc_rootdir_entry.curr_num, align 4
  %253 = icmp sge i32 %252, 10000
  br i1 %253, label %254, label %256

254:                                              ; preds = %250
  %255 = call i32 @die(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  br label %256

256:                                              ; preds = %254, %250
  br label %171

257:                                              ; preds = %249
  br label %265

258:                                              ; preds = %165
  %259 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %260 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %259, i32 0, i32 1
  %261 = load i64, i64* %260, align 8
  %262 = load i8*, i8** %7, align 8
  %263 = load i32, i32* @MSDOS_NAME, align 4
  %264 = call i32 @memcpy(i64 %261, i8* %262, i32 %263)
  br label %265

265:                                              ; preds = %258, %257
  br label %403

266:                                              ; preds = %4
  store i32 0, i32* %19, align 4
  %267 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %268 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %267, i32 0, i32 3
  %269 = load i32, i32* %268, align 4
  %270 = sext i32 %269 to i64
  %271 = mul i64 %270, 16
  %272 = trunc i64 %271 to i32
  %273 = call %struct.TYPE_20__* @alloc(i32 %272)
  store %struct.TYPE_20__* %273, %struct.TYPE_20__** %18, align 8
  %274 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %275 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %274, i32 0, i32 4
  %276 = load i32, i32* %275, align 4
  %277 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %278 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %277, i32 0, i32 3
  %279 = load i32, i32* %278, align 4
  %280 = sext i32 %279 to i64
  %281 = mul i64 %280, 16
  %282 = trunc i64 %281 to i32
  %283 = load %struct.TYPE_20__*, %struct.TYPE_20__** %18, align 8
  %284 = call i32 @fs_read(i32 %276, i32 %282, %struct.TYPE_20__* %283)
  br label %285

285:                                              ; preds = %313, %266
  %286 = load i32, i32* %19, align 4
  %287 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %288 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %287, i32 0, i32 3
  %289 = load i32, i32* %288, align 4
  %290 = icmp slt i32 %286, %289
  br i1 %290, label %291, label %314

291:                                              ; preds = %285
  %292 = load %struct.TYPE_20__*, %struct.TYPE_20__** %18, align 8
  %293 = load i32, i32* %19, align 4
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %292, i64 %294
  %296 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %295, i32 0, i32 1
  %297 = load i64, i64* %296, align 8
  %298 = call i64 @IS_FREE(i64 %297)
  %299 = icmp ne i64 %298, 0
  br i1 %299, label %300, label %310

300:                                              ; preds = %291
  %301 = load %struct.TYPE_20__*, %struct.TYPE_20__** %18, align 8
  %302 = load i32, i32* %19, align 4
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %301, i64 %303
  %305 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %304, i32 0, i32 0
  %306 = load i64, i64* %305, align 8
  %307 = load i64, i64* @VFAT_LN_ATTR, align 8
  %308 = icmp ne i64 %306, %307
  br i1 %308, label %309, label %310

309:                                              ; preds = %300
  br label %314

310:                                              ; preds = %300, %291
  %311 = load i32, i32* %19, align 4
  %312 = add nsw i32 %311, 1
  store i32 %312, i32* %19, align 4
  br label %313

313:                                              ; preds = %310
  br label %285

314:                                              ; preds = %309, %285
  %315 = load i32, i32* %19, align 4
  %316 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %317 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %316, i32 0, i32 3
  %318 = load i32, i32* %317, align 4
  %319 = icmp eq i32 %315, %318
  br i1 %319, label %320, label %322

320:                                              ; preds = %314
  %321 = call i32 @die(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  br label %322

322:                                              ; preds = %320, %314
  %323 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %324 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %323, i32 0, i32 4
  %325 = load i32, i32* %324, align 4
  %326 = sext i32 %325 to i64
  %327 = load i32, i32* %19, align 4
  %328 = sext i32 %327 to i64
  %329 = mul i64 %328, 16
  %330 = add i64 %326, %329
  %331 = trunc i64 %330 to i32
  store i32 %331, i32* %9, align 4
  %332 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %333 = call i32 @memset(%struct.TYPE_20__* %332, i32 0, i32 16)
  %334 = load i32, i32* %8, align 4
  %335 = icmp ne i32 %334, 0
  br i1 %335, label %336, label %393

336:                                              ; preds = %322
  br label %337

337:                                              ; preds = %336, %391
  %338 = getelementptr inbounds [12 x i8], [12 x i8]* %21, i64 0, i64 0
  %339 = load i8*, i8** %7, align 8
  %340 = load i32, i32* @alloc_rootdir_entry.curr_num, align 4
  %341 = call i32 @sprintf(i8* %338, i8* %339, i32 %340)
  %342 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %343 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %342, i32 0, i32 1
  %344 = load i64, i64* %343, align 8
  %345 = getelementptr inbounds [12 x i8], [12 x i8]* %21, i64 0, i64 0
  %346 = load i32, i32* @MSDOS_NAME, align 4
  %347 = call i32 @memcpy(i64 %344, i8* %345, i32 %346)
  store i32 0, i32* %20, align 4
  br label %348

348:                                              ; preds = %375, %337
  %349 = load i32, i32* %20, align 4
  %350 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %351 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %350, i32 0, i32 3
  %352 = load i32, i32* %351, align 4
  %353 = icmp slt i32 %349, %352
  br i1 %353, label %354, label %378

354:                                              ; preds = %348
  %355 = load i32, i32* %20, align 4
  %356 = load i32, i32* %19, align 4
  %357 = icmp ne i32 %355, %356
  br i1 %357, label %358, label %374

358:                                              ; preds = %354
  %359 = load %struct.TYPE_20__*, %struct.TYPE_20__** %18, align 8
  %360 = load i32, i32* %20, align 4
  %361 = sext i32 %360 to i64
  %362 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %359, i64 %361
  %363 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %362, i32 0, i32 1
  %364 = load i64, i64* %363, align 8
  %365 = inttoptr i64 %364 to i8*
  %366 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %367 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %366, i32 0, i32 1
  %368 = load i64, i64* %367, align 8
  %369 = inttoptr i64 %368 to i8*
  %370 = load i32, i32* @MSDOS_NAME, align 4
  %371 = call i32 @strncmp(i8* %365, i8* %369, i32 %370)
  %372 = icmp ne i32 %371, 0
  br i1 %372, label %374, label %373

373:                                              ; preds = %358
  br label %378

374:                                              ; preds = %358, %354
  br label %375

375:                                              ; preds = %374
  %376 = load i32, i32* %20, align 4
  %377 = add nsw i32 %376, 1
  store i32 %377, i32* %20, align 4
  br label %348

378:                                              ; preds = %373, %348
  %379 = load i32, i32* %20, align 4
  %380 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %381 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %380, i32 0, i32 3
  %382 = load i32, i32* %381, align 4
  %383 = icmp eq i32 %379, %382
  br i1 %383, label %384, label %385

384:                                              ; preds = %378
  br label %392

385:                                              ; preds = %378
  %386 = load i32, i32* @alloc_rootdir_entry.curr_num, align 4
  %387 = add nsw i32 %386, 1
  store i32 %387, i32* @alloc_rootdir_entry.curr_num, align 4
  %388 = icmp sge i32 %387, 10000
  br i1 %388, label %389, label %391

389:                                              ; preds = %385
  %390 = call i32 @die(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  br label %391

391:                                              ; preds = %389, %385
  br label %337

392:                                              ; preds = %384
  br label %400

393:                                              ; preds = %322
  %394 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %395 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %394, i32 0, i32 1
  %396 = load i64, i64* %395, align 8
  %397 = load i8*, i8** %7, align 8
  %398 = load i32, i32* @MSDOS_NAME, align 4
  %399 = call i32 @memcpy(i64 %396, i8* %397, i32 %398)
  br label %400

400:                                              ; preds = %393, %392
  %401 = load %struct.TYPE_20__*, %struct.TYPE_20__** %18, align 8
  %402 = call i32 @free(%struct.TYPE_20__* %401)
  br label %403

403:                                              ; preds = %400, %265
  %404 = load i32, i32* @n_files, align 4
  %405 = add nsw i32 %404, 1
  store i32 %405, i32* @n_files, align 4
  %406 = load i32, i32* %9, align 4
  ret i32 %406
}

declare dso_local i32 @cluster_start(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @fs_read(i32, i32, %struct.TYPE_20__*) #1

declare dso_local i64 @IS_FREE(i64) #1

declare dso_local i32 @next_cluster(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @die(i8*) #1

declare dso_local i32 @get_fat(%struct.TYPE_18__*, i32, i32, %struct.TYPE_19__*) #1

declare dso_local i32 @set_fat(%struct.TYPE_19__*, i32, i32) #1

declare dso_local i32 @set_owner(%struct.TYPE_19__*, i32, i32) #1

declare dso_local i32 @get_owner(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @memset(%struct.TYPE_20__*, i32, i32) #1

declare dso_local i32 @fs_write(i32, i32, %struct.TYPE_20__*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @memcpy(i64, i8*, i32) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local %struct.TYPE_20__* @alloc(i32) #1

declare dso_local i32 @free(%struct.TYPE_20__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
