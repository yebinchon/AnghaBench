; ModuleID = '/home/carl/AnghaBench/zfs/cmd/zpool/extr_zpool_main.c_print_scan_status.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/zpool/extr_zpool_main.c_print_scan_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i64, i64, i32, i64, i32, i32, i32, i32, i32, i32, i64, i64 }

@.str = private unnamed_addr constant [9 x i8] c"  scan: \00", align 1
@POOL_SCAN_NONE = common dso_local global i64 0, align 8
@POOL_SCAN_FUNCS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"none requested\0A\00", align 1
@POOL_SCAN_SCRUB = common dso_local global i64 0, align 8
@POOL_SCAN_RESILVER = common dso_local global i64 0, align 8
@DSS_FINISHED = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [75 x i8] c"scrub repaired %s in %llu days %02llu:%02llu:%02llu with %llu errors on %s\00", align 1
@.str.3 = private unnamed_addr constant [71 x i8] c"resilvered %s in %llu days %02llu:%02llu:%02llu with %llu errors on %s\00", align 1
@DSS_CANCELED = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [21 x i8] c"scrub canceled on %s\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"resilver canceled on %s\00", align 1
@DSS_SCANNING = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [27 x i8] c"scrub in progress since %s\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"scrub paused since %s\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"\09scrub started on %s\00", align 1
@.str.9 = private unnamed_addr constant [30 x i8] c"resilver in progress since %s\00", align 1
@UINT64_MAX = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [50 x i8] c"\09%s scanned at %s/s, %s issued at %s/s, %s total\0A\00", align 1
@.str.11 = private unnamed_addr constant [34 x i8] c"\09%s scanned, %s issued, %s total\0A\00", align 1
@.str.12 = private unnamed_addr constant [28 x i8] c"\09%s resilvered, %.2f%% done\00", align 1
@.str.13 = private unnamed_addr constant [26 x i8] c"\09%s repaired, %.2f%% done\00", align 1
@.str.14 = private unnamed_addr constant [40 x i8] c", %llu days %02llu:%02llu:%02llu to go\0A\00", align 1
@.str.15 = private unnamed_addr constant [32 x i8] c", no estimated completion time\0A\00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*)* @print_scan_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_scan_status(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca double, align 8
  %20 = alloca [7 x i8], align 1
  %21 = alloca [7 x i8], align 1
  %22 = alloca [7 x i8], align 1
  %23 = alloca [7 x i8], align 1
  %24 = alloca [7 x i8], align 1
  %25 = alloca [7 x i8], align 1
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %26 = call i8* @gettext(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %27 = call i32 (i8*, ...) @printf(i8* %26)
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %29 = icmp eq %struct.TYPE_3__* %28, null
  br i1 %29, label %42, label %30

30:                                               ; preds = %1
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @POOL_SCAN_NONE, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %42, label %36

36:                                               ; preds = %30
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @POOL_SCAN_FUNCS, align 8
  %41 = icmp sge i64 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %36, %30, %1
  %43 = call i8* @gettext(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %44 = call i32 (i8*, ...) @printf(i8* %43)
  br label %360

45:                                               ; preds = %36
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  store i64 %48, i64* %3, align 8
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  store i64 %51, i64* %4, align 8
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 3
  %54 = load i64, i64* %53, align 8
  store i64 %54, i64* %5, align 8
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 8
  %58 = getelementptr inbounds [7 x i8], [7 x i8]* %20, i64 0, i64 0
  %59 = call i32 @zfs_nicebytes(i32 %57, i8* %58, i32 7)
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @POOL_SCAN_SCRUB, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %71, label %65

65:                                               ; preds = %45
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @POOL_SCAN_RESILVER, align 8
  %70 = icmp eq i64 %68, %69
  br label %71

71:                                               ; preds = %65, %45
  %72 = phi i1 [ true, %45 ], [ %70, %65 ]
  %73 = zext i1 %72 to i32
  %74 = call i32 @assert(i32 %73)
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 5
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @DSS_FINISHED, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %137

80:                                               ; preds = %71
  %81 = load i64, i64* %4, align 8
  %82 = load i64, i64* %3, align 8
  %83 = sub nsw i64 %81, %82
  %84 = trunc i64 %83 to i32
  store i32 %84, i32* %6, align 4
  %85 = load i32, i32* %6, align 4
  %86 = sdiv i32 %85, 60
  %87 = sdiv i32 %86, 60
  %88 = sdiv i32 %87, 24
  store i32 %88, i32* %11, align 4
  %89 = load i32, i32* %6, align 4
  %90 = sdiv i32 %89, 60
  %91 = sdiv i32 %90, 60
  %92 = srem i32 %91, 24
  store i32 %92, i32* %10, align 4
  %93 = load i32, i32* %6, align 4
  %94 = sdiv i32 %93, 60
  %95 = srem i32 %94, 60
  store i32 %95, i32* %9, align 4
  %96 = load i32, i32* %6, align 4
  %97 = srem i32 %96, 60
  store i32 %97, i32* %8, align 4
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @POOL_SCAN_SCRUB, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %103, label %116

103:                                              ; preds = %80
  %104 = call i8* @gettext(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.2, i64 0, i64 0))
  %105 = getelementptr inbounds [7 x i8], [7 x i8]* %20, i64 0, i64 0
  %106 = load i32, i32* %11, align 4
  %107 = load i32, i32* %10, align 4
  %108 = load i32, i32* %9, align 4
  %109 = load i32, i32* %8, align 4
  %110 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 13
  %112 = load i64, i64* %111, align 8
  %113 = trunc i64 %112 to i32
  %114 = call i8* @ctime(i64* %4)
  %115 = call i32 (i8*, ...) @printf(i8* %104, i8* %105, i32 %106, i32 %107, i32 %108, i32 %109, i32 %113, i8* %114)
  br label %136

116:                                              ; preds = %80
  %117 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* @POOL_SCAN_RESILVER, align 8
  %121 = icmp eq i64 %119, %120
  br i1 %121, label %122, label %135

122:                                              ; preds = %116
  %123 = call i8* @gettext(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.3, i64 0, i64 0))
  %124 = getelementptr inbounds [7 x i8], [7 x i8]* %20, i64 0, i64 0
  %125 = load i32, i32* %11, align 4
  %126 = load i32, i32* %10, align 4
  %127 = load i32, i32* %9, align 4
  %128 = load i32, i32* %8, align 4
  %129 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %129, i32 0, i32 13
  %131 = load i64, i64* %130, align 8
  %132 = trunc i64 %131 to i32
  %133 = call i8* @ctime(i64* %4)
  %134 = call i32 (i8*, ...) @printf(i8* %123, i8* %124, i32 %125, i32 %126, i32 %127, i32 %128, i32 %132, i8* %133)
  br label %135

135:                                              ; preds = %122, %116
  br label %136

136:                                              ; preds = %135, %103
  br label %360

137:                                              ; preds = %71
  %138 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %139 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %138, i32 0, i32 5
  %140 = load i64, i64* %139, align 8
  %141 = load i64, i64* @DSS_CANCELED, align 8
  %142 = icmp eq i64 %140, %141
  br i1 %142, label %143, label %165

143:                                              ; preds = %137
  %144 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %145 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = load i64, i64* @POOL_SCAN_SCRUB, align 8
  %148 = icmp eq i64 %146, %147
  br i1 %148, label %149, label %153

149:                                              ; preds = %143
  %150 = call i8* @gettext(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  %151 = call i8* @ctime(i64* %4)
  %152 = call i32 (i8*, ...) @printf(i8* %150, i8* %151)
  br label %164

153:                                              ; preds = %143
  %154 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %155 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = load i64, i64* @POOL_SCAN_RESILVER, align 8
  %158 = icmp eq i64 %156, %157
  br i1 %158, label %159, label %163

159:                                              ; preds = %153
  %160 = call i8* @gettext(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0))
  %161 = call i8* @ctime(i64* %4)
  %162 = call i32 (i8*, ...) @printf(i8* %160, i8* %161)
  br label %163

163:                                              ; preds = %159, %153
  br label %164

164:                                              ; preds = %163, %149
  br label %360

165:                                              ; preds = %137
  br label %166

166:                                              ; preds = %165
  %167 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %168 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %167, i32 0, i32 5
  %169 = load i64, i64* %168, align 8
  %170 = load i64, i64* @DSS_SCANNING, align 8
  %171 = icmp eq i64 %169, %170
  %172 = zext i1 %171 to i32
  %173 = call i32 @assert(i32 %172)
  %174 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %175 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %174, i32 0, i32 0
  %176 = load i64, i64* %175, align 8
  %177 = load i64, i64* @POOL_SCAN_SCRUB, align 8
  %178 = icmp eq i64 %176, %177
  br i1 %178, label %179, label %194

179:                                              ; preds = %166
  %180 = load i64, i64* %5, align 8
  %181 = icmp eq i64 %180, 0
  br i1 %181, label %182, label %186

182:                                              ; preds = %179
  %183 = call i8* @gettext(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0))
  %184 = call i8* @ctime(i64* %3)
  %185 = call i32 (i8*, ...) @printf(i8* %183, i8* %184)
  br label %193

186:                                              ; preds = %179
  %187 = call i8* @gettext(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0))
  %188 = call i8* @ctime(i64* %5)
  %189 = call i32 (i8*, ...) @printf(i8* %187, i8* %188)
  %190 = call i8* @gettext(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0))
  %191 = call i8* @ctime(i64* %3)
  %192 = call i32 (i8*, ...) @printf(i8* %190, i8* %191)
  br label %193

193:                                              ; preds = %186, %182
  br label %205

194:                                              ; preds = %166
  %195 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %196 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %195, i32 0, i32 0
  %197 = load i64, i64* %196, align 8
  %198 = load i64, i64* @POOL_SCAN_RESILVER, align 8
  %199 = icmp eq i64 %197, %198
  br i1 %199, label %200, label %204

200:                                              ; preds = %194
  %201 = call i8* @gettext(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i64 0, i64 0))
  %202 = call i8* @ctime(i64* %3)
  %203 = call i32 (i8*, ...) @printf(i8* %201, i8* %202)
  br label %204

204:                                              ; preds = %200, %194
  br label %205

205:                                              ; preds = %204, %193
  %206 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %207 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %206, i32 0, i32 6
  %208 = load i32, i32* %207, align 8
  store i32 %208, i32* %13, align 4
  %209 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %210 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %209, i32 0, i32 7
  %211 = load i32, i32* %210, align 4
  store i32 %211, i32* %12, align 4
  %212 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %213 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %212, i32 0, i32 8
  %214 = load i32, i32* %213, align 8
  store i32 %214, i32* %15, align 4
  %215 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %216 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %215, i32 0, i32 9
  %217 = load i32, i32* %216, align 4
  store i32 %217, i32* %14, align 4
  %218 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %219 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %218, i32 0, i32 10
  %220 = load i32, i32* %219, align 8
  store i32 %220, i32* %16, align 4
  %221 = load i32, i32* %15, align 4
  %222 = sitofp i32 %221 to double
  %223 = load i32, i32* %16, align 4
  %224 = sitofp i32 %223 to double
  %225 = fdiv double %222, %224
  store double %225, double* %19, align 8
  %226 = call i32 @time(i32* null)
  %227 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %228 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %227, i32 0, i32 11
  %229 = load i32, i32* %228, align 4
  %230 = sub nsw i32 %226, %229
  store i32 %230, i32* %7, align 4
  %231 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %232 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %231, i32 0, i32 12
  %233 = load i64, i64* %232, align 8
  %234 = load i32, i32* %7, align 4
  %235 = sext i32 %234 to i64
  %236 = sub nsw i64 %235, %233
  %237 = trunc i64 %236 to i32
  store i32 %237, i32* %7, align 4
  %238 = load i32, i32* %7, align 4
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %242

240:                                              ; preds = %205
  %241 = load i32, i32* %7, align 4
  br label %243

242:                                              ; preds = %205
  br label %243

243:                                              ; preds = %242, %240
  %244 = phi i32 [ %241, %240 ], [ 1, %242 ]
  store i32 %244, i32* %7, align 4
  %245 = load i32, i32* %12, align 4
  %246 = load i32, i32* %7, align 4
  %247 = sdiv i32 %245, %246
  store i32 %247, i32* %17, align 4
  %248 = load i32, i32* %14, align 4
  %249 = load i32, i32* %7, align 4
  %250 = sdiv i32 %248, %249
  store i32 %250, i32* %18, align 4
  %251 = load i32, i32* %18, align 4
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %253, label %263

253:                                              ; preds = %243
  %254 = load i32, i32* %16, align 4
  %255 = load i32, i32* %15, align 4
  %256 = icmp sge i32 %254, %255
  br i1 %256, label %257, label %263

257:                                              ; preds = %253
  %258 = load i32, i32* %16, align 4
  %259 = load i32, i32* %15, align 4
  %260 = sub nsw i32 %258, %259
  %261 = load i32, i32* %18, align 4
  %262 = sdiv i32 %260, %261
  br label %265

263:                                              ; preds = %253, %243
  %264 = load i32, i32* @UINT64_MAX, align 4
  br label %265

265:                                              ; preds = %263, %257
  %266 = phi i32 [ %262, %257 ], [ %264, %263 ]
  store i32 %266, i32* %6, align 4
  %267 = load i32, i32* %6, align 4
  %268 = sdiv i32 %267, 60
  %269 = sdiv i32 %268, 60
  %270 = sdiv i32 %269, 24
  store i32 %270, i32* %11, align 4
  %271 = load i32, i32* %6, align 4
  %272 = sdiv i32 %271, 60
  %273 = sdiv i32 %272, 60
  %274 = srem i32 %273, 24
  store i32 %274, i32* %10, align 4
  %275 = load i32, i32* %6, align 4
  %276 = sdiv i32 %275, 60
  %277 = srem i32 %276, 60
  store i32 %277, i32* %9, align 4
  %278 = load i32, i32* %6, align 4
  %279 = srem i32 %278, 60
  store i32 %279, i32* %8, align 4
  %280 = load i32, i32* %13, align 4
  %281 = getelementptr inbounds [7 x i8], [7 x i8]* %21, i64 0, i64 0
  %282 = call i32 @zfs_nicebytes(i32 %280, i8* %281, i32 7)
  %283 = load i32, i32* %15, align 4
  %284 = getelementptr inbounds [7 x i8], [7 x i8]* %22, i64 0, i64 0
  %285 = call i32 @zfs_nicebytes(i32 %283, i8* %284, i32 7)
  %286 = load i32, i32* %16, align 4
  %287 = getelementptr inbounds [7 x i8], [7 x i8]* %23, i64 0, i64 0
  %288 = call i32 @zfs_nicebytes(i32 %286, i8* %287, i32 7)
  %289 = load i32, i32* %17, align 4
  %290 = getelementptr inbounds [7 x i8], [7 x i8]* %24, i64 0, i64 0
  %291 = call i32 @zfs_nicebytes(i32 %289, i8* %290, i32 7)
  %292 = load i32, i32* %18, align 4
  %293 = getelementptr inbounds [7 x i8], [7 x i8]* %25, i64 0, i64 0
  %294 = call i32 @zfs_nicebytes(i32 %292, i8* %293, i32 7)
  %295 = load i64, i64* %5, align 8
  %296 = icmp eq i64 %295, 0
  br i1 %296, label %297, label %305

297:                                              ; preds = %265
  %298 = call i8* @gettext(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.10, i64 0, i64 0))
  %299 = getelementptr inbounds [7 x i8], [7 x i8]* %21, i64 0, i64 0
  %300 = getelementptr inbounds [7 x i8], [7 x i8]* %24, i64 0, i64 0
  %301 = getelementptr inbounds [7 x i8], [7 x i8]* %22, i64 0, i64 0
  %302 = getelementptr inbounds [7 x i8], [7 x i8]* %25, i64 0, i64 0
  %303 = getelementptr inbounds [7 x i8], [7 x i8]* %23, i64 0, i64 0
  %304 = call i32 (i8*, ...) @printf(i8* %298, i8* %299, i8* %300, i8* %301, i8* %302, i8* %303)
  br label %311

305:                                              ; preds = %265
  %306 = call i8* @gettext(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.11, i64 0, i64 0))
  %307 = getelementptr inbounds [7 x i8], [7 x i8]* %21, i64 0, i64 0
  %308 = getelementptr inbounds [7 x i8], [7 x i8]* %22, i64 0, i64 0
  %309 = getelementptr inbounds [7 x i8], [7 x i8]* %23, i64 0, i64 0
  %310 = call i32 (i8*, ...) @printf(i8* %306, i8* %307, i8* %308, i8* %309)
  br label %311

311:                                              ; preds = %305, %297
  %312 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %313 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %312, i32 0, i32 0
  %314 = load i64, i64* %313, align 8
  %315 = load i64, i64* @POOL_SCAN_RESILVER, align 8
  %316 = icmp eq i64 %314, %315
  br i1 %316, label %317, label %323

317:                                              ; preds = %311
  %318 = call i8* @gettext(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.12, i64 0, i64 0))
  %319 = getelementptr inbounds [7 x i8], [7 x i8]* %20, i64 0, i64 0
  %320 = load double, double* %19, align 8
  %321 = fmul double 1.000000e+02, %320
  %322 = call i32 (i8*, ...) @printf(i8* %318, i8* %319, double %321)
  br label %336

323:                                              ; preds = %311
  %324 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %325 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %324, i32 0, i32 0
  %326 = load i64, i64* %325, align 8
  %327 = load i64, i64* @POOL_SCAN_SCRUB, align 8
  %328 = icmp eq i64 %326, %327
  br i1 %328, label %329, label %335

329:                                              ; preds = %323
  %330 = call i8* @gettext(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i64 0, i64 0))
  %331 = getelementptr inbounds [7 x i8], [7 x i8]* %20, i64 0, i64 0
  %332 = load double, double* %19, align 8
  %333 = fmul double 1.000000e+02, %332
  %334 = call i32 (i8*, ...) @printf(i8* %330, i8* %331, double %333)
  br label %335

335:                                              ; preds = %329, %323
  br label %336

336:                                              ; preds = %335, %317
  %337 = load i64, i64* %5, align 8
  %338 = icmp eq i64 %337, 0
  br i1 %338, label %339, label %357

339:                                              ; preds = %336
  %340 = load i32, i32* %6, align 4
  %341 = load i32, i32* @UINT64_MAX, align 4
  %342 = icmp ne i32 %340, %341
  br i1 %342, label %343, label %353

343:                                              ; preds = %339
  %344 = load i32, i32* %18, align 4
  %345 = icmp sge i32 %344, 10485760
  br i1 %345, label %346, label %353

346:                                              ; preds = %343
  %347 = call i8* @gettext(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.14, i64 0, i64 0))
  %348 = load i32, i32* %11, align 4
  %349 = load i32, i32* %10, align 4
  %350 = load i32, i32* %9, align 4
  %351 = load i32, i32* %8, align 4
  %352 = call i32 (i8*, ...) @printf(i8* %347, i32 %348, i32 %349, i32 %350, i32 %351)
  br label %356

353:                                              ; preds = %343, %339
  %354 = call i8* @gettext(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.15, i64 0, i64 0))
  %355 = call i32 (i8*, ...) @printf(i8* %354)
  br label %356

356:                                              ; preds = %353, %346
  br label %360

357:                                              ; preds = %336
  %358 = call i8* @gettext(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0))
  %359 = call i32 (i8*, ...) @printf(i8* %358)
  br label %360

360:                                              ; preds = %42, %136, %164, %357, %356
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i8* @gettext(i8*) #1

declare dso_local i32 @zfs_nicebytes(i32, i8*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i8* @ctime(i64*) #1

declare dso_local i32 @time(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
