; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_zfs_ioctl.c_zfs_ioc_send_space.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_zfs_ioctl.c_zfs_ioc_send_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i64, i32, i32 }
%struct.TYPE_8__ = type { i8*, i64*, i32, i32 }
%struct.TYPE_9__ = type { i64 }

@B_FALSE = common dso_local global i32 0, align 4
@FTAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"fd\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"largeblockok\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"embedok\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"compressok\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"rawok\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"from\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"redactbook\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"resume_object\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"resume_offset\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"bytes\00", align 1
@B_TRUE = common dso_local global i8* null, align 8
@EXDEV = common dso_local global i32 0, align 4
@ZBM_FLAG_HAS_FBN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@send_space_sum = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [6 x i8] c"space\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, i32*)* @zfs_ioc_send_space to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfs_ioc_send_space(i8* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  %24 = alloca %struct.TYPE_7__, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca %struct.TYPE_8__, align 8
  %28 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* null, i32** %10, align 8
  store i8* null, i8** %12, align 8
  store i8* null, i8** %13, align 8
  store i64 0, i64* %18, align 8
  %29 = load i32, i32* @B_FALSE, align 4
  store i32 %29, i32* %19, align 4
  store i64 0, i64* %20, align 8
  store i64 0, i64* %21, align 8
  store i64 0, i64* %22, align 8
  store i32 -1, i32* %23, align 4
  %30 = bitcast %struct.TYPE_7__* %24 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %30, i8 0, i64 24, i1 false)
  %31 = load i8*, i8** %5, align 8
  %32 = load i32, i32* @FTAG, align 4
  %33 = call i32 @dsl_pool_hold(i8* %31, i32 %32, i32** %8)
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* %11, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %3
  %37 = load i32, i32* %11, align 4
  store i32 %37, i32* %4, align 4
  br label %246

38:                                               ; preds = %3
  %39 = load i32*, i32** %8, align 8
  %40 = load i8*, i8** %5, align 8
  %41 = load i32, i32* @FTAG, align 4
  %42 = call i32 @dsl_dataset_hold(i32* %39, i8* %40, i32 %41, i32** %9)
  store i32 %42, i32* %11, align 4
  %43 = load i32, i32* %11, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %38
  %46 = load i32*, i32** %8, align 8
  %47 = load i32, i32* @FTAG, align 4
  %48 = call i32 @dsl_pool_rele(i32* %46, i32 %47)
  %49 = load i32, i32* %11, align 4
  store i32 %49, i32* %4, align 4
  br label %246

50:                                               ; preds = %38
  %51 = load i32*, i32** %6, align 8
  %52 = call i32 @nvlist_lookup_int32(i32* %51, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %23)
  %53 = load i32*, i32** %6, align 8
  %54 = call i32 @nvlist_exists(i32* %53, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  store i32 %54, i32* %14, align 4
  %55 = load i32*, i32** %6, align 8
  %56 = call i32 @nvlist_exists(i32* %55, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  store i32 %56, i32* %15, align 4
  %57 = load i32*, i32** %6, align 8
  %58 = call i32 @nvlist_exists(i32* %57, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  store i32 %58, i32* %16, align 4
  %59 = load i32*, i32** %6, align 8
  %60 = call i32 @nvlist_exists(i32* %59, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  store i32 %60, i32* %17, align 4
  %61 = load i32*, i32** %6, align 8
  %62 = call i64 @nvlist_lookup_string(i32* %61, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8** %12)
  %63 = icmp eq i64 %62, 0
  %64 = zext i1 %63 to i32
  store i32 %64, i32* %25, align 4
  %65 = load i32*, i32** %6, align 8
  %66 = call i64 @nvlist_lookup_string(i32* %65, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i8** %13)
  %67 = icmp eq i64 %66, 0
  %68 = zext i1 %67 to i32
  store i32 %68, i32* %26, align 4
  %69 = load i32*, i32** %6, align 8
  %70 = call i32 @nvlist_lookup_uint64(i32* %69, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i64* %20)
  %71 = load i32*, i32** %6, align 8
  %72 = call i32 @nvlist_lookup_uint64(i32* %71, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i64* %21)
  %73 = load i32*, i32** %6, align 8
  %74 = call i32 @nvlist_lookup_uint64(i32* %73, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i64* %22)
  %75 = load i32, i32* %26, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %50
  %78 = load i8*, i8** @B_TRUE, align 8
  %79 = ptrtoint i8* %78 to i32
  store i32 %79, i32* %19, align 4
  br label %176

80:                                               ; preds = %50
  %81 = load i32, i32* %25, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %175

83:                                               ; preds = %80
  %84 = load i8*, i8** %12, align 8
  %85 = call i32* @strchr(i8* %84, i8 signext 35)
  %86 = icmp ne i32* %85, null
  br i1 %86, label %87, label %133

87:                                               ; preds = %83
  %88 = load i32*, i32** %8, align 8
  %89 = load i8*, i8** %12, align 8
  %90 = load i32*, i32** %9, align 8
  %91 = call i32 @dsl_bookmark_lookup(i32* %88, i8* %89, i32* %90, %struct.TYPE_7__* %24)
  store i32 %91, i32* %11, align 4
  %92 = load i32, i32* %11, align 4
  %93 = load i32, i32* @EXDEV, align 4
  %94 = icmp eq i32 %92, %93
  br i1 %94, label %95, label %108

95:                                               ; preds = %87
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %108

99:                                               ; preds = %95
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = load i32*, i32** %9, align 8
  %103 = call %struct.TYPE_9__* @dsl_dataset_phys(i32* %102)
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = icmp eq i64 %101, %105
  br i1 %106, label %107, label %108

107:                                              ; preds = %99
  store i32 0, i32* %11, align 4
  br label %108

108:                                              ; preds = %107, %99, %95, %87
  %109 = load i32, i32* %11, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %119

111:                                              ; preds = %108
  %112 = load i32*, i32** %9, align 8
  %113 = load i32, i32* @FTAG, align 4
  %114 = call i32 @dsl_dataset_rele(i32* %112, i32 %113)
  %115 = load i32*, i32** %8, align 8
  %116 = load i32, i32* @FTAG, align 4
  %117 = call i32 @dsl_pool_rele(i32* %115, i32 %116)
  %118 = load i32, i32* %11, align 4
  store i32 %118, i32* %4, align 4
  br label %246

119:                                              ; preds = %108
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %129, label %123

123:                                              ; preds = %119
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 2
  %125 = load i32, i32* %124, align 8
  %126 = load i32, i32* @ZBM_FLAG_HAS_FBN, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %132, label %129

129:                                              ; preds = %123, %119
  %130 = load i8*, i8** @B_TRUE, align 8
  %131 = ptrtoint i8* %130 to i32
  store i32 %131, i32* %19, align 4
  br label %132

132:                                              ; preds = %129, %123
  br label %174

133:                                              ; preds = %83
  %134 = load i8*, i8** %12, align 8
  %135 = call i32* @strchr(i8* %134, i8 signext 64)
  %136 = icmp ne i32* %135, null
  br i1 %136, label %137, label %164

137:                                              ; preds = %133
  %138 = load i32*, i32** %8, align 8
  %139 = load i8*, i8** %12, align 8
  %140 = load i32, i32* @FTAG, align 4
  %141 = call i32 @dsl_dataset_hold(i32* %138, i8* %139, i32 %140, i32** %10)
  store i32 %141, i32* %11, align 4
  %142 = load i32, i32* %11, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %152

144:                                              ; preds = %137
  %145 = load i32*, i32** %9, align 8
  %146 = load i32, i32* @FTAG, align 4
  %147 = call i32 @dsl_dataset_rele(i32* %145, i32 %146)
  %148 = load i32*, i32** %8, align 8
  %149 = load i32, i32* @FTAG, align 4
  %150 = call i32 @dsl_pool_rele(i32* %148, i32 %149)
  %151 = load i32, i32* %11, align 4
  store i32 %151, i32* %4, align 4
  br label %246

152:                                              ; preds = %137
  %153 = load i32*, i32** %9, align 8
  %154 = load i32*, i32** %10, align 8
  %155 = call i32 @dsl_dataset_is_before(i32* %153, i32* %154, i32 0)
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %163, label %157

157:                                              ; preds = %152
  %158 = load i8*, i8** @B_TRUE, align 8
  %159 = ptrtoint i8* %158 to i32
  store i32 %159, i32* %19, align 4
  %160 = load i32*, i32** %10, align 8
  %161 = load i32, i32* @FTAG, align 4
  %162 = call i32 @dsl_dataset_rele(i32* %160, i32 %161)
  br label %163

163:                                              ; preds = %157, %152
  br label %173

164:                                              ; preds = %133
  %165 = load i32*, i32** %9, align 8
  %166 = load i32, i32* @FTAG, align 4
  %167 = call i32 @dsl_dataset_rele(i32* %165, i32 %166)
  %168 = load i32*, i32** %8, align 8
  %169 = load i32, i32* @FTAG, align 4
  %170 = call i32 @dsl_pool_rele(i32* %168, i32 %169)
  %171 = load i32, i32* @EINVAL, align 4
  %172 = call i32 @SET_ERROR(i32 %171)
  store i32 %172, i32* %4, align 4
  br label %246

173:                                              ; preds = %163
  br label %174

174:                                              ; preds = %173, %132
  br label %175

175:                                              ; preds = %174, %80
  br label %176

176:                                              ; preds = %175, %77
  %177 = load i32, i32* %19, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %203

179:                                              ; preds = %176
  %180 = bitcast %struct.TYPE_8__* %27 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %180, i8 0, i64 24, i1 false)
  store i32 0, i32* %28, align 4
  %181 = load i32, i32* @send_space_sum, align 4
  %182 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 2
  store i32 %181, i32* %182, align 8
  %183 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 1
  store i64* %18, i64** %183, align 8
  %184 = load i8*, i8** @B_TRUE, align 8
  %185 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  store i8* %184, i8** %185, align 8
  %186 = load i32*, i32** %9, align 8
  %187 = load i32, i32* @FTAG, align 4
  %188 = call i32 @dsl_dataset_rele(i32* %186, i32 %187)
  %189 = load i32*, i32** %8, align 8
  %190 = load i32, i32* @FTAG, align 4
  %191 = call i32 @dsl_pool_rele(i32* %189, i32 %190)
  %192 = load i8*, i8** %5, align 8
  %193 = load i8*, i8** %12, align 8
  %194 = load i32, i32* %15, align 4
  %195 = load i32, i32* %14, align 4
  %196 = load i32, i32* %16, align 4
  %197 = load i32, i32* %17, align 4
  %198 = load i64, i64* %20, align 8
  %199 = load i64, i64* %21, align 8
  %200 = load i8*, i8** %13, align 8
  %201 = load i32, i32* %23, align 4
  %202 = call i32 @dmu_send(i8* %192, i8* %193, i32 %194, i32 %195, i32 %196, i32 %197, i64 %198, i64 %199, i8* %200, i32 %201, i32* %28, %struct.TYPE_8__* %27)
  store i32 %202, i32* %11, align 4
  br label %241

203:                                              ; preds = %176
  %204 = load i32*, i32** %9, align 8
  %205 = load i32*, i32** %10, align 8
  %206 = load i32, i32* %25, align 4
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %213

208:                                              ; preds = %203
  %209 = load i8*, i8** %12, align 8
  %210 = call i32* @strchr(i8* %209, i8 signext 35)
  %211 = icmp ne i32* %210, null
  br i1 %211, label %212, label %213

212:                                              ; preds = %208
  br label %214

213:                                              ; preds = %208, %203
  br label %214

214:                                              ; preds = %213, %212
  %215 = phi %struct.TYPE_7__* [ %24, %212 ], [ null, %213 ]
  %216 = load i32, i32* %16, align 4
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %221, label %218

218:                                              ; preds = %214
  %219 = load i32, i32* %17, align 4
  %220 = icmp ne i32 %219, 0
  br label %221

221:                                              ; preds = %218, %214
  %222 = phi i1 [ true, %214 ], [ %220, %218 ]
  %223 = zext i1 %222 to i32
  %224 = call i32 @dmu_send_estimate_fast(i32* %204, i32* %205, %struct.TYPE_7__* %215, i32 %223, i64* %18)
  store i32 %224, i32* %11, align 4
  %225 = load i64, i64* %22, align 8
  %226 = load i64, i64* %18, align 8
  %227 = sub nsw i64 %226, %225
  store i64 %227, i64* %18, align 8
  %228 = load i32*, i32** %10, align 8
  %229 = icmp ne i32* %228, null
  br i1 %229, label %230, label %234

230:                                              ; preds = %221
  %231 = load i32*, i32** %10, align 8
  %232 = load i32, i32* @FTAG, align 4
  %233 = call i32 @dsl_dataset_rele(i32* %231, i32 %232)
  br label %234

234:                                              ; preds = %230, %221
  %235 = load i32*, i32** %9, align 8
  %236 = load i32, i32* @FTAG, align 4
  %237 = call i32 @dsl_dataset_rele(i32* %235, i32 %236)
  %238 = load i32*, i32** %8, align 8
  %239 = load i32, i32* @FTAG, align 4
  %240 = call i32 @dsl_pool_rele(i32* %238, i32 %239)
  br label %241

241:                                              ; preds = %234, %179
  %242 = load i32*, i32** %7, align 8
  %243 = load i64, i64* %18, align 8
  %244 = call i32 @fnvlist_add_uint64(i32* %242, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i64 %243)
  %245 = load i32, i32* %11, align 4
  store i32 %245, i32* %4, align 4
  br label %246

246:                                              ; preds = %241, %164, %144, %111, %45, %36
  %247 = load i32, i32* %4, align 4
  ret i32 %247
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @dsl_pool_hold(i8*, i32, i32**) #2

declare dso_local i32 @dsl_dataset_hold(i32*, i8*, i32, i32**) #2

declare dso_local i32 @dsl_pool_rele(i32*, i32) #2

declare dso_local i32 @nvlist_lookup_int32(i32*, i8*, i32*) #2

declare dso_local i32 @nvlist_exists(i32*, i8*) #2

declare dso_local i64 @nvlist_lookup_string(i32*, i8*, i8**) #2

declare dso_local i32 @nvlist_lookup_uint64(i32*, i8*, i64*) #2

declare dso_local i32* @strchr(i8*, i8 signext) #2

declare dso_local i32 @dsl_bookmark_lookup(i32*, i8*, i32*, %struct.TYPE_7__*) #2

declare dso_local %struct.TYPE_9__* @dsl_dataset_phys(i32*) #2

declare dso_local i32 @dsl_dataset_rele(i32*, i32) #2

declare dso_local i32 @dsl_dataset_is_before(i32*, i32*, i32) #2

declare dso_local i32 @SET_ERROR(i32) #2

declare dso_local i32 @dmu_send(i8*, i8*, i32, i32, i32, i32, i64, i64, i8*, i32, i32*, %struct.TYPE_8__*) #2

declare dso_local i32 @dmu_send_estimate_fast(i32*, i32*, %struct.TYPE_7__*, i32, i64*) #2

declare dso_local i32 @fnvlist_add_uint64(i32*, i8*, i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
