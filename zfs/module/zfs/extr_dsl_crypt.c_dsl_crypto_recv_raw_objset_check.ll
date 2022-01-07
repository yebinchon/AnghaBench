; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_dsl_crypt.c_dsl_crypto_recv_raw_objset_check.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_dsl_crypt.c_dsl_crypto_recv_raw_objset_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_18__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_17__ = type { i64, i64, i64, i64 }

@DMU_OST_ZFS = common dso_local global i64 0, align 8
@DMU_OST_ZVOL = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"mdn_compress\00", align 1
@ZIO_COMPRESS_LEGACY_FUNCTIONS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"mdn_checksum\00", align 1
@ZIO_CHECKSUM_LEGACY_FUNCTIONS = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [12 x i8] c"mdn_nlevels\00", align 1
@DN_MAX_LEVELS = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [10 x i8] c"mdn_blksz\00", align 1
@SPA_MINBLOCKSIZE = common dso_local global i64 0, align 8
@ENOTSUP = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [16 x i8] c"mdn_indblkshift\00", align 1
@DN_MIN_INDBLKSHIFT = common dso_local global i64 0, align 8
@DN_MAX_INDBLKSHIFT = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [12 x i8] c"mdn_nblkptr\00", align 1
@DN_MAX_NBLKPTR = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [13 x i8] c"mdn_maxblkid\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"portable_mac\00", align 1
@ZIO_OBJSET_MAC_LEN = common dso_local global i64 0, align 8
@OBJSET_FLAG_USERACCOUNTING_COMPLETE = common dso_local global i32 0, align 4
@OBJSET_FLAG_USEROBJACCOUNTING_COMPLETE = common dso_local global i32 0, align 4
@RW_READER = common dso_local global i32 0, align 4
@FTAG = common dso_local global i32 0, align 4
@zfs_disable_ivset_guid_check = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [16 x i8] c"from_ivset_guid\00", align 1
@DS_FIELD_IVSET_GUID = common dso_local global i32 0, align 4
@ZFS_ERR_FROM_IVSET_GUID_MISSING = common dso_local global i32 0, align 4
@ZFS_ERR_FROM_IVSET_GUID_MISMATCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*, %struct.TYPE_16__*, i64, i32*, %struct.TYPE_18__*)* @dsl_crypto_recv_raw_objset_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsl_crypto_recv_raw_objset_check(%struct.TYPE_16__* %0, %struct.TYPE_16__* %1, i64 %2, i32* %3, %struct.TYPE_18__* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca %struct.TYPE_16__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_18__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_15__*, align 8
  %14 = alloca %struct.TYPE_17__*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %7, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32* %3, i32** %10, align 8
  store %struct.TYPE_18__* %4, %struct.TYPE_18__** %11, align 8
  store i32* null, i32** %15, align 8
  %24 = load i64, i64* %9, align 8
  %25 = load i64, i64* @DMU_OST_ZFS, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %34

27:                                               ; preds = %5
  %28 = load i64, i64* %9, align 8
  %29 = load i64, i64* @DMU_OST_ZVOL, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = load i32, i32* @EINVAL, align 4
  %33 = call i32 @SET_ERROR(i32 %32)
  store i32 %33, i32* %6, align 4
  br label %245

34:                                               ; preds = %27, %5
  %35 = load i32*, i32** %10, align 8
  %36 = call i32 @nvlist_lookup_uint64(i32* %35, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i64* %17)
  store i32 %36, i32* %12, align 4
  %37 = load i32, i32* %12, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %34
  %40 = load i64, i64* %17, align 8
  %41 = load i64, i64* @ZIO_COMPRESS_LEGACY_FUNCTIONS, align 8
  %42 = icmp sge i64 %40, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %39, %34
  %44 = load i32, i32* @EINVAL, align 4
  %45 = call i32 @SET_ERROR(i32 %44)
  store i32 %45, i32* %6, align 4
  br label %245

46:                                               ; preds = %39
  %47 = load i32*, i32** %10, align 8
  %48 = call i32 @nvlist_lookup_uint64(i32* %47, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i64* %17)
  store i32 %48, i32* %12, align 4
  %49 = load i32, i32* %12, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %55, label %51

51:                                               ; preds = %46
  %52 = load i64, i64* %17, align 8
  %53 = load i64, i64* @ZIO_CHECKSUM_LEGACY_FUNCTIONS, align 8
  %54 = icmp sge i64 %52, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %51, %46
  %56 = load i32, i32* @EINVAL, align 4
  %57 = call i32 @SET_ERROR(i32 %56)
  store i32 %57, i32* %6, align 4
  br label %245

58:                                               ; preds = %51
  %59 = load i32*, i32** %10, align 8
  %60 = call i32 @nvlist_lookup_uint64(i32* %59, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i64* %18)
  store i32 %60, i32* %12, align 4
  %61 = load i32, i32* %12, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %67, label %63

63:                                               ; preds = %58
  %64 = load i64, i64* %18, align 8
  %65 = load i64, i64* @DN_MAX_LEVELS, align 8
  %66 = icmp sgt i64 %64, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %63, %58
  %68 = load i32, i32* @EINVAL, align 4
  %69 = call i32 @SET_ERROR(i32 %68)
  store i32 %69, i32* %6, align 4
  br label %245

70:                                               ; preds = %63
  %71 = load i32*, i32** %10, align 8
  %72 = call i32 @nvlist_lookup_uint64(i32* %71, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i64* %19)
  store i32 %72, i32* %12, align 4
  %73 = load i32, i32* %12, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %79, label %75

75:                                               ; preds = %70
  %76 = load i64, i64* %19, align 8
  %77 = load i64, i64* @SPA_MINBLOCKSIZE, align 8
  %78 = icmp slt i64 %76, %77
  br i1 %78, label %79, label %82

79:                                               ; preds = %75, %70
  %80 = load i32, i32* @EINVAL, align 4
  %81 = call i32 @SET_ERROR(i32 %80)
  store i32 %81, i32* %6, align 4
  br label %245

82:                                               ; preds = %75
  %83 = load i64, i64* %19, align 8
  %84 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %85 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %84, i32 0, i32 0
  %86 = load %struct.TYPE_14__*, %struct.TYPE_14__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = call i64 @spa_maxblocksize(i32 %88)
  %90 = icmp sgt i64 %83, %89
  br i1 %90, label %91, label %94

91:                                               ; preds = %82
  %92 = load i32, i32* @ENOTSUP, align 4
  %93 = call i32 @SET_ERROR(i32 %92)
  store i32 %93, i32* %6, align 4
  br label %245

94:                                               ; preds = %82
  br label %95

95:                                               ; preds = %94
  %96 = load i32*, i32** %10, align 8
  %97 = call i32 @nvlist_lookup_uint64(i32* %96, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i64* %20)
  store i32 %97, i32* %12, align 4
  %98 = load i32, i32* %12, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %108, label %100

100:                                              ; preds = %95
  %101 = load i64, i64* %20, align 8
  %102 = load i64, i64* @DN_MIN_INDBLKSHIFT, align 8
  %103 = icmp slt i64 %101, %102
  br i1 %103, label %108, label %104

104:                                              ; preds = %100
  %105 = load i64, i64* %20, align 8
  %106 = load i64, i64* @DN_MAX_INDBLKSHIFT, align 8
  %107 = icmp sgt i64 %105, %106
  br i1 %107, label %108, label %111

108:                                              ; preds = %104, %100, %95
  %109 = load i32, i32* @ENOTSUP, align 4
  %110 = call i32 @SET_ERROR(i32 %109)
  store i32 %110, i32* %6, align 4
  br label %245

111:                                              ; preds = %104
  %112 = load i32*, i32** %10, align 8
  %113 = call i32 @nvlist_lookup_uint64(i32* %112, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i64* %21)
  store i32 %113, i32* %12, align 4
  %114 = load i32, i32* %12, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %120, label %116

116:                                              ; preds = %111
  %117 = load i64, i64* %21, align 8
  %118 = load i64, i64* @DN_MAX_NBLKPTR, align 8
  %119 = icmp ne i64 %117, %118
  br i1 %119, label %120, label %123

120:                                              ; preds = %116, %111
  %121 = load i32, i32* @ENOTSUP, align 4
  %122 = call i32 @SET_ERROR(i32 %121)
  store i32 %122, i32* %6, align 4
  br label %245

123:                                              ; preds = %116
  %124 = load i32*, i32** %10, align 8
  %125 = call i32 @nvlist_lookup_uint64(i32* %124, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i64* %22)
  store i32 %125, i32* %12, align 4
  %126 = load i32, i32* %12, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %131

128:                                              ; preds = %123
  %129 = load i32, i32* @EINVAL, align 4
  %130 = call i32 @SET_ERROR(i32 %129)
  store i32 %130, i32* %6, align 4
  br label %245

131:                                              ; preds = %123
  %132 = load i32*, i32** %10, align 8
  %133 = call i32 @nvlist_lookup_uint8_array(i32* %132, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0), i32** %15, i64* %16)
  store i32 %133, i32* %12, align 4
  %134 = load i32, i32* %12, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %140, label %136

136:                                              ; preds = %131
  %137 = load i64, i64* %16, align 8
  %138 = load i64, i64* @ZIO_OBJSET_MAC_LEN, align 8
  %139 = icmp ne i64 %137, %138
  br i1 %139, label %140, label %143

140:                                              ; preds = %136, %131
  %141 = load i32, i32* @EINVAL, align 4
  %142 = call i32 @SET_ERROR(i32 %141)
  store i32 %142, i32* %6, align 4
  br label %245

143:                                              ; preds = %136
  %144 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %145 = call i32 @dmu_objset_from_ds(%struct.TYPE_16__* %144, %struct.TYPE_15__** %13)
  store i32 %145, i32* %12, align 4
  %146 = load i32, i32* %12, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %150

148:                                              ; preds = %143
  %149 = load i32, i32* %12, align 4
  store i32 %149, i32* %6, align 4
  br label %245

150:                                              ; preds = %143
  %151 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %152 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = load i32, i32* @OBJSET_FLAG_USERACCOUNTING_COMPLETE, align 4
  %155 = and i32 %153, %154
  %156 = call i32 @ASSERT0(i32 %155)
  %157 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %158 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = load i32, i32* @OBJSET_FLAG_USEROBJACCOUNTING_COMPLETE, align 4
  %161 = and i32 %159, %160
  %162 = call i32 @ASSERT0(i32 %161)
  %163 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %164 = call %struct.TYPE_17__* @DMU_META_DNODE(%struct.TYPE_15__* %163)
  store %struct.TYPE_17__* %164, %struct.TYPE_17__** %14, align 8
  %165 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %166 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %165, i32 0, i32 1
  %167 = load i32, i32* @RW_READER, align 4
  %168 = load i32, i32* @FTAG, align 4
  %169 = call i32 @rrw_enter(i32* %166, i32 %167, i32 %168)
  %170 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %171 = call i32 @dsl_dataset_get_blkptr(%struct.TYPE_16__* %170)
  %172 = call i32 @BP_IS_HOLE(i32 %171)
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %205, label %174

174:                                              ; preds = %150
  %175 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %176 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = load i64, i64* %18, align 8
  %179 = icmp ne i64 %177, %178
  br i1 %179, label %198, label %180

180:                                              ; preds = %174
  %181 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %182 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %181, i32 0, i32 1
  %183 = load i64, i64* %182, align 8
  %184 = load i64, i64* %19, align 8
  %185 = icmp ne i64 %183, %184
  br i1 %185, label %198, label %186

186:                                              ; preds = %180
  %187 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %188 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %187, i32 0, i32 2
  %189 = load i64, i64* %188, align 8
  %190 = load i64, i64* %20, align 8
  %191 = icmp ne i64 %189, %190
  br i1 %191, label %198, label %192

192:                                              ; preds = %186
  %193 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %194 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %193, i32 0, i32 3
  %195 = load i64, i64* %194, align 8
  %196 = load i64, i64* %21, align 8
  %197 = icmp ne i64 %195, %196
  br i1 %197, label %198, label %205

198:                                              ; preds = %192, %186, %180, %174
  %199 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %200 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %199, i32 0, i32 1
  %201 = load i32, i32* @FTAG, align 4
  %202 = call i32 @rrw_exit(i32* %200, i32 %201)
  %203 = load i32, i32* @EINVAL, align 4
  %204 = call i32 @SET_ERROR(i32 %203)
  store i32 %204, i32* %6, align 4
  br label %245

205:                                              ; preds = %192, %150
  %206 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %207 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %206, i32 0, i32 1
  %208 = load i32, i32* @FTAG, align 4
  %209 = call i32 @rrw_exit(i32* %207, i32 %208)
  %210 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %211 = icmp ne %struct.TYPE_16__* %210, null
  br i1 %211, label %212, label %244

212:                                              ; preds = %205
  %213 = load i32, i32* @zfs_disable_ivset_guid_check, align 4
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %244, label %215

215:                                              ; preds = %212
  store i64 0, i64* %23, align 8
  store i64 0, i64* %17, align 8
  %216 = load i32*, i32** %10, align 8
  %217 = call i32 @nvlist_lookup_uint64(i32* %216, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0), i64* %17)
  %218 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %219 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %218, i32 0, i32 0
  %220 = load %struct.TYPE_14__*, %struct.TYPE_14__** %219, align 8
  %221 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 4
  %223 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %224 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 4
  %226 = load i32, i32* @DS_FIELD_IVSET_GUID, align 4
  %227 = call i32 @zap_lookup(i32 %222, i32 %225, i32 %226, i32 8, i32 1, i64* %23)
  %228 = load i64, i64* %17, align 8
  %229 = icmp eq i64 %228, 0
  br i1 %229, label %233, label %230

230:                                              ; preds = %215
  %231 = load i64, i64* %23, align 8
  %232 = icmp eq i64 %231, 0
  br i1 %232, label %233, label %236

233:                                              ; preds = %230, %215
  %234 = load i32, i32* @ZFS_ERR_FROM_IVSET_GUID_MISSING, align 4
  %235 = call i32 @SET_ERROR(i32 %234)
  store i32 %235, i32* %6, align 4
  br label %245

236:                                              ; preds = %230
  %237 = load i64, i64* %17, align 8
  %238 = load i64, i64* %23, align 8
  %239 = icmp ne i64 %237, %238
  br i1 %239, label %240, label %243

240:                                              ; preds = %236
  %241 = load i32, i32* @ZFS_ERR_FROM_IVSET_GUID_MISMATCH, align 4
  %242 = call i32 @SET_ERROR(i32 %241)
  store i32 %242, i32* %6, align 4
  br label %245

243:                                              ; preds = %236
  br label %244

244:                                              ; preds = %243, %212, %205
  store i32 0, i32* %6, align 4
  br label %245

245:                                              ; preds = %244, %240, %233, %198, %148, %140, %128, %120, %108, %91, %79, %67, %55, %43, %31
  %246 = load i32, i32* %6, align 4
  ret i32 %246
}

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i32 @nvlist_lookup_uint64(i32*, i8*, i64*) #1

declare dso_local i64 @spa_maxblocksize(i32) #1

declare dso_local i32 @nvlist_lookup_uint8_array(i32*, i8*, i32**, i64*) #1

declare dso_local i32 @dmu_objset_from_ds(%struct.TYPE_16__*, %struct.TYPE_15__**) #1

declare dso_local i32 @ASSERT0(i32) #1

declare dso_local %struct.TYPE_17__* @DMU_META_DNODE(%struct.TYPE_15__*) #1

declare dso_local i32 @rrw_enter(i32*, i32, i32) #1

declare dso_local i32 @BP_IS_HOLE(i32) #1

declare dso_local i32 @dsl_dataset_get_blkptr(%struct.TYPE_16__*) #1

declare dso_local i32 @rrw_exit(i32*, i32) #1

declare dso_local i32 @zap_lookup(i32, i32, i32, i32, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
