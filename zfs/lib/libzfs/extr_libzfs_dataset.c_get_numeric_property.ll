; ModuleID = '/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_dataset.c_get_numeric_property.c'
source_filename = "/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_dataset.c_get_numeric_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i8*, i32 }
%struct.TYPE_12__ = type { i64, i8*, i8*, i32*, %struct.TYPE_11__, i8*, i32 }
%struct.TYPE_11__ = type { i8*, i8*, i8* }
%struct.mnttab = type { i8* }

@.str = private unnamed_addr constant [2 x i8] zeroinitializer, align 1
@__const.get_numeric_property.zc = private unnamed_addr constant %struct.TYPE_13__ { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i32 0 }, align 8
@ZFS_TYPE_SNAPSHOT = common dso_local global i64 0, align 8
@B_TRUE = common dso_local global i8* null, align 8
@MNTOPT_ATIME = common dso_local global i8* null, align 8
@MNTOPT_NOATIME = common dso_local global i8* null, align 8
@MNTOPT_RELATIME = common dso_local global i8* null, align 8
@MNTOPT_NORELATIME = common dso_local global i8* null, align 8
@MNTOPT_DEVICES = common dso_local global i8* null, align 8
@MNTOPT_NODEVICES = common dso_local global i8* null, align 8
@MNTOPT_EXEC = common dso_local global i8* null, align 8
@MNTOPT_NOEXEC = common dso_local global i8* null, align 8
@MNTOPT_RO = common dso_local global i8* null, align 8
@MNTOPT_RW = common dso_local global i8* null, align 8
@MNTOPT_SETUID = common dso_local global i8* null, align 8
@MNTOPT_NOSETUID = common dso_local global i8* null, align 8
@MNTOPT_XATTR = common dso_local global i8* null, align 8
@MNTOPT_NOXATTR = common dso_local global i8* null, align 8
@MNTOPT_NBMAND = common dso_local global i8* null, align 8
@MNTOPT_NONBMAND = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@ZPROP_SRC_TEMPORARY = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i8* null, align 8
@ZFS_IOC_OBJSET_ZPLPROPS = common dso_local global i32 0, align 4
@ZFS_TYPE_VOLUME = common dso_local global i64 0, align 8
@TEXT_DOMAIN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"cannot get non-numeric property\00", align 1
@EZFS_BADPROP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"internal error\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, i32, i32*, i8**, i8**)* @get_numeric_property to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_numeric_property(%struct.TYPE_12__* %0, i32 %1, i32* %2, i8** %3, i8** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i8**, align 8
  %12 = alloca %struct.TYPE_13__, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.mnttab, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca %struct.mnttab, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i8** %3, i8*** %10, align 8
  store i8** %4, i8*** %11, align 8
  %20 = bitcast %struct.TYPE_13__* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %20, i8* align 8 bitcast (%struct.TYPE_13__* @__const.get_numeric_property.zc to i8*), i64 16, i1 false)
  store i32* null, i32** %13, align 8
  store i8* null, i8** %15, align 8
  store i8* null, i8** %16, align 8
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %22 = call i32 @zfs_is_recvd_props_mode(%struct.TYPE_12__* %21)
  store i32 %22, i32* %17, align 4
  %23 = load i8**, i8*** %10, align 8
  store i8* null, i8** %23, align 8
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @ZFS_TYPE_SNAPSHOT, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %41

29:                                               ; preds = %5
  %30 = load i32, i32* %8, align 4
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 6
  %33 = load i32, i32* %32, align 8
  %34 = load i8*, i8** @B_TRUE, align 8
  %35 = call i32 @zfs_prop_valid_for_type(i32 %30, i32 %33, i8* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %29
  %38 = load i32, i32* %8, align 4
  %39 = call i8* @zfs_prop_default_numeric(i32 %38)
  %40 = load i8**, i8*** %11, align 8
  store i8* %39, i8** %40, align 8
  store i32 -1, i32* %6, align 4
  br label %308

41:                                               ; preds = %29, %5
  %42 = load i32, i32* %8, align 4
  switch i32 %42, label %67 [
    i32 153, label %43
    i32 136, label %46
    i32 150, label %49
    i32 149, label %52
    i32 140, label %55
    i32 134, label %58
    i32 128, label %61
    i32 144, label %64
  ]

43:                                               ; preds = %41
  %44 = load i8*, i8** @MNTOPT_ATIME, align 8
  store i8* %44, i8** %15, align 8
  %45 = load i8*, i8** @MNTOPT_NOATIME, align 8
  store i8* %45, i8** %16, align 8
  br label %68

46:                                               ; preds = %41
  %47 = load i8*, i8** @MNTOPT_RELATIME, align 8
  store i8* %47, i8** %15, align 8
  %48 = load i8*, i8** @MNTOPT_NORELATIME, align 8
  store i8* %48, i8** %16, align 8
  br label %68

49:                                               ; preds = %41
  %50 = load i8*, i8** @MNTOPT_DEVICES, align 8
  store i8* %50, i8** %15, align 8
  %51 = load i8*, i8** @MNTOPT_NODEVICES, align 8
  store i8* %51, i8** %16, align 8
  br label %68

52:                                               ; preds = %41
  %53 = load i8*, i8** @MNTOPT_EXEC, align 8
  store i8* %53, i8** %15, align 8
  %54 = load i8*, i8** @MNTOPT_NOEXEC, align 8
  store i8* %54, i8** %16, align 8
  br label %68

55:                                               ; preds = %41
  %56 = load i8*, i8** @MNTOPT_RO, align 8
  store i8* %56, i8** %15, align 8
  %57 = load i8*, i8** @MNTOPT_RW, align 8
  store i8* %57, i8** %16, align 8
  br label %68

58:                                               ; preds = %41
  %59 = load i8*, i8** @MNTOPT_SETUID, align 8
  store i8* %59, i8** %15, align 8
  %60 = load i8*, i8** @MNTOPT_NOSETUID, align 8
  store i8* %60, i8** %16, align 8
  br label %68

61:                                               ; preds = %41
  %62 = load i8*, i8** @MNTOPT_XATTR, align 8
  store i8* %62, i8** %15, align 8
  %63 = load i8*, i8** @MNTOPT_NOXATTR, align 8
  store i8* %63, i8** %16, align 8
  br label %68

64:                                               ; preds = %41
  %65 = load i8*, i8** @MNTOPT_NBMAND, align 8
  store i8* %65, i8** %15, align 8
  %66 = load i8*, i8** @MNTOPT_NONBMAND, align 8
  store i8* %66, i8** %16, align 8
  br label %68

67:                                               ; preds = %41
  br label %68

68:                                               ; preds = %67, %64, %61, %58, %55, %52, %49, %46, %43
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 5
  %71 = load i8*, i8** %70, align 8
  %72 = icmp ne i8* %71, null
  br i1 %72, label %106, label %73

73:                                               ; preds = %68
  %74 = load i8*, i8** %15, align 8
  %75 = icmp ne i8* %74, null
  br i1 %75, label %79, label %76

76:                                               ; preds = %73
  %77 = load i32, i32* %8, align 4
  %78 = icmp eq i32 %77, 145
  br i1 %78, label %79, label %106

79:                                               ; preds = %76, %73
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 3
  %82 = load i32*, i32** %81, align 8
  store i32* %82, i32** %18, align 8
  %83 = load i32*, i32** %18, align 8
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 1
  %86 = load i8*, i8** %85, align 8
  %87 = call i64 @libzfs_mnttab_find(i32* %83, i8* %86, %struct.mnttab* %19)
  %88 = icmp eq i64 %87, 0
  br i1 %88, label %89, label %102

89:                                               ; preds = %79
  %90 = load i32*, i32** %18, align 8
  %91 = getelementptr inbounds %struct.mnttab, %struct.mnttab* %19, i32 0, i32 0
  %92 = load i8*, i8** %91, align 8
  %93 = call i8* @zfs_strdup(i32* %90, i8* %92)
  %94 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i32 0, i32 2
  store i8* %93, i8** %95, align 8
  %96 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %97 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %96, i32 0, i32 2
  %98 = load i8*, i8** %97, align 8
  %99 = icmp eq i8* %98, null
  br i1 %99, label %100, label %101

100:                                              ; preds = %89
  store i32 -1, i32* %6, align 4
  br label %308

101:                                              ; preds = %89
  br label %102

102:                                              ; preds = %101, %79
  %103 = load i8*, i8** @B_TRUE, align 8
  %104 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %104, i32 0, i32 5
  store i8* %103, i8** %105, align 8
  br label %106

106:                                              ; preds = %102, %76, %68
  %107 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %108 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %107, i32 0, i32 2
  %109 = load i8*, i8** %108, align 8
  %110 = icmp eq i8* %109, null
  br i1 %110, label %111, label %113

111:                                              ; preds = %106
  %112 = getelementptr inbounds %struct.mnttab, %struct.mnttab* %14, i32 0, i32 0
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8** %112, align 8
  br label %118

113:                                              ; preds = %106
  %114 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %115 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %114, i32 0, i32 2
  %116 = load i8*, i8** %115, align 8
  %117 = getelementptr inbounds %struct.mnttab, %struct.mnttab* %14, i32 0, i32 0
  store i8* %116, i8** %117, align 8
  br label %118

118:                                              ; preds = %113, %111
  %119 = load i32, i32* %8, align 4
  switch i32 %119, label %261 [
    i32 153, label %120
    i32 136, label %120
    i32 150, label %120
    i32 149, label %120
    i32 140, label %120
    i32 134, label %120
    i32 128, label %120
    i32 144, label %120
    i32 152, label %165
    i32 129, label %165
    i32 141, label %165
    i32 138, label %165
    i32 135, label %165
    i32 137, label %165
    i32 147, label %165
    i32 132, label %165
    i32 148, label %165
    i32 133, label %165
    i32 145, label %180
    i32 142, label %189
    i32 130, label %195
    i32 143, label %195
    i32 131, label %195
    i32 151, label %195
    i32 146, label %249
    i32 139, label %255
  ]

120:                                              ; preds = %118, %118, %118, %118, %118, %118, %118, %118
  %121 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %122 = load i32, i32* %8, align 4
  %123 = load i8**, i8*** %10, align 8
  %124 = call i8* @getprop_uint64(%struct.TYPE_12__* %121, i32 %122, i8** %123)
  %125 = load i8**, i8*** %11, align 8
  store i8* %124, i8** %125, align 8
  %126 = load i32, i32* %17, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %120
  br label %307

129:                                              ; preds = %120
  %130 = load i8*, i8** %15, align 8
  %131 = call i32 @hasmntopt(%struct.mnttab* %14, i8* %130)
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %146

133:                                              ; preds = %129
  %134 = load i8**, i8*** %11, align 8
  %135 = load i8*, i8** %134, align 8
  %136 = icmp ne i8* %135, null
  br i1 %136, label %146, label %137

137:                                              ; preds = %133
  %138 = load i8*, i8** @B_TRUE, align 8
  %139 = load i8**, i8*** %11, align 8
  store i8* %138, i8** %139, align 8
  %140 = load i32*, i32** %9, align 8
  %141 = icmp ne i32* %140, null
  br i1 %141, label %142, label %145

142:                                              ; preds = %137
  %143 = load i32, i32* @ZPROP_SRC_TEMPORARY, align 4
  %144 = load i32*, i32** %9, align 8
  store i32 %143, i32* %144, align 4
  br label %145

145:                                              ; preds = %142, %137
  br label %164

146:                                              ; preds = %133, %129
  %147 = load i8*, i8** %16, align 8
  %148 = call i32 @hasmntopt(%struct.mnttab* %14, i8* %147)
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %163

150:                                              ; preds = %146
  %151 = load i8**, i8*** %11, align 8
  %152 = load i8*, i8** %151, align 8
  %153 = icmp ne i8* %152, null
  br i1 %153, label %154, label %163

154:                                              ; preds = %150
  %155 = load i8*, i8** @B_FALSE, align 8
  %156 = load i8**, i8*** %11, align 8
  store i8* %155, i8** %156, align 8
  %157 = load i32*, i32** %9, align 8
  %158 = icmp ne i32* %157, null
  br i1 %158, label %159, label %162

159:                                              ; preds = %154
  %160 = load i32, i32* @ZPROP_SRC_TEMPORARY, align 4
  %161 = load i32*, i32** %9, align 8
  store i32 %160, i32* %161, align 4
  br label %162

162:                                              ; preds = %159, %154
  br label %163

163:                                              ; preds = %162, %150, %146
  br label %164

164:                                              ; preds = %163, %145
  br label %307

165:                                              ; preds = %118, %118, %118, %118, %118, %118, %118, %118, %118, %118
  %166 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %167 = load i32, i32* %8, align 4
  %168 = load i8**, i8*** %10, align 8
  %169 = call i8* @getprop_uint64(%struct.TYPE_12__* %166, i32 %167, i8** %168)
  %170 = load i8**, i8*** %11, align 8
  store i8* %169, i8** %170, align 8
  %171 = load i8**, i8*** %10, align 8
  %172 = load i8*, i8** %171, align 8
  %173 = icmp eq i8* %172, null
  br i1 %173, label %174, label %179

174:                                              ; preds = %165
  %175 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %176 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %175, i32 0, i32 1
  %177 = load i8*, i8** %176, align 8
  %178 = load i8**, i8*** %10, align 8
  store i8* %177, i8** %178, align 8
  br label %179

179:                                              ; preds = %174, %165
  br label %307

180:                                              ; preds = %118
  %181 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %182 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %181, i32 0, i32 2
  %183 = load i8*, i8** %182, align 8
  %184 = icmp ne i8* %183, null
  %185 = zext i1 %184 to i32
  %186 = sext i32 %185 to i64
  %187 = inttoptr i64 %186 to i8*
  %188 = load i8**, i8*** %11, align 8
  store i8* %187, i8** %188, align 8
  br label %307

189:                                              ; preds = %118
  %190 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %191 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %190, i32 0, i32 4
  %192 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %191, i32 0, i32 2
  %193 = load i8*, i8** %192, align 8
  %194 = load i8**, i8*** %11, align 8
  store i8* %193, i8** %194, align 8
  br label %307

195:                                              ; preds = %118, %118, %118, %118
  %196 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %197 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %196, i32 0, i32 3
  %198 = load i32*, i32** %197, align 8
  %199 = call i32 @zcmd_alloc_dst_nvlist(i32* %198, %struct.TYPE_13__* %12, i32 0)
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %202

201:                                              ; preds = %195
  store i32 -1, i32* %6, align 4
  br label %308

202:                                              ; preds = %195
  %203 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 1
  %204 = load i32, i32* %203, align 8
  %205 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %206 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %205, i32 0, i32 1
  %207 = load i8*, i8** %206, align 8
  %208 = call i32 @strlcpy(i32 %204, i8* %207, i32 4)
  %209 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %210 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %209, i32 0, i32 3
  %211 = load i32*, i32** %210, align 8
  %212 = load i32, i32* @ZFS_IOC_OBJSET_ZPLPROPS, align 4
  %213 = call i32 @zfs_ioctl(i32* %211, i32 %212, %struct.TYPE_13__* %12)
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %230

215:                                              ; preds = %202
  %216 = call i32 @zcmd_free_nvlists(%struct.TYPE_13__* %12)
  %217 = load i32, i32* %8, align 4
  %218 = icmp eq i32 %217, 130
  br i1 %218, label %219, label %229

219:                                              ; preds = %215
  %220 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %221 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %220, i32 0, i32 0
  %222 = load i64, i64* %221, align 8
  %223 = load i64, i64* @ZFS_TYPE_VOLUME, align 8
  %224 = icmp eq i64 %222, %223
  br i1 %224, label %225, label %229

225:                                              ; preds = %219
  %226 = load i32, i32* %8, align 4
  %227 = call i8* @zfs_prop_default_numeric(i32 %226)
  %228 = load i8**, i8*** %11, align 8
  store i8* %227, i8** %228, align 8
  br label %229

229:                                              ; preds = %225, %219, %215
  store i32 -1, i32* %6, align 4
  br label %308

230:                                              ; preds = %202
  %231 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %232 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %231, i32 0, i32 3
  %233 = load i32*, i32** %232, align 8
  %234 = call i32 @zcmd_read_dst_nvlist(i32* %233, %struct.TYPE_13__* %12, i32** %13)
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %243, label %236

236:                                              ; preds = %230
  %237 = load i32*, i32** %13, align 8
  %238 = load i32, i32* %8, align 4
  %239 = call i32 @zfs_prop_to_name(i32 %238)
  %240 = load i8**, i8*** %11, align 8
  %241 = call i32 @nvlist_lookup_uint64(i32* %237, i32 %239, i8** %240)
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %245

243:                                              ; preds = %236, %230
  %244 = call i32 @zcmd_free_nvlists(%struct.TYPE_13__* %12)
  store i32 -1, i32* %6, align 4
  br label %308

245:                                              ; preds = %236
  %246 = load i32*, i32** %13, align 8
  %247 = call i32 @nvlist_free(i32* %246)
  %248 = call i32 @zcmd_free_nvlists(%struct.TYPE_13__* %12)
  br label %307

249:                                              ; preds = %118
  %250 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %251 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %250, i32 0, i32 4
  %252 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %251, i32 0, i32 1
  %253 = load i8*, i8** %252, align 8
  %254 = load i8**, i8*** %11, align 8
  store i8* %253, i8** %254, align 8
  br label %307

255:                                              ; preds = %118
  %256 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %257 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %256, i32 0, i32 4
  %258 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %257, i32 0, i32 0
  %259 = load i8*, i8** %258, align 8
  %260 = load i8**, i8*** %11, align 8
  store i8* %259, i8** %260, align 8
  br label %307

261:                                              ; preds = %118
  %262 = load i32, i32* %8, align 4
  %263 = call i32 @zfs_prop_get_type(i32 %262)
  switch i32 %263, label %292 [
    i32 155, label %264
    i32 156, label %264
    i32 154, label %291
  ]

264:                                              ; preds = %261, %261
  %265 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %266 = load i32, i32* %8, align 4
  %267 = load i8**, i8*** %10, align 8
  %268 = call i8* @getprop_uint64(%struct.TYPE_12__* %265, i32 %266, i8** %267)
  %269 = load i8**, i8*** %11, align 8
  store i8* %268, i8** %269, align 8
  %270 = load i32, i32* %8, align 4
  %271 = call i32 @zfs_prop_readonly(i32 %270)
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %273, label %290

273:                                              ; preds = %264
  %274 = load i32, i32* %8, align 4
  %275 = call i32 @zfs_prop_setonce(i32 %274)
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %290, label %277

277:                                              ; preds = %273
  %278 = load i8**, i8*** %10, align 8
  %279 = load i8*, i8** %278, align 8
  %280 = icmp ne i8* %279, null
  br i1 %280, label %281, label %290

281:                                              ; preds = %277
  %282 = load i8**, i8*** %10, align 8
  %283 = load i8*, i8** %282, align 8
  %284 = getelementptr inbounds i8, i8* %283, i64 0
  %285 = load i8, i8* %284, align 1
  %286 = sext i8 %285 to i32
  %287 = icmp eq i32 %286, 0
  br i1 %287, label %288, label %290

288:                                              ; preds = %281
  %289 = load i8**, i8*** %10, align 8
  store i8* null, i8** %289, align 8
  store i32 -1, i32* %6, align 4
  br label %308

290:                                              ; preds = %281, %277, %273, %264
  br label %306

291:                                              ; preds = %261
  br label %292

292:                                              ; preds = %261, %291
  %293 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %294 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %293, i32 0, i32 3
  %295 = load i32*, i32** %294, align 8
  %296 = load i32, i32* @TEXT_DOMAIN, align 4
  %297 = call i32 @dgettext(i32 %296, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %298 = call i32 @zfs_error_aux(i32* %295, i32 %297)
  %299 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %300 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %299, i32 0, i32 3
  %301 = load i32*, i32** %300, align 8
  %302 = load i32, i32* @EZFS_BADPROP, align 4
  %303 = load i32, i32* @TEXT_DOMAIN, align 4
  %304 = call i32 @dgettext(i32 %303, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  %305 = call i32 @zfs_error(i32* %301, i32 %302, i32 %304)
  store i32 %305, i32* %6, align 4
  br label %308

306:                                              ; preds = %290
  br label %307

307:                                              ; preds = %306, %255, %249, %245, %189, %180, %179, %164, %128
  store i32 0, i32* %6, align 4
  br label %308

308:                                              ; preds = %307, %292, %288, %243, %229, %201, %100, %37
  %309 = load i32, i32* %6, align 4
  ret i32 %309
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @zfs_is_recvd_props_mode(%struct.TYPE_12__*) #2

declare dso_local i32 @zfs_prop_valid_for_type(i32, i32, i8*) #2

declare dso_local i8* @zfs_prop_default_numeric(i32) #2

declare dso_local i64 @libzfs_mnttab_find(i32*, i8*, %struct.mnttab*) #2

declare dso_local i8* @zfs_strdup(i32*, i8*) #2

declare dso_local i8* @getprop_uint64(%struct.TYPE_12__*, i32, i8**) #2

declare dso_local i32 @hasmntopt(%struct.mnttab*, i8*) #2

declare dso_local i32 @zcmd_alloc_dst_nvlist(i32*, %struct.TYPE_13__*, i32) #2

declare dso_local i32 @strlcpy(i32, i8*, i32) #2

declare dso_local i32 @zfs_ioctl(i32*, i32, %struct.TYPE_13__*) #2

declare dso_local i32 @zcmd_free_nvlists(%struct.TYPE_13__*) #2

declare dso_local i32 @zcmd_read_dst_nvlist(i32*, %struct.TYPE_13__*, i32**) #2

declare dso_local i32 @nvlist_lookup_uint64(i32*, i32, i8**) #2

declare dso_local i32 @zfs_prop_to_name(i32) #2

declare dso_local i32 @nvlist_free(i32*) #2

declare dso_local i32 @zfs_prop_get_type(i32) #2

declare dso_local i32 @zfs_prop_readonly(i32) #2

declare dso_local i32 @zfs_prop_setonce(i32) #2

declare dso_local i32 @zfs_error_aux(i32*, i32) #2

declare dso_local i32 @dgettext(i32, i8*) #2

declare dso_local i32 @zfs_error(i32*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
