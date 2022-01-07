; ModuleID = '/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_sendrecv.c_zfs_receive_impl.c'
source_filename = "/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_sendrecv.c_zfs_receive_impl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i8*, i8*, i64 }
%struct.TYPE_22__ = type { i64, i64, %struct.TYPE_19__ }
%struct.TYPE_19__ = type { %struct.drr_begin }
%struct.drr_begin = type { i64, i64, i64, i64, i64, i64, i64, i8* }
%struct.TYPE_20__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32 }

@TEXT_DOMAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"cannot receive\00", align 1
@EZFS_BADPROP = common dso_local global i32 0, align 4
@ZFS_TYPE_DATASET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"specified fs (%s) does not exist\00", align 1
@EZFS_NOENT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"specified origin fs (%s) does not exist\00", align 1
@B_FALSE = common dso_local global i8* null, align 8
@DRR_END = common dso_local global i64 0, align 8
@ENODATA = common dso_local global i32 0, align 4
@DMU_BACKUP_MAGIC = common dso_local global i64 0, align 8
@B_TRUE = common dso_local global i8* null, align 8
@DRR_BEGIN = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [34 x i8] c"invalid stream (bad magic number)\00", align 1
@EZFS_BADSTREAM = common dso_local global i32 0, align 4
@DMU_SUBSTREAM = common dso_local global i32 0, align 4
@DMU_COMPOUNDSTREAM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [52 x i8] c"stream has unsupported feature, feature flags = %lx\00", align 1
@DMU_BACKUP_FEATURE_HOLDS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [35 x i8] c"invalid stream (bad snapshot name)\00", align 1
@ZFS_MAX_DATASET_NAME_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i8*, %struct.TYPE_21__*, i32, i8*, i32*, i32*, i8**, i32, i32*, i8*, i32*)* @zfs_receive_impl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfs_receive_impl(i32* %0, i8* %1, i8* %2, %struct.TYPE_21__* %3, i32 %4, i8* %5, i32* %6, i32* %7, i8** %8, i32 %9, i32* %10, i8* %11, i32* %12) #0 {
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca %struct.TYPE_21__*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i8**, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32*, align 8
  %26 = alloca i8*, align 8
  %27 = alloca i32*, align 8
  %28 = alloca i32, align 4
  %29 = alloca %struct.TYPE_22__, align 8
  %30 = alloca %struct.TYPE_22__, align 8
  %31 = alloca %struct.drr_begin*, align 8
  %32 = alloca [1024 x i8], align 16
  %33 = alloca %struct.TYPE_20__, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i8*, align 8
  %38 = alloca i64, align 8
  %39 = alloca i8*, align 8
  store i32* %0, i32** %15, align 8
  store i8* %1, i8** %16, align 8
  store i8* %2, i8** %17, align 8
  store %struct.TYPE_21__* %3, %struct.TYPE_21__** %18, align 8
  store i32 %4, i32* %19, align 4
  store i8* %5, i8** %20, align 8
  store i32* %6, i32** %21, align 8
  store i32* %7, i32** %22, align 8
  store i8** %8, i8*** %23, align 8
  store i32 %9, i32* %24, align 4
  store i32* %10, i32** %25, align 8
  store i8* %11, i8** %26, align 8
  store i32* %12, i32** %27, align 8
  %40 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %29, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %40, i32 0, i32 0
  store %struct.drr_begin* %41, %struct.drr_begin** %31, align 8
  %42 = bitcast %struct.TYPE_20__* %33 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %42, i8 0, i64 4, i1 false)
  %43 = getelementptr inbounds [1024 x i8], [1024 x i8]* %32, i64 0, i64 0
  %44 = load i32, i32* @TEXT_DOMAIN, align 4
  %45 = call i8* @dgettext(i32 %44, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %46 = call i32 @snprintf(i8* %43, i32 1024, i8* %45)
  %47 = load i32*, i32** %15, align 8
  %48 = load i32*, i32** %27, align 8
  %49 = getelementptr inbounds [1024 x i8], [1024 x i8]* %32, i64 0, i64 0
  %50 = call i32 @zfs_receive_checkprops(i32* %47, i32* %48, i8* %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %57, label %52

52:                                               ; preds = %13
  %53 = load i32*, i32** %15, align 8
  %54 = load i32, i32* @EZFS_BADPROP, align 4
  %55 = getelementptr inbounds [1024 x i8], [1024 x i8]* %32, i64 0, i64 0
  %56 = call i32 @zfs_error(i32* %53, i32 %54, i8* %55)
  store i32 %56, i32* %14, align 4
  br label %328

57:                                               ; preds = %13
  %58 = load %struct.TYPE_21__*, %struct.TYPE_21__** %18, align 8
  %59 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %78

62:                                               ; preds = %57
  %63 = load i32*, i32** %15, align 8
  %64 = load i8*, i8** %16, align 8
  %65 = load i32, i32* @ZFS_TYPE_DATASET, align 4
  %66 = call i32 @zfs_dataset_exists(i32* %63, i8* %64, i32 %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %78, label %68

68:                                               ; preds = %62
  %69 = load i32*, i32** %15, align 8
  %70 = load i32, i32* @TEXT_DOMAIN, align 4
  %71 = call i8* @dgettext(i32 %70, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %72 = load i8*, i8** %16, align 8
  %73 = call i32 (i32*, i8*, ...) @zfs_error_aux(i32* %69, i8* %71, i8* %72)
  %74 = load i32*, i32** %15, align 8
  %75 = load i32, i32* @EZFS_NOENT, align 4
  %76 = getelementptr inbounds [1024 x i8], [1024 x i8]* %32, i64 0, i64 0
  %77 = call i32 @zfs_error(i32* %74, i32 %75, i8* %76)
  store i32 %77, i32* %14, align 4
  br label %328

78:                                               ; preds = %62, %57
  %79 = load i8*, i8** %17, align 8
  %80 = icmp ne i8* %79, null
  br i1 %80, label %81, label %97

81:                                               ; preds = %78
  %82 = load i32*, i32** %15, align 8
  %83 = load i8*, i8** %17, align 8
  %84 = load i32, i32* @ZFS_TYPE_DATASET, align 4
  %85 = call i32 @zfs_dataset_exists(i32* %82, i8* %83, i32 %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %97, label %87

87:                                               ; preds = %81
  %88 = load i32*, i32** %15, align 8
  %89 = load i32, i32* @TEXT_DOMAIN, align 4
  %90 = call i8* @dgettext(i32 %89, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  %91 = load i8*, i8** %17, align 8
  %92 = call i32 (i32*, i8*, ...) @zfs_error_aux(i32* %88, i8* %90, i8* %91)
  %93 = load i32*, i32** %15, align 8
  %94 = load i32, i32* @EZFS_NOENT, align 4
  %95 = getelementptr inbounds [1024 x i8], [1024 x i8]* %32, i64 0, i64 0
  %96 = call i32 @zfs_error(i32* %93, i32 %94, i8* %95)
  store i32 %96, i32* %14, align 4
  br label %328

97:                                               ; preds = %81, %78
  %98 = load i32*, i32** %15, align 8
  %99 = load i32, i32* %19, align 4
  %100 = load i8*, i8** @B_FALSE, align 8
  %101 = call i32 @recv_read(i32* %98, i32 %99, %struct.TYPE_22__* %29, i32 80, i8* %100, %struct.TYPE_20__* %33)
  store i32 %101, i32* %28, align 4
  %102 = icmp ne i32 0, %101
  br i1 %102, label %103, label %105

103:                                              ; preds = %97
  %104 = load i32, i32* %28, align 4
  store i32 %104, i32* %14, align 4
  br label %328

105:                                              ; preds = %97
  %106 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %29, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @DRR_END, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %116, label %110

110:                                              ; preds = %105
  %111 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %29, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @DRR_END, align 8
  %114 = call i64 @BSWAP_32(i64 %113)
  %115 = icmp eq i64 %112, %114
  br i1 %115, label %116, label %118

116:                                              ; preds = %110, %105
  %117 = load i32, i32* @ENODATA, align 4
  store i32 %117, i32* %14, align 4
  br label %328

118:                                              ; preds = %110
  %119 = bitcast %struct.TYPE_22__* %30 to i8*
  %120 = bitcast %struct.TYPE_22__* %29 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %119, i8* align 8 %120, i64 80, i1 false)
  %121 = load i8*, i8** @B_FALSE, align 8
  %122 = load %struct.TYPE_21__*, %struct.TYPE_21__** %18, align 8
  %123 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %122, i32 0, i32 1
  store i8* %121, i8** %123, align 8
  %124 = load %struct.drr_begin*, %struct.drr_begin** %31, align 8
  %125 = getelementptr inbounds %struct.drr_begin, %struct.drr_begin* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* @DMU_BACKUP_MAGIC, align 8
  %128 = call i64 @BSWAP_64(i64 %127)
  %129 = icmp eq i64 %126, %128
  br i1 %129, label %130, label %186

130:                                              ; preds = %118
  %131 = call i32 @bzero(%struct.TYPE_20__* %33, i32 4)
  %132 = call i32 @fletcher_4_incremental_byteswap(%struct.TYPE_22__* %29, i32 80, %struct.TYPE_20__* %33)
  %133 = load i8*, i8** @B_TRUE, align 8
  %134 = load %struct.TYPE_21__*, %struct.TYPE_21__** %18, align 8
  %135 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %134, i32 0, i32 1
  store i8* %133, i8** %135, align 8
  %136 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %29, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = call i64 @BSWAP_32(i64 %137)
  %139 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %29, i32 0, i32 0
  store i64 %138, i64* %139, align 8
  %140 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %29, i32 0, i32 1
  %141 = load i64, i64* %140, align 8
  %142 = call i64 @BSWAP_32(i64 %141)
  %143 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %29, i32 0, i32 1
  store i64 %142, i64* %143, align 8
  %144 = load %struct.drr_begin*, %struct.drr_begin** %31, align 8
  %145 = getelementptr inbounds %struct.drr_begin, %struct.drr_begin* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = call i64 @BSWAP_64(i64 %146)
  %148 = load %struct.drr_begin*, %struct.drr_begin** %31, align 8
  %149 = getelementptr inbounds %struct.drr_begin, %struct.drr_begin* %148, i32 0, i32 0
  store i64 %147, i64* %149, align 8
  %150 = load %struct.drr_begin*, %struct.drr_begin** %31, align 8
  %151 = getelementptr inbounds %struct.drr_begin, %struct.drr_begin* %150, i32 0, i32 1
  %152 = load i64, i64* %151, align 8
  %153 = call i64 @BSWAP_64(i64 %152)
  %154 = load %struct.drr_begin*, %struct.drr_begin** %31, align 8
  %155 = getelementptr inbounds %struct.drr_begin, %struct.drr_begin* %154, i32 0, i32 1
  store i64 %153, i64* %155, align 8
  %156 = load %struct.drr_begin*, %struct.drr_begin** %31, align 8
  %157 = getelementptr inbounds %struct.drr_begin, %struct.drr_begin* %156, i32 0, i32 2
  %158 = load i64, i64* %157, align 8
  %159 = call i64 @BSWAP_64(i64 %158)
  %160 = load %struct.drr_begin*, %struct.drr_begin** %31, align 8
  %161 = getelementptr inbounds %struct.drr_begin, %struct.drr_begin* %160, i32 0, i32 2
  store i64 %159, i64* %161, align 8
  %162 = load %struct.drr_begin*, %struct.drr_begin** %31, align 8
  %163 = getelementptr inbounds %struct.drr_begin, %struct.drr_begin* %162, i32 0, i32 3
  %164 = load i64, i64* %163, align 8
  %165 = call i64 @BSWAP_32(i64 %164)
  %166 = load %struct.drr_begin*, %struct.drr_begin** %31, align 8
  %167 = getelementptr inbounds %struct.drr_begin, %struct.drr_begin* %166, i32 0, i32 3
  store i64 %165, i64* %167, align 8
  %168 = load %struct.drr_begin*, %struct.drr_begin** %31, align 8
  %169 = getelementptr inbounds %struct.drr_begin, %struct.drr_begin* %168, i32 0, i32 4
  %170 = load i64, i64* %169, align 8
  %171 = call i64 @BSWAP_32(i64 %170)
  %172 = load %struct.drr_begin*, %struct.drr_begin** %31, align 8
  %173 = getelementptr inbounds %struct.drr_begin, %struct.drr_begin* %172, i32 0, i32 4
  store i64 %171, i64* %173, align 8
  %174 = load %struct.drr_begin*, %struct.drr_begin** %31, align 8
  %175 = getelementptr inbounds %struct.drr_begin, %struct.drr_begin* %174, i32 0, i32 5
  %176 = load i64, i64* %175, align 8
  %177 = call i64 @BSWAP_64(i64 %176)
  %178 = load %struct.drr_begin*, %struct.drr_begin** %31, align 8
  %179 = getelementptr inbounds %struct.drr_begin, %struct.drr_begin* %178, i32 0, i32 5
  store i64 %177, i64* %179, align 8
  %180 = load %struct.drr_begin*, %struct.drr_begin** %31, align 8
  %181 = getelementptr inbounds %struct.drr_begin, %struct.drr_begin* %180, i32 0, i32 6
  %182 = load i64, i64* %181, align 8
  %183 = call i64 @BSWAP_64(i64 %182)
  %184 = load %struct.drr_begin*, %struct.drr_begin** %31, align 8
  %185 = getelementptr inbounds %struct.drr_begin, %struct.drr_begin* %184, i32 0, i32 6
  store i64 %183, i64* %185, align 8
  br label %186

186:                                              ; preds = %130, %118
  %187 = load %struct.drr_begin*, %struct.drr_begin** %31, align 8
  %188 = getelementptr inbounds %struct.drr_begin, %struct.drr_begin* %187, i32 0, i32 0
  %189 = load i64, i64* %188, align 8
  %190 = load i64, i64* @DMU_BACKUP_MAGIC, align 8
  %191 = icmp ne i64 %189, %190
  br i1 %191, label %197, label %192

192:                                              ; preds = %186
  %193 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %29, i32 0, i32 0
  %194 = load i64, i64* %193, align 8
  %195 = load i64, i64* @DRR_BEGIN, align 8
  %196 = icmp ne i64 %194, %195
  br i1 %196, label %197, label %206

197:                                              ; preds = %192, %186
  %198 = load i32*, i32** %15, align 8
  %199 = load i32, i32* @TEXT_DOMAIN, align 4
  %200 = call i8* @dgettext(i32 %199, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  %201 = call i32 (i32*, i8*, ...) @zfs_error_aux(i32* %198, i8* %200)
  %202 = load i32*, i32** %15, align 8
  %203 = load i32, i32* @EZFS_BADSTREAM, align 4
  %204 = getelementptr inbounds [1024 x i8], [1024 x i8]* %32, i64 0, i64 0
  %205 = call i32 @zfs_error(i32* %202, i32 %203, i8* %204)
  store i32 %205, i32* %14, align 4
  br label %328

206:                                              ; preds = %192
  %207 = load %struct.drr_begin*, %struct.drr_begin** %31, align 8
  %208 = getelementptr inbounds %struct.drr_begin, %struct.drr_begin* %207, i32 0, i32 1
  %209 = load i64, i64* %208, align 8
  %210 = call i32 @DMU_GET_FEATUREFLAGS(i64 %209)
  store i32 %210, i32* %34, align 4
  %211 = load %struct.drr_begin*, %struct.drr_begin** %31, align 8
  %212 = getelementptr inbounds %struct.drr_begin, %struct.drr_begin* %211, i32 0, i32 1
  %213 = load i64, i64* %212, align 8
  %214 = call i32 @DMU_GET_STREAM_HDRTYPE(i64 %213)
  store i32 %214, i32* %35, align 4
  %215 = load i32, i32* %34, align 4
  %216 = call i32 @DMU_STREAM_SUPPORTED(i32 %215)
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %226

218:                                              ; preds = %206
  %219 = load i32, i32* %35, align 4
  %220 = load i32, i32* @DMU_SUBSTREAM, align 4
  %221 = icmp ne i32 %219, %220
  br i1 %221, label %222, label %236

222:                                              ; preds = %218
  %223 = load i32, i32* %35, align 4
  %224 = load i32, i32* @DMU_COMPOUNDSTREAM, align 4
  %225 = icmp ne i32 %223, %224
  br i1 %225, label %226, label %236

226:                                              ; preds = %222, %206
  %227 = load i32*, i32** %15, align 8
  %228 = load i32, i32* @TEXT_DOMAIN, align 4
  %229 = call i8* @dgettext(i32 %228, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.4, i64 0, i64 0))
  %230 = load i32, i32* %34, align 4
  %231 = call i32 (i32*, i8*, ...) @zfs_error_aux(i32* %227, i8* %229, i32 %230)
  %232 = load i32*, i32** %15, align 8
  %233 = load i32, i32* @EZFS_BADSTREAM, align 4
  %234 = getelementptr inbounds [1024 x i8], [1024 x i8]* %32, i64 0, i64 0
  %235 = call i32 @zfs_error(i32* %232, i32 %233, i8* %234)
  store i32 %235, i32* %14, align 4
  br label %328

236:                                              ; preds = %222, %218
  %237 = load %struct.drr_begin*, %struct.drr_begin** %31, align 8
  %238 = getelementptr inbounds %struct.drr_begin, %struct.drr_begin* %237, i32 0, i32 1
  %239 = load i64, i64* %238, align 8
  %240 = call i32 @DMU_GET_FEATUREFLAGS(i64 %239)
  %241 = load i32, i32* @DMU_BACKUP_FEATURE_HOLDS, align 4
  %242 = and i32 %240, %241
  store i32 %242, i32* %36, align 4
  %243 = load i32, i32* %36, align 4
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %249

245:                                              ; preds = %236
  %246 = load i8*, i8** @B_TRUE, align 8
  %247 = load %struct.TYPE_21__*, %struct.TYPE_21__** %18, align 8
  %248 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %247, i32 0, i32 0
  store i8* %246, i8** %248, align 8
  br label %249

249:                                              ; preds = %245, %236
  %250 = load %struct.drr_begin*, %struct.drr_begin** %31, align 8
  %251 = getelementptr inbounds %struct.drr_begin, %struct.drr_begin* %250, i32 0, i32 7
  %252 = load i8*, i8** %251, align 8
  %253 = call i8* @strchr(i8* %252, i8 signext 64)
  %254 = icmp eq i8* %253, null
  br i1 %254, label %255, label %264

255:                                              ; preds = %249
  %256 = load i32*, i32** %15, align 8
  %257 = load i32, i32* @TEXT_DOMAIN, align 4
  %258 = call i8* @dgettext(i32 %257, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0))
  %259 = call i32 (i32*, i8*, ...) @zfs_error_aux(i32* %256, i8* %258)
  %260 = load i32*, i32** %15, align 8
  %261 = load i32, i32* @EZFS_BADSTREAM, align 4
  %262 = getelementptr inbounds [1024 x i8], [1024 x i8]* %32, i64 0, i64 0
  %263 = call i32 @zfs_error(i32* %260, i32 %261, i8* %262)
  store i32 %263, i32* %14, align 4
  br label %328

264:                                              ; preds = %249
  %265 = load %struct.drr_begin*, %struct.drr_begin** %31, align 8
  %266 = getelementptr inbounds %struct.drr_begin, %struct.drr_begin* %265, i32 0, i32 1
  %267 = load i64, i64* %266, align 8
  %268 = call i32 @DMU_GET_STREAM_HDRTYPE(i64 %267)
  %269 = load i32, i32* @DMU_SUBSTREAM, align 4
  %270 = icmp eq i32 %268, %269
  br i1 %270, label %271, label %310

271:                                              ; preds = %264
  %272 = load i32, i32* @ZFS_MAX_DATASET_NAME_LEN, align 4
  %273 = zext i32 %272 to i64
  %274 = call i8* @llvm.stacksave()
  store i8* %274, i8** %37, align 8
  %275 = alloca i8, i64 %273, align 16
  store i64 %273, i64* %38, align 8
  %276 = load i8*, i8** %20, align 8
  %277 = icmp eq i8* %276, null
  br i1 %277, label %278, label %294

278:                                              ; preds = %271
  %279 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %29, i32 0, i32 2
  %280 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %279, i32 0, i32 0
  %281 = getelementptr inbounds %struct.drr_begin, %struct.drr_begin* %280, i32 0, i32 7
  %282 = load i8*, i8** %281, align 8
  %283 = trunc i64 %273 to i32
  %284 = call i32 @strlcpy(i8* %275, i8* %282, i32 %283)
  %285 = call i8* @strchr(i8* %275, i8 signext 64)
  store i8* %285, i8** %39, align 8
  %286 = icmp ne i8* %285, null
  br i1 %286, label %287, label %289

287:                                              ; preds = %278
  %288 = load i8*, i8** %39, align 8
  store i8 0, i8* %288, align 1
  br label %289

289:                                              ; preds = %287, %278
  store i8* %275, i8** %20, align 8
  %290 = load i8*, i8** %26, align 8
  %291 = icmp eq i8* %290, null
  %292 = zext i1 %291 to i32
  %293 = call i32 @VERIFY(i32 %292)
  br label %294

294:                                              ; preds = %289, %271
  %295 = load i32*, i32** %15, align 8
  %296 = load i32, i32* %19, align 4
  %297 = load i8*, i8** %16, align 8
  %298 = load i8*, i8** %17, align 8
  %299 = load %struct.TYPE_21__*, %struct.TYPE_21__** %18, align 8
  %300 = load i8*, i8** %20, align 8
  %301 = load i32*, i32** %21, align 8
  %302 = load i32*, i32** %22, align 8
  %303 = load i8**, i8*** %23, align 8
  %304 = load i32, i32* %24, align 4
  %305 = load i32*, i32** %25, align 8
  %306 = load i8*, i8** %26, align 8
  %307 = load i32*, i32** %27, align 8
  %308 = call i32 @zfs_receive_one(i32* %295, i32 %296, i8* %297, i8* %298, %struct.TYPE_21__* %299, %struct.TYPE_22__* %29, %struct.TYPE_22__* %30, i8* %300, i32* %301, i32* %302, i8** %303, i32 %304, i32* %305, i8* %306, i32* %307)
  store i32 %308, i32* %14, align 4
  %309 = load i8*, i8** %37, align 8
  call void @llvm.stackrestore(i8* %309)
  br label %328

310:                                              ; preds = %264
  %311 = load %struct.drr_begin*, %struct.drr_begin** %31, align 8
  %312 = getelementptr inbounds %struct.drr_begin, %struct.drr_begin* %311, i32 0, i32 1
  %313 = load i64, i64* %312, align 8
  %314 = call i32 @DMU_GET_STREAM_HDRTYPE(i64 %313)
  %315 = load i32, i32* @DMU_COMPOUNDSTREAM, align 4
  %316 = icmp eq i32 %314, %315
  %317 = zext i1 %316 to i32
  %318 = call i32 @assert(i32 %317)
  %319 = load i32*, i32** %15, align 8
  %320 = load i32, i32* %19, align 4
  %321 = load i8*, i8** %16, align 8
  %322 = load %struct.TYPE_21__*, %struct.TYPE_21__** %18, align 8
  %323 = load i8**, i8*** %23, align 8
  %324 = load i32, i32* %24, align 4
  %325 = load i32*, i32** %25, align 8
  %326 = load i32*, i32** %27, align 8
  %327 = call i32 @zfs_receive_package(i32* %319, i32 %320, i8* %321, %struct.TYPE_21__* %322, %struct.TYPE_22__* %29, %struct.TYPE_20__* %33, i8** %323, i32 %324, i32* %325, i32* %326)
  store i32 %327, i32* %14, align 4
  br label %328

328:                                              ; preds = %310, %294, %255, %226, %197, %116, %103, %87, %68, %52
  %329 = load i32, i32* %14, align 4
  ret i32 %329
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @snprintf(i8*, i32, i8*) #2

declare dso_local i8* @dgettext(i32, i8*) #2

declare dso_local i32 @zfs_receive_checkprops(i32*, i32*, i8*) #2

declare dso_local i32 @zfs_error(i32*, i32, i8*) #2

declare dso_local i32 @zfs_dataset_exists(i32*, i8*, i32) #2

declare dso_local i32 @zfs_error_aux(i32*, i8*, ...) #2

declare dso_local i32 @recv_read(i32*, i32, %struct.TYPE_22__*, i32, i8*, %struct.TYPE_20__*) #2

declare dso_local i64 @BSWAP_32(i64) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @BSWAP_64(i64) #2

declare dso_local i32 @bzero(%struct.TYPE_20__*, i32) #2

declare dso_local i32 @fletcher_4_incremental_byteswap(%struct.TYPE_22__*, i32, %struct.TYPE_20__*) #2

declare dso_local i32 @DMU_GET_FEATUREFLAGS(i64) #2

declare dso_local i32 @DMU_GET_STREAM_HDRTYPE(i64) #2

declare dso_local i32 @DMU_STREAM_SUPPORTED(i32) #2

declare dso_local i8* @strchr(i8*, i8 signext) #2

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #3

declare dso_local i32 @strlcpy(i8*, i8*, i32) #2

declare dso_local i32 @VERIFY(i32) #2

declare dso_local i32 @zfs_receive_one(i32*, i32, i8*, i8*, %struct.TYPE_21__*, %struct.TYPE_22__*, %struct.TYPE_22__*, i8*, i32*, i32*, i8**, i32, i32*, i8*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #3

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @zfs_receive_package(i32*, i32, i8*, %struct.TYPE_21__*, %struct.TYPE_22__*, %struct.TYPE_20__*, i8**, i32, i32*, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
