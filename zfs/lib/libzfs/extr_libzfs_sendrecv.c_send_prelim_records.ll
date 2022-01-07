; ModuleID = '/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_sendrecv.c_send_prelim_records.c'
source_filename = "/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_sendrecv.c_send_prelim_records.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64, i32, i32 }
%struct.TYPE_15__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_17__ = type { i64, %struct.TYPE_14__, i32, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, i32, i32 }

@ZFS_MAX_DATASET_NAME_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@TEXT_DOMAIN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"warning: cannot send '%s'\00", align 1
@ZFS_TYPE_FILESYSTEM = common dso_local global i64 0, align 8
@ZFS_PROP_VERSION = common dso_local global i32 0, align 4
@ZPL_VERSION_SA = common dso_local global i64 0, align 8
@DMU_BACKUP_FEATURE_SA_SPILL = common dso_local global i32 0, align 4
@DMU_BACKUP_FEATURE_HOLDS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"fromsnap\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"tosnap\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"not_recursive\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"raw\00", align 1
@EZFS_BADBACKUP = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [4 x i8] c"fss\00", align 1
@NV_ENCODE_XDR = common dso_local global i32 0, align 4
@DRR_BEGIN = common dso_local global i32 0, align 4
@DMU_BACKUP_MAGIC = common dso_local global i32 0, align 4
@DMU_COMPOUNDSTREAM = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [6 x i8] c"%s@%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*, i8*, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32**, i32**)* @send_prelim_records to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_prelim_records(%struct.TYPE_16__* %0, i8* %1, i32 %2, i64 %3, i64 %4, i64 %5, i64 %6, i64 %7, i64 %8, i64 %9, i64 %10, i64 %11, i64 %12, i32** %13, i32** %14) #0 {
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_16__*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  %30 = alloca i32**, align 8
  %31 = alloca i32**, align 8
  %32 = alloca i32, align 4
  %33 = alloca i8*, align 8
  %34 = alloca i64, align 8
  %35 = alloca %struct.TYPE_15__, align 4
  %36 = alloca i32, align 4
  %37 = alloca i8*, align 8
  %38 = alloca i64, align 8
  %39 = alloca i8*, align 8
  %40 = alloca [1024 x i8], align 16
  %41 = alloca i8*, align 8
  %42 = alloca i32*, align 8
  %43 = alloca i32*, align 8
  %44 = alloca i32, align 4
  %45 = alloca %struct.TYPE_17__, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %17, align 8
  store i8* %1, i8** %18, align 8
  store i32 %2, i32* %19, align 4
  store i64 %3, i64* %20, align 8
  store i64 %4, i64* %21, align 8
  store i64 %5, i64* %22, align 8
  store i64 %6, i64* %23, align 8
  store i64 %7, i64* %24, align 8
  store i64 %8, i64* %25, align 8
  store i64 %9, i64* %26, align 8
  store i64 %10, i64* %27, align 8
  store i64 %11, i64* %28, align 8
  store i64 %12, i64* %29, align 8
  store i32** %13, i32*** %30, align 8
  store i32** %14, i32*** %31, align 8
  store i32 0, i32* %32, align 4
  store i8* null, i8** %33, align 8
  store i64 0, i64* %34, align 8
  %46 = bitcast %struct.TYPE_15__* %35 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %46, i8 0, i64 4, i1 false)
  store i32 0, i32* %36, align 4
  %47 = load i32, i32* @ZFS_MAX_DATASET_NAME_LEN, align 4
  %48 = zext i32 %47 to i64
  %49 = call i8* @llvm.stacksave()
  store i8* %49, i8** %37, align 8
  %50 = alloca i8, i64 %48, align 16
  store i64 %48, i64* %38, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %39, align 8
  %51 = getelementptr inbounds [1024 x i8], [1024 x i8]* %40, i64 0, i64 0
  %52 = load i32, i32* @TEXT_DOMAIN, align 4
  %53 = call i8* @dgettext(i32 %52, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %54 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %55 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = sext i32 %56 to i64
  %58 = inttoptr i64 %57 to i8*
  %59 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %51, i32 1024, i8* %53, i8* %58)
  %60 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %61 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @ZFS_TYPE_FILESYSTEM, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %75

65:                                               ; preds = %15
  %66 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %67 = load i32, i32* @ZFS_PROP_VERSION, align 4
  %68 = call i64 @zfs_prop_get_int(%struct.TYPE_16__* %66, i32 %67)
  %69 = load i64, i64* @ZPL_VERSION_SA, align 8
  %70 = icmp sge i64 %68, %69
  br i1 %70, label %71, label %75

71:                                               ; preds = %65
  %72 = load i32, i32* @DMU_BACKUP_FEATURE_SA_SPILL, align 4
  %73 = load i32, i32* %36, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %36, align 4
  br label %75

75:                                               ; preds = %71, %65, %15
  %76 = load i64, i64* %27, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %75
  %79 = load i32, i32* @DMU_BACKUP_FEATURE_HOLDS, align 4
  %80 = load i32, i32* %36, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %36, align 4
  br label %82

82:                                               ; preds = %78, %75
  %83 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %84 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @ZFS_MAX_DATASET_NAME_LEN, align 4
  %87 = call i32 @strlcpy(i8* %50, i32 %85, i32 %86)
  %88 = call i8* @strchr(i8* %50, i8 signext 64)
  store i8* %88, i8** %41, align 8
  %89 = load i8*, i8** %41, align 8
  %90 = icmp ne i8* %89, null
  br i1 %90, label %91, label %95

91:                                               ; preds = %82
  %92 = load i8*, i8** %41, align 8
  store i8 0, i8* %92, align 1
  %93 = load i8*, i8** %41, align 8
  %94 = getelementptr inbounds i8, i8* %93, i64 1
  store i8* %94, i8** %39, align 8
  br label %95

95:                                               ; preds = %91, %82
  %96 = load i64, i64* %20, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %165

98:                                               ; preds = %95
  %99 = call i32* (...) @fnvlist_alloc()
  store i32* %99, i32** %42, align 8
  store i32* null, i32** %43, align 8
  %100 = load i8*, i8** %18, align 8
  %101 = icmp ne i8* %100, null
  br i1 %101, label %102, label %106

102:                                              ; preds = %98
  %103 = load i32*, i32** %42, align 8
  %104 = load i8*, i8** %18, align 8
  %105 = call i32 @fnvlist_add_string(i32* %103, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* %104)
  br label %106

106:                                              ; preds = %102, %98
  %107 = load i32*, i32** %42, align 8
  %108 = load i8*, i8** %39, align 8
  %109 = call i32 @fnvlist_add_string(i32* %107, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* %108)
  %110 = load i64, i64* %21, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %115, label %112

112:                                              ; preds = %106
  %113 = load i32*, i32** %42, align 8
  %114 = call i32 @fnvlist_add_boolean(i32* %113, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  br label %115

115:                                              ; preds = %112, %106
  %116 = load i64, i64* %24, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %122

118:                                              ; preds = %115
  %119 = load i32*, i32** %42, align 8
  %120 = call i32 @nvlist_add_boolean(i32* %119, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %121 = call i32 @VERIFY0(i32 %120)
  br label %122

122:                                              ; preds = %118, %115
  %123 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %124 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 8
  %126 = load i8*, i8** %18, align 8
  %127 = load i8*, i8** %39, align 8
  %128 = load i64, i64* %21, align 8
  %129 = load i64, i64* %24, align 8
  %130 = load i64, i64* %29, align 8
  %131 = load i64, i64* %25, align 8
  %132 = load i64, i64* %22, align 8
  %133 = load i64, i64* %26, align 8
  %134 = load i64, i64* %27, align 8
  %135 = load i64, i64* %28, align 8
  %136 = load i32**, i32*** %31, align 8
  %137 = call i32 @gather_nvlist(i32 %125, i8* %50, i8* %126, i8* %127, i64 %128, i64 %129, i64 %130, i64 %131, i64 %132, i64 %133, i64 %134, i64 %135, i32** %43, i32** %136)
  store i32 %137, i32* %32, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %146

139:                                              ; preds = %122
  %140 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %141 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 8
  %143 = load i32, i32* @EZFS_BADBACKUP, align 4
  %144 = getelementptr inbounds [1024 x i8], [1024 x i8]* %40, i64 0, i64 0
  %145 = call i32 @zfs_error(i32 %142, i32 %143, i8* %144)
  store i32 %145, i32* %16, align 4
  store i32 1, i32* %44, align 4
  br label %249

146:                                              ; preds = %122
  %147 = load i32*, i32** %42, align 8
  %148 = load i32*, i32** %43, align 8
  %149 = call i32 @fnvlist_add_nvlist(i32* %147, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i32* %148)
  %150 = load i32*, i32** %42, align 8
  %151 = load i32, i32* @NV_ENCODE_XDR, align 4
  %152 = call i32 @nvlist_pack(i32* %150, i8** %33, i64* %34, i32 %151, i32 0)
  %153 = call i32 @VERIFY0(i32 %152)
  %154 = load i32**, i32*** %30, align 8
  %155 = icmp ne i32** %154, null
  br i1 %155, label %156, label %159

156:                                              ; preds = %146
  %157 = load i32*, i32** %43, align 8
  %158 = load i32**, i32*** %30, align 8
  store i32* %157, i32** %158, align 8
  br label %162

159:                                              ; preds = %146
  %160 = load i32*, i32** %43, align 8
  %161 = call i32 @nvlist_free(i32* %160)
  br label %162

162:                                              ; preds = %159, %156
  %163 = load i32*, i32** %42, align 8
  %164 = call i32 @nvlist_free(i32* %163)
  br label %165

165:                                              ; preds = %162, %95
  %166 = load i64, i64* %23, align 8
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %248, label %168

168:                                              ; preds = %165
  %169 = bitcast %struct.TYPE_17__* %45 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %169, i8 0, i64 32, i1 false)
  %170 = load i32, i32* @DRR_BEGIN, align 4
  %171 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %45, i32 0, i32 2
  store i32 %170, i32* %171, align 4
  %172 = load i32, i32* @DMU_BACKUP_MAGIC, align 4
  %173 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %45, i32 0, i32 1
  %174 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %174, i32 0, i32 2
  store i32 %172, i32* %175, align 8
  %176 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %45, i32 0, i32 1
  %177 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 4
  %180 = load i32, i32* @DMU_COMPOUNDSTREAM, align 4
  %181 = call i32 @DMU_SET_STREAM_HDRTYPE(i32 %179, i32 %180)
  %182 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %45, i32 0, i32 1
  %183 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 4
  %186 = load i32, i32* %36, align 4
  %187 = call i32 @DMU_SET_FEATUREFLAGS(i32 %185, i32 %186)
  %188 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %45, i32 0, i32 1
  %189 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = sext i32 %191 to i64
  %193 = inttoptr i64 %192 to i8*
  %194 = load i8*, i8** %39, align 8
  %195 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %193, i32 4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8* %50, i8* %194)
  %196 = sext i32 %195 to i64
  %197 = icmp uge i64 %196, 4
  br i1 %197, label %198, label %205

198:                                              ; preds = %168
  %199 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %200 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 8
  %202 = load i32, i32* @EZFS_BADBACKUP, align 4
  %203 = getelementptr inbounds [1024 x i8], [1024 x i8]* %40, i64 0, i64 0
  %204 = call i32 @zfs_error(i32 %201, i32 %202, i8* %203)
  store i32 %204, i32* %16, align 4
  store i32 1, i32* %44, align 4
  br label %249

205:                                              ; preds = %168
  %206 = load i64, i64* %34, align 8
  %207 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %45, i32 0, i32 0
  store i64 %206, i64* %207, align 8
  %208 = load i8*, i8** %33, align 8
  %209 = load i64, i64* %34, align 8
  %210 = load i32, i32* %19, align 4
  %211 = call i32 @dump_record(%struct.TYPE_17__* %45, i8* %208, i64 %209, %struct.TYPE_15__* %35, i32 %210)
  store i32 %211, i32* %32, align 4
  %212 = load i8*, i8** %33, align 8
  %213 = call i32 @free(i8* %212)
  %214 = load i32, i32* %32, align 4
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %229

216:                                              ; preds = %205
  %217 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %218 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %217, i32 0, i32 1
  %219 = load i32, i32* %218, align 8
  %220 = load i32, i32* %32, align 4
  %221 = call i32 @strerror(i32 %220)
  %222 = call i32 @zfs_error_aux(i32 %219, i32 %221)
  %223 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %224 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %223, i32 0, i32 1
  %225 = load i32, i32* %224, align 8
  %226 = load i32, i32* @EZFS_BADBACKUP, align 4
  %227 = getelementptr inbounds [1024 x i8], [1024 x i8]* %40, i64 0, i64 0
  %228 = call i32 @zfs_error(i32 %225, i32 %226, i8* %227)
  store i32 %228, i32* %16, align 4
  store i32 1, i32* %44, align 4
  br label %249

229:                                              ; preds = %205
  %230 = load i32, i32* %19, align 4
  %231 = call i32 @send_conclusion_record(i32 %230, %struct.TYPE_15__* %35)
  store i32 %231, i32* %32, align 4
  %232 = load i32, i32* %32, align 4
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %247

234:                                              ; preds = %229
  %235 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %236 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %235, i32 0, i32 1
  %237 = load i32, i32* %236, align 8
  %238 = load i32, i32* %32, align 4
  %239 = call i32 @strerror(i32 %238)
  %240 = call i32 @zfs_error_aux(i32 %237, i32 %239)
  %241 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %242 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %241, i32 0, i32 1
  %243 = load i32, i32* %242, align 8
  %244 = load i32, i32* @EZFS_BADBACKUP, align 4
  %245 = getelementptr inbounds [1024 x i8], [1024 x i8]* %40, i64 0, i64 0
  %246 = call i32 @zfs_error(i32 %243, i32 %244, i8* %245)
  store i32 %246, i32* %16, align 4
  store i32 1, i32* %44, align 4
  br label %249

247:                                              ; preds = %229
  br label %248

248:                                              ; preds = %247, %165
  store i32 0, i32* %16, align 4
  store i32 1, i32* %44, align 4
  br label %249

249:                                              ; preds = %248, %234, %216, %198, %139
  %250 = load i8*, i8** %37, align 8
  call void @llvm.stackrestore(i8* %250)
  %251 = load i32, i32* %16, align 4
  ret i32 %251
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, ...) #3

declare dso_local i8* @dgettext(i32, i8*) #3

declare dso_local i64 @zfs_prop_get_int(%struct.TYPE_16__*, i32) #3

declare dso_local i32 @strlcpy(i8*, i32, i32) #3

declare dso_local i8* @strchr(i8*, i8 signext) #3

declare dso_local i32* @fnvlist_alloc(...) #3

declare dso_local i32 @fnvlist_add_string(i32*, i8*, i8*) #3

declare dso_local i32 @fnvlist_add_boolean(i32*, i8*) #3

declare dso_local i32 @VERIFY0(i32) #3

declare dso_local i32 @nvlist_add_boolean(i32*, i8*) #3

declare dso_local i32 @gather_nvlist(i32, i8*, i8*, i8*, i64, i64, i64, i64, i64, i64, i64, i64, i32**, i32**) #3

declare dso_local i32 @zfs_error(i32, i32, i8*) #3

declare dso_local i32 @fnvlist_add_nvlist(i32*, i8*, i32*) #3

declare dso_local i32 @nvlist_pack(i32*, i8**, i64*, i32, i32) #3

declare dso_local i32 @nvlist_free(i32*) #3

declare dso_local i32 @DMU_SET_STREAM_HDRTYPE(i32, i32) #3

declare dso_local i32 @DMU_SET_FEATUREFLAGS(i32, i32) #3

declare dso_local i32 @dump_record(%struct.TYPE_17__*, i8*, i64, %struct.TYPE_15__*, i32) #3

declare dso_local i32 @free(i8*) #3

declare dso_local i32 @zfs_error_aux(i32, i32) #3

declare dso_local i32 @strerror(i32) #3

declare dso_local i32 @send_conclusion_record(i32, %struct.TYPE_15__*) #3

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
