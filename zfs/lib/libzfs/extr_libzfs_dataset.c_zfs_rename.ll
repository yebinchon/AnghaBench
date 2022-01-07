; ModuleID = '/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_dataset.c_zfs_rename.c'
source_filename = "/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_dataset.c_zfs_rename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i8*, i32*, i32 }
%struct.TYPE_12__ = type { i8*, i8*, i8*, i64, i32 }

@.str = private unnamed_addr constant [2 x i8] zeroinitializer, align 1
@ZFS_MAX_DATASET_NAME_LEN = common dso_local global i32 0, align 4
@TEXT_DOMAIN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"cannot rename to '%s'\00", align 1
@B_TRUE = common dso_local global i32 0, align 4
@EZFS_INVALIDNAME = common dso_local global i32 0, align 4
@ZFS_TYPE_SNAPSHOT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"snapshots must be part of same dataset\00", align 1
@EZFS_CROSSTARGET = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"recursive rename must be a snapshot\00", align 1
@EZFS_BADTYPE = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [34 x i8] c"datasets must be within same pool\00", align 1
@.str.5 = private unnamed_addr constant [64 x i8] c"New dataset name cannot be a descendant of current dataset name\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"cannot rename '%s'\00", align 1
@GLOBAL_ZONEID = common dso_local global i64 0, align 8
@ZFS_PROP_ZONED = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [37 x i8] c"dataset is used in a non-global zone\00", align 1
@EZFS_ZONED = common dso_local global i32 0, align 4
@ZFS_TYPE_DATASET = common dso_local global i32 0, align 4
@ZFS_PROP_NAME = common dso_local global i32 0, align 4
@CL_GATHER_ITER_MOUNTED = common dso_local global i32 0, align 4
@MS_FORCE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [69 x i8] c"child dataset with inherited mountpoint is used in a non-global zone\00", align 1
@DMU_OST_ZVOL = common dso_local global i32 0, align 4
@DMU_OST_ZFS = common dso_local global i32 0, align 4
@ZFS_IOC_RENAME = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EEXIST = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [57 x i8] c"a child dataset already has a snapshot with the new name\00", align 1
@EZFS_EXISTS = common dso_local global i32 0, align 4
@EACCES = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [59 x i8] c"cannot move encrypted child outside of its encryption root\00", align 1
@EZFS_CRYPTOFAILED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfs_rename(%struct.TYPE_11__* %0, i8* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_12__, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32*, align 8
  %17 = alloca [1024 x i8], align 16
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_11__*, align 8
  %20 = alloca i8*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 0, i32* %10, align 4
  %21 = bitcast %struct.TYPE_12__* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %21, i8 0, i64 40, i1 false)
  %22 = bitcast i8* %21 to %struct.TYPE_12__*
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 0
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i8** %23, align 8
  store i32* null, i32** %13, align 8
  %24 = load i32, i32* @ZFS_MAX_DATASET_NAME_LEN, align 4
  %25 = zext i32 %24 to i64
  %26 = call i8* @llvm.stacksave()
  store i8* %26, i8** %14, align 8
  %27 = alloca i8, i64 %25, align 16
  store i64 %25, i64* %15, align 8
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  store i32* %30, i32** %16, align 8
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = load i8*, i8** %7, align 8
  %35 = call i64 @strcmp(i8* %33, i8* %34)
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  store i32 1, i32* %18, align 4
  br label %433

38:                                               ; preds = %4
  %39 = getelementptr inbounds [1024 x i8], [1024 x i8]* %17, i64 0, i64 0
  %40 = load i32, i32* @TEXT_DOMAIN, align 4
  %41 = call i8* @dgettext(i32 %40, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %42 = load i8*, i8** %7, align 8
  %43 = call i32 @snprintf(i8* %39, i32 1024, i8* %41, i8* %42)
  %44 = load i32*, i32** %16, align 8
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @B_TRUE, align 4
  %52 = call i32 @zfs_validate_name(i32* %44, i8* %47, i32 %50, i32 %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %59, label %54

54:                                               ; preds = %38
  %55 = load i32*, i32** %16, align 8
  %56 = load i32, i32* @EZFS_INVALIDNAME, align 4
  %57 = getelementptr inbounds [1024 x i8], [1024 x i8]* %17, i64 0, i64 0
  %58 = call i32 @zfs_error(i32* %55, i32 %56, i8* %57)
  store i32 %58, i32* %5, align 4
  store i32 1, i32* %18, align 4
  br label %433

59:                                               ; preds = %38
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @ZFS_TYPE_SNAPSHOT, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %146

65:                                               ; preds = %59
  %66 = load i8*, i8** %7, align 8
  %67 = call i8* @strchr(i8* %66, i8 signext 64)
  %68 = icmp eq i8* %67, null
  br i1 %68, label %74, label %69

69:                                               ; preds = %65
  %70 = load i8*, i8** %7, align 8
  %71 = load i8, i8* %70, align 1
  %72 = sext i8 %71 to i32
  %73 = icmp eq i32 %72, 64
  br i1 %73, label %74, label %93

74:                                               ; preds = %69, %65
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 0
  %77 = load i8*, i8** %76, align 8
  %78 = trunc i64 %25 to i32
  %79 = call i32 @strlcpy(i8* %27, i8* %77, i32 %78)
  %80 = call i8* @strchr(i8* %27, i8 signext 64)
  store i8* %80, i8** %12, align 8
  %81 = load i8*, i8** %7, align 8
  %82 = call i8* @strchr(i8* %81, i8 signext 64)
  %83 = icmp eq i8* %82, null
  br i1 %83, label %84, label %87

84:                                               ; preds = %74
  %85 = load i8*, i8** %12, align 8
  %86 = getelementptr inbounds i8, i8* %85, i32 1
  store i8* %86, i8** %12, align 8
  store i8 0, i8* %86, align 1
  br label %89

87:                                               ; preds = %74
  %88 = load i8*, i8** %12, align 8
  store i8 0, i8* %88, align 1
  br label %89

89:                                               ; preds = %87, %84
  %90 = load i8*, i8** %7, align 8
  %91 = trunc i64 %25 to i32
  %92 = call i32 @strlcat(i8* %27, i8* %90, i32 %91)
  store i8* %27, i8** %7, align 8
  br label %131

93:                                               ; preds = %69
  %94 = load i8*, i8** %7, align 8
  %95 = call i8* @strchr(i8* %94, i8 signext 64)
  store i8* %95, i8** %12, align 8
  %96 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 0
  %98 = load i8*, i8** %97, align 8
  %99 = load i8*, i8** %7, align 8
  %100 = load i8*, i8** %12, align 8
  %101 = load i8*, i8** %7, align 8
  %102 = ptrtoint i8* %100 to i64
  %103 = ptrtoint i8* %101 to i64
  %104 = sub i64 %102, %103
  %105 = trunc i64 %104 to i32
  %106 = call i64 @strncmp(i8* %98, i8* %99, i32 %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %121, label %108

108:                                              ; preds = %93
  %109 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i32 0, i32 0
  %111 = load i8*, i8** %110, align 8
  %112 = load i8*, i8** %12, align 8
  %113 = load i8*, i8** %7, align 8
  %114 = ptrtoint i8* %112 to i64
  %115 = ptrtoint i8* %113 to i64
  %116 = sub i64 %114, %115
  %117 = getelementptr inbounds i8, i8* %111, i64 %116
  %118 = load i8, i8* %117, align 1
  %119 = sext i8 %118 to i32
  %120 = icmp ne i32 %119, 64
  br i1 %120, label %121, label %130

121:                                              ; preds = %108, %93
  %122 = load i32*, i32** %16, align 8
  %123 = load i32, i32* @TEXT_DOMAIN, align 4
  %124 = call i8* @dgettext(i32 %123, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  %125 = call i32 @zfs_error_aux(i32* %122, i8* %124)
  %126 = load i32*, i32** %16, align 8
  %127 = load i32, i32* @EZFS_CROSSTARGET, align 4
  %128 = getelementptr inbounds [1024 x i8], [1024 x i8]* %17, i64 0, i64 0
  %129 = call i32 @zfs_error(i32* %126, i32 %127, i8* %128)
  store i32 %129, i32* %5, align 4
  store i32 1, i32* %18, align 4
  br label %433

130:                                              ; preds = %108
  br label %131

131:                                              ; preds = %130, %89
  %132 = load i32*, i32** %16, align 8
  %133 = load i8*, i8** %7, align 8
  %134 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %135 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 8
  %137 = load i32, i32* @B_TRUE, align 4
  %138 = call i32 @zfs_validate_name(i32* %132, i8* %133, i32 %136, i32 %137)
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %145, label %140

140:                                              ; preds = %131
  %141 = load i32*, i32** %16, align 8
  %142 = load i32, i32* @EZFS_INVALIDNAME, align 4
  %143 = getelementptr inbounds [1024 x i8], [1024 x i8]* %17, i64 0, i64 0
  %144 = call i32 @zfs_error(i32* %141, i32 %142, i8* %143)
  store i32 %144, i32* %5, align 4
  store i32 1, i32* %18, align 4
  br label %433

145:                                              ; preds = %131
  br label %236

146:                                              ; preds = %59
  %147 = load i64, i64* %8, align 8
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %158

149:                                              ; preds = %146
  %150 = load i32*, i32** %16, align 8
  %151 = load i32, i32* @TEXT_DOMAIN, align 4
  %152 = call i8* @dgettext(i32 %151, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  %153 = call i32 @zfs_error_aux(i32* %150, i8* %152)
  %154 = load i32*, i32** %16, align 8
  %155 = load i32, i32* @EZFS_BADTYPE, align 4
  %156 = getelementptr inbounds [1024 x i8], [1024 x i8]* %17, i64 0, i64 0
  %157 = call i32 @zfs_error(i32* %154, i32 %155, i8* %156)
  store i32 %157, i32* %5, align 4
  store i32 1, i32* %18, align 4
  br label %433

158:                                              ; preds = %146
  %159 = load i32*, i32** %16, align 8
  %160 = load i8*, i8** %7, align 8
  %161 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %162 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 8
  %164 = load i32, i32* @B_TRUE, align 4
  %165 = call i32 @zfs_validate_name(i32* %159, i8* %160, i32 %163, i32 %164)
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %172, label %167

167:                                              ; preds = %158
  %168 = load i32*, i32** %16, align 8
  %169 = load i32, i32* @EZFS_INVALIDNAME, align 4
  %170 = getelementptr inbounds [1024 x i8], [1024 x i8]* %17, i64 0, i64 0
  %171 = call i32 @zfs_error(i32* %168, i32 %169, i8* %170)
  store i32 %171, i32* %5, align 4
  store i32 1, i32* %18, align 4
  br label %433

172:                                              ; preds = %158
  %173 = load i32*, i32** %16, align 8
  %174 = load i8*, i8** %7, align 8
  %175 = load i32, i32* @B_FALSE, align 4
  %176 = call i64 @check_parents(i32* %173, i8* %174, i32* null, i32 %175, i32* null)
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %179

178:                                              ; preds = %172
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %18, align 4
  br label %433

179:                                              ; preds = %172
  %180 = load i8*, i8** %7, align 8
  %181 = call i8* @strchr(i8* %180, i8 signext 47)
  store i8* %181, i8** %12, align 8
  %182 = icmp ne i8* %181, null
  %183 = zext i1 %182 to i32
  %184 = call i32 @verify(i32 %183)
  %185 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %186 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %185, i32 0, i32 0
  %187 = load i8*, i8** %186, align 8
  %188 = load i8*, i8** %7, align 8
  %189 = load i8*, i8** %12, align 8
  %190 = load i8*, i8** %7, align 8
  %191 = ptrtoint i8* %189 to i64
  %192 = ptrtoint i8* %190 to i64
  %193 = sub i64 %191, %192
  %194 = trunc i64 %193 to i32
  %195 = call i64 @strncmp(i8* %187, i8* %188, i32 %194)
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %210, label %197

197:                                              ; preds = %179
  %198 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %199 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %198, i32 0, i32 0
  %200 = load i8*, i8** %199, align 8
  %201 = load i8*, i8** %12, align 8
  %202 = load i8*, i8** %7, align 8
  %203 = ptrtoint i8* %201 to i64
  %204 = ptrtoint i8* %202 to i64
  %205 = sub i64 %203, %204
  %206 = getelementptr inbounds i8, i8* %200, i64 %205
  %207 = load i8, i8* %206, align 1
  %208 = sext i8 %207 to i32
  %209 = icmp ne i32 %208, 47
  br i1 %209, label %210, label %219

210:                                              ; preds = %197, %179
  %211 = load i32*, i32** %16, align 8
  %212 = load i32, i32* @TEXT_DOMAIN, align 4
  %213 = call i8* @dgettext(i32 %212, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  %214 = call i32 @zfs_error_aux(i32* %211, i8* %213)
  %215 = load i32*, i32** %16, align 8
  %216 = load i32, i32* @EZFS_CROSSTARGET, align 4
  %217 = getelementptr inbounds [1024 x i8], [1024 x i8]* %17, i64 0, i64 0
  %218 = call i32 @zfs_error(i32* %215, i32 %216, i8* %217)
  store i32 %218, i32* %5, align 4
  store i32 1, i32* %18, align 4
  br label %433

219:                                              ; preds = %197
  %220 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %221 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %220, i32 0, i32 0
  %222 = load i8*, i8** %221, align 8
  %223 = load i8*, i8** %7, align 8
  %224 = call i64 @is_descendant(i8* %222, i8* %223)
  %225 = icmp ne i64 %224, 0
  br i1 %225, label %226, label %235

226:                                              ; preds = %219
  %227 = load i32*, i32** %16, align 8
  %228 = load i32, i32* @TEXT_DOMAIN, align 4
  %229 = call i8* @dgettext(i32 %228, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.5, i64 0, i64 0))
  %230 = call i32 @zfs_error_aux(i32* %227, i8* %229)
  %231 = load i32*, i32** %16, align 8
  %232 = load i32, i32* @EZFS_INVALIDNAME, align 4
  %233 = getelementptr inbounds [1024 x i8], [1024 x i8]* %17, i64 0, i64 0
  %234 = call i32 @zfs_error(i32* %231, i32 %232, i8* %233)
  store i32 %234, i32* %5, align 4
  store i32 1, i32* %18, align 4
  br label %433

235:                                              ; preds = %219
  br label %236

236:                                              ; preds = %235, %145
  %237 = getelementptr inbounds [1024 x i8], [1024 x i8]* %17, i64 0, i64 0
  %238 = load i32, i32* @TEXT_DOMAIN, align 4
  %239 = call i8* @dgettext(i32 %238, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0))
  %240 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %241 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %240, i32 0, i32 0
  %242 = load i8*, i8** %241, align 8
  %243 = call i32 @snprintf(i8* %237, i32 1024, i8* %239, i8* %242)
  %244 = call i64 (...) @getzoneid()
  %245 = load i64, i64* @GLOBAL_ZONEID, align 8
  %246 = icmp eq i64 %244, %245
  br i1 %246, label %247, label %261

247:                                              ; preds = %236
  %248 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %249 = load i32, i32* @ZFS_PROP_ZONED, align 4
  %250 = call i64 @zfs_prop_get_int(%struct.TYPE_11__* %248, i32 %249)
  %251 = icmp ne i64 %250, 0
  br i1 %251, label %252, label %261

252:                                              ; preds = %247
  %253 = load i32*, i32** %16, align 8
  %254 = load i32, i32* @TEXT_DOMAIN, align 4
  %255 = call i8* @dgettext(i32 %254, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i64 0, i64 0))
  %256 = call i32 @zfs_error_aux(i32* %253, i8* %255)
  %257 = load i32*, i32** %16, align 8
  %258 = load i32, i32* @EZFS_ZONED, align 4
  %259 = getelementptr inbounds [1024 x i8], [1024 x i8]* %17, i64 0, i64 0
  %260 = call i32 @zfs_error(i32* %257, i32 %258, i8* %259)
  store i32 %260, i32* %5, align 4
  store i32 1, i32* %18, align 4
  br label %433

261:                                              ; preds = %247, %236
  %262 = load i64, i64* %8, align 8
  %263 = icmp ne i64 %262, 0
  br i1 %263, label %264, label %293

264:                                              ; preds = %261
  %265 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %266 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %265, i32 0, i32 1
  %267 = load i32*, i32** %266, align 8
  %268 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %269 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %268, i32 0, i32 0
  %270 = load i8*, i8** %269, align 8
  %271 = call i8* @zfs_strdup(i32* %267, i8* %270)
  store i8* %271, i8** %20, align 8
  %272 = load i8*, i8** %20, align 8
  %273 = icmp eq i8* %272, null
  br i1 %273, label %274, label %275

274:                                              ; preds = %264
  store i32 -1, i32* %10, align 4
  br label %425

275:                                              ; preds = %264
  %276 = load i8*, i8** %20, align 8
  %277 = call i8* @strchr(i8* %276, i8 signext 64)
  store i8* %277, i8** %12, align 8
  %278 = load i8*, i8** %12, align 8
  store i8 0, i8* %278, align 1
  %279 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %280 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %279, i32 0, i32 1
  %281 = load i32*, i32** %280, align 8
  %282 = load i8*, i8** %20, align 8
  %283 = load i32, i32* @ZFS_TYPE_DATASET, align 4
  %284 = call %struct.TYPE_11__* @zfs_open(i32* %281, i8* %282, i32 %283)
  store %struct.TYPE_11__* %284, %struct.TYPE_11__** %19, align 8
  %285 = load i8*, i8** %20, align 8
  %286 = call i32 @free(i8* %285)
  %287 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %288 = icmp eq %struct.TYPE_11__* %287, null
  br i1 %288, label %289, label %290

289:                                              ; preds = %275
  store i32 -1, i32* %10, align 4
  br label %425

290:                                              ; preds = %275
  %291 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %292 = call i32 @zfs_close(%struct.TYPE_11__* %291)
  br label %333

293:                                              ; preds = %261
  %294 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %295 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %294, i32 0, i32 2
  %296 = load i32, i32* %295, align 8
  %297 = load i32, i32* @ZFS_TYPE_SNAPSHOT, align 4
  %298 = icmp ne i32 %296, %297
  br i1 %298, label %299, label %332

299:                                              ; preds = %293
  %300 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %301 = load i32, i32* @ZFS_PROP_NAME, align 4
  %302 = load i32, i32* @CL_GATHER_ITER_MOUNTED, align 4
  %303 = load i64, i64* %9, align 8
  %304 = icmp ne i64 %303, 0
  br i1 %304, label %305, label %307

305:                                              ; preds = %299
  %306 = load i32, i32* @MS_FORCE, align 4
  br label %308

307:                                              ; preds = %299
  br label %308

308:                                              ; preds = %307, %305
  %309 = phi i32 [ %306, %305 ], [ 0, %307 ]
  %310 = call i32* @changelist_gather(%struct.TYPE_11__* %300, i32 %301, i32 %302, i32 %309)
  store i32* %310, i32** %13, align 8
  %311 = icmp eq i32* %310, null
  br i1 %311, label %312, label %313

312:                                              ; preds = %308
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %18, align 4
  br label %433

313:                                              ; preds = %308
  %314 = load i32*, i32** %13, align 8
  %315 = call i64 @changelist_haszonedchild(i32* %314)
  %316 = icmp ne i64 %315, 0
  br i1 %316, label %317, label %326

317:                                              ; preds = %313
  %318 = load i32*, i32** %16, align 8
  %319 = load i32, i32* @TEXT_DOMAIN, align 4
  %320 = call i8* @dgettext(i32 %319, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.8, i64 0, i64 0))
  %321 = call i32 @zfs_error_aux(i32* %318, i8* %320)
  %322 = load i32*, i32** %16, align 8
  %323 = load i32, i32* @EZFS_ZONED, align 4
  %324 = getelementptr inbounds [1024 x i8], [1024 x i8]* %17, i64 0, i64 0
  %325 = call i32 @zfs_error(i32* %322, i32 %323, i8* %324)
  store i32 -1, i32* %10, align 4
  br label %425

326:                                              ; preds = %313
  %327 = load i32*, i32** %13, align 8
  %328 = call i32 @changelist_prefix(i32* %327)
  store i32 %328, i32* %10, align 4
  %329 = icmp ne i32 %328, 0
  br i1 %329, label %330, label %331

330:                                              ; preds = %326
  br label %425

331:                                              ; preds = %326
  br label %332

332:                                              ; preds = %331, %293
  br label %333

333:                                              ; preds = %332, %290
  %334 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %335 = call i64 @ZFS_IS_VOLUME(%struct.TYPE_11__* %334)
  %336 = icmp ne i64 %335, 0
  br i1 %336, label %337, label %340

337:                                              ; preds = %333
  %338 = load i32, i32* @DMU_OST_ZVOL, align 4
  %339 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 4
  store i32 %338, i32* %339, align 8
  br label %343

340:                                              ; preds = %333
  %341 = load i32, i32* @DMU_OST_ZFS, align 4
  %342 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 4
  store i32 %341, i32* %342, align 8
  br label %343

343:                                              ; preds = %340, %337
  %344 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 1
  %345 = load i8*, i8** %344, align 8
  %346 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %347 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %346, i32 0, i32 0
  %348 = load i8*, i8** %347, align 8
  %349 = call i32 @strlcpy(i8* %345, i8* %348, i32 8)
  %350 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 2
  %351 = load i8*, i8** %350, align 8
  %352 = load i8*, i8** %7, align 8
  %353 = call i32 @strlcpy(i8* %351, i8* %352, i32 8)
  %354 = load i64, i64* %8, align 8
  %355 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 3
  store i64 %354, i64* %355, align 8
  %356 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %357 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %356, i32 0, i32 1
  %358 = load i32*, i32** %357, align 8
  %359 = load i32, i32* @ZFS_IOC_RENAME, align 4
  %360 = call i32 @zfs_ioctl(i32* %358, i32 %359, %struct.TYPE_12__* %11)
  store i32 %360, i32* %10, align 4
  %361 = icmp ne i32 %360, 0
  br i1 %361, label %362, label %412

362:                                              ; preds = %343
  %363 = getelementptr inbounds [1024 x i8], [1024 x i8]* %17, i64 0, i64 0
  %364 = load i32, i32* @TEXT_DOMAIN, align 4
  %365 = call i8* @dgettext(i32 %364, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0))
  %366 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 1
  %367 = load i8*, i8** %366, align 8
  %368 = call i32 @snprintf(i8* %363, i32 1024, i8* %365, i8* %367)
  %369 = load i64, i64* %8, align 8
  %370 = icmp ne i64 %369, 0
  br i1 %370, label %371, label %384

371:                                              ; preds = %362
  %372 = load i64, i64* @errno, align 8
  %373 = load i64, i64* @EEXIST, align 8
  %374 = icmp eq i64 %372, %373
  br i1 %374, label %375, label %384

375:                                              ; preds = %371
  %376 = load i32*, i32** %16, align 8
  %377 = load i32, i32* @TEXT_DOMAIN, align 4
  %378 = call i8* @dgettext(i32 %377, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.9, i64 0, i64 0))
  %379 = call i32 @zfs_error_aux(i32* %376, i8* %378)
  %380 = load i32*, i32** %16, align 8
  %381 = load i32, i32* @EZFS_EXISTS, align 4
  %382 = getelementptr inbounds [1024 x i8], [1024 x i8]* %17, i64 0, i64 0
  %383 = call i32 @zfs_error(i32* %380, i32 %381, i8* %382)
  br label %405

384:                                              ; preds = %371, %362
  %385 = load i64, i64* @errno, align 8
  %386 = load i64, i64* @EACCES, align 8
  %387 = icmp eq i64 %385, %386
  br i1 %387, label %388, label %397

388:                                              ; preds = %384
  %389 = load i32*, i32** %16, align 8
  %390 = load i32, i32* @TEXT_DOMAIN, align 4
  %391 = call i8* @dgettext(i32 %390, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.10, i64 0, i64 0))
  %392 = call i32 @zfs_error_aux(i32* %389, i8* %391)
  %393 = load i32*, i32** %16, align 8
  %394 = load i32, i32* @EZFS_CRYPTOFAILED, align 4
  %395 = getelementptr inbounds [1024 x i8], [1024 x i8]* %17, i64 0, i64 0
  %396 = call i32 @zfs_error(i32* %393, i32 %394, i8* %395)
  br label %404

397:                                              ; preds = %384
  %398 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %399 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %398, i32 0, i32 1
  %400 = load i32*, i32** %399, align 8
  %401 = load i64, i64* @errno, align 8
  %402 = getelementptr inbounds [1024 x i8], [1024 x i8]* %17, i64 0, i64 0
  %403 = call i32 @zfs_standard_error(i32* %400, i64 %401, i8* %402)
  br label %404

404:                                              ; preds = %397, %388
  br label %405

405:                                              ; preds = %404, %375
  %406 = load i32*, i32** %13, align 8
  %407 = icmp ne i32* %406, null
  br i1 %407, label %408, label %411

408:                                              ; preds = %405
  %409 = load i32*, i32** %13, align 8
  %410 = call i32 @changelist_postfix(i32* %409)
  br label %411

411:                                              ; preds = %408, %405
  br label %424

412:                                              ; preds = %343
  %413 = load i32*, i32** %13, align 8
  %414 = icmp ne i32* %413, null
  br i1 %414, label %415, label %423

415:                                              ; preds = %412
  %416 = load i32*, i32** %13, align 8
  %417 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %418 = call i32 @zfs_get_name(%struct.TYPE_11__* %417)
  %419 = load i8*, i8** %7, align 8
  %420 = call i32 @changelist_rename(i32* %416, i32 %418, i8* %419)
  %421 = load i32*, i32** %13, align 8
  %422 = call i32 @changelist_postfix(i32* %421)
  store i32 %422, i32* %10, align 4
  br label %423

423:                                              ; preds = %415, %412
  br label %424

424:                                              ; preds = %423, %411
  br label %425

425:                                              ; preds = %424, %330, %317, %289, %274
  %426 = load i32*, i32** %13, align 8
  %427 = icmp ne i32* %426, null
  br i1 %427, label %428, label %431

428:                                              ; preds = %425
  %429 = load i32*, i32** %13, align 8
  %430 = call i32 @changelist_free(i32* %429)
  br label %431

431:                                              ; preds = %428, %425
  %432 = load i32, i32* %10, align 4
  store i32 %432, i32* %5, align 4
  store i32 1, i32* %18, align 4
  br label %433

433:                                              ; preds = %431, %312, %252, %226, %210, %178, %167, %149, %140, %121, %54, %37
  %434 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %434)
  %435 = load i32, i32* %5, align 4
  ret i32 %435
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i64 @strcmp(i8*, i8*) #3

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #3

declare dso_local i8* @dgettext(i32, i8*) #3

declare dso_local i32 @zfs_validate_name(i32*, i8*, i32, i32) #3

declare dso_local i32 @zfs_error(i32*, i32, i8*) #3

declare dso_local i8* @strchr(i8*, i8 signext) #3

declare dso_local i32 @strlcpy(i8*, i8*, i32) #3

declare dso_local i32 @strlcat(i8*, i8*, i32) #3

declare dso_local i64 @strncmp(i8*, i8*, i32) #3

declare dso_local i32 @zfs_error_aux(i32*, i8*) #3

declare dso_local i64 @check_parents(i32*, i8*, i32*, i32, i32*) #3

declare dso_local i32 @verify(i32) #3

declare dso_local i64 @is_descendant(i8*, i8*) #3

declare dso_local i64 @getzoneid(...) #3

declare dso_local i64 @zfs_prop_get_int(%struct.TYPE_11__*, i32) #3

declare dso_local i8* @zfs_strdup(i32*, i8*) #3

declare dso_local %struct.TYPE_11__* @zfs_open(i32*, i8*, i32) #3

declare dso_local i32 @free(i8*) #3

declare dso_local i32 @zfs_close(%struct.TYPE_11__*) #3

declare dso_local i32* @changelist_gather(%struct.TYPE_11__*, i32, i32, i32) #3

declare dso_local i64 @changelist_haszonedchild(i32*) #3

declare dso_local i32 @changelist_prefix(i32*) #3

declare dso_local i64 @ZFS_IS_VOLUME(%struct.TYPE_11__*) #3

declare dso_local i32 @zfs_ioctl(i32*, i32, %struct.TYPE_12__*) #3

declare dso_local i32 @zfs_standard_error(i32*, i64, i8*) #3

declare dso_local i32 @changelist_postfix(i32*) #3

declare dso_local i32 @changelist_rename(i32*, i32, i8*) #3

declare dso_local i32 @zfs_get_name(%struct.TYPE_11__*) #3

declare dso_local i32 @changelist_free(i32*) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
