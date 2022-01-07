; ModuleID = '/home/carl/AnghaBench/zfs/tests/zfs-tests/cmd/libzfs_input_check/extr_libzfs_input_check.c_zfs_ioc_input_tests.c'
source_filename = "/home/carl/AnghaBench/zfs/tests/zfs-tests/cmd/libzfs_input_check/extr_libzfs_input_check.c_zfs_ioc_input_tests.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i8* }

@__const.zfs_ioc_input_tests.filepath = private unnamed_addr constant [26 x i8] c"/tmp/ioc_test_file_XXXXXX\00", align 16
@ZFS_MAX_DATASET_NAME_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"%s/test-fs\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"%s@snapbase\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"%s@snapshot\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"%s#bookmark\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"%s/test-fs-clone\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"%s@snap\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"%s/backup\00", align 1
@DMU_OST_ZFS = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [27 x i8] c"could not create '%s': %s\0A\00", align 1
@errno = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [2 x i8] zeroinitializer, align 1
@__const.zfs_ioc_input_tests.zc = private unnamed_addr constant %struct.TYPE_3__ { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i32 0, i32 0), i8* null }, align 8
@B_FALSE = common dso_local global i32 0, align 4
@ioc_skip = common dso_local global i64* null, align 8
@ioc_tested = common dso_local global i64* null, align 8
@ZFS_IOC_FIRST = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [29 x i8] c"cmd %d tested, not skipped!\0A\00", align 1
@B_TRUE = common dso_local global i64 0, align 8
@ZFS_IOC_LAST = common dso_local global i32 0, align 4
@zfs_fd = common dso_local global i32 0, align 4
@ZFS_ERR_IOC_CMD_UNAVAIL = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [36 x i8] c"cmd %d is missing a test case (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @zfs_ioc_input_tests to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zfs_ioc_input_tests(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca [26 x i8], align 16
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_3__, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %19 = bitcast [26 x i8]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %19, i8* align 16 getelementptr inbounds ([26 x i8], [26 x i8]* @__const.zfs_ioc_input_tests.filepath, i32 0, i32 0), i64 26, i1 false)
  %20 = load i32, i32* @ZFS_MAX_DATASET_NAME_LEN, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %4, align 8
  %23 = alloca i8, i64 %21, align 16
  store i64 %21, i64* %5, align 8
  %24 = load i32, i32* @ZFS_MAX_DATASET_NAME_LEN, align 4
  %25 = add nsw i32 %24, 32
  %26 = zext i32 %25 to i64
  %27 = alloca i8, i64 %26, align 16
  store i64 %26, i64* %6, align 8
  %28 = load i32, i32* @ZFS_MAX_DATASET_NAME_LEN, align 4
  %29 = add nsw i32 %28, 32
  %30 = zext i32 %29 to i64
  %31 = alloca i8, i64 %30, align 16
  store i64 %30, i64* %7, align 8
  %32 = load i32, i32* @ZFS_MAX_DATASET_NAME_LEN, align 4
  %33 = add nsw i32 %32, 32
  %34 = zext i32 %33 to i64
  %35 = alloca i8, i64 %34, align 16
  store i64 %34, i64* %8, align 8
  %36 = load i32, i32* @ZFS_MAX_DATASET_NAME_LEN, align 4
  %37 = zext i32 %36 to i64
  %38 = alloca i8, i64 %37, align 16
  store i64 %37, i64* %9, align 8
  %39 = load i32, i32* @ZFS_MAX_DATASET_NAME_LEN, align 4
  %40 = zext i32 %39 to i64
  %41 = alloca i8, i64 %40, align 16
  store i64 %40, i64* %10, align 8
  %42 = load i32, i32* @ZFS_MAX_DATASET_NAME_LEN, align 4
  %43 = add nsw i32 %42, 32
  %44 = zext i32 %43 to i64
  %45 = alloca i8, i64 %44, align 16
  store i64 %44, i64* %11, align 8
  %46 = trunc i64 %21 to i32
  %47 = load i8*, i8** %2, align 8
  %48 = call i32 @snprintf(i8* %23, i32 %46, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %47)
  %49 = trunc i64 %26 to i32
  %50 = call i32 @snprintf(i8* %27, i32 %49, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* %23)
  %51 = trunc i64 %30 to i32
  %52 = call i32 @snprintf(i8* %31, i32 %51, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8* %23)
  %53 = trunc i64 %34 to i32
  %54 = call i32 @snprintf(i8* %35, i32 %53, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8* %23)
  %55 = trunc i64 %40 to i32
  %56 = load i8*, i8** %2, align 8
  %57 = call i32 @snprintf(i8* %41, i32 %55, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i8* %56)
  %58 = trunc i64 %44 to i32
  %59 = call i32 @snprintf(i8* %45, i32 %58, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8* %41)
  %60 = trunc i64 %37 to i32
  %61 = load i8*, i8** %2, align 8
  %62 = call i32 @snprintf(i8* %38, i32 %60, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i8* %61)
  %63 = load i32, i32* @DMU_OST_ZFS, align 4
  %64 = call i32 @lzc_create(i8* %23, i32 %63, i32* null, i32* null, i32 0)
  store i32 %64, i32* %13, align 4
  %65 = load i32, i32* %13, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %1
  %68 = load i32, i32* @stderr, align 4
  %69 = load i64, i64* @errno, align 8
  %70 = call i8* @strerror(i64 %69)
  %71 = call i32 (i32, i8*, ...) @fprintf(i32 %68, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0), i8* %23, i8* %70)
  %72 = call i32 @exit(i32 2) #5
  unreachable

73:                                               ; preds = %1
  %74 = getelementptr inbounds [26 x i8], [26 x i8]* %3, i64 0, i64 0
  %75 = call i32 @mkstemp(i8* %74)
  store i32 %75, i32* %12, align 4
  %76 = load i32, i32* %12, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %85

78:                                               ; preds = %73
  %79 = load i32, i32* @stderr, align 4
  %80 = getelementptr inbounds [26 x i8], [26 x i8]* %3, i64 0, i64 0
  %81 = load i64, i64* @errno, align 8
  %82 = call i8* @strerror(i64 %81)
  %83 = call i32 (i32, i8*, ...) @fprintf(i32 %79, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0), i8* %80, i8* %82)
  %84 = call i32 @exit(i32 2) #5
  unreachable

85:                                               ; preds = %73
  %86 = load i8*, i8** %2, align 8
  %87 = call i32 @test_pool_sync(i8* %86)
  %88 = load i8*, i8** %2, align 8
  %89 = call i32 @test_pool_reopen(i8* %88)
  %90 = load i8*, i8** %2, align 8
  %91 = call i32 @test_pool_checkpoint(i8* %90)
  %92 = load i8*, i8** %2, align 8
  %93 = call i32 @test_pool_discard_checkpoint(i8* %92)
  %94 = load i8*, i8** %2, align 8
  %95 = call i32 @test_log_history(i8* %94)
  %96 = call i32 @test_create(i8* %23)
  %97 = load i8*, i8** %2, align 8
  %98 = call i32 @test_snapshot(i8* %97, i8* %27)
  %99 = load i8*, i8** %2, align 8
  %100 = call i32 @test_snapshot(i8* %99, i8* %31)
  %101 = call i32 @test_space_snaps(i8* %31)
  %102 = call i32 @test_send_space(i8* %27, i8* %31)
  %103 = load i32, i32* %12, align 4
  %104 = call i32 @test_send_new(i8* %31, i32 %103)
  %105 = load i32, i32* %12, align 4
  %106 = call i32 @test_recv_new(i8* %38, i32 %105)
  %107 = load i8*, i8** %2, align 8
  %108 = call i32 @test_bookmark(i8* %107, i8* %31, i8* %35)
  %109 = call i32 @test_get_bookmarks(i8* %23)
  %110 = call i32 @test_get_bookmark_props(i8* %35)
  %111 = load i8*, i8** %2, align 8
  %112 = call i32 @test_destroy_bookmarks(i8* %111, i8* %35)
  %113 = load i8*, i8** %2, align 8
  %114 = call i32 @test_hold(i8* %113, i8* %31)
  %115 = call i32 @test_get_holds(i8* %31)
  %116 = load i8*, i8** %2, align 8
  %117 = call i32 @test_release(i8* %116, i8* %31)
  %118 = call i32 @test_clone(i8* %31, i8* %41)
  %119 = load i8*, i8** %2, align 8
  %120 = call i32 @test_snapshot(i8* %119, i8* %45)
  %121 = call i32 @test_redact(i8* %31, i8* %45)
  %122 = call i32 @zfs_destroy(i8* %45)
  %123 = call i32 @zfs_destroy(i8* %41)
  %124 = call i32 @test_rollback(i8* %23, i8* %31)
  %125 = load i8*, i8** %2, align 8
  %126 = call i32 @test_destroy_snaps(i8* %125, i8* %31)
  %127 = load i8*, i8** %2, align 8
  %128 = call i32 @test_destroy_snaps(i8* %127, i8* %27)
  %129 = call i32 @test_remap(i8* %23)
  %130 = load i8*, i8** %2, align 8
  %131 = call i32 @test_channel_program(i8* %130)
  %132 = call i32 @test_load_key(i8* %23)
  %133 = call i32 @test_change_key(i8* %23)
  %134 = call i32 @test_unload_key(i8* %23)
  %135 = load i8*, i8** %2, align 8
  %136 = call i32 @test_vdev_initialize(i8* %135)
  %137 = load i8*, i8** %2, align 8
  %138 = call i32 @test_vdev_trim(i8* %137)
  %139 = load i8*, i8** %2, align 8
  %140 = call i32 @test_wait(i8* %139)
  %141 = bitcast %struct.TYPE_3__* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %141, i8* align 8 bitcast (%struct.TYPE_3__* @__const.zfs_ioc_input_tests.zc to i8*), i64 16, i1 false)
  %142 = call i32* (...) @fnvlist_alloc()
  store i32* %142, i32** %15, align 8
  %143 = load i32*, i32** %15, align 8
  %144 = call i32 @fnvlist_add_boolean(i32* %143, i8* %31)
  %145 = load i32*, i32** %15, align 8
  %146 = load i32, i32* @B_FALSE, align 4
  %147 = call i32 @lzc_destroy_snaps(i32* %145, i32 %146, i32* null)
  %148 = load i32*, i32** %15, align 8
  %149 = call i32 @nvlist_free(i32* %148)
  %150 = call i32 @zfs_destroy(i8* %23)
  %151 = call i32 @zfs_destroy(i8* %38)
  %152 = load i32, i32* %12, align 4
  %153 = call i32 @close(i32 %152)
  %154 = getelementptr inbounds [26 x i8], [26 x i8]* %3, i64 0, i64 0
  %155 = call i32 @unlink(i8* %154)
  store i32 0, i32* %16, align 4
  br label %156

156:                                              ; preds = %198, %85
  %157 = load i32, i32* %16, align 4
  %158 = load i64*, i64** @ioc_skip, align 8
  %159 = call i32 @ARRAY_SIZE(i64* %158)
  %160 = icmp slt i32 %157, %159
  br i1 %160, label %161, label %201

161:                                              ; preds = %156
  %162 = load i64*, i64** @ioc_tested, align 8
  %163 = load i64*, i64** @ioc_skip, align 8
  %164 = load i32, i32* %16, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i64, i64* %163, i64 %165
  %167 = load i64, i64* %166, align 8
  %168 = load i32, i32* @ZFS_IOC_FIRST, align 4
  %169 = zext i32 %168 to i64
  %170 = sub i64 %167, %169
  %171 = getelementptr inbounds i64, i64* %162, i64 %170
  %172 = load i64, i64* %171, align 8
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %186

174:                                              ; preds = %161
  %175 = load i32, i32* @stderr, align 4
  %176 = load i64*, i64** @ioc_skip, align 8
  %177 = load i32, i32* %16, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i64, i64* %176, i64 %178
  %180 = load i64, i64* %179, align 8
  %181 = load i32, i32* @ZFS_IOC_FIRST, align 4
  %182 = zext i32 %181 to i64
  %183 = sub i64 %180, %182
  %184 = trunc i64 %183 to i32
  %185 = call i32 (i32, i8*, ...) @fprintf(i32 %175, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i64 0, i64 0), i32 %184)
  br label %186

186:                                              ; preds = %174, %161
  %187 = load i64, i64* @B_TRUE, align 8
  %188 = load i64*, i64** @ioc_tested, align 8
  %189 = load i64*, i64** @ioc_skip, align 8
  %190 = load i32, i32* %16, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i64, i64* %189, i64 %191
  %193 = load i64, i64* %192, align 8
  %194 = load i32, i32* @ZFS_IOC_FIRST, align 4
  %195 = zext i32 %194 to i64
  %196 = sub i64 %193, %195
  %197 = getelementptr inbounds i64, i64* %188, i64 %196
  store i64 %187, i64* %197, align 8
  br label %198

198:                                              ; preds = %186
  %199 = load i32, i32* %16, align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %16, align 4
  br label %156

201:                                              ; preds = %156
  %202 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 1
  %203 = load i8*, i8** %202, align 8
  %204 = load i8*, i8** %2, align 8
  %205 = call i32 @strlcpy(i8* %203, i8* %204, i32 8)
  %206 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 1
  %207 = load i8*, i8** %206, align 8
  %208 = getelementptr inbounds i8, i8* %207, i64 7
  store i8 0, i8* %208, align 1
  %209 = load i32, i32* @ZFS_IOC_FIRST, align 4
  store i32 %209, i32* %17, align 4
  br label %210

210:                                              ; preds = %240, %201
  %211 = load i32, i32* %17, align 4
  %212 = load i32, i32* @ZFS_IOC_LAST, align 4
  %213 = icmp ult i32 %211, %212
  br i1 %213, label %214, label %243

214:                                              ; preds = %210
  %215 = load i32, i32* %17, align 4
  %216 = load i32, i32* @ZFS_IOC_FIRST, align 4
  %217 = sub i32 %215, %216
  store i32 %217, i32* %18, align 4
  %218 = load i64*, i64** @ioc_tested, align 8
  %219 = load i32, i32* %18, align 4
  %220 = zext i32 %219 to i64
  %221 = getelementptr inbounds i64, i64* %218, i64 %220
  %222 = load i64, i64* %221, align 8
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %224, label %225

224:                                              ; preds = %214
  br label %240

225:                                              ; preds = %214
  %226 = load i32, i32* @zfs_fd, align 4
  %227 = load i32, i32* %17, align 4
  %228 = call i64 @ioctl(i32 %226, i32 %227, %struct.TYPE_3__* %14)
  %229 = icmp ne i64 %228, 0
  br i1 %229, label %230, label %239

230:                                              ; preds = %225
  %231 = load i64, i64* @errno, align 8
  %232 = load i64, i64* @ZFS_ERR_IOC_CMD_UNAVAIL, align 8
  %233 = icmp ne i64 %231, %232
  br i1 %233, label %234, label %239

234:                                              ; preds = %230
  %235 = load i32, i32* @stderr, align 4
  %236 = load i32, i32* %18, align 4
  %237 = load i64, i64* @errno, align 8
  %238 = call i32 (i32, i8*, ...) @fprintf(i32 %235, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10, i64 0, i64 0), i32 %236, i64 %237)
  br label %239

239:                                              ; preds = %234, %230, %225
  br label %240

240:                                              ; preds = %239, %224
  %241 = load i32, i32* %17, align 4
  %242 = add i32 %241, 1
  store i32 %242, i32* %17, align 4
  br label %210

243:                                              ; preds = %210
  %244 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %244)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #3

declare dso_local i32 @lzc_create(i8*, i32, i32*, i32*, i32) #3

declare dso_local i32 @fprintf(i32, i8*, ...) #3

declare dso_local i8* @strerror(i64) #3

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #4

declare dso_local i32 @mkstemp(i8*) #3

declare dso_local i32 @test_pool_sync(i8*) #3

declare dso_local i32 @test_pool_reopen(i8*) #3

declare dso_local i32 @test_pool_checkpoint(i8*) #3

declare dso_local i32 @test_pool_discard_checkpoint(i8*) #3

declare dso_local i32 @test_log_history(i8*) #3

declare dso_local i32 @test_create(i8*) #3

declare dso_local i32 @test_snapshot(i8*, i8*) #3

declare dso_local i32 @test_space_snaps(i8*) #3

declare dso_local i32 @test_send_space(i8*, i8*) #3

declare dso_local i32 @test_send_new(i8*, i32) #3

declare dso_local i32 @test_recv_new(i8*, i32) #3

declare dso_local i32 @test_bookmark(i8*, i8*, i8*) #3

declare dso_local i32 @test_get_bookmarks(i8*) #3

declare dso_local i32 @test_get_bookmark_props(i8*) #3

declare dso_local i32 @test_destroy_bookmarks(i8*, i8*) #3

declare dso_local i32 @test_hold(i8*, i8*) #3

declare dso_local i32 @test_get_holds(i8*) #3

declare dso_local i32 @test_release(i8*, i8*) #3

declare dso_local i32 @test_clone(i8*, i8*) #3

declare dso_local i32 @test_redact(i8*, i8*) #3

declare dso_local i32 @zfs_destroy(i8*) #3

declare dso_local i32 @test_rollback(i8*, i8*) #3

declare dso_local i32 @test_destroy_snaps(i8*, i8*) #3

declare dso_local i32 @test_remap(i8*) #3

declare dso_local i32 @test_channel_program(i8*) #3

declare dso_local i32 @test_load_key(i8*) #3

declare dso_local i32 @test_change_key(i8*) #3

declare dso_local i32 @test_unload_key(i8*) #3

declare dso_local i32 @test_vdev_initialize(i8*) #3

declare dso_local i32 @test_vdev_trim(i8*) #3

declare dso_local i32 @test_wait(i8*) #3

declare dso_local i32* @fnvlist_alloc(...) #3

declare dso_local i32 @fnvlist_add_boolean(i32*, i8*) #3

declare dso_local i32 @lzc_destroy_snaps(i32*, i32, i32*) #3

declare dso_local i32 @nvlist_free(i32*) #3

declare dso_local i32 @close(i32) #3

declare dso_local i32 @unlink(i8*) #3

declare dso_local i32 @ARRAY_SIZE(i64*) #3

declare dso_local i32 @strlcpy(i8*, i8*, i32) #3

declare dso_local i64 @ioctl(i32, i32, %struct.TYPE_3__*) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
