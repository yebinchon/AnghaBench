; ModuleID = '/home/carl/AnghaBench/zfs/cmd/zfs/extr_zfs_main.c_zfs_do_destroy.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/zfs/extr_zfs_main.c_zfs_do_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i8*, i64, i32*, i32*, i64, i64, i64, i32*, i64, i64, i64, i64, i64, i32 }

@ZFS_TYPE_DATASET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"vpndfrR\00", align 1
@B_TRUE = common dso_local global i64 0, align 8
@ZFS_TYPE_SNAPSHOT = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"invalid option '%c'\0A\00", align 1
@optopt = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i64 0, align 8
@optind = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [26 x i8] c"missing dataset argument\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"too many arguments\0A\00", align 1
@g_zfs = common dso_local global i32 0, align 4
@ZFS_TYPE_FILESYSTEM = common dso_local global i32 0, align 4
@ZFS_TYPE_VOLUME = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [64 x i8] c"could not find any snapshots to destroy; check snapshot names.\0A\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"reclaim\09%llu\0A\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"would reclaim %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"will reclaim %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [39 x i8] c"dryrun is not supported with bookmark\0A\00", align 1
@.str.9 = private unnamed_addr constant [46 x i8] c"defer destroy is not supported with bookmark\0A\00", align 1
@.str.10 = private unnamed_addr constant [42 x i8] c"recursive is not supported with bookmark\0A\00", align 1
@.str.11 = private unnamed_addr constant [31 x i8] c"bookmark '%s' does not exist.\0A\00", align 1
@.str.12 = private unnamed_addr constant [24 x i8] c"cannot destroy bookmark\00", align 1
@.str.13 = private unnamed_addr constant [56 x i8] c"cannot destroy '%s': operation does not apply to pools\0A\00", align 1
@.str.14 = private unnamed_addr constant [61 x i8] c"use 'zfs destroy -r %s' to destroy all datasets in the pool\0A\00", align 1
@.str.15 = private unnamed_addr constant [51 x i8] c"use 'zpool destroy %s' to destroy the pool itself\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @zfs_do_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfs_do_destroy(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.TYPE_8__, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca [16 x i8], align 16
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %17 = bitcast %struct.TYPE_8__* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %17, i8 0, i64 120, i1 false)
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32* null, i32** %10, align 8
  %18 = load i32, i32* @ZFS_TYPE_DATASET, align 4
  store i32 %18, i32* %13, align 4
  br label %19

19:                                               ; preds = %60, %2
  %20 = load i32, i32* %4, align 4
  %21 = load i8**, i8*** %5, align 8
  %22 = call i32 @getopt(i32 %20, i8** %21, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i32 %22, i32* %9, align 4
  %23 = icmp ne i32 %22, -1
  br i1 %23, label %24, label %61

24:                                               ; preds = %19
  %25 = load i32, i32* %9, align 4
  switch i32 %25, label %53 [
    i32 118, label %26
    i32 112, label %29
    i32 110, label %34
    i32 100, label %37
    i32 102, label %41
    i32 114, label %44
    i32 82, label %47
    i32 63, label %52
  ]

26:                                               ; preds = %24
  %27 = load i64, i64* @B_TRUE, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 12
  store i64 %27, i64* %28, align 8
  br label %60

29:                                               ; preds = %24
  %30 = load i64, i64* @B_TRUE, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 12
  store i64 %30, i64* %31, align 8
  %32 = load i64, i64* @B_TRUE, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 11
  store i64 %32, i64* %33, align 8
  br label %60

34:                                               ; preds = %24
  %35 = load i64, i64* @B_TRUE, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 9
  store i64 %35, i64* %36, align 8
  br label %60

37:                                               ; preds = %24
  %38 = load i64, i64* @B_TRUE, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  store i64 %38, i64* %39, align 8
  %40 = load i32, i32* @ZFS_TYPE_SNAPSHOT, align 4
  store i32 %40, i32* %13, align 4
  br label %60

41:                                               ; preds = %24
  %42 = load i64, i64* @B_TRUE, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 13
  store i64 %42, i64* %43, align 8
  br label %60

44:                                               ; preds = %24
  %45 = load i64, i64* @B_TRUE, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 7
  store i64 %45, i64* %46, align 8
  br label %60

47:                                               ; preds = %24
  %48 = load i64, i64* @B_TRUE, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 7
  store i64 %48, i64* %49, align 8
  %50 = load i64, i64* @B_TRUE, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 5
  store i64 %50, i64* %51, align 8
  br label %60

52:                                               ; preds = %24
  br label %53

53:                                               ; preds = %24, %52
  %54 = load i32, i32* @stderr, align 4
  %55 = call i8* @gettext(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %56 = load i32, i32* @optopt, align 4
  %57 = call i32 (i32, i8*, ...) @fprintf(i32 %54, i8* %55, i32 %56)
  %58 = load i64, i64* @B_FALSE, align 8
  %59 = call i32 @usage(i64 %58)
  br label %60

60:                                               ; preds = %53, %47, %44, %41, %37, %34, %29, %26
  br label %19

61:                                               ; preds = %19
  %62 = load i64, i64* @optind, align 8
  %63 = load i32, i32* %4, align 4
  %64 = sext i32 %63 to i64
  %65 = sub nsw i64 %64, %62
  %66 = trunc i64 %65 to i32
  store i32 %66, i32* %4, align 4
  %67 = load i64, i64* @optind, align 8
  %68 = load i8**, i8*** %5, align 8
  %69 = getelementptr inbounds i8*, i8** %68, i64 %67
  store i8** %69, i8*** %5, align 8
  %70 = load i32, i32* %4, align 4
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %61
  %73 = load i32, i32* @stderr, align 4
  %74 = call i8* @gettext(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %75 = call i32 (i32, i8*, ...) @fprintf(i32 %73, i8* %74)
  %76 = load i64, i64* @B_FALSE, align 8
  %77 = call i32 @usage(i64 %76)
  br label %78

78:                                               ; preds = %72, %61
  %79 = load i32, i32* %4, align 4
  %80 = icmp sgt i32 %79, 1
  br i1 %80, label %81, label %87

81:                                               ; preds = %78
  %82 = load i32, i32* @stderr, align 4
  %83 = call i8* @gettext(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %84 = call i32 (i32, i8*, ...) @fprintf(i32 %82, i8* %83)
  %85 = load i64, i64* @B_FALSE, align 8
  %86 = call i32 @usage(i64 %85)
  br label %87

87:                                               ; preds = %81, %78
  %88 = load i8**, i8*** %5, align 8
  %89 = getelementptr inbounds i8*, i8** %88, i64 0
  %90 = load i8*, i8** %89, align 8
  %91 = call i8* @strchr(i8* %90, i8 signext 64)
  store i8* %91, i8** %11, align 8
  %92 = load i8**, i8*** %5, align 8
  %93 = getelementptr inbounds i8*, i8** %92, i64 0
  %94 = load i8*, i8** %93, align 8
  %95 = call i8* @strchr(i8* %94, i8 signext 35)
  store i8* %95, i8** %12, align 8
  %96 = load i8*, i8** %11, align 8
  %97 = icmp ne i8* %96, null
  br i1 %97, label %98, label %212

98:                                               ; preds = %87
  %99 = call i8* (...) @fnvlist_alloc()
  %100 = bitcast i8* %99 to i32*
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 3
  store i32* %100, i32** %101, align 8
  %102 = load i8*, i8** %11, align 8
  store i8 0, i8* %102, align 1
  %103 = load i32, i32* @g_zfs, align 4
  %104 = load i8**, i8*** %5, align 8
  %105 = getelementptr inbounds i8*, i8** %104, i64 0
  %106 = load i8*, i8** %105, align 8
  %107 = load i32, i32* @ZFS_TYPE_FILESYSTEM, align 4
  %108 = load i32, i32* @ZFS_TYPE_VOLUME, align 4
  %109 = or i32 %107, %108
  %110 = call i32* @zfs_open(i32 %103, i8* %106, i32 %109)
  store i32* %110, i32** %10, align 8
  %111 = load i32*, i32** %10, align 8
  %112 = icmp eq i32* %111, null
  br i1 %112, label %113, label %117

113:                                              ; preds = %98
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 3
  %115 = load i32*, i32** %114, align 8
  %116 = call i32 @nvlist_free(i32* %115)
  store i32 1, i32* %3, align 4
  br label %374

117:                                              ; preds = %98
  %118 = load i8*, i8** %11, align 8
  %119 = getelementptr inbounds i8, i8* %118, i64 1
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 1
  store i8* %119, i8** %120, align 8
  %121 = load i32*, i32** %10, align 8
  %122 = call i32 @zfs_handle_dup(i32* %121)
  %123 = call i64 @gather_snapshots(i32 %122, %struct.TYPE_8__* %6)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %129, label %125

125:                                              ; preds = %117
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 2
  %127 = load i64, i64* %126, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %125, %117
  store i32 1, i32* %7, align 4
  br label %360

130:                                              ; preds = %125
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 3
  %132 = load i32*, i32** %131, align 8
  %133 = call i64 @nvlist_empty(i32* %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %139

135:                                              ; preds = %130
  %136 = load i32, i32* @stderr, align 4
  %137 = call i8* @gettext(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.4, i64 0, i64 0))
  %138 = call i32 (i32, i8*, ...) @fprintf(i32 %136, i8* %137)
  store i32 1, i32* %7, align 4
  br label %360

139:                                              ; preds = %130
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 12
  %141 = load i64, i64* %140, align 8
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %170

143:                                              ; preds = %139
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 10
  %145 = load i64, i64* %144, align 8
  %146 = getelementptr inbounds [16 x i8], [16 x i8]* %14, i64 0, i64 0
  %147 = call i32 @zfs_nicebytes(i64 %145, i8* %146, i32 16)
  %148 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 11
  %149 = load i64, i64* %148, align 8
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %156

151:                                              ; preds = %143
  %152 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 10
  %153 = load i64, i64* %152, align 8
  %154 = inttoptr i64 %153 to i8*
  %155 = call i32 @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i8* %154)
  br label %169

156:                                              ; preds = %143
  %157 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 9
  %158 = load i64, i64* %157, align 8
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %164

160:                                              ; preds = %156
  %161 = call i8* @gettext(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0))
  %162 = getelementptr inbounds [16 x i8], [16 x i8]* %14, i64 0, i64 0
  %163 = call i32 @printf(i8* %161, i8* %162)
  br label %168

164:                                              ; preds = %156
  %165 = call i8* @gettext(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0))
  %166 = getelementptr inbounds [16 x i8], [16 x i8]* %14, i64 0, i64 0
  %167 = call i32 @printf(i8* %165, i8* %166)
  br label %168

168:                                              ; preds = %164, %160
  br label %169

169:                                              ; preds = %168, %151
  br label %170

170:                                              ; preds = %169, %139
  %171 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 9
  %172 = load i64, i64* %171, align 8
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %207, label %174

174:                                              ; preds = %170
  %175 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 5
  %176 = load i64, i64* %175, align 8
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %196

178:                                              ; preds = %174
  %179 = call i8* (...) @fnvlist_alloc()
  %180 = bitcast i8* %179 to i32*
  %181 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 4
  store i32* %180, i32** %181, align 8
  %182 = call i32 @destroy_clones(%struct.TYPE_8__* %6)
  store i32 %182, i32* %8, align 4
  %183 = load i32, i32* %8, align 4
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %185, label %191

185:                                              ; preds = %178
  %186 = load i32, i32* @g_zfs, align 4
  %187 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 4
  %188 = load i32*, i32** %187, align 8
  %189 = load i64, i64* @B_FALSE, align 8
  %190 = call i32 @zfs_destroy_snaps_nvl(i32 %186, i32* %188, i64 %189)
  store i32 %190, i32* %8, align 4
  br label %191

191:                                              ; preds = %185, %178
  %192 = load i32, i32* %8, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %195

194:                                              ; preds = %191
  store i32 1, i32* %7, align 4
  br label %360

195:                                              ; preds = %191
  br label %196

196:                                              ; preds = %195, %174
  %197 = load i32, i32* %8, align 4
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %199, label %206

199:                                              ; preds = %196
  %200 = load i32, i32* @g_zfs, align 4
  %201 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 3
  %202 = load i32*, i32** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  %204 = load i64, i64* %203, align 8
  %205 = call i32 @zfs_destroy_snaps_nvl(i32 %200, i32* %202, i64 %204)
  store i32 %205, i32* %8, align 4
  br label %206

206:                                              ; preds = %199, %196
  br label %207

207:                                              ; preds = %206, %170
  %208 = load i32, i32* %8, align 4
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %211

210:                                              ; preds = %207
  store i32 1, i32* %7, align 4
  br label %211

211:                                              ; preds = %210, %207
  br label %359

212:                                              ; preds = %87
  %213 = load i8*, i8** %12, align 8
  %214 = icmp ne i8* %213, null
  br i1 %214, label %215, label %269

215:                                              ; preds = %212
  %216 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 9
  %217 = load i64, i64* %216, align 8
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %219, label %222

219:                                              ; preds = %215
  %220 = load i32, i32* @stderr, align 4
  %221 = call i32 (i32, i8*, ...) @fprintf(i32 %220, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.8, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %374

222:                                              ; preds = %215
  %223 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  %224 = load i64, i64* %223, align 8
  %225 = icmp ne i64 %224, 0
  br i1 %225, label %226, label %229

226:                                              ; preds = %222
  %227 = load i32, i32* @stderr, align 4
  %228 = call i32 (i32, i8*, ...) @fprintf(i32 %227, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.9, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %374

229:                                              ; preds = %222
  %230 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 7
  %231 = load i64, i64* %230, align 8
  %232 = icmp ne i64 %231, 0
  br i1 %232, label %233, label %236

233:                                              ; preds = %229
  %234 = load i32, i32* @stderr, align 4
  %235 = call i32 (i32, i8*, ...) @fprintf(i32 %234, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.10, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %374

236:                                              ; preds = %229
  %237 = load i8**, i8*** %5, align 8
  %238 = getelementptr inbounds i8*, i8** %237, i64 0
  %239 = load i8*, i8** %238, align 8
  %240 = call i32 @zfs_bookmark_exists(i8* %239)
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %249, label %242

242:                                              ; preds = %236
  %243 = load i32, i32* @stderr, align 4
  %244 = call i8* @gettext(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.11, i64 0, i64 0))
  %245 = load i8**, i8*** %5, align 8
  %246 = getelementptr inbounds i8*, i8** %245, i64 0
  %247 = load i8*, i8** %246, align 8
  %248 = call i32 (i32, i8*, ...) @fprintf(i32 %243, i8* %244, i8* %247)
  store i32 1, i32* %3, align 4
  br label %374

249:                                              ; preds = %236
  %250 = call i8* (...) @fnvlist_alloc()
  %251 = bitcast i8* %250 to i32*
  store i32* %251, i32** %16, align 8
  %252 = load i32*, i32** %16, align 8
  %253 = load i8**, i8*** %5, align 8
  %254 = getelementptr inbounds i8*, i8** %253, i64 0
  %255 = load i8*, i8** %254, align 8
  %256 = call i32 @fnvlist_add_boolean(i32* %252, i8* %255)
  %257 = load i32*, i32** %16, align 8
  %258 = call i32 @lzc_destroy_bookmarks(i32* %257, i32* null)
  store i32 %258, i32* %15, align 4
  %259 = load i32, i32* %15, align 4
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %261, label %265

261:                                              ; preds = %249
  %262 = load i32, i32* @g_zfs, align 4
  %263 = load i32, i32* %15, align 4
  %264 = call i32 @zfs_standard_error(i32 %262, i32 %263, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.12, i64 0, i64 0))
  br label %265

265:                                              ; preds = %261, %249
  %266 = load i32*, i32** %16, align 8
  %267 = call i32 @nvlist_free(i32* %266)
  %268 = load i32, i32* %15, align 4
  store i32 %268, i32* %3, align 4
  br label %374

269:                                              ; preds = %212
  %270 = load i32, i32* @g_zfs, align 4
  %271 = load i8**, i8*** %5, align 8
  %272 = getelementptr inbounds i8*, i8** %271, i64 0
  %273 = load i8*, i8** %272, align 8
  %274 = load i32, i32* %13, align 4
  %275 = call i32* @zfs_open(i32 %270, i8* %273, i32 %274)
  store i32* %275, i32** %10, align 8
  %276 = icmp eq i32* %275, null
  br i1 %276, label %277, label %278

277:                                              ; preds = %269
  store i32 1, i32* %3, align 4
  br label %374

278:                                              ; preds = %269
  %279 = load i32*, i32** %10, align 8
  %280 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 8
  store i32* %279, i32** %280, align 8
  %281 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 7
  %282 = load i64, i64* %281, align 8
  %283 = icmp ne i64 %282, 0
  br i1 %283, label %310, label %284

284:                                              ; preds = %278
  %285 = load i32*, i32** %10, align 8
  %286 = call i8* @zfs_get_name(i32* %285)
  %287 = call i8* @strchr(i8* %286, i8 signext 47)
  %288 = icmp eq i8* %287, null
  br i1 %288, label %289, label %310

289:                                              ; preds = %284
  %290 = load i32*, i32** %10, align 8
  %291 = call i32 @zfs_get_type(i32* %290)
  %292 = load i32, i32* @ZFS_TYPE_FILESYSTEM, align 4
  %293 = icmp eq i32 %291, %292
  br i1 %293, label %294, label %310

294:                                              ; preds = %289
  %295 = load i32, i32* @stderr, align 4
  %296 = call i8* @gettext(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.13, i64 0, i64 0))
  %297 = load i32*, i32** %10, align 8
  %298 = call i8* @zfs_get_name(i32* %297)
  %299 = call i32 (i32, i8*, ...) @fprintf(i32 %295, i8* %296, i8* %298)
  %300 = load i32, i32* @stderr, align 4
  %301 = call i8* @gettext(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.14, i64 0, i64 0))
  %302 = load i32*, i32** %10, align 8
  %303 = call i8* @zfs_get_name(i32* %302)
  %304 = call i32 (i32, i8*, ...) @fprintf(i32 %300, i8* %301, i8* %303)
  %305 = load i32, i32* @stderr, align 4
  %306 = call i8* @gettext(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.15, i64 0, i64 0))
  %307 = load i32*, i32** %10, align 8
  %308 = call i8* @zfs_get_name(i32* %307)
  %309 = call i32 (i32, i8*, ...) @fprintf(i32 %305, i8* %306, i8* %308)
  store i32 1, i32* %7, align 4
  br label %360

310:                                              ; preds = %289, %284, %278
  %311 = load i64, i64* @B_TRUE, align 8
  %312 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 6
  store i64 %311, i64* %312, align 8
  %313 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 5
  %314 = load i64, i64* %313, align 8
  %315 = icmp ne i64 %314, 0
  br i1 %315, label %322, label %316

316:                                              ; preds = %310
  %317 = load i32*, i32** %10, align 8
  %318 = load i64, i64* @B_TRUE, align 8
  %319 = call i64 @zfs_iter_dependents(i32* %317, i64 %318, i32 (i32*, %struct.TYPE_8__*)* @destroy_check_dependent, %struct.TYPE_8__* %6)
  %320 = icmp ne i64 %319, 0
  br i1 %320, label %321, label %322

321:                                              ; preds = %316
  store i32 1, i32* %7, align 4
  br label %360

322:                                              ; preds = %316, %310
  %323 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 2
  %324 = load i64, i64* %323, align 8
  %325 = icmp ne i64 %324, 0
  br i1 %325, label %326, label %327

326:                                              ; preds = %322
  store i32 1, i32* %7, align 4
  br label %360

327:                                              ; preds = %322
  %328 = call i8* (...) @fnvlist_alloc()
  %329 = bitcast i8* %328 to i32*
  %330 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 4
  store i32* %329, i32** %330, align 8
  %331 = load i32*, i32** %10, align 8
  %332 = load i64, i64* @B_FALSE, align 8
  %333 = call i64 @zfs_iter_dependents(i32* %331, i64 %332, i32 (i32*, %struct.TYPE_8__*)* @destroy_callback, %struct.TYPE_8__* %6)
  %334 = icmp ne i64 %333, 0
  br i1 %334, label %335, label %336

335:                                              ; preds = %327
  store i32 1, i32* %7, align 4
  br label %360

336:                                              ; preds = %327
  %337 = load i32*, i32** %10, align 8
  %338 = call i32 @destroy_callback(i32* %337, %struct.TYPE_8__* %6)
  store i32 %338, i32* %8, align 4
  store i32* null, i32** %10, align 8
  %339 = load i32, i32* %8, align 4
  %340 = icmp eq i32 %339, 0
  br i1 %340, label %341, label %348

341:                                              ; preds = %336
  %342 = load i32, i32* @g_zfs, align 4
  %343 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 4
  %344 = load i32*, i32** %343, align 8
  %345 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  %346 = load i64, i64* %345, align 8
  %347 = call i32 @zfs_destroy_snaps_nvl(i32 %342, i32* %344, i64 %346)
  store i32 %347, i32* %8, align 4
  br label %348

348:                                              ; preds = %341, %336
  %349 = load i32, i32* %8, align 4
  %350 = icmp ne i32 %349, 0
  br i1 %350, label %356, label %351

351:                                              ; preds = %348
  %352 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 2
  %353 = load i64, i64* %352, align 8
  %354 = load i64, i64* @B_TRUE, align 8
  %355 = icmp eq i64 %353, %354
  br i1 %355, label %356, label %357

356:                                              ; preds = %351, %348
  store i32 1, i32* %7, align 4
  br label %357

357:                                              ; preds = %356, %351
  br label %358

358:                                              ; preds = %357
  br label %359

359:                                              ; preds = %358, %211
  br label %360

360:                                              ; preds = %359, %335, %326, %321, %294, %194, %135, %129
  %361 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 4
  %362 = load i32*, i32** %361, align 8
  %363 = call i32 @fnvlist_free(i32* %362)
  %364 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 3
  %365 = load i32*, i32** %364, align 8
  %366 = call i32 @fnvlist_free(i32* %365)
  %367 = load i32*, i32** %10, align 8
  %368 = icmp ne i32* %367, null
  br i1 %368, label %369, label %372

369:                                              ; preds = %360
  %370 = load i32*, i32** %10, align 8
  %371 = call i32 @zfs_close(i32* %370)
  br label %372

372:                                              ; preds = %369, %360
  %373 = load i32, i32* %7, align 4
  store i32 %373, i32* %3, align 4
  br label %374

374:                                              ; preds = %372, %277, %265, %242, %233, %226, %219, %113
  %375 = load i32, i32* %3, align 4
  ret i32 %375
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #2

declare dso_local i32 @fprintf(i32, i8*, ...) #2

declare dso_local i8* @gettext(i8*) #2

declare dso_local i32 @usage(i64) #2

declare dso_local i8* @strchr(i8*, i8 signext) #2

declare dso_local i8* @fnvlist_alloc(...) #2

declare dso_local i32* @zfs_open(i32, i8*, i32) #2

declare dso_local i32 @nvlist_free(i32*) #2

declare dso_local i64 @gather_snapshots(i32, %struct.TYPE_8__*) #2

declare dso_local i32 @zfs_handle_dup(i32*) #2

declare dso_local i64 @nvlist_empty(i32*) #2

declare dso_local i32 @zfs_nicebytes(i64, i8*, i32) #2

declare dso_local i32 @printf(i8*, i8*) #2

declare dso_local i32 @destroy_clones(%struct.TYPE_8__*) #2

declare dso_local i32 @zfs_destroy_snaps_nvl(i32, i32*, i64) #2

declare dso_local i32 @zfs_bookmark_exists(i8*) #2

declare dso_local i32 @fnvlist_add_boolean(i32*, i8*) #2

declare dso_local i32 @lzc_destroy_bookmarks(i32*, i32*) #2

declare dso_local i32 @zfs_standard_error(i32, i32, i8*) #2

declare dso_local i8* @zfs_get_name(i32*) #2

declare dso_local i32 @zfs_get_type(i32*) #2

declare dso_local i64 @zfs_iter_dependents(i32*, i64, i32 (i32*, %struct.TYPE_8__*)*, %struct.TYPE_8__*) #2

declare dso_local i32 @destroy_check_dependent(i32*, %struct.TYPE_8__*) #2

declare dso_local i32 @destroy_callback(i32*, %struct.TYPE_8__*) #2

declare dso_local i32 @fnvlist_free(i32*) #2

declare dso_local i32 @zfs_close(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
