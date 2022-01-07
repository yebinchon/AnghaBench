; ModuleID = '/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_sendrecv.c_recv_incremental_replication.c'
source_filename = "/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_sendrecv.c_recv_incremental_replication.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i8*, i8*, i8* }
%struct.TYPE_11__ = type { i64, i64, i32, i64 }

@ZFS_MAX_DATASET_NAME_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"fromsnap\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"not_recursive\00", align 1
@ENOENT = common dso_local global i64 0, align 8
@B_FALSE = common dso_local global i32 0, align 4
@NV_UNIQUE_NAME = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [6 x i8] c"snaps\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"parentfromsnap\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"origin\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"%s@%s\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"%llu\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"snapprops\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] zeroinitializer, align 1
@__const.recv_incremental_replication.zc = private unnamed_addr constant %struct.TYPE_10__ { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i32 0, i32 0), i8* null, i8* null }, align 8
@ZFS_IOC_SET_PROP = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [93 x i8] c"local fs %s does not have fromsnap (%s in stream); must have been deleted locally; ignoring\0A\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.12 = private unnamed_addr constant [34 x i8] c"local fs %s new parent not found\0A\00", align 1
@.str.13 = private unnamed_addr constant [15 x i8] c"another pass:\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, %struct.TYPE_11__*, i32*, i32*, i32*)* @recv_incremental_replication to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @recv_incremental_replication(i32* %0, i8* %1, %struct.TYPE_11__* %2, i32* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i64, align 8
  %22 = alloca [32 x i8], align 16
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i8*, align 8
  %28 = alloca i8*, align 8
  %29 = alloca i32, align 4
  %30 = alloca i32*, align 8
  %31 = alloca i32*, align 8
  %32 = alloca i32*, align 8
  %33 = alloca i32*, align 8
  %34 = alloca i32*, align 8
  %35 = alloca i64, align 8
  %36 = alloca i64, align 8
  %37 = alloca i64, align 8
  %38 = alloca i64, align 8
  %39 = alloca i64, align 8
  %40 = alloca i8*, align 8
  %41 = alloca i8*, align 8
  %42 = alloca i64, align 8
  %43 = alloca i32*, align 8
  %44 = alloca i8*, align 8
  %45 = alloca i64, align 8
  %46 = alloca i8*, align 8
  %47 = alloca i32*, align 8
  %48 = alloca i32*, align 8
  %49 = alloca i8*, align 8
  %50 = alloca i64, align 8
  %51 = alloca %struct.TYPE_10__, align 8
  %52 = alloca i8*, align 8
  %53 = alloca i64, align 8
  %54 = alloca i64, align 8
  %55 = alloca i32*, align 8
  %56 = alloca i8*, align 8
  %57 = alloca i64, align 8
  %58 = alloca i8*, align 8
  store i32* %0, i32** %8, align 8
  store i8* %1, i8** %9, align 8
  store %struct.TYPE_11__* %2, %struct.TYPE_11__** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32* null, i32** %15, align 8
  %59 = load i32, i32* @ZFS_MAX_DATASET_NAME_LEN, align 4
  %60 = zext i32 %59 to i64
  %61 = call i8* @llvm.stacksave()
  store i8* %61, i8** %20, align 8
  %62 = alloca i8, i64 %60, align 16
  store i64 %60, i64* %21, align 8
  %63 = load i32*, i32** %11, align 8
  %64 = call i64 @nvlist_lookup_string(i32* %63, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8** %19)
  %65 = icmp eq i64 0, %64
  %66 = zext i1 %65 to i32
  %67 = call i32 @VERIFY(i32 %66)
  %68 = load i32*, i32** %11, align 8
  %69 = call i64 @nvlist_lookup_boolean(i32* %68, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %70 = load i64, i64* @ENOENT, align 8
  %71 = icmp eq i64 %69, %70
  %72 = zext i1 %71 to i32
  store i32 %72, i32* %26, align 4
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 3
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %6
  store i32 0, i32* %7, align 4
  store i32 1, i32* %29, align 4
  br label %551

78:                                               ; preds = %6
  br label %79

79:                                               ; preds = %541, %78
  %80 = load i32, i32* @B_FALSE, align 4
  store i32 %80, i32* %25, align 4
  store i32 %80, i32* %24, align 4
  %81 = load i32, i32* @NV_UNIQUE_NAME, align 4
  %82 = call i64 @nvlist_alloc(i32** %15, i32 %81, i32 0)
  %83 = icmp eq i64 0, %82
  %84 = zext i1 %83 to i32
  %85 = call i32 @VERIFY(i32 %84)
  %86 = load i32*, i32** %8, align 8
  %87 = load i8*, i8** %9, align 8
  %88 = load i8*, i8** %19, align 8
  %89 = load i32, i32* %26, align 4
  %90 = load i8*, i8** @B_TRUE, align 8
  %91 = load i32, i32* @B_FALSE, align 4
  %92 = load i32, i32* %26, align 4
  %93 = load i32, i32* @B_FALSE, align 4
  %94 = load i32, i32* @B_FALSE, align 4
  %95 = load i32, i32* @B_FALSE, align 4
  %96 = load i8*, i8** @B_TRUE, align 8
  %97 = call i32 @gather_nvlist(i32* %86, i8* %87, i8* %88, i32* null, i32 %89, i8* %90, i32 %91, i32 %92, i32 %93, i32 %94, i32 %95, i8* %96, i32** %14, i32** %16)
  store i32 %97, i32* %23, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %79
  %100 = load i32, i32* %23, align 4
  store i32 %100, i32* %7, align 4
  store i32 1, i32* %29, align 4
  br label %551

101:                                              ; preds = %79
  %102 = load i32*, i32** %14, align 8
  %103 = call i32* @nvlist_next_nvpair(i32* %102, i32* null)
  store i32* %103, i32** %17, align 8
  br label %104

104:                                              ; preds = %519, %101
  %105 = load i32*, i32** %17, align 8
  %106 = icmp ne i32* %105, null
  br i1 %106, label %107, label %521

107:                                              ; preds = %104
  store i32* null, i32** %32, align 8
  store i64 0, i64* %35, align 8
  store i64 0, i64* %36, align 8
  store i64 0, i64* %37, align 8
  %108 = load i32*, i32** %14, align 8
  %109 = load i32*, i32** %17, align 8
  %110 = call i32* @nvlist_next_nvpair(i32* %108, i32* %109)
  store i32* %110, i32** %18, align 8
  %111 = load i32*, i32** %17, align 8
  %112 = call i64 @nvpair_value_nvlist(i32* %111, i32** %30)
  %113 = icmp eq i64 0, %112
  %114 = zext i1 %113 to i32
  %115 = call i32 @VERIFY(i32 %114)
  %116 = load i32*, i32** %30, align 8
  %117 = call i64 @nvlist_lookup_nvlist(i32* %116, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32** %31)
  %118 = icmp eq i64 0, %117
  %119 = zext i1 %118 to i32
  %120 = call i32 @VERIFY(i32 %119)
  %121 = load i32*, i32** %30, align 8
  %122 = call i64 @nvlist_lookup_string(i32* %121, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8** %40)
  %123 = icmp eq i64 0, %122
  %124 = zext i1 %123 to i32
  %125 = call i32 @VERIFY(i32 %124)
  %126 = load i32*, i32** %30, align 8
  %127 = call i64 @nvlist_lookup_uint64(i32* %126, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i64* %38)
  %128 = icmp eq i64 0, %127
  %129 = zext i1 %128 to i32
  %130 = call i32 @VERIFY(i32 %129)
  %131 = load i32*, i32** %30, align 8
  %132 = call i64 @nvlist_lookup_uint64(i32* %131, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i64* %36)
  %133 = load i32*, i32** %31, align 8
  %134 = call i32* @nvlist_next_nvpair(i32* %133, i32* null)
  store i32* %134, i32** %33, align 8
  br label %135

135:                                              ; preds = %151, %107
  %136 = load i32*, i32** %33, align 8
  %137 = icmp ne i32* %136, null
  br i1 %137, label %138, label %155

138:                                              ; preds = %135
  %139 = load i32*, i32** %33, align 8
  %140 = call i64 @nvpair_value_uint64(i32* %139, i64* %42)
  %141 = icmp eq i64 0, %140
  %142 = zext i1 %141 to i32
  %143 = call i32 @VERIFY(i32 %142)
  %144 = load i32*, i32** %12, align 8
  %145 = load i64, i64* %42, align 8
  %146 = call i32* @fsavl_find(i32* %144, i64 %145, i8** null)
  store i32* %146, i32** %32, align 8
  %147 = load i32*, i32** %32, align 8
  %148 = icmp ne i32* %147, null
  br i1 %148, label %149, label %150

149:                                              ; preds = %138
  br label %155

150:                                              ; preds = %138
  br label %151

151:                                              ; preds = %150
  %152 = load i32*, i32** %31, align 8
  %153 = load i32*, i32** %33, align 8
  %154 = call i32* @nvlist_next_nvpair(i32* %152, i32* %153)
  store i32* %154, i32** %33, align 8
  br label %135

155:                                              ; preds = %149, %135
  %156 = load i32*, i32** %32, align 8
  %157 = call i64 @nvlist_lookup_uint64(i32* %156, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i64* %37)
  %158 = load i32*, i32** %32, align 8
  %159 = icmp ne i32* %158, null
  br i1 %159, label %160, label %199

160:                                              ; preds = %155
  %161 = load i64, i64* %36, align 8
  %162 = load i64, i64* %37, align 8
  %163 = icmp ne i64 %161, %162
  br i1 %163, label %164, label %199

164:                                              ; preds = %160
  %165 = load i32*, i32** %8, align 8
  %166 = load i32*, i32** %16, align 8
  %167 = load i64, i64* %37, align 8
  %168 = load i64, i64* %36, align 8
  %169 = call i32 @created_before(i32* %165, i32* %166, i64 %167, i64 %168)
  switch i32 %169, label %190 [
    i32 1, label %170
    i32 -1, label %191
  ]

170:                                              ; preds = %164
  %171 = load i32*, i32** %16, align 8
  %172 = load i64, i64* %36, align 8
  %173 = call i32* @fsavl_find(i32* %171, i64 %172, i8** null)
  store i32* %173, i32** %43, align 8
  %174 = load i32*, i32** %43, align 8
  %175 = call i64 @nvlist_lookup_string(i32* %174, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8** %44)
  %176 = icmp eq i64 0, %175
  %177 = zext i1 %176 to i32
  %178 = call i32 @VERIFY(i32 %177)
  %179 = load i32*, i32** %8, align 8
  %180 = load i8*, i8** %40, align 8
  %181 = load i8*, i8** %44, align 8
  %182 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %183 = call i32 @recv_promote(i32* %179, i8* %180, i8* %181, %struct.TYPE_11__* %182)
  store i32 %183, i32* %23, align 4
  %184 = load i32, i32* %23, align 4
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %186, label %189

186:                                              ; preds = %170
  %187 = load i8*, i8** @B_TRUE, align 8
  %188 = ptrtoint i8* %187 to i32
  store i32 %188, i32* %25, align 4
  br label %189

189:                                              ; preds = %186, %170
  br label %196

190:                                              ; preds = %164
  br label %196

191:                                              ; preds = %164
  %192 = load i32*, i32** %16, align 8
  %193 = call i32 @fsavl_destroy(i32* %192)
  %194 = load i32*, i32** %14, align 8
  %195 = call i32 @nvlist_free(i32* %194)
  store i32 -1, i32* %7, align 4
  store i32 1, i32* %29, align 4
  br label %551

196:                                              ; preds = %190, %189
  %197 = load i8*, i8** @B_TRUE, align 8
  %198 = ptrtoint i8* %197 to i32
  store i32 %198, i32* %24, align 4
  br label %519

199:                                              ; preds = %160, %155
  %200 = load i32*, i32** %31, align 8
  %201 = call i32* @nvlist_next_nvpair(i32* %200, i32* null)
  store i32* %201, i32** %33, align 8
  br label %202

202:                                              ; preds = %336, %199
  %203 = load i32*, i32** %33, align 8
  %204 = icmp ne i32* %203, null
  br i1 %204, label %205, label %338

205:                                              ; preds = %202
  %206 = load i32*, i32** %31, align 8
  %207 = load i32*, i32** %33, align 8
  %208 = call i32* @nvlist_next_nvpair(i32* %206, i32* %207)
  store i32* %208, i32** %34, align 8
  %209 = load i32*, i32** %33, align 8
  %210 = call i64 @nvpair_value_uint64(i32* %209, i64* %45)
  %211 = icmp eq i64 0, %210
  %212 = zext i1 %211 to i32
  %213 = call i32 @VERIFY(i32 %212)
  %214 = load i32*, i32** %12, align 8
  %215 = load i64, i64* %45, align 8
  %216 = call i32* @fsavl_find(i32* %214, i64 %215, i8** %46)
  store i32* %216, i32** %47, align 8
  %217 = load i32*, i32** %47, align 8
  %218 = icmp eq i32* %217, null
  br i1 %218, label %219, label %259

219:                                              ; preds = %205
  %220 = load i32, i32* @ZFS_MAX_DATASET_NAME_LEN, align 4
  %221 = zext i32 %220 to i64
  %222 = call i8* @llvm.stacksave()
  store i8* %222, i8** %49, align 8
  %223 = alloca i8, i64 %221, align 16
  store i64 %221, i64* %50, align 8
  %224 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %225 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %224, i32 0, i32 2
  %226 = load i32, i32* %225, align 8
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %229, label %228

228:                                              ; preds = %219
  store i32 12, i32* %29, align 4
  br label %257

229:                                              ; preds = %219
  %230 = trunc i64 %221 to i32
  %231 = load i8*, i8** %40, align 8
  %232 = load i32*, i32** %33, align 8
  %233 = call i8* @nvpair_name(i32* %232)
  %234 = call i32 @snprintf(i8* %223, i32 %230, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8* %231, i8* %233)
  %235 = load i32*, i32** %8, align 8
  %236 = load i8*, i8** %40, align 8
  %237 = call i64 @strlen(i8* %236)
  %238 = add nsw i64 %237, 1
  %239 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %240 = call i32 @recv_destroy(i32* %235, i8* %223, i64 %238, i8* %62, %struct.TYPE_11__* %239)
  store i32 %240, i32* %23, align 4
  %241 = load i32, i32* %23, align 4
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %246

243:                                              ; preds = %229
  %244 = load i8*, i8** @B_TRUE, align 8
  %245 = ptrtoint i8* %244 to i32
  store i32 %245, i32* %24, align 4
  br label %249

246:                                              ; preds = %229
  %247 = load i8*, i8** @B_TRUE, align 8
  %248 = ptrtoint i8* %247 to i32
  store i32 %248, i32* %25, align 4
  br label %249

249:                                              ; preds = %246, %243
  %250 = getelementptr inbounds [32 x i8], [32 x i8]* %22, i64 0, i64 0
  %251 = load i64, i64* %45, align 8
  %252 = trunc i64 %251 to i32
  %253 = call i32 @sprintf(i8* %250, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i32 %252)
  %254 = load i32*, i32** %15, align 8
  %255 = getelementptr inbounds [32 x i8], [32 x i8]* %22, i64 0, i64 0
  %256 = call i64 @nvlist_add_boolean(i32* %254, i8* %255)
  store i32 12, i32* %29, align 4
  br label %257

257:                                              ; preds = %249, %228
  %258 = load i8*, i8** %49, align 8
  call void @llvm.stackrestore(i8* %258)
  br label %336

259:                                              ; preds = %205
  %260 = load i32*, i32** %47, align 8
  store i32* %260, i32** %32, align 8
  %261 = load i32*, i32** %32, align 8
  %262 = call i64 @nvlist_lookup_nvlist(i32* %261, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i32** %48)
  %263 = icmp eq i64 0, %262
  br i1 %263, label %264, label %289

264:                                              ; preds = %259
  %265 = load i32*, i32** %48, align 8
  %266 = load i8*, i8** %46, align 8
  %267 = call i64 @nvlist_lookup_nvlist(i32* %265, i8* %266, i32** %48)
  %268 = icmp eq i64 0, %267
  br i1 %268, label %269, label %289

269:                                              ; preds = %264
  %270 = bitcast %struct.TYPE_10__* %51 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %270, i8* align 8 bitcast (%struct.TYPE_10__* @__const.recv_incremental_replication.zc to i8*), i64 24, i1 false)
  %271 = load i8*, i8** @B_TRUE, align 8
  %272 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 2
  store i8* %271, i8** %272, align 8
  %273 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 1
  %274 = load i8*, i8** %273, align 8
  %275 = load i8*, i8** %40, align 8
  %276 = load i32*, i32** %33, align 8
  %277 = call i8* @nvpair_name(i32* %276)
  %278 = call i32 @snprintf(i8* %274, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8* %275, i8* %277)
  %279 = load i32*, i32** %8, align 8
  %280 = load i32*, i32** %48, align 8
  %281 = call i64 @zcmd_write_src_nvlist(i32* %279, %struct.TYPE_10__* %51, i32* %280)
  %282 = icmp eq i64 %281, 0
  br i1 %282, label %283, label %288

283:                                              ; preds = %269
  %284 = load i32*, i32** %8, align 8
  %285 = load i32, i32* @ZFS_IOC_SET_PROP, align 4
  %286 = call i32 @zfs_ioctl(i32* %284, i32 %285, %struct.TYPE_10__* %51)
  %287 = call i32 @zcmd_free_nvlists(%struct.TYPE_10__* %51)
  br label %288

288:                                              ; preds = %283, %269
  br label %289

289:                                              ; preds = %288, %264, %259
  %290 = load i32*, i32** %33, align 8
  %291 = call i8* @nvpair_name(i32* %290)
  %292 = load i8*, i8** %46, align 8
  %293 = call i64 @strcmp(i8* %291, i8* %292)
  %294 = icmp ne i64 %293, 0
  br i1 %294, label %295, label %328

295:                                              ; preds = %289
  %296 = load i32, i32* @ZFS_MAX_DATASET_NAME_LEN, align 4
  %297 = zext i32 %296 to i64
  %298 = call i8* @llvm.stacksave()
  store i8* %298, i8** %52, align 8
  %299 = alloca i8, i64 %297, align 16
  store i64 %297, i64* %53, align 8
  %300 = load i32, i32* @ZFS_MAX_DATASET_NAME_LEN, align 4
  %301 = zext i32 %300 to i64
  %302 = alloca i8, i64 %301, align 16
  store i64 %301, i64* %54, align 8
  %303 = trunc i64 %297 to i32
  %304 = load i8*, i8** %40, align 8
  %305 = load i32*, i32** %33, align 8
  %306 = call i8* @nvpair_name(i32* %305)
  %307 = call i32 @snprintf(i8* %299, i32 %303, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8* %304, i8* %306)
  %308 = trunc i64 %297 to i32
  %309 = load i8*, i8** %40, align 8
  %310 = load i8*, i8** %46, align 8
  %311 = call i32 @snprintf(i8* %302, i32 %308, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8* %309, i8* %310)
  %312 = load i32*, i32** %8, align 8
  %313 = load i8*, i8** %40, align 8
  %314 = call i64 @strlen(i8* %313)
  %315 = add nsw i64 %314, 1
  %316 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %317 = call i32 @recv_rename(i32* %312, i8* %299, i8* %302, i64 %315, i8* %62, %struct.TYPE_11__* %316)
  store i32 %317, i32* %23, align 4
  %318 = load i32, i32* %23, align 4
  %319 = icmp ne i32 %318, 0
  br i1 %319, label %320, label %323

320:                                              ; preds = %295
  %321 = load i8*, i8** @B_TRUE, align 8
  %322 = ptrtoint i8* %321 to i32
  store i32 %322, i32* %24, align 4
  br label %326

323:                                              ; preds = %295
  %324 = load i8*, i8** @B_TRUE, align 8
  %325 = ptrtoint i8* %324 to i32
  store i32 %325, i32* %25, align 4
  br label %326

326:                                              ; preds = %323, %320
  %327 = load i8*, i8** %52, align 8
  call void @llvm.stackrestore(i8* %327)
  br label %328

328:                                              ; preds = %326, %289
  %329 = load i8*, i8** %46, align 8
  %330 = load i8*, i8** %19, align 8
  %331 = call i64 @strcmp(i8* %329, i8* %330)
  %332 = icmp eq i64 %331, 0
  br i1 %332, label %333, label %335

333:                                              ; preds = %328
  %334 = load i64, i64* %45, align 8
  store i64 %334, i64* %35, align 8
  br label %335

335:                                              ; preds = %333, %328
  br label %336

336:                                              ; preds = %335, %257
  %337 = load i32*, i32** %34, align 8
  store i32* %337, i32** %33, align 8
  br label %202

338:                                              ; preds = %202
  %339 = load i32*, i32** %32, align 8
  %340 = icmp eq i32* %339, null
  br i1 %340, label %341, label %371

341:                                              ; preds = %338
  %342 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %343 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %342, i32 0, i32 2
  %344 = load i32, i32* %343, align 8
  %345 = icmp ne i32 %344, 0
  br i1 %345, label %347, label %346

346:                                              ; preds = %341
  br label %519

347:                                              ; preds = %341
  %348 = load i32*, i32** %8, align 8
  %349 = load i8*, i8** %40, align 8
  %350 = load i8*, i8** %9, align 8
  %351 = call i64 @strlen(i8* %350)
  %352 = add nsw i64 %351, 1
  %353 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %354 = call i32 @recv_destroy(i32* %348, i8* %349, i64 %352, i8* %62, %struct.TYPE_11__* %353)
  store i32 %354, i32* %23, align 4
  %355 = load i32, i32* %23, align 4
  %356 = icmp ne i32 %355, 0
  br i1 %356, label %357, label %360

357:                                              ; preds = %347
  %358 = load i8*, i8** @B_TRUE, align 8
  %359 = ptrtoint i8* %358 to i32
  store i32 %359, i32* %24, align 4
  br label %363

360:                                              ; preds = %347
  %361 = load i8*, i8** @B_TRUE, align 8
  %362 = ptrtoint i8* %361 to i32
  store i32 %362, i32* %25, align 4
  br label %363

363:                                              ; preds = %360, %357
  %364 = getelementptr inbounds [32 x i8], [32 x i8]* %22, i64 0, i64 0
  %365 = load i64, i64* %38, align 8
  %366 = trunc i64 %365 to i32
  %367 = call i32 @sprintf(i8* %364, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i32 %366)
  %368 = load i32*, i32** %15, align 8
  %369 = getelementptr inbounds [32 x i8], [32 x i8]* %22, i64 0, i64 0
  %370 = call i64 @nvlist_add_boolean(i32* %368, i8* %369)
  br label %519

371:                                              ; preds = %338
  %372 = load i64, i64* %35, align 8
  %373 = icmp eq i64 %372, 0
  br i1 %373, label %374, label %384

374:                                              ; preds = %371
  %375 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %376 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %375, i32 0, i32 0
  %377 = load i64, i64* %376, align 8
  %378 = icmp ne i64 %377, 0
  br i1 %378, label %379, label %383

379:                                              ; preds = %374
  %380 = load i8*, i8** %40, align 8
  %381 = load i8*, i8** %19, align 8
  %382 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str.10, i64 0, i64 0), i8* %380, i8* %381)
  br label %383

383:                                              ; preds = %379, %374
  br label %519

384:                                              ; preds = %371
  %385 = load i32*, i32** %32, align 8
  %386 = call i64 @nvlist_lookup_string(i32* %385, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8** %41)
  %387 = icmp eq i64 0, %386
  %388 = zext i1 %387 to i32
  %389 = call i32 @VERIFY(i32 %388)
  %390 = load i32*, i32** %32, align 8
  %391 = call i64 @nvlist_lookup_uint64(i32* %390, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i64* %39)
  %392 = icmp eq i64 0, %391
  %393 = zext i1 %392 to i32
  %394 = call i32 @VERIFY(i32 %393)
  %395 = load i8*, i8** %40, align 8
  %396 = call i8* @strrchr(i8* %395, i8 signext 47)
  store i8* %396, i8** %27, align 8
  %397 = load i8*, i8** %41, align 8
  %398 = call i8* @strrchr(i8* %397, i8 signext 47)
  store i8* %398, i8** %28, align 8
  %399 = load i64, i64* %39, align 8
  %400 = icmp ne i64 %399, 0
  br i1 %400, label %401, label %423

401:                                              ; preds = %384
  %402 = load i64, i64* %38, align 8
  %403 = icmp ne i64 %402, 0
  br i1 %403, label %404, label %423

404:                                              ; preds = %401
  %405 = load i64, i64* %39, align 8
  %406 = load i64, i64* %38, align 8
  %407 = icmp ne i64 %405, %406
  br i1 %407, label %408, label %423

408:                                              ; preds = %404
  %409 = getelementptr inbounds [32 x i8], [32 x i8]* %22, i64 0, i64 0
  %410 = load i64, i64* %38, align 8
  %411 = trunc i64 %410 to i32
  %412 = call i32 @sprintf(i8* %409, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i32 %411)
  %413 = load i32*, i32** %15, align 8
  %414 = getelementptr inbounds [32 x i8], [32 x i8]* %22, i64 0, i64 0
  %415 = call i64 @nvlist_exists(i32* %413, i8* %414)
  %416 = icmp ne i64 %415, 0
  br i1 %416, label %417, label %422

417:                                              ; preds = %408
  %418 = load i8*, i8** @B_TRUE, align 8
  %419 = ptrtoint i8* %418 to i32
  store i32 %419, i32* %25, align 4
  %420 = load i8*, i8** @B_TRUE, align 8
  %421 = ptrtoint i8* %420 to i32
  store i32 %421, i32* %24, align 4
  br label %522

422:                                              ; preds = %408
  br label %423

423:                                              ; preds = %422, %404, %401, %384
  %424 = load i64, i64* %39, align 8
  %425 = icmp ne i64 %424, 0
  br i1 %425, label %426, label %433

426:                                              ; preds = %423
  %427 = load i64, i64* %38, align 8
  %428 = icmp ne i64 %427, 0
  br i1 %428, label %429, label %433

429:                                              ; preds = %426
  %430 = load i64, i64* %39, align 8
  %431 = load i64, i64* %38, align 8
  %432 = icmp ne i64 %430, %431
  br i1 %432, label %454, label %433

433:                                              ; preds = %429, %426, %423
  %434 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %435 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %434, i32 0, i32 1
  %436 = load i64, i64* %435, align 8
  %437 = icmp ne i64 %436, 0
  br i1 %437, label %443, label %438

438:                                              ; preds = %433
  %439 = load i8*, i8** %9, align 8
  %440 = load i8*, i8** %40, align 8
  %441 = call i64 @strcmp(i8* %439, i8* %440)
  %442 = icmp ne i64 %441, 0
  br i1 %442, label %443, label %518

443:                                              ; preds = %438, %433
  %444 = load i8*, i8** %27, align 8
  %445 = icmp ne i8* %444, null
  br i1 %445, label %446, label %518

446:                                              ; preds = %443
  %447 = load i8*, i8** %28, align 8
  %448 = icmp ne i8* %447, null
  br i1 %448, label %449, label %518

449:                                              ; preds = %446
  %450 = load i8*, i8** %27, align 8
  %451 = load i8*, i8** %28, align 8
  %452 = call i64 @strcmp(i8* %450, i8* %451)
  %453 = icmp ne i64 %452, 0
  br i1 %453, label %454, label %518

454:                                              ; preds = %449, %429
  %455 = load i32, i32* @ZFS_MAX_DATASET_NAME_LEN, align 4
  %456 = zext i32 %455 to i64
  %457 = call i8* @llvm.stacksave()
  store i8* %457, i8** %56, align 8
  %458 = alloca i8, i64 %456, align 16
  store i64 %456, i64* %57, align 8
  %459 = load i32*, i32** %16, align 8
  %460 = load i64, i64* %39, align 8
  %461 = call i32* @fsavl_find(i32* %459, i64 %460, i8** null)
  store i32* %461, i32** %55, align 8
  %462 = load i32*, i32** %55, align 8
  %463 = icmp ne i32* %462, null
  br i1 %463, label %464, label %475

464:                                              ; preds = %454
  %465 = load i32*, i32** %55, align 8
  %466 = call i64 @nvlist_lookup_string(i32* %465, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8** %58)
  %467 = icmp eq i64 0, %466
  %468 = zext i1 %467 to i32
  %469 = call i32 @VERIFY(i32 %468)
  %470 = trunc i64 %456 to i32
  %471 = load i8*, i8** %58, align 8
  %472 = load i8*, i8** %41, align 8
  %473 = call i8* @strrchr(i8* %472, i8 signext 47)
  %474 = call i32 @snprintf(i8* %458, i32 %470, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i8* %471, i8* %473)
  br label %485

475:                                              ; preds = %454
  %476 = getelementptr inbounds i8, i8* %458, i64 0
  store i8 0, i8* %476, align 16
  %477 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %478 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %477, i32 0, i32 0
  %479 = load i64, i64* %478, align 8
  %480 = icmp ne i64 %479, 0
  br i1 %480, label %481, label %484

481:                                              ; preds = %475
  %482 = load i8*, i8** %40, align 8
  %483 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.12, i64 0, i64 0), i8* %482)
  br label %484

484:                                              ; preds = %481, %475
  br label %485

485:                                              ; preds = %484, %464
  %486 = getelementptr inbounds i8, i8* %62, i64 0
  store i8 0, i8* %486, align 16
  %487 = load i32*, i32** %8, align 8
  %488 = load i8*, i8** %40, align 8
  %489 = load i8*, i8** %9, align 8
  %490 = call i64 @strlen(i8* %489)
  %491 = add nsw i64 %490, 1
  %492 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %493 = call i32 @recv_rename(i32* %487, i8* %488, i8* %458, i64 %491, i8* %62, %struct.TYPE_11__* %492)
  store i32 %493, i32* %23, align 4
  %494 = load i32*, i32** %13, align 8
  %495 = icmp ne i32* %494, null
  br i1 %495, label %496, label %507

496:                                              ; preds = %485
  %497 = getelementptr inbounds i8, i8* %62, i64 0
  %498 = load i8, i8* %497, align 16
  %499 = sext i8 %498 to i32
  %500 = icmp ne i32 %499, 0
  br i1 %500, label %501, label %507

501:                                              ; preds = %496
  %502 = load i32*, i32** %13, align 8
  %503 = call i64 @nvlist_add_boolean(i32* %502, i8* %62)
  %504 = icmp eq i64 0, %503
  %505 = zext i1 %504 to i32
  %506 = call i32 @VERIFY(i32 %505)
  br label %507

507:                                              ; preds = %501, %496, %485
  %508 = load i32, i32* %23, align 4
  %509 = icmp ne i32 %508, 0
  br i1 %509, label %510, label %513

510:                                              ; preds = %507
  %511 = load i8*, i8** @B_TRUE, align 8
  %512 = ptrtoint i8* %511 to i32
  store i32 %512, i32* %24, align 4
  br label %516

513:                                              ; preds = %507
  %514 = load i8*, i8** @B_TRUE, align 8
  %515 = ptrtoint i8* %514 to i32
  store i32 %515, i32* %25, align 4
  br label %516

516:                                              ; preds = %513, %510
  %517 = load i8*, i8** %56, align 8
  call void @llvm.stackrestore(i8* %517)
  br label %518

518:                                              ; preds = %516, %449, %446, %443, %438
  br label %519

519:                                              ; preds = %518, %383, %363, %346, %196
  %520 = load i32*, i32** %18, align 8
  store i32* %520, i32** %17, align 8
  br label %104

521:                                              ; preds = %104
  br label %522

522:                                              ; preds = %521, %417
  %523 = load i32*, i32** %16, align 8
  %524 = call i32 @fsavl_destroy(i32* %523)
  %525 = load i32*, i32** %14, align 8
  %526 = call i32 @nvlist_free(i32* %525)
  %527 = load i32*, i32** %15, align 8
  %528 = call i32 @nvlist_free(i32* %527)
  %529 = load i32, i32* %24, align 4
  %530 = icmp ne i32 %529, 0
  br i1 %530, label %531, label %542

531:                                              ; preds = %522
  %532 = load i32, i32* %25, align 4
  %533 = icmp ne i32 %532, 0
  br i1 %533, label %534, label %542

534:                                              ; preds = %531
  %535 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %536 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %535, i32 0, i32 0
  %537 = load i64, i64* %536, align 8
  %538 = icmp ne i64 %537, 0
  br i1 %538, label %539, label %541

539:                                              ; preds = %534
  %540 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i64 0, i64 0))
  br label %541

541:                                              ; preds = %539, %534
  br label %79

542:                                              ; preds = %531, %522
  %543 = load i32, i32* %24, align 4
  %544 = icmp ne i32 %543, 0
  br i1 %544, label %548, label %545

545:                                              ; preds = %542
  %546 = load i32, i32* %23, align 4
  %547 = icmp ne i32 %546, 0
  br label %548

548:                                              ; preds = %545, %542
  %549 = phi i1 [ true, %542 ], [ %547, %545 ]
  %550 = zext i1 %549 to i32
  store i32 %550, i32* %7, align 4
  store i32 1, i32* %29, align 4
  br label %551

551:                                              ; preds = %548, %191, %99, %77
  %552 = load i8*, i8** %20, align 8
  call void @llvm.stackrestore(i8* %552)
  %553 = load i32, i32* %7, align 4
  ret i32 %553
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @VERIFY(i32) #2

declare dso_local i64 @nvlist_lookup_string(i32*, i8*, i8**) #2

declare dso_local i64 @nvlist_lookup_boolean(i32*, i8*) #2

declare dso_local i64 @nvlist_alloc(i32**, i32, i32) #2

declare dso_local i32 @gather_nvlist(i32*, i8*, i8*, i32*, i32, i8*, i32, i32, i32, i32, i32, i8*, i32**, i32**) #2

declare dso_local i32* @nvlist_next_nvpair(i32*, i32*) #2

declare dso_local i64 @nvpair_value_nvlist(i32*, i32**) #2

declare dso_local i64 @nvlist_lookup_nvlist(i32*, i8*, i32**) #2

declare dso_local i64 @nvlist_lookup_uint64(i32*, i8*, i64*) #2

declare dso_local i64 @nvpair_value_uint64(i32*, i64*) #2

declare dso_local i32* @fsavl_find(i32*, i64, i8**) #2

declare dso_local i32 @created_before(i32*, i32*, i64, i64) #2

declare dso_local i32 @recv_promote(i32*, i8*, i8*, %struct.TYPE_11__*) #2

declare dso_local i32 @fsavl_destroy(i32*) #2

declare dso_local i32 @nvlist_free(i32*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #2

declare dso_local i8* @nvpair_name(i32*) #2

declare dso_local i32 @recv_destroy(i32*, i8*, i64, i8*, %struct.TYPE_11__*) #2

declare dso_local i64 @strlen(i8*) #2

declare dso_local i32 @sprintf(i8*, i8*, i32) #2

declare dso_local i64 @nvlist_add_boolean(i32*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local i64 @zcmd_write_src_nvlist(i32*, %struct.TYPE_10__*, i32*) #2

declare dso_local i32 @zfs_ioctl(i32*, i32, %struct.TYPE_10__*) #2

declare dso_local i32 @zcmd_free_nvlists(%struct.TYPE_10__*) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i32 @recv_rename(i32*, i8*, i8*, i64, i8*, %struct.TYPE_11__*) #2

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i8* @strrchr(i8*, i8 signext) #2

declare dso_local i64 @nvlist_exists(i32*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
