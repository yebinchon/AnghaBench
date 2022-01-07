; ModuleID = '/home/carl/AnghaBench/zfs/cmd/zpool/extr_zpool_main.c_zpool_do_create.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/zpool/extr_zpool_main.c_zpool_do_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8* }

@B_FALSE = common dso_local global i64 0, align 8
@B_TRUE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c":fndR:m:o:O:t:\00", align 1
@optarg = common dso_local global i8* null, align 8
@ZPOOL_PROP_ALTROOT = common dso_local global i32 0, align 4
@ZPOOL_PROP_CACHEFILE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"missing '=' for -o option\0A\00", align 1
@ZPOOL_PROP_VERSION = common dso_local global i32 0, align 4
@SPA_VERSION_FEATURES = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"missing '=' for -O option\0A\00", align 1
@ZFS_PROP_MOUNTPOINT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [61 x i8] c"cannot create '%s': invalid character '/' in temporary name\0A\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"use 'zfs create' to create a dataset\0A\00", align 1
@ZPOOL_PROP_TNAME = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [34 x i8] c"missing argument for '%c' option\0A\00", align 1
@optopt = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [21 x i8] c"invalid option '%c'\0A\00", align 1
@optind = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [28 x i8] c"missing pool name argument\0A\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"missing vdev specification\0A\00", align 1
@.str.10 = private unnamed_addr constant [56 x i8] c"cannot create '%s': invalid character '/' in pool name\0A\00", align 1
@.str.11 = private unnamed_addr constant [74 x i8] c"invalid vdev specification: at least one toplevel vdev must be specified\0A\00", align 1
@.str.12 = private unnamed_addr constant [55 x i8] c"invalid alternate root '%s': must be an absolute path\0A\00", align 1
@ZFS_MOUNTPOINT_LEGACY = common dso_local global i8* null, align 8
@ZFS_MOUNTPOINT_NONE = common dso_local global i8* null, align 8
@MAXPATHLEN = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [72 x i8] c"invalid mountpoint '%s': must be an absolute path, 'legacy', or 'none'\0A\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"/%s\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@.str.18 = private unnamed_addr constant [22 x i8] c"mountpoint '%s' : %s\0A\00", align 1
@.str.19 = private unnamed_addr constant [48 x i8] c"use '-m' option to provide a different default\0A\00", align 1
@.str.20 = private unnamed_addr constant [41 x i8] c"mountpoint '%s' exists and is not empty\0A\00", align 1
@.str.21 = private unnamed_addr constant [47 x i8] c"would create '%s' with the following layout:\0A\0A\00", align 1
@.str.22 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"dedup\00", align 1
@VDEV_ALLOC_BIAS_DEDUP = common dso_local global i8* null, align 8
@.str.24 = private unnamed_addr constant [8 x i8] c"special\00", align 1
@VDEV_ALLOC_BIAS_SPECIAL = common dso_local global i8* null, align 8
@.str.25 = private unnamed_addr constant [5 x i8] c"logs\00", align 1
@VDEV_ALLOC_BIAS_LOG = common dso_local global i8* null, align 8
@SPA_FEATURES = common dso_local global i64 0, align 8
@spa_feature_table = common dso_local global %struct.TYPE_3__* null, align 8
@.str.26 = private unnamed_addr constant [11 x i8] c"feature@%s\00", align 1
@ZFS_FEATURE_DISABLED = common dso_local global i8* null, align 8
@ZFS_FEATURE_ENABLED = common dso_local global i8* null, align 8
@g_zfs = common dso_local global i32 0, align 4
@ZFS_TYPE_FILESYSTEM = common dso_local global i32 0, align 4
@EZFS_INVALIDNAME = common dso_local global i64 0, align 8
@.str.27 = private unnamed_addr constant [33 x i8] c"pool name may have been omitted\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zpool_do_create(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i64, align 8
  %27 = alloca i8*, align 8
  %28 = alloca i64, align 8
  %29 = alloca i8*, align 8
  %30 = alloca %struct.TYPE_3__*, align 8
  %31 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %32 = load i64, i64* @B_FALSE, align 8
  store i64 %32, i64* %6, align 8
  %33 = load i64, i64* @B_FALSE, align 8
  store i64 %33, i64* %7, align 8
  %34 = load i64, i64* @B_TRUE, align 8
  store i64 %34, i64* %8, align 8
  store i32* null, i32** %10, align 8
  store i8* null, i8** %12, align 8
  store i32 1, i32* %13, align 4
  store i8* null, i8** %14, align 8
  store i8* null, i8** %15, align 8
  store i32* null, i32** %16, align 8
  store i32* null, i32** %17, align 8
  br label %35

35:                                               ; preds = %179, %2
  %36 = load i32, i32* %4, align 4
  %37 = load i8**, i8*** %5, align 8
  %38 = call i32 @getopt(i32 %36, i8** %37, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  store i32 %38, i32* %9, align 4
  %39 = icmp ne i32 %38, -1
  br i1 %39, label %40, label %180

40:                                               ; preds = %35
  %41 = load i32, i32* %9, align 4
  switch i32 %41, label %179 [
    i32 102, label %42
    i32 110, label %44
    i32 100, label %46
    i32 82, label %48
    i32 109, label %65
    i32 111, label %67
    i32 79, label %112
    i32 116, label %140
    i32 58, label %169
    i32 63, label %174
  ]

42:                                               ; preds = %40
  %43 = load i64, i64* @B_TRUE, align 8
  store i64 %43, i64* %6, align 8
  br label %179

44:                                               ; preds = %40
  %45 = load i64, i64* @B_TRUE, align 8
  store i64 %45, i64* %7, align 8
  br label %179

46:                                               ; preds = %40
  %47 = load i64, i64* @B_FALSE, align 8
  store i64 %47, i64* %8, align 8
  br label %179

48:                                               ; preds = %40
  %49 = load i8*, i8** @optarg, align 8
  store i8* %49, i8** %14, align 8
  %50 = load i32, i32* @ZPOOL_PROP_ALTROOT, align 4
  %51 = call i8* @zpool_prop_to_name(i32 %50)
  %52 = load i8*, i8** @optarg, align 8
  %53 = load i64, i64* @B_TRUE, align 8
  %54 = call i32 @add_prop_list(i8* %51, i8* %52, i32** %17, i64 %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %48
  br label %494

57:                                               ; preds = %48
  %58 = load i32, i32* @ZPOOL_PROP_CACHEFILE, align 4
  %59 = call i8* @zpool_prop_to_name(i32 %58)
  %60 = load i64, i64* @B_TRUE, align 8
  %61 = call i32 @add_prop_list_default(i8* %59, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32** %17, i64 %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %57
  br label %494

64:                                               ; preds = %57
  br label %179

65:                                               ; preds = %40
  %66 = load i8*, i8** @optarg, align 8
  store i8* %66, i8** %15, align 8
  br label %179

67:                                               ; preds = %40
  %68 = load i8*, i8** @optarg, align 8
  %69 = call i8* @strchr(i8* %68, i8 signext 61)
  store i8* %69, i8** %18, align 8
  %70 = icmp eq i8* %69, null
  br i1 %70, label %71, label %75

71:                                               ; preds = %67
  %72 = load i32, i32* @stderr, align 4
  %73 = call i8* @gettext(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %74 = call i32 (i32, i8*, ...) @fprintf(i32 %72, i8* %73)
  br label %494

75:                                               ; preds = %67
  %76 = load i8*, i8** %18, align 8
  store i8 0, i8* %76, align 1
  %77 = load i8*, i8** %18, align 8
  %78 = getelementptr inbounds i8, i8* %77, i32 1
  store i8* %78, i8** %18, align 8
  %79 = load i8*, i8** @optarg, align 8
  %80 = load i8*, i8** %18, align 8
  %81 = load i64, i64* @B_TRUE, align 8
  %82 = call i32 @add_prop_list(i8* %79, i8* %80, i32** %17, i64 %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %75
  br label %494

85:                                               ; preds = %75
  %86 = load i8*, i8** @optarg, align 8
  %87 = call i32 @zpool_name_to_prop(i8* %86)
  %88 = load i32, i32* @ZPOOL_PROP_VERSION, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %104

90:                                               ; preds = %85
  %91 = load i8*, i8** %18, align 8
  %92 = call i32 @strtoull(i8* %91, i8** %19, i32 10)
  store i32 %92, i32* %20, align 4
  %93 = load i8*, i8** %19, align 8
  %94 = load i8, i8* %93, align 1
  %95 = sext i8 %94 to i32
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %103

97:                                               ; preds = %90
  %98 = load i32, i32* %20, align 4
  %99 = load i32, i32* @SPA_VERSION_FEATURES, align 4
  %100 = icmp slt i32 %98, %99
  br i1 %100, label %101, label %103

101:                                              ; preds = %97
  %102 = load i64, i64* @B_FALSE, align 8
  store i64 %102, i64* %8, align 8
  br label %103

103:                                              ; preds = %101, %97, %90
  br label %104

104:                                              ; preds = %103, %85
  %105 = load i8*, i8** @optarg, align 8
  %106 = call i32 @zpool_name_to_prop(i8* %105)
  %107 = load i32, i32* @ZPOOL_PROP_ALTROOT, align 4
  %108 = icmp eq i32 %106, %107
  br i1 %108, label %109, label %111

109:                                              ; preds = %104
  %110 = load i8*, i8** %18, align 8
  store i8* %110, i8** %14, align 8
  br label %111

111:                                              ; preds = %109, %104
  br label %179

112:                                              ; preds = %40
  %113 = load i8*, i8** @optarg, align 8
  %114 = call i8* @strchr(i8* %113, i8 signext 61)
  store i8* %114, i8** %18, align 8
  %115 = icmp eq i8* %114, null
  br i1 %115, label %116, label %120

116:                                              ; preds = %112
  %117 = load i32, i32* @stderr, align 4
  %118 = call i8* @gettext(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %119 = call i32 (i32, i8*, ...) @fprintf(i32 %117, i8* %118)
  br label %494

120:                                              ; preds = %112
  %121 = load i8*, i8** %18, align 8
  store i8 0, i8* %121, align 1
  %122 = load i8*, i8** %18, align 8
  %123 = getelementptr inbounds i8, i8* %122, i32 1
  store i8* %123, i8** %18, align 8
  %124 = load i8*, i8** @optarg, align 8
  %125 = load i32, i32* @ZFS_PROP_MOUNTPOINT, align 4
  %126 = call i8* @zfs_prop_to_name(i32 %125)
  %127 = call i64 @strcmp(i8* %124, i8* %126)
  %128 = icmp eq i64 0, %127
  br i1 %128, label %129, label %131

129:                                              ; preds = %120
  %130 = load i8*, i8** %18, align 8
  store i8* %130, i8** %15, align 8
  br label %139

131:                                              ; preds = %120
  %132 = load i8*, i8** @optarg, align 8
  %133 = load i8*, i8** %18, align 8
  %134 = load i64, i64* @B_FALSE, align 8
  %135 = call i32 @add_prop_list(i8* %132, i8* %133, i32** %16, i64 %134)
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %131
  br label %494

138:                                              ; preds = %131
  br label %139

139:                                              ; preds = %138, %129
  br label %179

140:                                              ; preds = %40
  %141 = load i8*, i8** @optarg, align 8
  %142 = call i8* @strchr(i8* %141, i8 signext 47)
  %143 = icmp ne i8* %142, null
  br i1 %143, label %144, label %152

144:                                              ; preds = %140
  %145 = load i32, i32* @stderr, align 4
  %146 = call i8* @gettext(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.4, i64 0, i64 0))
  %147 = load i8*, i8** @optarg, align 8
  %148 = call i32 (i32, i8*, ...) @fprintf(i32 %145, i8* %146, i8* %147)
  %149 = load i32, i32* @stderr, align 4
  %150 = call i8* @gettext(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0))
  %151 = call i32 (i32, i8*, ...) @fprintf(i32 %149, i8* %150)
  br label %494

152:                                              ; preds = %140
  %153 = load i32, i32* @ZPOOL_PROP_TNAME, align 4
  %154 = call i8* @zpool_prop_to_name(i32 %153)
  %155 = load i8*, i8** @optarg, align 8
  %156 = load i64, i64* @B_TRUE, align 8
  %157 = call i32 @add_prop_list(i8* %154, i8* %155, i32** %17, i64 %156)
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %160

159:                                              ; preds = %152
  br label %494

160:                                              ; preds = %152
  %161 = load i32, i32* @ZPOOL_PROP_CACHEFILE, align 4
  %162 = call i8* @zpool_prop_to_name(i32 %161)
  %163 = load i64, i64* @B_TRUE, align 8
  %164 = call i32 @add_prop_list_default(i8* %162, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32** %17, i64 %163)
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %167

166:                                              ; preds = %160
  br label %494

167:                                              ; preds = %160
  %168 = load i8*, i8** @optarg, align 8
  store i8* %168, i8** %12, align 8
  br label %179

169:                                              ; preds = %40
  %170 = load i32, i32* @stderr, align 4
  %171 = call i8* @gettext(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0))
  %172 = load i32, i32* @optopt, align 4
  %173 = call i32 (i32, i8*, ...) @fprintf(i32 %170, i8* %171, i32 %172)
  br label %502

174:                                              ; preds = %40
  %175 = load i32, i32* @stderr, align 4
  %176 = call i8* @gettext(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0))
  %177 = load i32, i32* @optopt, align 4
  %178 = call i32 (i32, i8*, ...) @fprintf(i32 %175, i8* %176, i32 %177)
  br label %502

179:                                              ; preds = %40, %167, %139, %111, %65, %64, %46, %44, %42
  br label %35

180:                                              ; preds = %35
  %181 = load i64, i64* @optind, align 8
  %182 = load i32, i32* %4, align 4
  %183 = sext i32 %182 to i64
  %184 = sub nsw i64 %183, %181
  %185 = trunc i64 %184 to i32
  store i32 %185, i32* %4, align 4
  %186 = load i64, i64* @optind, align 8
  %187 = load i8**, i8*** %5, align 8
  %188 = getelementptr inbounds i8*, i8** %187, i64 %186
  store i8** %188, i8*** %5, align 8
  %189 = load i32, i32* %4, align 4
  %190 = icmp slt i32 %189, 1
  br i1 %190, label %191, label %195

191:                                              ; preds = %180
  %192 = load i32, i32* @stderr, align 4
  %193 = call i8* @gettext(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0))
  %194 = call i32 (i32, i8*, ...) @fprintf(i32 %192, i8* %193)
  br label %502

195:                                              ; preds = %180
  %196 = load i32, i32* %4, align 4
  %197 = icmp slt i32 %196, 2
  br i1 %197, label %198, label %202

198:                                              ; preds = %195
  %199 = load i32, i32* @stderr, align 4
  %200 = call i8* @gettext(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i64 0, i64 0))
  %201 = call i32 (i32, i8*, ...) @fprintf(i32 %199, i8* %200)
  br label %502

202:                                              ; preds = %195
  %203 = load i8**, i8*** %5, align 8
  %204 = getelementptr inbounds i8*, i8** %203, i64 0
  %205 = load i8*, i8** %204, align 8
  store i8* %205, i8** %11, align 8
  %206 = load i8*, i8** %11, align 8
  %207 = call i8* @strchr(i8* %206, i8 signext 47)
  %208 = icmp ne i8* %207, null
  br i1 %208, label %209, label %217

209:                                              ; preds = %202
  %210 = load i32, i32* @stderr, align 4
  %211 = call i8* @gettext(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.10, i64 0, i64 0))
  %212 = load i8*, i8** %11, align 8
  %213 = call i32 (i32, i8*, ...) @fprintf(i32 %210, i8* %211, i8* %212)
  %214 = load i32, i32* @stderr, align 4
  %215 = call i8* @gettext(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0))
  %216 = call i32 (i32, i8*, ...) @fprintf(i32 %214, i8* %215)
  br label %494

217:                                              ; preds = %202
  %218 = load i32*, i32** %17, align 8
  %219 = load i64, i64* %6, align 8
  %220 = load i64, i64* %6, align 8
  %221 = icmp ne i64 %220, 0
  %222 = xor i1 %221, true
  %223 = zext i1 %222 to i32
  %224 = load i64, i64* @B_FALSE, align 8
  %225 = load i64, i64* %7, align 8
  %226 = load i32, i32* %4, align 4
  %227 = sub nsw i32 %226, 1
  %228 = load i8**, i8*** %5, align 8
  %229 = getelementptr inbounds i8*, i8** %228, i64 1
  %230 = call i32* @make_root_vdev(i32* null, i32* %218, i64 %219, i32 %223, i64 %224, i64 %225, i32 %227, i8** %229)
  store i32* %230, i32** %10, align 8
  %231 = load i32*, i32** %10, align 8
  %232 = icmp eq i32* %231, null
  br i1 %232, label %233, label %234

233:                                              ; preds = %217
  br label %494

234:                                              ; preds = %217
  %235 = load i32*, i32** %10, align 8
  %236 = call i32 @zfs_allocatable_devs(i32* %235)
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %242, label %238

238:                                              ; preds = %234
  %239 = load i32, i32* @stderr, align 4
  %240 = call i8* @gettext(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.11, i64 0, i64 0))
  %241 = call i32 (i32, i8*, ...) @fprintf(i32 %239, i8* %240)
  br label %494

242:                                              ; preds = %234
  %243 = load i8*, i8** %14, align 8
  %244 = icmp ne i8* %243, null
  br i1 %244, label %245, label %256

245:                                              ; preds = %242
  %246 = load i8*, i8** %14, align 8
  %247 = getelementptr inbounds i8, i8* %246, i64 0
  %248 = load i8, i8* %247, align 1
  %249 = sext i8 %248 to i32
  %250 = icmp ne i32 %249, 47
  br i1 %250, label %251, label %256

251:                                              ; preds = %245
  %252 = load i32, i32* @stderr, align 4
  %253 = call i8* @gettext(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.12, i64 0, i64 0))
  %254 = load i8*, i8** %14, align 8
  %255 = call i32 (i32, i8*, ...) @fprintf(i32 %252, i8* %253, i8* %254)
  br label %494

256:                                              ; preds = %245, %242
  %257 = load i8*, i8** %15, align 8
  %258 = icmp eq i8* %257, null
  br i1 %258, label %269, label %259

259:                                              ; preds = %256
  %260 = load i8*, i8** %15, align 8
  %261 = load i8*, i8** @ZFS_MOUNTPOINT_LEGACY, align 8
  %262 = call i64 @strcmp(i8* %260, i8* %261)
  %263 = icmp ne i64 %262, 0
  br i1 %263, label %264, label %367

264:                                              ; preds = %259
  %265 = load i8*, i8** %15, align 8
  %266 = load i8*, i8** @ZFS_MOUNTPOINT_NONE, align 8
  %267 = call i64 @strcmp(i8* %265, i8* %266)
  %268 = icmp ne i64 %267, 0
  br i1 %268, label %269, label %367

269:                                              ; preds = %264, %256
  %270 = load i32, i32* @MAXPATHLEN, align 4
  %271 = zext i32 %270 to i64
  %272 = call i8* @llvm.stacksave()
  store i8* %272, i8** %21, align 8
  %273 = alloca i8, i64 %271, align 16
  store i64 %271, i64* %22, align 8
  %274 = load i8*, i8** %15, align 8
  %275 = icmp ne i8* %274, null
  br i1 %275, label %276, label %287

276:                                              ; preds = %269
  %277 = load i8*, i8** %15, align 8
  %278 = getelementptr inbounds i8, i8* %277, i64 0
  %279 = load i8, i8* %278, align 1
  %280 = sext i8 %279 to i32
  %281 = icmp ne i32 %280, 47
  br i1 %281, label %282, label %287

282:                                              ; preds = %276
  %283 = load i32, i32* @stderr, align 4
  %284 = call i8* @gettext(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.13, i64 0, i64 0))
  %285 = load i8*, i8** %15, align 8
  %286 = call i32 (i32, i8*, ...) @fprintf(i32 %283, i8* %284, i8* %285)
  store i32 5, i32* %25, align 4
  br label %363

287:                                              ; preds = %276, %269
  %288 = load i8*, i8** %15, align 8
  %289 = icmp eq i8* %288, null
  br i1 %289, label %290, label %303

290:                                              ; preds = %287
  %291 = load i8*, i8** %14, align 8
  %292 = icmp ne i8* %291, null
  br i1 %292, label %293, label %298

293:                                              ; preds = %290
  %294 = trunc i64 %271 to i32
  %295 = load i8*, i8** %14, align 8
  %296 = load i8*, i8** %11, align 8
  %297 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %273, i32 %294, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0), i8* %295, i8* %296)
  br label %302

298:                                              ; preds = %290
  %299 = trunc i64 %271 to i32
  %300 = load i8*, i8** %11, align 8
  %301 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %273, i32 %299, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), i8* %300)
  br label %302

302:                                              ; preds = %298, %293
  br label %316

303:                                              ; preds = %287
  %304 = load i8*, i8** %14, align 8
  %305 = icmp ne i8* %304, null
  br i1 %305, label %306, label %311

306:                                              ; preds = %303
  %307 = trunc i64 %271 to i32
  %308 = load i8*, i8** %14, align 8
  %309 = load i8*, i8** %15, align 8
  %310 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %273, i32 %307, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0), i8* %308, i8* %309)
  br label %315

311:                                              ; preds = %303
  %312 = trunc i64 %271 to i32
  %313 = load i8*, i8** %15, align 8
  %314 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %273, i32 %312, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i64 0, i64 0), i8* %313)
  br label %315

315:                                              ; preds = %311, %306
  br label %316

316:                                              ; preds = %315, %302
  %317 = call i32* @opendir(i8* %273)
  store i32* %317, i32** %23, align 8
  %318 = icmp eq i32* %317, null
  br i1 %318, label %319, label %332

319:                                              ; preds = %316
  %320 = load i64, i64* @errno, align 8
  %321 = load i64, i64* @ENOENT, align 8
  %322 = icmp ne i64 %320, %321
  br i1 %322, label %323, label %332

323:                                              ; preds = %319
  %324 = load i32, i32* @stderr, align 4
  %325 = call i8* @gettext(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18, i64 0, i64 0))
  %326 = load i64, i64* @errno, align 8
  %327 = call i8* @strerror(i64 %326)
  %328 = call i32 (i32, i8*, ...) @fprintf(i32 %324, i8* %325, i8* %273, i8* %327)
  %329 = load i32, i32* @stderr, align 4
  %330 = call i8* @gettext(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.19, i64 0, i64 0))
  %331 = call i32 (i32, i8*, ...) @fprintf(i32 %329, i8* %330)
  store i32 5, i32* %25, align 4
  br label %363

332:                                              ; preds = %319, %316
  %333 = load i32*, i32** %23, align 8
  %334 = icmp ne i32* %333, null
  br i1 %334, label %335, label %361

335:                                              ; preds = %332
  store i32 0, i32* %24, align 4
  br label %336

336:                                              ; preds = %345, %335
  %337 = load i32, i32* %24, align 4
  %338 = icmp slt i32 %337, 3
  br i1 %338, label %339, label %343

339:                                              ; preds = %336
  %340 = load i32*, i32** %23, align 8
  %341 = call i32* @readdir(i32* %340)
  %342 = icmp ne i32* %341, null
  br label %343

343:                                              ; preds = %339, %336
  %344 = phi i1 [ false, %336 ], [ %342, %339 ]
  br i1 %344, label %345, label %348

345:                                              ; preds = %343
  %346 = load i32, i32* %24, align 4
  %347 = add nsw i32 %346, 1
  store i32 %347, i32* %24, align 4
  br label %336

348:                                              ; preds = %343
  %349 = load i32*, i32** %23, align 8
  %350 = call i32 @closedir(i32* %349)
  %351 = load i32, i32* %24, align 4
  %352 = icmp sgt i32 %351, 2
  br i1 %352, label %353, label %360

353:                                              ; preds = %348
  %354 = load i32, i32* @stderr, align 4
  %355 = call i8* @gettext(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.20, i64 0, i64 0))
  %356 = call i32 (i32, i8*, ...) @fprintf(i32 %354, i8* %355, i8* %273)
  %357 = load i32, i32* @stderr, align 4
  %358 = call i8* @gettext(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.19, i64 0, i64 0))
  %359 = call i32 (i32, i8*, ...) @fprintf(i32 %357, i8* %358)
  store i32 5, i32* %25, align 4
  br label %363

360:                                              ; preds = %348
  br label %361

361:                                              ; preds = %360, %332
  br label %362

362:                                              ; preds = %361
  store i32 0, i32* %25, align 4
  br label %363

363:                                              ; preds = %353, %323, %282, %362
  %364 = load i8*, i8** %21, align 8
  call void @llvm.stackrestore(i8* %364)
  %365 = load i32, i32* %25, align 4
  switch i32 %365, label %511 [
    i32 0, label %366
    i32 5, label %494
  ]

366:                                              ; preds = %363
  br label %367

367:                                              ; preds = %366, %264, %259
  %368 = load i8*, i8** %15, align 8
  %369 = icmp ne i8* %368, null
  br i1 %369, label %370, label %380

370:                                              ; preds = %367
  %371 = load i32, i32* @ZFS_PROP_MOUNTPOINT, align 4
  %372 = call i8* @zfs_prop_to_name(i32 %371)
  %373 = load i8*, i8** %15, align 8
  %374 = load i64, i64* @B_FALSE, align 8
  %375 = call i32 @add_prop_list(i8* %372, i8* %373, i32** %16, i64 %374)
  store i32 %375, i32* %13, align 4
  %376 = load i32, i32* %13, align 4
  %377 = icmp ne i32 %376, 0
  br i1 %377, label %378, label %379

378:                                              ; preds = %370
  br label %494

379:                                              ; preds = %370
  br label %380

380:                                              ; preds = %379, %367
  store i32 1, i32* %13, align 4
  %381 = load i64, i64* %7, align 8
  %382 = icmp ne i64 %381, 0
  br i1 %382, label %383, label %399

383:                                              ; preds = %380
  %384 = call i8* @gettext(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.21, i64 0, i64 0))
  %385 = load i8*, i8** %11, align 8
  %386 = call i32 @printf(i8* %384, i8* %385)
  %387 = load i8*, i8** %11, align 8
  %388 = load i32*, i32** %10, align 8
  %389 = call i32 @print_vdev_tree(i32* null, i8* %387, i32* %388, i32 0, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.22, i64 0, i64 0), i32 0)
  %390 = load i32*, i32** %10, align 8
  %391 = load i8*, i8** @VDEV_ALLOC_BIAS_DEDUP, align 8
  %392 = call i32 @print_vdev_tree(i32* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i64 0, i64 0), i32* %390, i32 0, i8* %391, i32 0)
  %393 = load i32*, i32** %10, align 8
  %394 = load i8*, i8** @VDEV_ALLOC_BIAS_SPECIAL, align 8
  %395 = call i32 @print_vdev_tree(i32* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i64 0, i64 0), i32* %393, i32 0, i8* %394, i32 0)
  %396 = load i32*, i32** %10, align 8
  %397 = load i8*, i8** @VDEV_ALLOC_BIAS_LOG, align 8
  %398 = call i32 @print_vdev_tree(i32* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i64 0, i64 0), i32* %396, i32 0, i8* %397, i32 0)
  store i32 0, i32* %13, align 4
  br label %493

399:                                              ; preds = %380
  store i64 0, i64* %26, align 8
  br label %400

400:                                              ; preds = %446, %399
  %401 = load i64, i64* %26, align 8
  %402 = load i64, i64* @SPA_FEATURES, align 8
  %403 = icmp ult i64 %401, %402
  br i1 %403, label %404, label %449

404:                                              ; preds = %400
  %405 = load i32, i32* @MAXPATHLEN, align 4
  %406 = zext i32 %405 to i64
  %407 = call i8* @llvm.stacksave()
  store i8* %407, i8** %27, align 8
  %408 = alloca i8, i64 %406, align 16
  store i64 %406, i64* %28, align 8
  %409 = load %struct.TYPE_3__*, %struct.TYPE_3__** @spa_feature_table, align 8
  %410 = load i64, i64* %26, align 8
  %411 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %409, i64 %410
  store %struct.TYPE_3__* %411, %struct.TYPE_3__** %30, align 8
  %412 = trunc i64 %406 to i32
  %413 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %414 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %413, i32 0, i32 0
  %415 = load i8*, i8** %414, align 8
  %416 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %408, i32 %412, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.26, i64 0, i64 0), i8* %415)
  %417 = load i32*, i32** %17, align 8
  %418 = call i32 @nvlist_lookup_string(i32* %417, i8* %408, i8** %29)
  %419 = icmp ne i32 %418, 0
  br i1 %419, label %429, label %420

420:                                              ; preds = %404
  %421 = load i8*, i8** %29, align 8
  %422 = load i8*, i8** @ZFS_FEATURE_DISABLED, align 8
  %423 = call i64 @strcmp(i8* %421, i8* %422)
  %424 = icmp eq i64 %423, 0
  br i1 %424, label %425, label %428

425:                                              ; preds = %420
  %426 = load i32*, i32** %17, align 8
  %427 = call i32 @nvlist_remove_all(i32* %426, i8* %408)
  br label %428

428:                                              ; preds = %425, %420
  br label %441

429:                                              ; preds = %404
  %430 = load i64, i64* %8, align 8
  %431 = icmp ne i64 %430, 0
  br i1 %431, label %432, label %440

432:                                              ; preds = %429
  %433 = load i8*, i8** @ZFS_FEATURE_ENABLED, align 8
  %434 = load i64, i64* @B_TRUE, align 8
  %435 = call i32 @add_prop_list(i8* %408, i8* %433, i32** %17, i64 %434)
  store i32 %435, i32* %13, align 4
  %436 = load i32, i32* %13, align 4
  %437 = icmp ne i32 %436, 0
  br i1 %437, label %438, label %439

438:                                              ; preds = %432
  store i32 5, i32* %25, align 4
  br label %442

439:                                              ; preds = %432
  br label %440

440:                                              ; preds = %439, %429
  br label %441

441:                                              ; preds = %440, %428
  store i32 0, i32* %25, align 4
  br label %442

442:                                              ; preds = %438, %441
  %443 = load i8*, i8** %27, align 8
  call void @llvm.stackrestore(i8* %443)
  %444 = load i32, i32* %25, align 4
  switch i32 %444, label %511 [
    i32 0, label %445
    i32 5, label %494
  ]

445:                                              ; preds = %442
  br label %446

446:                                              ; preds = %445
  %447 = load i64, i64* %26, align 8
  %448 = add i64 %447, 1
  store i64 %448, i64* %26, align 8
  br label %400

449:                                              ; preds = %400
  store i32 1, i32* %13, align 4
  %450 = load i32, i32* @g_zfs, align 4
  %451 = load i8*, i8** %11, align 8
  %452 = load i32*, i32** %10, align 8
  %453 = load i32*, i32** %17, align 8
  %454 = load i32*, i32** %16, align 8
  %455 = call i64 @zpool_create(i32 %450, i8* %451, i32* %452, i32* %453, i32* %454)
  %456 = icmp eq i64 %455, 0
  br i1 %456, label %457, label %482

457:                                              ; preds = %449
  %458 = load i32, i32* @g_zfs, align 4
  %459 = load i8*, i8** %12, align 8
  %460 = icmp ne i8* %459, null
  br i1 %460, label %461, label %463

461:                                              ; preds = %457
  %462 = load i8*, i8** %12, align 8
  br label %465

463:                                              ; preds = %457
  %464 = load i8*, i8** %11, align 8
  br label %465

465:                                              ; preds = %463, %461
  %466 = phi i8* [ %462, %461 ], [ %464, %463 ]
  %467 = load i32, i32* @ZFS_TYPE_FILESYSTEM, align 4
  %468 = call i32* @zfs_open(i32 %458, i8* %466, i32 %467)
  store i32* %468, i32** %31, align 8
  %469 = load i32*, i32** %31, align 8
  %470 = icmp ne i32* %469, null
  br i1 %470, label %471, label %481

471:                                              ; preds = %465
  %472 = load i32*, i32** %31, align 8
  %473 = call i64 @zfs_mount(i32* %472, i32* null, i32 0)
  %474 = icmp eq i64 %473, 0
  br i1 %474, label %475, label %478

475:                                              ; preds = %471
  %476 = load i32*, i32** %31, align 8
  %477 = call i32 @zfs_shareall(i32* %476)
  store i32 %477, i32* %13, align 4
  br label %478

478:                                              ; preds = %475, %471
  %479 = load i32*, i32** %31, align 8
  %480 = call i32 @zfs_close(i32* %479)
  br label %481

481:                                              ; preds = %478, %465
  br label %492

482:                                              ; preds = %449
  %483 = load i32, i32* @g_zfs, align 4
  %484 = call i64 @libzfs_errno(i32 %483)
  %485 = load i64, i64* @EZFS_INVALIDNAME, align 8
  %486 = icmp eq i64 %484, %485
  br i1 %486, label %487, label %491

487:                                              ; preds = %482
  %488 = load i32, i32* @stderr, align 4
  %489 = call i8* @gettext(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.27, i64 0, i64 0))
  %490 = call i32 (i32, i8*, ...) @fprintf(i32 %488, i8* %489)
  br label %491

491:                                              ; preds = %487, %482
  br label %492

492:                                              ; preds = %491, %481
  br label %493

493:                                              ; preds = %492, %383
  br label %494

494:                                              ; preds = %493, %442, %378, %363, %251, %238, %233, %209, %166, %159, %144, %137, %116, %84, %71, %63, %56
  %495 = load i32*, i32** %10, align 8
  %496 = call i32 @nvlist_free(i32* %495)
  %497 = load i32*, i32** %16, align 8
  %498 = call i32 @nvlist_free(i32* %497)
  %499 = load i32*, i32** %17, align 8
  %500 = call i32 @nvlist_free(i32* %499)
  %501 = load i32, i32* %13, align 4
  store i32 %501, i32* %3, align 4
  br label %509

502:                                              ; preds = %198, %191, %174, %169
  %503 = load i32*, i32** %16, align 8
  %504 = call i32 @nvlist_free(i32* %503)
  %505 = load i32*, i32** %17, align 8
  %506 = call i32 @nvlist_free(i32* %505)
  %507 = load i64, i64* @B_FALSE, align 8
  %508 = call i32 @usage(i64 %507)
  store i32 2, i32* %3, align 4
  br label %509

509:                                              ; preds = %502, %494
  %510 = load i32, i32* %3, align 4
  ret i32 %510

511:                                              ; preds = %442, %363
  unreachable
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @add_prop_list(i8*, i8*, i32**, i64) #1

declare dso_local i8* @zpool_prop_to_name(i32) #1

declare dso_local i32 @add_prop_list_default(i8*, i8*, i32**, i64) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i8* @gettext(i8*) #1

declare dso_local i32 @zpool_name_to_prop(i8*) #1

declare dso_local i32 @strtoull(i8*, i8**, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i8* @zfs_prop_to_name(i32) #1

declare dso_local i32* @make_root_vdev(i32*, i32*, i64, i32, i64, i64, i32, i8**) #1

declare dso_local i32 @zfs_allocatable_devs(i32*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, ...) #1

declare dso_local i32* @opendir(i8*) #1

declare dso_local i8* @strerror(i64) #1

declare dso_local i32* @readdir(i32*) #1

declare dso_local i32 @closedir(i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @print_vdev_tree(i32*, i8*, i32*, i32, i8*, i32) #1

declare dso_local i32 @nvlist_lookup_string(i32*, i8*, i8**) #1

declare dso_local i32 @nvlist_remove_all(i32*, i8*) #1

declare dso_local i64 @zpool_create(i32, i8*, i32*, i32*, i32*) #1

declare dso_local i32* @zfs_open(i32, i8*, i32) #1

declare dso_local i64 @zfs_mount(i32*, i32*, i32) #1

declare dso_local i32 @zfs_shareall(i32*) #1

declare dso_local i32 @zfs_close(i32*) #1

declare dso_local i64 @libzfs_errno(i32) #1

declare dso_local i32 @nvlist_free(i32*) #1

declare dso_local i32 @usage(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
