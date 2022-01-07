; ModuleID = '/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_sendrecv.c_zfs_send_one.c'
source_filename = "/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_sendrecv.c_zfs_send_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, i32* }
%struct.TYPE_19__ = type { i64, i64, i64, i64, i64, i64, i32, i64, i32, i32, i32 }
%struct.TYPE_20__ = type { i32, i64, i32, i32, %struct.TYPE_18__*, i32 }
%struct.TYPE_21__ = type { i32 }

@TEXT_DOMAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"warning: cannot send '%s'\00", align 1
@ZFS_TYPE_DATASET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"not an earlier snapshot from the same fs\00", align 1
@EZFS_CROSSTARGET = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i32 0, align 4
@send_progress_thread = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@EZFS_THREADCREATEFAILED = common dso_local global i32 0, align 4
@PTHREAD_CANCELED = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [31 x i8] c"progress thread exited nonzero\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"incremental source (%s) does not exist\00", align 1
@EZFS_NOENT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [27 x i8] c"dataset key must be loaded\00", align 1
@EZFS_CRYPTOFAILED = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [56 x i8] c"target is busy; if a filesystem, it must not be mounted\00", align 1
@EZFS_BUSY = common dso_local global i32 0, align 4
@EZFS_BADBACKUP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfs_send_one(%struct.TYPE_18__* %0, i8* %1, i32 %2, %struct.TYPE_19__* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_18__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_19__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_20__, align 8
  %18 = alloca %struct.TYPE_21__, align 4
  %19 = alloca [1024 x i8], align 16
  %20 = alloca %struct.TYPE_18__*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i32, align 4
  %23 = alloca [1024 x i8], align 16
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.TYPE_19__* %3, %struct.TYPE_19__** %10, align 8
  store i8* %4, i8** %11, align 8
  %24 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  store i32* %26, i32** %13, align 8
  %27 = load i32, i32* %9, align 4
  store i32 %27, i32* %14, align 4
  %28 = bitcast %struct.TYPE_20__* %17 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %28, i8 0, i64 40, i1 false)
  %29 = bitcast %struct.TYPE_21__* %18 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %29, i8 0, i64 4, i1 false)
  %30 = getelementptr inbounds [1024 x i8], [1024 x i8]* %19, i64 0, i64 0
  %31 = load i32, i32* @TEXT_DOMAIN, align 4
  %32 = call i8* @dgettext(i32 %31, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %33 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %30, i32 1024, i8* %32, i32 %35)
  %37 = load i8*, i8** %8, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %39, label %70

39:                                               ; preds = %5
  %40 = load i8*, i8** %8, align 8
  %41 = call i64 @strchr(i8* %40, i8 signext 64)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %70

43:                                               ; preds = %39
  %44 = load i32*, i32** %13, align 8
  %45 = load i8*, i8** %8, align 8
  %46 = load i32, i32* @ZFS_TYPE_DATASET, align 4
  %47 = call %struct.TYPE_18__* @zfs_open(i32* %44, i8* %45, i32 %46)
  store %struct.TYPE_18__* %47, %struct.TYPE_18__** %20, align 8
  %48 = load %struct.TYPE_18__*, %struct.TYPE_18__** %20, align 8
  %49 = icmp eq %struct.TYPE_18__* %48, null
  br i1 %49, label %50, label %51

50:                                               ; preds = %43
  store i32 -1, i32* %6, align 4
  br label %361

51:                                               ; preds = %43
  %52 = load %struct.TYPE_18__*, %struct.TYPE_18__** %20, align 8
  %53 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %54 = call i32 @snapshot_is_before(%struct.TYPE_18__* %52, %struct.TYPE_18__* %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %67, label %56

56:                                               ; preds = %51
  %57 = load %struct.TYPE_18__*, %struct.TYPE_18__** %20, align 8
  %58 = call i32 @zfs_close(%struct.TYPE_18__* %57)
  %59 = load i32*, i32** %13, align 8
  %60 = load i32, i32* @TEXT_DOMAIN, align 4
  %61 = call i8* @dgettext(i32 %60, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %62 = call i32 (i32*, i8*, ...) @zfs_error_aux(i32* %59, i8* %61)
  %63 = load i32*, i32** %13, align 8
  %64 = load i32, i32* @EZFS_CROSSTARGET, align 4
  %65 = getelementptr inbounds [1024 x i8], [1024 x i8]* %19, i64 0, i64 0
  %66 = call i32 @zfs_error(i32* %63, i32 %64, i8* %65)
  store i32 %66, i32* %6, align 4
  br label %361

67:                                               ; preds = %51
  %68 = load %struct.TYPE_18__*, %struct.TYPE_18__** %20, align 8
  %69 = call i32 @zfs_close(%struct.TYPE_18__* %68)
  br label %70

70:                                               ; preds = %67, %39, %5
  %71 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %72 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %71, i32 0, i32 3
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %85, label %75

75:                                               ; preds = %70
  %76 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %77 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %85, label %80

80:                                               ; preds = %75
  %81 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %82 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %122

85:                                               ; preds = %80, %75, %70
  %86 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %87 = load i32, i32* %9, align 4
  %88 = load i32, i32* @B_TRUE, align 4
  %89 = load i32, i32* @B_FALSE, align 4
  %90 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %91 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = icmp sgt i64 %92, 0
  %94 = zext i1 %93 to i32
  %95 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %96 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %95, i32 0, i32 7
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %99 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %98, i32 0, i32 10
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %102 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %101, i32 0, i32 9
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %105 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %108 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %107, i32 0, i32 2
  %109 = load i64, i64* %108, align 8
  %110 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %111 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %110, i32 0, i32 3
  %112 = load i64, i64* %111, align 8
  %113 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %114 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %113, i32 0, i32 8
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @send_prelim_records(%struct.TYPE_18__* %86, i32* null, i32 %87, i32 %88, i32 %89, i32 %94, i64 %97, i32 %100, i32 %103, i64 %106, i64 %109, i64 %112, i32 %115, i32* null, i32* null)
  store i32 %116, i32* %12, align 4
  %117 = load i32, i32* %12, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %121

119:                                              ; preds = %85
  %120 = load i32, i32* %12, align 4
  store i32 %120, i32* %6, align 4
  br label %361

121:                                              ; preds = %85
  br label %122

122:                                              ; preds = %121, %80
  %123 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %124 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %140

127:                                              ; preds = %122
  %128 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %129 = load i8*, i8** %8, align 8
  %130 = load i32, i32* %9, align 4
  %131 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %132 = load i8*, i8** %11, align 8
  %133 = getelementptr inbounds [1024 x i8], [1024 x i8]* %19, i64 0, i64 0
  %134 = call i32 @estimate_size(%struct.TYPE_18__* %128, i8* %129, i32 %130, %struct.TYPE_19__* %131, i32 0, i32 0, i32 0, i8* %132, i8* %133)
  store i32 %134, i32* %12, align 4
  %135 = load i32, i32* %12, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %139

137:                                              ; preds = %127
  %138 = load i32, i32* %12, align 4
  store i32 %138, i32* %6, align 4
  br label %361

139:                                              ; preds = %127
  br label %140

140:                                              ; preds = %139, %122
  %141 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %142 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %141, i32 0, i32 7
  %143 = load i64, i64* %142, align 8
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %140
  store i32 0, i32* %6, align 4
  br label %361

146:                                              ; preds = %140
  %147 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %148 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %147, i32 0, i32 4
  %149 = load i64, i64* %148, align 8
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %160

151:                                              ; preds = %146
  %152 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %153 = load i32, i32* %9, align 4
  %154 = call i32 @get_dedup_fd(%struct.TYPE_18__* %152, %struct.TYPE_21__* %18, i32 %153, i32* %15, i32* %9)
  store i32 %154, i32* %12, align 4
  %155 = load i32, i32* %12, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %159

157:                                              ; preds = %151
  %158 = load i32, i32* %12, align 4
  store i32 %158, i32* %6, align 4
  br label %361

159:                                              ; preds = %151
  br label %160

160:                                              ; preds = %159, %146
  %161 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %162 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %161, i32 0, i32 5
  %163 = load i64, i64* %162, align 8
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %210

165:                                              ; preds = %160
  %166 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %167 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %17, i32 0, i32 4
  store %struct.TYPE_18__* %166, %struct.TYPE_18__** %167, align 8
  %168 = load i32, i32* %9, align 4
  %169 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %17, i32 0, i32 0
  store i32 %168, i32* %169, align 8
  %170 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %171 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %170, i32 0, i32 6
  %172 = load i32, i32* %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %17, i32 0, i32 3
  store i32 %172, i32* %173, align 4
  %174 = load i32, i32* @B_FALSE, align 4
  %175 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %17, i32 0, i32 2
  store i32 %174, i32* %175, align 8
  %176 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %177 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %176, i32 0, i32 0
  %178 = load i64, i64* %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %17, i32 0, i32 1
  store i64 %178, i64* %179, align 8
  %180 = load i32, i32* @send_progress_thread, align 4
  %181 = call i32 @pthread_create(i32* %16, i32* null, i32 %180, %struct.TYPE_20__* %17)
  store i32 %181, i32* %12, align 4
  %182 = load i32, i32* %12, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %209

184:                                              ; preds = %165
  %185 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %186 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %185, i32 0, i32 1
  %187 = load i32*, i32** %186, align 8
  %188 = load i32, i32* @errno, align 4
  %189 = call i8* @strerror(i32 %188)
  %190 = call i32 (i32*, i8*, ...) @zfs_error_aux(i32* %187, i8* %189)
  %191 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %192 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %191, i32 0, i32 4
  %193 = load i64, i64* %192, align 8
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %202

195:                                              ; preds = %184
  %196 = load i32, i32* %15, align 4
  %197 = call i32 @pthread_cancel(i32 %196)
  %198 = load i32, i32* %9, align 4
  %199 = call i32 @close(i32 %198)
  %200 = load i32, i32* %15, align 4
  %201 = call i32 @pthread_join(i32 %200, i8** null)
  br label %202

202:                                              ; preds = %195, %184
  %203 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %204 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %203, i32 0, i32 1
  %205 = load i32*, i32** %204, align 8
  %206 = load i32, i32* @EZFS_THREADCREATEFAILED, align 4
  %207 = getelementptr inbounds [1024 x i8], [1024 x i8]* %19, i64 0, i64 0
  %208 = call i32 @zfs_error(i32* %205, i32 %206, i8* %207)
  store i32 %208, i32* %6, align 4
  br label %361

209:                                              ; preds = %165
  br label %210

210:                                              ; preds = %209, %160
  %211 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %212 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 8
  %214 = load i8*, i8** %8, align 8
  %215 = load i32, i32* %9, align 4
  %216 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %217 = call i32 @lzc_flags_from_sendflags(%struct.TYPE_19__* %216)
  %218 = load i8*, i8** %11, align 8
  %219 = call i32 @lzc_send_redacted(i32 %213, i8* %214, i32 %215, i32 %217, i8* %218)
  store i32 %219, i32* %12, align 4
  %220 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %221 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %220, i32 0, i32 5
  %222 = load i64, i64* %221, align 8
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %224, label %252

224:                                              ; preds = %210
  store i8* null, i8** %21, align 8
  %225 = load i32, i32* %12, align 4
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %230

227:                                              ; preds = %224
  %228 = load i32, i32* %16, align 4
  %229 = call i32 @pthread_cancel(i32 %228)
  br label %230

230:                                              ; preds = %227, %224
  %231 = load i32, i32* %16, align 4
  %232 = call i32 @pthread_join(i32 %231, i8** %21)
  %233 = load i8*, i8** %21, align 8
  %234 = ptrtoint i8* %233 to i64
  %235 = trunc i64 %234 to i32
  store i32 %235, i32* %22, align 4
  %236 = load i32, i32* %22, align 4
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %238, label %251

238:                                              ; preds = %230
  %239 = load i8*, i8** %21, align 8
  %240 = load i8*, i8** @PTHREAD_CANCELED, align 8
  %241 = icmp ne i8* %239, %240
  br i1 %241, label %242, label %251

242:                                              ; preds = %238
  %243 = getelementptr inbounds [1024 x i8], [1024 x i8]* %23, i64 0, i64 0
  %244 = load i32, i32* @TEXT_DOMAIN, align 4
  %245 = call i8* @dgettext(i32 %244, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %246 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %243, i32 1024, i8* %245)
  %247 = load i32*, i32** %13, align 8
  %248 = load i32, i32* %22, align 4
  %249 = getelementptr inbounds [1024 x i8], [1024 x i8]* %23, i64 0, i64 0
  %250 = call i32 @zfs_standard_error(i32* %247, i32 %248, i8* %249)
  store i32 %250, i32* %6, align 4
  br label %361

251:                                              ; preds = %238, %230
  br label %252

252:                                              ; preds = %251, %210
  %253 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %254 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %253, i32 0, i32 4
  %255 = load i64, i64* %254, align 8
  %256 = icmp ne i64 %255, 0
  br i1 %256, label %257, label %268

257:                                              ; preds = %252
  %258 = load i32, i32* %12, align 4
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %260, label %263

260:                                              ; preds = %257
  %261 = load i32, i32* %15, align 4
  %262 = call i32 @pthread_cancel(i32 %261)
  br label %263

263:                                              ; preds = %260, %257
  %264 = load i32, i32* %9, align 4
  %265 = call i32 @close(i32 %264)
  %266 = load i32, i32* %15, align 4
  %267 = call i32 @pthread_join(i32 %266, i8** null)
  br label %268

268:                                              ; preds = %263, %252
  %269 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %270 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %269, i32 0, i32 3
  %271 = load i64, i64* %270, align 8
  %272 = icmp ne i64 %271, 0
  br i1 %272, label %283, label %273

273:                                              ; preds = %268
  %274 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %275 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %274, i32 0, i32 2
  %276 = load i64, i64* %275, align 8
  %277 = icmp ne i64 %276, 0
  br i1 %277, label %283, label %278

278:                                              ; preds = %273
  %279 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %280 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %279, i32 0, i32 1
  %281 = load i64, i64* %280, align 8
  %282 = icmp ne i64 %281, 0
  br i1 %282, label %283, label %294

283:                                              ; preds = %278, %273, %268
  %284 = load i32, i32* %14, align 4
  %285 = call i32 @send_conclusion_record(i32 %284, i32* null)
  store i32 %285, i32* %12, align 4
  %286 = load i32, i32* %12, align 4
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %288, label %293

288:                                              ; preds = %283
  %289 = load i32*, i32** %13, align 8
  %290 = load i32, i32* %12, align 4
  %291 = getelementptr inbounds [1024 x i8], [1024 x i8]* %19, i64 0, i64 0
  %292 = call i32 @zfs_standard_error(i32* %289, i32 %290, i8* %291)
  store i32 %292, i32* %6, align 4
  br label %361

293:                                              ; preds = %283
  br label %294

294:                                              ; preds = %293, %278
  %295 = load i32, i32* %12, align 4
  %296 = icmp ne i32 %295, 0
  br i1 %296, label %297, label %357

297:                                              ; preds = %294
  %298 = load i32, i32* @errno, align 4
  switch i32 %298, label %352 [
    i32 128, label %299
    i32 137, label %308
    i32 129, label %308
    i32 143, label %325
    i32 142, label %334
    i32 141, label %343
    i32 139, label %343
    i32 138, label %343
    i32 136, label %343
    i32 135, label %343
    i32 134, label %343
    i32 133, label %343
    i32 132, label %343
    i32 131, label %343
    i32 140, label %343
    i32 130, label %343
  ]

299:                                              ; preds = %297
  %300 = load i32*, i32** %13, align 8
  %301 = load i32, i32* @TEXT_DOMAIN, align 4
  %302 = call i8* @dgettext(i32 %301, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %303 = call i32 (i32*, i8*, ...) @zfs_error_aux(i32* %300, i8* %302)
  %304 = load i32*, i32** %13, align 8
  %305 = load i32, i32* @EZFS_CROSSTARGET, align 4
  %306 = getelementptr inbounds [1024 x i8], [1024 x i8]* %19, i64 0, i64 0
  %307 = call i32 @zfs_error(i32* %304, i32 %305, i8* %306)
  store i32 %307, i32* %6, align 4
  br label %361

308:                                              ; preds = %297, %297
  %309 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %310 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %309, i32 0, i32 0
  %311 = load i32, i32* %310, align 8
  %312 = call i32 @lzc_exists(i32 %311)
  %313 = icmp ne i32 %312, 0
  br i1 %313, label %314, label %320

314:                                              ; preds = %308
  %315 = load i32*, i32** %13, align 8
  %316 = load i32, i32* @TEXT_DOMAIN, align 4
  %317 = call i8* @dgettext(i32 %316, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  %318 = load i8*, i8** %8, align 8
  %319 = call i32 (i32*, i8*, ...) @zfs_error_aux(i32* %315, i8* %317, i8* %318)
  br label %320

320:                                              ; preds = %314, %308
  %321 = load i32*, i32** %13, align 8
  %322 = load i32, i32* @EZFS_NOENT, align 4
  %323 = getelementptr inbounds [1024 x i8], [1024 x i8]* %19, i64 0, i64 0
  %324 = call i32 @zfs_error(i32* %321, i32 %322, i8* %323)
  store i32 %324, i32* %6, align 4
  br label %361

325:                                              ; preds = %297
  %326 = load i32*, i32** %13, align 8
  %327 = load i32, i32* @TEXT_DOMAIN, align 4
  %328 = call i8* @dgettext(i32 %327, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  %329 = call i32 (i32*, i8*, ...) @zfs_error_aux(i32* %326, i8* %328)
  %330 = load i32*, i32** %13, align 8
  %331 = load i32, i32* @EZFS_CRYPTOFAILED, align 4
  %332 = getelementptr inbounds [1024 x i8], [1024 x i8]* %19, i64 0, i64 0
  %333 = call i32 @zfs_error(i32* %330, i32 %331, i8* %332)
  store i32 %333, i32* %6, align 4
  br label %361

334:                                              ; preds = %297
  %335 = load i32*, i32** %13, align 8
  %336 = load i32, i32* @TEXT_DOMAIN, align 4
  %337 = call i8* @dgettext(i32 %336, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.5, i64 0, i64 0))
  %338 = call i32 (i32*, i8*, ...) @zfs_error_aux(i32* %335, i8* %337)
  %339 = load i32*, i32** %13, align 8
  %340 = load i32, i32* @EZFS_BUSY, align 4
  %341 = getelementptr inbounds [1024 x i8], [1024 x i8]* %19, i64 0, i64 0
  %342 = call i32 @zfs_error(i32* %339, i32 %340, i8* %341)
  store i32 %342, i32* %6, align 4
  br label %361

343:                                              ; preds = %297, %297, %297, %297, %297, %297, %297, %297, %297, %297, %297
  %344 = load i32*, i32** %13, align 8
  %345 = load i32, i32* @errno, align 4
  %346 = call i8* @strerror(i32 %345)
  %347 = call i32 (i32*, i8*, ...) @zfs_error_aux(i32* %344, i8* %346)
  %348 = load i32*, i32** %13, align 8
  %349 = load i32, i32* @EZFS_BADBACKUP, align 4
  %350 = getelementptr inbounds [1024 x i8], [1024 x i8]* %19, i64 0, i64 0
  %351 = call i32 @zfs_error(i32* %348, i32 %349, i8* %350)
  store i32 %351, i32* %6, align 4
  br label %361

352:                                              ; preds = %297
  %353 = load i32*, i32** %13, align 8
  %354 = load i32, i32* @errno, align 4
  %355 = getelementptr inbounds [1024 x i8], [1024 x i8]* %19, i64 0, i64 0
  %356 = call i32 @zfs_standard_error(i32* %353, i32 %354, i8* %355)
  store i32 %356, i32* %6, align 4
  br label %361

357:                                              ; preds = %294
  %358 = load i32, i32* %12, align 4
  %359 = icmp ne i32 %358, 0
  %360 = zext i1 %359 to i32
  store i32 %360, i32* %6, align 4
  br label %361

361:                                              ; preds = %357, %352, %343, %334, %325, %320, %299, %288, %242, %202, %157, %145, %137, %119, %56, %50
  %362 = load i32, i32* %6, align 4
  ret i32 %362
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #2

declare dso_local i8* @dgettext(i32, i8*) #2

declare dso_local i64 @strchr(i8*, i8 signext) #2

declare dso_local %struct.TYPE_18__* @zfs_open(i32*, i8*, i32) #2

declare dso_local i32 @snapshot_is_before(%struct.TYPE_18__*, %struct.TYPE_18__*) #2

declare dso_local i32 @zfs_close(%struct.TYPE_18__*) #2

declare dso_local i32 @zfs_error_aux(i32*, i8*, ...) #2

declare dso_local i32 @zfs_error(i32*, i32, i8*) #2

declare dso_local i32 @send_prelim_records(%struct.TYPE_18__*, i32*, i32, i32, i32, i32, i64, i32, i32, i64, i64, i64, i32, i32*, i32*) #2

declare dso_local i32 @estimate_size(%struct.TYPE_18__*, i8*, i32, %struct.TYPE_19__*, i32, i32, i32, i8*, i8*) #2

declare dso_local i32 @get_dedup_fd(%struct.TYPE_18__*, %struct.TYPE_21__*, i32, i32*, i32*) #2

declare !callback !2 dso_local i32 @pthread_create(i32*, i32*, i32, %struct.TYPE_20__*) #2

declare dso_local i8* @strerror(i32) #2

declare dso_local i32 @pthread_cancel(i32) #2

declare dso_local i32 @close(i32) #2

declare dso_local i32 @pthread_join(i32, i8**) #2

declare dso_local i32 @lzc_send_redacted(i32, i8*, i32, i32, i8*) #2

declare dso_local i32 @lzc_flags_from_sendflags(%struct.TYPE_19__*) #2

declare dso_local i32 @zfs_standard_error(i32*, i32, i8*) #2

declare dso_local i32 @send_conclusion_record(i32, i32*) #2

declare dso_local i32 @lzc_exists(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{!3}
!3 = !{i64 2, i64 3, i1 false}
