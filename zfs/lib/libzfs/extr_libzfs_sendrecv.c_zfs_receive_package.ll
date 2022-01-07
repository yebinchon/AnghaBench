; ModuleID = '/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_sendrecv.c_zfs_receive_package.c'
source_filename = "/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_sendrecv.c_zfs_receive_package.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32, i64, i64, i32 }
%struct.TYPE_15__ = type { i64, i64, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.drr_begin, %struct.TYPE_12__ }
%struct.drr_begin = type { i64, i8*, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i8** }

@ZFS_MAX_DATASET_NAME_LEN = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i32 0, align 4
@TEXT_DOMAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"cannot receive\00", align 1
@DRR_BEGIN = common dso_local global i64 0, align 8
@DMU_BACKUP_MAGIC = common dso_local global i64 0, align 8
@DMU_COMPOUNDSTREAM = common dso_local global i64 0, align 8
@EZFS_BADSTREAM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"not_recursive\00", align 1
@ENOENT = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [4 x i8] c"raw\00", align 1
@.str.3 = private unnamed_addr constant [55 x i8] c"cannot specify snapshot name for multi-snapshot stream\00", align 1
@DRR_END = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [26 x i8] c"incorrect header checksum\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"fromsnap\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"fss\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"couldn't allocate avl tree\00", align 1
@EZFS_NOMEM = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"/@\00", align 1
@NV_UNIQUE_NAME = common dso_local global i32 0, align 4
@ZFS_TYPE_FILESYSTEM = common dso_local global i32 0, align 4
@ZFS_PROP_MOUNTPOINT = common dso_local global i32 0, align 4
@ENODATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i8*, %struct.TYPE_14__*, %struct.TYPE_15__*, i32*, i8**, i32, i32*, i32*)* @zfs_receive_package to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfs_receive_package(i32* %0, i32 %1, i8* %2, %struct.TYPE_14__* %3, %struct.TYPE_15__* %4, i32* %5, i8** %6, i32 %7, i32* %8, i32* %9) #0 {
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca %struct.TYPE_14__*, align 8
  %15 = alloca %struct.TYPE_15__*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i8**, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i8*, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca [1024 x i8], align 16
  %30 = alloca %struct.TYPE_15__, align 8
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32*, align 8
  %37 = alloca i32*, align 8
  %38 = alloca i32*, align 8
  %39 = alloca %struct.drr_begin*, align 8
  %40 = alloca i32, align 4
  %41 = alloca i32*, align 8
  %42 = alloca i32*, align 8
  store i32* %0, i32** %11, align 8
  store i32 %1, i32* %12, align 4
  store i8* %2, i8** %13, align 8
  store %struct.TYPE_14__* %3, %struct.TYPE_14__** %14, align 8
  store %struct.TYPE_15__* %4, %struct.TYPE_15__** %15, align 8
  store i32* %5, i32** %16, align 8
  store i8** %6, i8*** %17, align 8
  store i32 %7, i32* %18, align 4
  store i32* %8, i32** %19, align 8
  store i32* %9, i32** %20, align 8
  store i32* null, i32** %21, align 8
  store i32* null, i32** %22, align 8
  store i8* null, i8** %23, align 8
  store i8* null, i8** %24, align 8
  %43 = load i32, i32* @ZFS_MAX_DATASET_NAME_LEN, align 4
  %44 = zext i32 %43 to i64
  %45 = call i8* @llvm.stacksave()
  store i8* %45, i8** %26, align 8
  %46 = alloca i8, i64 %44, align 16
  store i64 %44, i64* %27, align 8
  %47 = load i32, i32* @ZFS_MAX_DATASET_NAME_LEN, align 4
  %48 = zext i32 %47 to i64
  %49 = alloca i8, i64 %48, align 16
  store i64 %48, i64* %28, align 8
  %50 = load i32, i32* @B_FALSE, align 4
  store i32 %50, i32* %32, align 4
  %51 = load i32, i32* @B_FALSE, align 4
  store i32 %51, i32* %33, align 4
  %52 = getelementptr inbounds [1024 x i8], [1024 x i8]* %29, i64 0, i64 0
  %53 = load i32, i32* @TEXT_DOMAIN, align 4
  %54 = call i8* @dgettext(i32 %53, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %55 = call i32 @snprintf(i8* %52, i32 1024, i8* %54)
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %57 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @DRR_BEGIN, align 8
  %60 = icmp eq i64 %58, %59
  %61 = zext i1 %60 to i32
  %62 = call i32 @assert(i32 %61)
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.drr_begin, %struct.drr_begin* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @DMU_BACKUP_MAGIC, align 8
  %69 = icmp eq i64 %67, %68
  %70 = zext i1 %69 to i32
  %71 = call i32 @assert(i32 %70)
  %72 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %73 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.drr_begin, %struct.drr_begin* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = call i64 @DMU_GET_STREAM_HDRTYPE(i32 %76)
  %78 = load i64, i64* @DMU_COMPOUNDSTREAM, align 8
  %79 = icmp eq i64 %77, %78
  %80 = zext i1 %79 to i32
  %81 = call i32 @assert(i32 %80)
  %82 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %83 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %105

86:                                               ; preds = %10
  %87 = load i32*, i32** %11, align 8
  %88 = load i32, i32* %12, align 4
  %89 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %90 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %93 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %92, i32 0, i32 4
  %94 = load i32, i32* %93, align 8
  %95 = load i32*, i32** %16, align 8
  %96 = call i32 @recv_read_nvlist(i32* %87, i32 %88, i64 %91, i32** %21, i32 %94, i32* %95)
  store i32 %96, i32* %31, align 4
  %97 = load i32, i32* %31, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %104

99:                                               ; preds = %86
  %100 = load i32*, i32** %11, align 8
  %101 = load i32, i32* @EZFS_BADSTREAM, align 4
  %102 = getelementptr inbounds [1024 x i8], [1024 x i8]* %29, i64 0, i64 0
  %103 = call i32 @zfs_error(i32* %100, i32 %101, i8* %102)
  store i32 %103, i32* %31, align 4
  br label %447

104:                                              ; preds = %86
  br label %105

105:                                              ; preds = %104, %10
  %106 = load i32*, i32** %21, align 8
  %107 = call i64 @nvlist_lookup_boolean(i32* %106, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %108 = load i64, i64* @ENOENT, align 8
  %109 = icmp eq i64 %107, %108
  %110 = zext i1 %109 to i32
  store i32 %110, i32* %34, align 4
  %111 = load i32*, i32** %21, align 8
  %112 = call i64 @nvlist_lookup_boolean(i32* %111, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %113 = icmp eq i64 %112, 0
  %114 = zext i1 %113 to i32
  store i32 %114, i32* %35, align 4
  %115 = load i32, i32* %34, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %130

117:                                              ; preds = %105
  %118 = load i8*, i8** %13, align 8
  %119 = call i8* @strchr(i8* %118, i8 signext 64)
  %120 = icmp ne i8* %119, null
  br i1 %120, label %121, label %130

121:                                              ; preds = %117
  %122 = load i32*, i32** %11, align 8
  %123 = load i32, i32* @TEXT_DOMAIN, align 4
  %124 = call i8* @dgettext(i32 %123, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i64 0, i64 0))
  %125 = call i32 @zfs_error_aux(i32* %122, i8* %124)
  %126 = load i32*, i32** %11, align 8
  %127 = load i32, i32* @EZFS_BADSTREAM, align 4
  %128 = getelementptr inbounds [1024 x i8], [1024 x i8]* %29, i64 0, i64 0
  %129 = call i32 @zfs_error(i32* %126, i32 %127, i8* %128)
  store i32 %129, i32* %31, align 4
  br label %447

130:                                              ; preds = %117, %105
  %131 = load i32*, i32** %11, align 8
  %132 = load i32, i32* %12, align 4
  %133 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %134 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %133, i32 0, i32 4
  %135 = load i32, i32* %134, align 8
  %136 = call i32 @recv_read(i32* %131, i32 %132, %struct.TYPE_15__* %30, i32 48, i32 %135, i32* null)
  store i32 %136, i32* %31, align 4
  %137 = icmp ne i32 0, %136
  br i1 %137, label %138, label %139

138:                                              ; preds = %130
  br label %447

139:                                              ; preds = %130
  %140 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %141 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %140, i32 0, i32 4
  %142 = load i32, i32* %141, align 8
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %205

144:                                              ; preds = %139
  %145 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %30, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = call i64 @BSWAP_32(i64 %146)
  %148 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %30, i32 0, i32 0
  store i64 %147, i64* %148, align 8
  %149 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %30, i32 0, i32 2
  %150 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %149, i32 0, i32 1
  %151 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %151, i32 0, i32 0
  %153 = load i8**, i8*** %152, align 8
  %154 = getelementptr inbounds i8*, i8** %153, i64 0
  %155 = load i8*, i8** %154, align 8
  %156 = call i8* @BSWAP_64(i8* %155)
  %157 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %30, i32 0, i32 2
  %158 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %157, i32 0, i32 1
  %159 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %159, i32 0, i32 0
  %161 = load i8**, i8*** %160, align 8
  %162 = getelementptr inbounds i8*, i8** %161, i64 0
  store i8* %156, i8** %162, align 8
  %163 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %30, i32 0, i32 2
  %164 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %163, i32 0, i32 1
  %165 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %165, i32 0, i32 0
  %167 = load i8**, i8*** %166, align 8
  %168 = getelementptr inbounds i8*, i8** %167, i64 1
  %169 = load i8*, i8** %168, align 8
  %170 = call i8* @BSWAP_64(i8* %169)
  %171 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %30, i32 0, i32 2
  %172 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %171, i32 0, i32 1
  %173 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %173, i32 0, i32 0
  %175 = load i8**, i8*** %174, align 8
  %176 = getelementptr inbounds i8*, i8** %175, i64 1
  store i8* %170, i8** %176, align 8
  %177 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %30, i32 0, i32 2
  %178 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %177, i32 0, i32 1
  %179 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %179, i32 0, i32 0
  %181 = load i8**, i8*** %180, align 8
  %182 = getelementptr inbounds i8*, i8** %181, i64 2
  %183 = load i8*, i8** %182, align 8
  %184 = call i8* @BSWAP_64(i8* %183)
  %185 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %30, i32 0, i32 2
  %186 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %185, i32 0, i32 1
  %187 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %187, i32 0, i32 0
  %189 = load i8**, i8*** %188, align 8
  %190 = getelementptr inbounds i8*, i8** %189, i64 2
  store i8* %184, i8** %190, align 8
  %191 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %30, i32 0, i32 2
  %192 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %191, i32 0, i32 1
  %193 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %193, i32 0, i32 0
  %195 = load i8**, i8*** %194, align 8
  %196 = getelementptr inbounds i8*, i8** %195, i64 3
  %197 = load i8*, i8** %196, align 8
  %198 = call i8* @BSWAP_64(i8* %197)
  %199 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %30, i32 0, i32 2
  %200 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %199, i32 0, i32 1
  %201 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %200, i32 0, i32 0
  %202 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %201, i32 0, i32 0
  %203 = load i8**, i8*** %202, align 8
  %204 = getelementptr inbounds i8*, i8** %203, i64 3
  store i8* %198, i8** %204, align 8
  br label %205

205:                                              ; preds = %144, %139
  %206 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %30, i32 0, i32 0
  %207 = load i64, i64* %206, align 8
  %208 = load i64, i64* @DRR_END, align 8
  %209 = icmp ne i64 %207, %208
  br i1 %209, label %210, label %215

210:                                              ; preds = %205
  %211 = load i32*, i32** %11, align 8
  %212 = load i32, i32* @EZFS_BADSTREAM, align 4
  %213 = getelementptr inbounds [1024 x i8], [1024 x i8]* %29, i64 0, i64 0
  %214 = call i32 @zfs_error(i32* %211, i32 %212, i8* %213)
  store i32 %214, i32* %31, align 4
  br label %447

215:                                              ; preds = %205
  %216 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %30, i32 0, i32 2
  %217 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %216, i32 0, i32 1
  %218 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %217, i32 0, i32 0
  %219 = load i32*, i32** %16, align 8
  %220 = load i32, i32* %219, align 4
  %221 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %218, i32 0, i32 0
  %222 = load i8**, i8*** %221, align 8
  %223 = call i32 @ZIO_CHECKSUM_EQUAL(i8** %222, i32 %220)
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %234, label %225

225:                                              ; preds = %215
  %226 = load i32*, i32** %11, align 8
  %227 = load i32, i32* @TEXT_DOMAIN, align 4
  %228 = call i8* @dgettext(i32 %227, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  %229 = call i32 @zfs_error_aux(i32* %226, i8* %228)
  %230 = load i32*, i32** %11, align 8
  %231 = load i32, i32* @EZFS_BADSTREAM, align 4
  %232 = getelementptr inbounds [1024 x i8], [1024 x i8]* %29, i64 0, i64 0
  %233 = call i32 @zfs_error(i32* %230, i32 %231, i8* %232)
  store i32 %233, i32* %31, align 4
  br label %447

234:                                              ; preds = %215
  %235 = load i32*, i32** %21, align 8
  %236 = call i32 @nvlist_lookup_string(i32* %235, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i8** %23)
  %237 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %238 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %237, i32 0, i32 1
  %239 = load i64, i64* %238, align 8
  %240 = icmp ne i64 %239, 0
  br i1 %240, label %241, label %373

241:                                              ; preds = %234
  %242 = load i32*, i32** %21, align 8
  %243 = call i64 @nvlist_lookup_nvlist(i32* %242, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i32** %36)
  %244 = icmp eq i64 0, %243
  %245 = zext i1 %244 to i32
  %246 = call i32 @VERIFY(i32 %245)
  %247 = load i32*, i32** %36, align 8
  %248 = call i32* @fsavl_create(i32* %247)
  store i32* %248, i32** %22, align 8
  %249 = icmp eq i32* %248, null
  br i1 %249, label %250, label %259

250:                                              ; preds = %241
  %251 = load i32*, i32** %11, align 8
  %252 = load i32, i32* @TEXT_DOMAIN, align 4
  %253 = call i8* @dgettext(i32 %252, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0))
  %254 = call i32 @zfs_error_aux(i32* %251, i8* %253)
  %255 = load i32*, i32** %11, align 8
  %256 = load i32, i32* @EZFS_NOMEM, align 4
  %257 = getelementptr inbounds [1024 x i8], [1024 x i8]* %29, i64 0, i64 0
  %258 = call i32 @zfs_error(i32* %255, i32 %256, i8* %257)
  store i32 %258, i32* %31, align 4
  br label %447

259:                                              ; preds = %241
  %260 = load i8*, i8** %23, align 8
  %261 = icmp ne i8* %260, null
  br i1 %261, label %262, label %372

262:                                              ; preds = %259
  %263 = load i32, i32* %34, align 4
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %265, label %372

265:                                              ; preds = %262
  store i32* null, i32** %37, align 8
  store i32* null, i32** %38, align 8
  %266 = load i8*, i8** %13, align 8
  %267 = trunc i64 %44 to i32
  %268 = call i32 @strlcpy(i8* %46, i8* %266, i32 %267)
  %269 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %270 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %269, i32 0, i32 3
  %271 = load i64, i64* %270, align 8
  %272 = icmp ne i64 %271, 0
  br i1 %272, label %273, label %316

273:                                              ; preds = %265
  %274 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %275 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %274, i32 0, i32 2
  %276 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %275, i32 0, i32 0
  store %struct.drr_begin* %276, %struct.drr_begin** %39, align 8
  %277 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %278 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %277, i32 0, i32 2
  %279 = load i64, i64* %278, align 8
  %280 = icmp ne i64 %279, 0
  br i1 %280, label %281, label %301

281:                                              ; preds = %273
  %282 = load %struct.drr_begin*, %struct.drr_begin** %39, align 8
  %283 = getelementptr inbounds %struct.drr_begin, %struct.drr_begin* %282, i32 0, i32 1
  %284 = load i8*, i8** %283, align 8
  %285 = call i8* @strrchr(i8* %284, i8 signext 47)
  store i8* %285, i8** %25, align 8
  %286 = load i8*, i8** %25, align 8
  %287 = icmp eq i8* %286, null
  br i1 %287, label %288, label %291

288:                                              ; preds = %281
  %289 = trunc i64 %44 to i32
  %290 = call i32 @strlcat(i8* %46, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0), i32 %289)
  store i32 0, i32* %40, align 4
  br label %300

291:                                              ; preds = %281
  %292 = load i8*, i8** %25, align 8
  %293 = load %struct.drr_begin*, %struct.drr_begin** %39, align 8
  %294 = getelementptr inbounds %struct.drr_begin, %struct.drr_begin* %293, i32 0, i32 1
  %295 = load i8*, i8** %294, align 8
  %296 = ptrtoint i8* %292 to i64
  %297 = ptrtoint i8* %295 to i64
  %298 = sub i64 %296, %297
  %299 = trunc i64 %298 to i32
  store i32 %299, i32* %40, align 4
  br label %300

300:                                              ; preds = %291, %288
  br label %306

301:                                              ; preds = %273
  %302 = load %struct.drr_begin*, %struct.drr_begin** %39, align 8
  %303 = getelementptr inbounds %struct.drr_begin, %struct.drr_begin* %302, i32 0, i32 1
  %304 = load i8*, i8** %303, align 8
  %305 = call i32 @strcspn(i8* %304, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0))
  store i32 %305, i32* %40, align 4
  br label %306

306:                                              ; preds = %301, %300
  %307 = load %struct.drr_begin*, %struct.drr_begin** %39, align 8
  %308 = getelementptr inbounds %struct.drr_begin, %struct.drr_begin* %307, i32 0, i32 1
  %309 = load i8*, i8** %308, align 8
  %310 = load i32, i32* %40, align 4
  %311 = sext i32 %310 to i64
  %312 = getelementptr inbounds i8, i8* %309, i64 %311
  %313 = trunc i64 %44 to i32
  %314 = call i32 @strlcat(i8* %46, i8* %312, i32 %313)
  %315 = call i8* @strchr(i8* %46, i8 signext 64)
  store i8 0, i8* %315, align 1
  br label %316

316:                                              ; preds = %306, %265
  %317 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %318 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %317, i32 0, i32 1
  %319 = load i32, i32* %318, align 4
  %320 = icmp ne i32 %319, 0
  br i1 %320, label %332, label %321

321:                                              ; preds = %316
  %322 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %323 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %322, i32 0, i32 0
  %324 = load i32, i32* %323, align 8
  %325 = icmp ne i32 %324, 0
  br i1 %325, label %332, label %326

326:                                              ; preds = %321
  %327 = load i32, i32* @NV_UNIQUE_NAME, align 4
  %328 = call i64 @nvlist_alloc(i32** %37, i32 %327, i32 0)
  %329 = icmp eq i64 0, %328
  %330 = zext i1 %329 to i32
  %331 = call i32 @VERIFY(i32 %330)
  br label %332

332:                                              ; preds = %326, %321, %316
  %333 = load i32*, i32** %11, align 8
  %334 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %335 = load i32*, i32** %21, align 8
  %336 = load i32*, i32** %22, align 8
  %337 = load i32*, i32** %37, align 8
  %338 = call i32 @recv_incremental_replication(i32* %333, i8* %46, %struct.TYPE_14__* %334, i32* %335, i32* %336, i32* %337)
  store i32 %338, i32* %33, align 4
  br label %339

339:                                              ; preds = %368, %332
  %340 = load i32*, i32** %37, align 8
  %341 = load i32*, i32** %38, align 8
  %342 = call i32* @nvlist_next_nvpair(i32* %340, i32* %341)
  store i32* %342, i32** %38, align 8
  %343 = icmp ne i32* %342, null
  br i1 %343, label %344, label %369

344:                                              ; preds = %339
  store i32* null, i32** %42, align 8
  %345 = load i32*, i32** %11, align 8
  %346 = load i32*, i32** %38, align 8
  %347 = call i32 @nvpair_name(i32* %346)
  %348 = load i32, i32* @ZFS_TYPE_FILESYSTEM, align 4
  %349 = call i32* @zfs_open(i32* %345, i32 %347, i32 %348)
  store i32* %349, i32** %41, align 8
  %350 = load i32*, i32** %41, align 8
  %351 = icmp ne i32* %350, null
  br i1 %351, label %352, label %368

352:                                              ; preds = %344
  %353 = load i32*, i32** %41, align 8
  %354 = load i32, i32* @ZFS_PROP_MOUNTPOINT, align 4
  %355 = call i32* @changelist_gather(i32* %353, i32 %354, i32 0, i32 0)
  store i32* %355, i32** %42, align 8
  %356 = load i32*, i32** %41, align 8
  %357 = call i32 @zfs_close(i32* %356)
  %358 = load i32*, i32** %42, align 8
  %359 = icmp ne i32* %358, null
  br i1 %359, label %360, label %367

360:                                              ; preds = %352
  %361 = load i32*, i32** %42, align 8
  %362 = call i32 @changelist_prefix(i32* %361)
  %363 = load i32, i32* %33, align 4
  %364 = or i32 %363, %362
  store i32 %364, i32* %33, align 4
  %365 = load i32*, i32** %42, align 8
  %366 = call i32 @changelist_free(i32* %365)
  br label %367

367:                                              ; preds = %360, %352
  br label %368

368:                                              ; preds = %367, %344
  br label %339

369:                                              ; preds = %339
  %370 = load i32*, i32** %37, align 8
  %371 = call i32 @nvlist_free(i32* %370)
  br label %372

372:                                              ; preds = %369, %262, %259
  br label %373

373:                                              ; preds = %372, %234
  %374 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %375 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %374, i32 0, i32 2
  %376 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %375, i32 0, i32 0
  %377 = getelementptr inbounds %struct.drr_begin, %struct.drr_begin* %376, i32 0, i32 1
  %378 = load i8*, i8** %377, align 8
  %379 = trunc i64 %48 to i32
  %380 = call i32 @strlcpy(i8* %49, i8* %378, i32 %379)
  %381 = call i8* @strchr(i8* %49, i8 signext 64)
  store i8* %381, i8** %25, align 8
  %382 = icmp ne i8* %381, null
  br i1 %382, label %383, label %387

383:                                              ; preds = %373
  %384 = load i8*, i8** %25, align 8
  store i8 0, i8* %384, align 1
  %385 = load i8*, i8** %25, align 8
  %386 = getelementptr inbounds i8, i8* %385, i64 1
  store i8* %386, i8** %24, align 8
  br label %387

387:                                              ; preds = %383, %373
  br label %388

388:                                              ; preds = %409, %387
  %389 = load i32*, i32** %11, align 8
  %390 = load i8*, i8** %13, align 8
  %391 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %392 = load i32, i32* %12, align 4
  %393 = load i32*, i32** %21, align 8
  %394 = load i32*, i32** %22, align 8
  %395 = load i8**, i8*** %17, align 8
  %396 = load i32, i32* %18, align 4
  %397 = load i32*, i32** %19, align 8
  %398 = load i8*, i8** %24, align 8
  %399 = load i32*, i32** %20, align 8
  %400 = call i32 @zfs_receive_impl(i32* %389, i8* %390, i32* null, %struct.TYPE_14__* %391, i32 %392, i8* %49, i32* %393, i32* %394, i8** %395, i32 %396, i32* %397, i8* %398, i32* %399)
  store i32 %400, i32* %31, align 4
  %401 = load i32, i32* %31, align 4
  %402 = load i32, i32* @ENODATA, align 4
  %403 = icmp eq i32 %401, %402
  br i1 %403, label %404, label %405

404:                                              ; preds = %388
  store i32 0, i32* %31, align 4
  br label %412

405:                                              ; preds = %388
  %406 = load i32, i32* %31, align 4
  %407 = load i32, i32* %32, align 4
  %408 = or i32 %407, %406
  store i32 %408, i32* %32, align 4
  br label %409

409:                                              ; preds = %405
  %410 = load i32, i32* %31, align 4
  %411 = icmp eq i32 %410, 0
  br i1 %411, label %388, label %412

412:                                              ; preds = %409, %404
  %413 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %414 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %413, i32 0, i32 1
  %415 = load i64, i64* %414, align 8
  %416 = icmp ne i64 %415, 0
  br i1 %416, label %417, label %429

417:                                              ; preds = %412
  %418 = load i32, i32* %34, align 4
  %419 = icmp ne i32 %418, 0
  br i1 %419, label %420, label %429

420:                                              ; preds = %417
  %421 = load i8*, i8** %23, align 8
  %422 = icmp ne i8* %421, null
  br i1 %422, label %423, label %429

423:                                              ; preds = %420
  %424 = load i32*, i32** %11, align 8
  %425 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %426 = load i32*, i32** %21, align 8
  %427 = load i32*, i32** %22, align 8
  %428 = call i32 @recv_incremental_replication(i32* %424, i8* %46, %struct.TYPE_14__* %425, i32* %426, i32* %427, i32* null)
  store i32 %428, i32* %33, align 4
  br label %429

429:                                              ; preds = %423, %420, %417, %412
  %430 = load i32, i32* %35, align 4
  %431 = icmp ne i32 %430, 0
  br i1 %431, label %432, label %446

432:                                              ; preds = %429
  %433 = load i32, i32* %33, align 4
  %434 = icmp eq i32 %433, 0
  br i1 %434, label %435, label %446

435:                                              ; preds = %432
  %436 = load i8**, i8*** %17, align 8
  %437 = load i8*, i8** %436, align 8
  %438 = icmp ne i8* %437, null
  br i1 %438, label %439, label %446

439:                                              ; preds = %435
  %440 = load i32*, i32** %11, align 8
  %441 = load i8**, i8*** %17, align 8
  %442 = load i8*, i8** %441, align 8
  %443 = load i32*, i32** %21, align 8
  %444 = load i32*, i32** %22, align 8
  %445 = call i32 @recv_fix_encryption_hierarchy(i32* %440, i8* %442, i32* %443, i32* %444)
  store i32 %445, i32* %33, align 4
  br label %446

446:                                              ; preds = %439, %435, %432, %429
  br label %447

447:                                              ; preds = %446, %250, %225, %210, %138, %121, %99
  %448 = load i32*, i32** %22, align 8
  %449 = call i32 @fsavl_destroy(i32* %448)
  %450 = load i32*, i32** %21, align 8
  %451 = call i32 @nvlist_free(i32* %450)
  %452 = load i32, i32* %33, align 4
  %453 = icmp ne i32 %452, 0
  br i1 %453, label %454, label %455

454:                                              ; preds = %447
  store i32 -2, i32* %31, align 4
  br label %455

455:                                              ; preds = %454, %447
  %456 = load i32, i32* %32, align 4
  %457 = icmp ne i32 %456, 0
  br i1 %457, label %458, label %459

458:                                              ; preds = %455
  store i32 -1, i32* %31, align 4
  br label %459

459:                                              ; preds = %458, %455
  %460 = load i32, i32* %31, align 4
  %461 = load i8*, i8** %26, align 8
  call void @llvm.stackrestore(i8* %461)
  ret i32 %460
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @snprintf(i8*, i32, i8*) #2

declare dso_local i8* @dgettext(i32, i8*) #2

declare dso_local i32 @assert(i32) #2

declare dso_local i64 @DMU_GET_STREAM_HDRTYPE(i32) #2

declare dso_local i32 @recv_read_nvlist(i32*, i32, i64, i32**, i32, i32*) #2

declare dso_local i32 @zfs_error(i32*, i32, i8*) #2

declare dso_local i64 @nvlist_lookup_boolean(i32*, i8*) #2

declare dso_local i8* @strchr(i8*, i8 signext) #2

declare dso_local i32 @zfs_error_aux(i32*, i8*) #2

declare dso_local i32 @recv_read(i32*, i32, %struct.TYPE_15__*, i32, i32, i32*) #2

declare dso_local i64 @BSWAP_32(i64) #2

declare dso_local i8* @BSWAP_64(i8*) #2

declare dso_local i32 @ZIO_CHECKSUM_EQUAL(i8**, i32) #2

declare dso_local i32 @nvlist_lookup_string(i32*, i8*, i8**) #2

declare dso_local i32 @VERIFY(i32) #2

declare dso_local i64 @nvlist_lookup_nvlist(i32*, i8*, i32**) #2

declare dso_local i32* @fsavl_create(i32*) #2

declare dso_local i32 @strlcpy(i8*, i8*, i32) #2

declare dso_local i8* @strrchr(i8*, i8 signext) #2

declare dso_local i32 @strlcat(i8*, i8*, i32) #2

declare dso_local i32 @strcspn(i8*, i8*) #2

declare dso_local i64 @nvlist_alloc(i32**, i32, i32) #2

declare dso_local i32 @recv_incremental_replication(i32*, i8*, %struct.TYPE_14__*, i32*, i32*, i32*) #2

declare dso_local i32* @nvlist_next_nvpair(i32*, i32*) #2

declare dso_local i32* @zfs_open(i32*, i32, i32) #2

declare dso_local i32 @nvpair_name(i32*) #2

declare dso_local i32* @changelist_gather(i32*, i32, i32, i32) #2

declare dso_local i32 @zfs_close(i32*) #2

declare dso_local i32 @changelist_prefix(i32*) #2

declare dso_local i32 @changelist_free(i32*) #2

declare dso_local i32 @nvlist_free(i32*) #2

declare dso_local i32 @zfs_receive_impl(i32*, i8*, i32*, %struct.TYPE_14__*, i32, i8*, i32*, i32*, i8**, i32, i32*, i8*, i32*) #2

declare dso_local i32 @recv_fix_encryption_hierarchy(i32*, i8*, i32*, i32*) #2

declare dso_local i32 @fsavl_destroy(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
