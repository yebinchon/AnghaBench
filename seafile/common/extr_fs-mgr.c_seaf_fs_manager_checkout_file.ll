; ModuleID = '/home/carl/AnghaBench/seafile/common/extr_fs-mgr.c_seaf_fs_manager_checkout_file.c'
source_filename = "/home/carl/AnghaBench/seafile/common/extr_fs-mgr.c_seaf_fs_manager_checkout_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i8** }

@FALSE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"File %s does not exist.\0A\00", align 1
@SEAF_TMP_EXT = common dso_local global i32 0, align 4
@O_WRONLY = common dso_local global i32 0, align 4
@O_TRUNC = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@O_BINARY = common dso_local global i32 0, align 4
@S_IFMT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"Failed to open file %s for checkout: %s.\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@SEAF_BACKUP_EXT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [74 x i8] c"Failed to rename %s to %s: %s. Checkout server version as conflict file.\0A\00", align 1
@TRUE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [63 x i8] c"Failed to rename %s to %s: %s. Failed to restore backup file.\0A\00", align 1
@seaf = common dso_local global %struct.TYPE_6__* null, align 8
@.str.4 = private unnamed_addr constant [77 x i8] c"Failed to rename %s to %s: %s. Failed to move backup file to conflict file.\0A\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"Failed to set mtime for %s.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @seaf_fs_manager_checkout_file(i32* %0, i8* %1, i32 %2, i8* %3, i8* %4, i32 %5, i64 %6, i32* %7, i8* %8, i8* %9, i64 %10, i64* %11, i8* %12) #0 {
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64*, align 8
  %27 = alloca i8*, align 8
  %28 = alloca %struct.TYPE_5__*, align 8
  %29 = alloca i8*, align 8
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i8*, align 8
  %33 = alloca i8*, align 8
  %34 = alloca i8*, align 8
  %35 = alloca i32, align 4
  %36 = alloca i8*, align 8
  %37 = alloca i32*, align 8
  store i32* %0, i32** %15, align 8
  store i8* %1, i8** %16, align 8
  store i32 %2, i32* %17, align 4
  store i8* %3, i8** %18, align 8
  store i8* %4, i8** %19, align 8
  store i32 %5, i32* %20, align 4
  store i64 %6, i64* %21, align 8
  store i32* %7, i32** %22, align 8
  store i8* %8, i8** %23, align 8
  store i8* %9, i8** %24, align 8
  store i64 %10, i64* %25, align 8
  store i64* %11, i64** %26, align 8
  store i8* %12, i8** %27, align 8
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %28, align 8
  store i32 -1, i32* %30, align 4
  store i8* null, i8** %32, align 8
  store i8* null, i8** %33, align 8
  store i8* null, i8** %34, align 8
  %38 = load i64, i64* @FALSE, align 8
  %39 = load i64*, i64** %26, align 8
  store i64 %38, i64* %39, align 8
  %40 = load i32*, i32** %15, align 8
  %41 = load i8*, i8** %16, align 8
  %42 = load i32, i32* %17, align 4
  %43 = load i8*, i8** %18, align 8
  %44 = call %struct.TYPE_5__* @seaf_fs_manager_get_seafile(i32* %40, i8* %41, i32 %42, i8* %43)
  store %struct.TYPE_5__* %44, %struct.TYPE_5__** %28, align 8
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %46 = icmp ne %struct.TYPE_5__* %45, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %13
  %48 = load i8*, i8** %18, align 8
  %49 = call i32 (i8*, i8*, ...) @seaf_warning(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* %48)
  store i32 -1, i32* %14, align 4
  br label %267

50:                                               ; preds = %13
  %51 = load i8*, i8** %19, align 8
  %52 = load i32, i32* @SEAF_TMP_EXT, align 4
  %53 = call i8* @g_strconcat(i8* %51, i32 %52, i32* null)
  store i8* %53, i8** %32, align 8
  %54 = load i32, i32* %20, align 4
  %55 = and i32 %54, 64
  %56 = icmp ne i32 %55, 0
  %57 = zext i1 %56 to i64
  %58 = select i1 %56, i32 511, i32 438
  store i32 %58, i32* %35, align 4
  %59 = load i8*, i8** %32, align 8
  %60 = load i32, i32* @O_WRONLY, align 4
  %61 = load i32, i32* @O_TRUNC, align 4
  %62 = or i32 %60, %61
  %63 = load i32, i32* @O_CREAT, align 4
  %64 = or i32 %62, %63
  %65 = load i32, i32* @O_BINARY, align 4
  %66 = or i32 %64, %65
  %67 = load i32, i32* %35, align 4
  %68 = load i32, i32* @S_IFMT, align 4
  %69 = xor i32 %68, -1
  %70 = and i32 %67, %69
  %71 = call i32 @seaf_util_create(i8* %59, i32 %66, i32 %70)
  store i32 %71, i32* %30, align 4
  %72 = load i32, i32* %30, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %50
  %75 = load i8*, i8** %32, align 8
  %76 = load i32, i32* @errno, align 4
  %77 = call i32 @strerror(i32 %76)
  %78 = call i32 (i8*, i8*, ...) @seaf_warning(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i8* %75, i32 %77)
  br label %250

79:                                               ; preds = %50
  store i32 0, i32* %31, align 4
  br label %80

80:                                               ; preds = %103, %79
  %81 = load i32, i32* %31, align 4
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = icmp slt i32 %81, %84
  br i1 %85, label %86, label %106

86:                                               ; preds = %80
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 1
  %89 = load i8**, i8*** %88, align 8
  %90 = load i32, i32* %31, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i8*, i8** %89, i64 %91
  %93 = load i8*, i8** %92, align 8
  store i8* %93, i8** %29, align 8
  %94 = load i8*, i8** %16, align 8
  %95 = load i32, i32* %17, align 4
  %96 = load i8*, i8** %29, align 8
  %97 = load i32, i32* %30, align 4
  %98 = load i32*, i32** %22, align 8
  %99 = call i64 @checkout_block(i8* %94, i32 %95, i8* %96, i32 %97, i32* %98)
  %100 = icmp slt i64 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %86
  br label %250

102:                                              ; preds = %86
  br label %103

103:                                              ; preds = %102
  %104 = load i32, i32* %31, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %31, align 4
  br label %80

106:                                              ; preds = %80
  %107 = load i32, i32* %30, align 4
  %108 = call i32 @close(i32 %107)
  store i32 -1, i32* %30, align 4
  %109 = load i8*, i8** %19, align 8
  %110 = load i32, i32* @SEAF_BACKUP_EXT, align 4
  %111 = call i8* @g_strconcat(i8* %109, i32 %110, i32* null)
  store i8* %111, i8** %33, align 8
  %112 = load i8*, i8** %19, align 8
  %113 = call i64 @seaf_util_exists(i8* %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %144

115:                                              ; preds = %106
  %116 = load i8*, i8** %19, align 8
  %117 = load i8*, i8** %33, align 8
  %118 = call i64 @seaf_util_rename(i8* %116, i8* %117)
  %119 = icmp slt i64 %118, 0
  br i1 %119, label %120, label %144

120:                                              ; preds = %115
  %121 = load i8*, i8** %19, align 8
  %122 = load i8*, i8** %33, align 8
  %123 = load i32, i32* @errno, align 4
  %124 = call i32 @strerror(i32 %123)
  %125 = call i32 (i8*, i8*, ...) @seaf_warning(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.2, i64 0, i64 0), i8* %121, i8* %122, i32 %124)
  %126 = load i64, i64* @TRUE, align 8
  %127 = load i64*, i64** %26, align 8
  store i64 %126, i64* %127, align 8
  %128 = load i8*, i8** %16, align 8
  %129 = load i32, i32* %17, align 4
  %130 = load i8*, i8** %24, align 8
  %131 = load i8*, i8** %23, align 8
  %132 = load i8*, i8** %19, align 8
  %133 = call i8* @gen_conflict_path_wrapper(i8* %128, i32 %129, i8* %130, i8* %131, i8* %132)
  store i8* %133, i8** %34, align 8
  %134 = load i8*, i8** %34, align 8
  %135 = icmp ne i8* %134, null
  br i1 %135, label %137, label %136

136:                                              ; preds = %120
  br label %250

137:                                              ; preds = %120
  %138 = load i8*, i8** %32, align 8
  %139 = load i8*, i8** %34, align 8
  %140 = call i64 @seaf_util_rename(i8* %138, i8* %139)
  %141 = icmp slt i64 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %137
  br label %250

143:                                              ; preds = %137
  br label %241

144:                                              ; preds = %115, %106
  %145 = load i8*, i8** %32, align 8
  %146 = load i8*, i8** %19, align 8
  %147 = call i64 @seaf_util_rename(i8* %145, i8* %146)
  %148 = icmp slt i64 %147, 0
  br i1 %148, label %149, label %184

149:                                              ; preds = %144
  %150 = load i8*, i8** %32, align 8
  %151 = load i8*, i8** %19, align 8
  %152 = load i32, i32* @errno, align 4
  %153 = call i32 @strerror(i32 %152)
  %154 = call i32 (i8*, i8*, ...) @seaf_warning(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.2, i64 0, i64 0), i8* %150, i8* %151, i32 %153)
  %155 = load i64, i64* @TRUE, align 8
  %156 = load i64*, i64** %26, align 8
  store i64 %155, i64* %156, align 8
  %157 = load i8*, i8** %33, align 8
  %158 = load i8*, i8** %19, align 8
  %159 = call i64 @seaf_util_rename(i8* %157, i8* %158)
  %160 = icmp slt i64 %159, 0
  br i1 %160, label %161, label %167

161:                                              ; preds = %149
  %162 = load i8*, i8** %33, align 8
  %163 = load i8*, i8** %19, align 8
  %164 = load i32, i32* @errno, align 4
  %165 = call i32 @strerror(i32 %164)
  %166 = call i32 (i8*, i8*, ...) @seaf_warning(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.3, i64 0, i64 0), i8* %162, i8* %163, i32 %165)
  br label %167

167:                                              ; preds = %161, %149
  %168 = load i8*, i8** %16, align 8
  %169 = load i32, i32* %17, align 4
  %170 = load i8*, i8** %24, align 8
  %171 = load i8*, i8** %23, align 8
  %172 = load i8*, i8** %19, align 8
  %173 = call i8* @gen_conflict_path_wrapper(i8* %168, i32 %169, i8* %170, i8* %171, i8* %172)
  store i8* %173, i8** %34, align 8
  %174 = load i8*, i8** %34, align 8
  %175 = icmp ne i8* %174, null
  br i1 %175, label %177, label %176

176:                                              ; preds = %167
  br label %250

177:                                              ; preds = %167
  %178 = load i8*, i8** %32, align 8
  %179 = load i8*, i8** %34, align 8
  %180 = call i64 @seaf_util_rename(i8* %178, i8* %179)
  %181 = icmp slt i64 %180, 0
  br i1 %181, label %182, label %183

182:                                              ; preds = %177
  br label %250

183:                                              ; preds = %177
  br label %241

184:                                              ; preds = %144
  %185 = load i64, i64* %25, align 8
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %226

187:                                              ; preds = %184
  %188 = load i64, i64* @TRUE, align 8
  %189 = load i64*, i64** %26, align 8
  store i64 %188, i64* %189, align 8
  store i8* null, i8** %36, align 8
  %190 = load i8*, i8** %27, align 8
  %191 = icmp ne i8* %190, null
  br i1 %191, label %192, label %194

192:                                              ; preds = %187
  %193 = load i8*, i8** %27, align 8
  store i8* %193, i8** %36, align 8
  br label %205

194:                                              ; preds = %187
  %195 = load %struct.TYPE_6__*, %struct.TYPE_6__** @seaf, align 8
  %196 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 4
  %198 = load i8*, i8** %16, align 8
  %199 = call i32* @seaf_repo_manager_get_repo(i32 %197, i8* %198)
  store i32* %199, i32** %37, align 8
  %200 = load i32*, i32** %37, align 8
  %201 = icmp ne i32* %200, null
  br i1 %201, label %203, label %202

202:                                              ; preds = %194
  br label %250

203:                                              ; preds = %194
  %204 = load i8*, i8** %27, align 8
  store i8* %204, i8** %36, align 8
  br label %205

205:                                              ; preds = %203, %192
  %206 = load i8*, i8** %19, align 8
  %207 = load i8*, i8** %36, align 8
  %208 = call i64 @time(i32* null)
  %209 = trunc i64 %208 to i32
  %210 = call i8* @gen_conflict_path(i8* %206, i8* %207, i32 %209)
  store i8* %210, i8** %34, align 8
  %211 = load i8*, i8** %33, align 8
  %212 = call i64 @seaf_util_exists(i8* %211)
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %214, label %225

214:                                              ; preds = %205
  %215 = load i8*, i8** %33, align 8
  %216 = load i8*, i8** %34, align 8
  %217 = call i64 @seaf_util_rename(i8* %215, i8* %216)
  %218 = icmp slt i64 %217, 0
  br i1 %218, label %219, label %225

219:                                              ; preds = %214
  %220 = load i8*, i8** %33, align 8
  %221 = load i8*, i8** %34, align 8
  %222 = load i32, i32* @errno, align 4
  %223 = call i32 @strerror(i32 %222)
  %224 = call i32 (i8*, i8*, ...) @seaf_warning(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.4, i64 0, i64 0), i8* %220, i8* %221, i32 %223)
  br label %225

225:                                              ; preds = %219, %214, %205
  br label %226

226:                                              ; preds = %225, %184
  %227 = load i64, i64* %21, align 8
  %228 = icmp sgt i64 %227, 0
  br i1 %228, label %229, label %238

229:                                              ; preds = %226
  %230 = load i8*, i8** %19, align 8
  %231 = load i64, i64* %21, align 8
  %232 = call i64 @seaf_set_file_time(i8* %230, i64 %231)
  %233 = icmp slt i64 %232, 0
  br i1 %233, label %234, label %237

234:                                              ; preds = %229
  %235 = load i8*, i8** %19, align 8
  %236 = call i32 (i8*, i8*, ...) @seaf_warning(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i8* %235)
  br label %237

237:                                              ; preds = %234, %229
  br label %238

238:                                              ; preds = %237, %226
  %239 = load i8*, i8** %33, align 8
  %240 = call i32 @seaf_util_unlink(i8* %239)
  br label %241

241:                                              ; preds = %238, %183, %143
  %242 = load i8*, i8** %32, align 8
  %243 = call i32 @g_free(i8* %242)
  %244 = load i8*, i8** %33, align 8
  %245 = call i32 @g_free(i8* %244)
  %246 = load i8*, i8** %34, align 8
  %247 = call i32 @g_free(i8* %246)
  %248 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %249 = call i32 @seafile_unref(%struct.TYPE_5__* %248)
  store i32 0, i32* %14, align 4
  br label %267

250:                                              ; preds = %202, %182, %176, %142, %136, %101, %74
  %251 = load i32, i32* %30, align 4
  %252 = icmp sge i32 %251, 0
  br i1 %252, label %253, label %256

253:                                              ; preds = %250
  %254 = load i32, i32* %30, align 4
  %255 = call i32 @close(i32 %254)
  br label %256

256:                                              ; preds = %253, %250
  %257 = load i8*, i8** %32, align 8
  %258 = call i32 @seaf_util_unlink(i8* %257)
  %259 = load i8*, i8** %32, align 8
  %260 = call i32 @g_free(i8* %259)
  %261 = load i8*, i8** %33, align 8
  %262 = call i32 @g_free(i8* %261)
  %263 = load i8*, i8** %34, align 8
  %264 = call i32 @g_free(i8* %263)
  %265 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %266 = call i32 @seafile_unref(%struct.TYPE_5__* %265)
  store i32 -1, i32* %14, align 4
  br label %267

267:                                              ; preds = %256, %241, %47
  %268 = load i32, i32* %14, align 4
  ret i32 %268
}

declare dso_local %struct.TYPE_5__* @seaf_fs_manager_get_seafile(i32*, i8*, i32, i8*) #1

declare dso_local i32 @seaf_warning(i8*, i8*, ...) #1

declare dso_local i8* @g_strconcat(i8*, i32, i32*) #1

declare dso_local i32 @seaf_util_create(i8*, i32, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i64 @checkout_block(i8*, i32, i8*, i32, i32*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i64 @seaf_util_exists(i8*) #1

declare dso_local i64 @seaf_util_rename(i8*, i8*) #1

declare dso_local i8* @gen_conflict_path_wrapper(i8*, i32, i8*, i8*, i8*) #1

declare dso_local i32* @seaf_repo_manager_get_repo(i32, i8*) #1

declare dso_local i8* @gen_conflict_path(i8*, i8*, i32) #1

declare dso_local i64 @time(i32*) #1

declare dso_local i64 @seaf_set_file_time(i8*, i64) #1

declare dso_local i32 @seaf_util_unlink(i8*) #1

declare dso_local i32 @g_free(i8*) #1

declare dso_local i32 @seafile_unref(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
