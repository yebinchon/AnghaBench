; ModuleID = '/home/carl/AnghaBench/rufus/src/extr_iso.c_udf_extract_files.c'
source_filename = "/home/carl/AnghaBench/rufus/src/extr_iso.c_udf_extract_files.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64* }

@UDF_BLOCKSIZE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@FormatStatus = common dso_local global i64 0, align 8
@psz_extract_dir = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [27 x i8] c"Error allocating file name\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"%s%s/%s\00", align 1
@scan_only = common dso_local global i32 0, align 4
@preserve_timestamps = common dso_local global i64 0, align 8
@NB_OLD_C32 = common dso_local global i64 0, align 8
@use_own_c32 = common dso_local global i64* null, align 8
@.str.2 = private unnamed_addr constant [18 x i8] c"%s/syslinux-%s/%s\00", align 1
@FILES_DIR = common dso_local global i32 0, align 4
@embedded_sl_version_str = common dso_local global i32* null, align 8
@old_c32_name = common dso_local global i32* null, align 8
@FALSE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"  Replaced with local version %s\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"\E2\9C\93\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"\E2\9C\97\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"  Could not replace file: %s\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"  File name sanitized to '%s'\00", align 1
@GENERIC_READ = common dso_local global i32 0, align 4
@GENERIC_WRITE = common dso_local global i32 0, align 4
@FILE_SHARE_READ = common dso_local global i32 0, align 4
@CREATE_ALWAYS = common dso_local global i32 0, align 4
@FILE_ATTRIBUTE_NORMAL = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [28 x i8] c"  Unable to create file: %s\00", align 1
@ERROR_ACCESS_DENIED = common dso_local global i64 0, align 8
@autorun_name = common dso_local global i32 0, align 4
@stupid_antivirus = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [28 x i8] c"  Error reading UDF file %s\00", align 1
@WRITE_RETRIES = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [25 x i8] c"  Error writing file: %s\00", align 1
@nb_blocks = common dso_local global i32 0, align 4
@PROGRESS_THRESHOLD = common dso_local global i32 0, align 4
@OP_FILE_COPY = common dso_local global i32 0, align 4
@MSG_231 = common dso_local global i32 0, align 4
@total_blocks = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [30 x i8] c"  Could not set timestamp: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i8*)* @udf_extract_files to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @udf_extract_files(i32* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_4__, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca [128 x i8], align 16
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 0, i64* %8, align 8
  store i8* null, i8** %18, align 8
  store i8* null, i8** %19, align 8
  %27 = load i32, i32* @UDF_BLOCKSIZE, align 4
  %28 = zext i32 %27 to i64
  %29 = call i8* @llvm.stacksave()
  store i8* %29, i8** %22, align 8
  %30 = alloca i32, i64 %28, align 16
  store i64 %28, i64* %23, align 8
  %31 = load i32*, i32** %6, align 8
  %32 = icmp eq i32* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %3
  %34 = load i8*, i8** %7, align 8
  %35 = icmp eq i8* %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %33, %3
  store i32 1, i32* %4, align 4
  store i32 1, i32* %26, align 4
  br label %353

37:                                               ; preds = %33
  %38 = load i8*, i8** %7, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 0
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %37
  %44 = load i32, i32* @TRUE, align 4
  %45 = call i32 @UpdateProgressWithInfoInit(i32* null, i32 %44)
  br label %46

46:                                               ; preds = %43, %37
  br label %47

47:                                               ; preds = %335, %205, %147, %61, %46
  %48 = load i32*, i32** %6, align 8
  %49 = call i32* @udf_readdir(i32* %48)
  store i32* %49, i32** %6, align 8
  %50 = icmp ne i32* %49, null
  br i1 %50, label %51, label %338

51:                                               ; preds = %47
  %52 = load i64, i64* @FormatStatus, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %51
  br label %339

55:                                               ; preds = %51
  %56 = load i32*, i32** %6, align 8
  %57 = call i8* @udf_get_filename(i32* %56)
  store i8* %57, i8** %20, align 8
  %58 = load i8*, i8** %20, align 8
  %59 = call i64 @strlen(i8* %58)
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %55
  br label %47

62:                                               ; preds = %55
  %63 = load i8*, i8** %7, align 8
  %64 = call i64 @strlen(i8* %63)
  %65 = add i64 3, %64
  %66 = load i8*, i8** %20, align 8
  %67 = call i64 @strlen(i8* %66)
  %68 = add i64 %65, %67
  %69 = load i8*, i8** @psz_extract_dir, align 8
  %70 = call i64 @strlen(i8* %69)
  %71 = add i64 %68, %70
  %72 = add i64 %71, 24
  %73 = trunc i64 %72 to i32
  store i32 %73, i32* %15, align 4
  %74 = load i32, i32* %15, align 4
  %75 = call i64 @calloc(i32 1, i32 %74)
  %76 = inttoptr i64 %75 to i8*
  store i8* %76, i8** %18, align 8
  %77 = load i8*, i8** %18, align 8
  %78 = icmp eq i8* %77, null
  br i1 %78, label %79, label %81

79:                                               ; preds = %62
  %80 = call i32 (i8*, ...) @uprintf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %339

81:                                               ; preds = %62
  %82 = load i8*, i8** %18, align 8
  %83 = load i32, i32* %15, align 4
  %84 = load i8*, i8** @psz_extract_dir, align 8
  %85 = load i8*, i8** %7, align 8
  %86 = load i8*, i8** %20, align 8
  %87 = call i32 @_snprintf(i8* %82, i32 %83, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* %84, i8* %85, i8* %86)
  store i32 %87, i32* %15, align 4
  %88 = load i32, i32* %15, align 4
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %81
  br label %339

91:                                               ; preds = %81
  %92 = load i32*, i32** %6, align 8
  %93 = call i64 @udf_is_dir(i32* %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %138

95:                                               ; preds = %91
  %96 = load i32, i32* @scan_only, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %121, label %98

98:                                               ; preds = %95
  %99 = load i8*, i8** %18, align 8
  %100 = call i8* @sanitize_filename(i8* %99, i32* %14)
  store i8* %100, i8** %19, align 8
  %101 = load i8*, i8** %19, align 8
  %102 = call i32 @_mkdirU(i8* %101)
  %103 = call i32 @IGNORE_RETVAL(i32 %102)
  %104 = load i64, i64* @preserve_timestamps, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %118

106:                                              ; preds = %98
  %107 = load i8*, i8** %19, align 8
  %108 = load i32*, i32** %6, align 8
  %109 = call i32 @udf_get_attribute_time(i32* %108)
  %110 = call i32 @to_filetime(i32 %109)
  %111 = load i32*, i32** %6, align 8
  %112 = call i32 @udf_get_access_time(i32* %111)
  %113 = call i32 @to_filetime(i32 %112)
  %114 = load i32*, i32** %6, align 8
  %115 = call i32 @udf_get_modification_time(i32* %114)
  %116 = call i32 @to_filetime(i32 %115)
  %117 = call i32 @set_directory_timestamp(i8* %107, i32 %110, i32 %113, i32 %116)
  br label %118

118:                                              ; preds = %106, %98
  %119 = load i8*, i8** %19, align 8
  %120 = call i32 @safe_free(i8* %119)
  br label %121

121:                                              ; preds = %118, %95
  %122 = load i32*, i32** %6, align 8
  %123 = call i32* @udf_opendir(i32* %122)
  store i32* %123, i32** %21, align 8
  %124 = load i32*, i32** %21, align 8
  %125 = icmp ne i32* %124, null
  br i1 %125, label %126, label %137

126:                                              ; preds = %121
  %127 = load i32*, i32** %5, align 8
  %128 = load i32*, i32** %21, align 8
  %129 = load i8*, i8** %18, align 8
  %130 = load i8*, i8** @psz_extract_dir, align 8
  %131 = call i64 @strlen(i8* %130)
  %132 = getelementptr inbounds i8, i8* %129, i64 %131
  %133 = call i32 @udf_extract_files(i32* %127, i32* %128, i8* %132)
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %126
  br label %339

136:                                              ; preds = %126
  br label %137

137:                                              ; preds = %136, %121
  br label %335

138:                                              ; preds = %91
  %139 = load i32*, i32** %6, align 8
  %140 = call i64 @udf_get_file_length(i32* %139)
  store i64 %140, i64* %25, align 8
  %141 = load i8*, i8** %7, align 8
  %142 = load i64, i64* %25, align 8
  %143 = load i8*, i8** %20, align 8
  %144 = load i8*, i8** %18, align 8
  %145 = call i64 @check_iso_props(i8* %141, i64 %142, i8* %143, i8* %144, %struct.TYPE_4__* %12)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %150

147:                                              ; preds = %138
  %148 = load i8*, i8** %18, align 8
  %149 = call i32 @safe_free(i8* %148)
  br label %47

150:                                              ; preds = %138
  %151 = load i8*, i8** %18, align 8
  %152 = load i64, i64* %25, align 8
  %153 = call i32 @print_extracted_file(i8* %151, i64 %152)
  store i64 0, i64* %16, align 8
  br label %154

154:                                              ; preds = %198, %150
  %155 = load i64, i64* %16, align 8
  %156 = load i64, i64* @NB_OLD_C32, align 8
  %157 = icmp ult i64 %155, %156
  br i1 %157, label %158, label %201

158:                                              ; preds = %154
  %159 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  %160 = load i64*, i64** %159, align 8
  %161 = load i64, i64* %16, align 8
  %162 = getelementptr inbounds i64, i64* %160, i64 %161
  %163 = load i64, i64* %162, align 8
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %197

165:                                              ; preds = %158
  %166 = load i64*, i64** @use_own_c32, align 8
  %167 = load i64, i64* %16, align 8
  %168 = getelementptr inbounds i64, i64* %166, i64 %167
  %169 = load i64, i64* %168, align 8
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %197

171:                                              ; preds = %165
  %172 = getelementptr inbounds [128 x i8], [128 x i8]* %17, i64 0, i64 0
  %173 = load i32, i32* @FILES_DIR, align 4
  %174 = load i32*, i32** @embedded_sl_version_str, align 8
  %175 = getelementptr inbounds i32, i32* %174, i64 0
  %176 = load i32, i32* %175, align 4
  %177 = load i32*, i32** @old_c32_name, align 8
  %178 = load i64, i64* %16, align 8
  %179 = getelementptr inbounds i32, i32* %177, i64 %178
  %180 = load i32, i32* %179, align 4
  %181 = call i32 @static_sprintf(i8* %172, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %173, i32 %176, i32 %180)
  %182 = getelementptr inbounds [128 x i8], [128 x i8]* %17, i64 0, i64 0
  %183 = load i8*, i8** %18, align 8
  %184 = load i32, i32* @FALSE, align 4
  %185 = call i64 @CopyFileU(i8* %182, i8* %183, i32 %184)
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %194

187:                                              ; preds = %171
  %188 = getelementptr inbounds [128 x i8], [128 x i8]* %17, i64 0, i64 0
  %189 = call i64 @IsFileInDB(i8* %188)
  %190 = icmp ne i64 %189, 0
  %191 = zext i1 %190 to i64
  %192 = select i1 %190, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0)
  %193 = call i32 (i8*, ...) @uprintf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i8* %192)
  br label %201

194:                                              ; preds = %171
  %195 = call i8* (...) @WindowsErrorString()
  %196 = call i32 (i8*, ...) @uprintf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), i8* %195)
  br label %197

197:                                              ; preds = %194, %165, %158
  br label %198

198:                                              ; preds = %197
  %199 = load i64, i64* %16, align 8
  %200 = add i64 %199, 1
  store i64 %200, i64* %16, align 8
  br label %154

201:                                              ; preds = %187, %154
  %202 = load i64, i64* %16, align 8
  %203 = load i64, i64* @NB_OLD_C32, align 8
  %204 = icmp ult i64 %202, %203
  br i1 %204, label %205, label %206

205:                                              ; preds = %201
  br label %47

206:                                              ; preds = %201
  %207 = load i8*, i8** %18, align 8
  %208 = call i8* @sanitize_filename(i8* %207, i32* %14)
  store i8* %208, i8** %19, align 8
  %209 = load i32, i32* %14, align 4
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %214, label %211

211:                                              ; preds = %206
  %212 = load i8*, i8** %19, align 8
  %213 = call i32 (i8*, ...) @uprintf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0), i8* %212)
  br label %214

214:                                              ; preds = %211, %206
  %215 = load i8*, i8** %19, align 8
  %216 = load i32, i32* @GENERIC_READ, align 4
  %217 = load i32, i32* @GENERIC_WRITE, align 4
  %218 = or i32 %216, %217
  %219 = load i32, i32* @FILE_SHARE_READ, align 4
  %220 = load i32, i32* @CREATE_ALWAYS, align 4
  %221 = load i32, i32* @FILE_ATTRIBUTE_NORMAL, align 4
  %222 = call i64 @CreateFileU(i8* %215, i32 %218, i32 %219, i32* null, i32 %220, i32 %221, i32* null)
  store i64 %222, i64* %8, align 8
  %223 = load i64, i64* %8, align 8
  %224 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %225 = icmp eq i64 %223, %224
  br i1 %225, label %226, label %246

226:                                              ; preds = %214
  %227 = call i64 (...) @GetLastError()
  store i64 %227, i64* %11, align 8
  %228 = call i8* (...) @WindowsErrorString()
  %229 = call i32 (i8*, ...) @uprintf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0), i8* %228)
  %230 = load i64, i64* %11, align 8
  %231 = load i64, i64* @ERROR_ACCESS_DENIED, align 8
  %232 = icmp eq i64 %230, %231
  br i1 %232, label %233, label %244

233:                                              ; preds = %226
  %234 = load i8*, i8** %19, align 8
  %235 = getelementptr inbounds i8, i8* %234, i64 3
  %236 = load i32, i32* @autorun_name, align 4
  %237 = call i64 @safe_strcmp(i8* %235, i32 %236)
  %238 = icmp eq i64 %237, 0
  br i1 %238, label %239, label %244

239:                                              ; preds = %233
  %240 = load i32, i32* @stupid_antivirus, align 4
  %241 = sext i32 %240 to i64
  %242 = inttoptr i64 %241 to i8*
  %243 = call i32 (i8*, ...) @uprintf(i8* %242)
  br label %245

244:                                              ; preds = %233, %226
  br label %339

245:                                              ; preds = %239
  br label %301

246:                                              ; preds = %214
  %247 = load i64, i64* %8, align 8
  %248 = load i64, i64* %25, align 8
  %249 = call i32 @preallocate_filesize(i64 %247, i64 %248)
  br label %250

250:                                              ; preds = %299, %246
  %251 = load i64, i64* %25, align 8
  %252 = icmp sgt i64 %251, 0
  br i1 %252, label %253, label %300

253:                                              ; preds = %250
  %254 = load i64, i64* @FormatStatus, align 8
  %255 = icmp ne i64 %254, 0
  br i1 %255, label %256, label %257

256:                                              ; preds = %253
  br label %339

257:                                              ; preds = %253
  %258 = load i32, i32* @UDF_BLOCKSIZE, align 4
  %259 = call i32 @memset(i32* %30, i32 0, i32 %258)
  %260 = load i32*, i32** %6, align 8
  %261 = call i64 @udf_read_block(i32* %260, i32* %30, i32 1)
  store i64 %261, i64* %24, align 8
  %262 = load i64, i64* %24, align 8
  %263 = icmp slt i64 %262, 0
  br i1 %263, label %264, label %270

264:                                              ; preds = %257
  %265 = load i8*, i8** %18, align 8
  %266 = load i8*, i8** @psz_extract_dir, align 8
  %267 = call i64 @strlen(i8* %266)
  %268 = getelementptr inbounds i8, i8* %265, i64 %267
  %269 = call i32 (i8*, ...) @uprintf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i64 0, i64 0), i8* %268)
  br label %339

270:                                              ; preds = %257
  %271 = load i64, i64* %25, align 8
  %272 = load i64, i64* %24, align 8
  %273 = call i64 @MIN(i64 %271, i64 %272)
  store i64 %273, i64* %9, align 8
  %274 = load i64, i64* %8, align 8
  %275 = load i64, i64* %9, align 8
  %276 = load i32, i32* @WRITE_RETRIES, align 4
  %277 = call i32 @WriteFileWithRetry(i64 %274, i32* %30, i64 %275, i64* %10, i32 %276)
  store i32 %277, i32* %13, align 4
  %278 = call i32 @ISO_BLOCKING(i32 %277)
  %279 = load i32, i32* %13, align 4
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %284, label %281

281:                                              ; preds = %270
  %282 = call i8* (...) @WindowsErrorString()
  %283 = call i32 (i8*, ...) @uprintf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i64 0, i64 0), i8* %282)
  br label %339

284:                                              ; preds = %270
  %285 = load i64, i64* %24, align 8
  %286 = load i64, i64* %25, align 8
  %287 = sub nsw i64 %286, %285
  store i64 %287, i64* %25, align 8
  %288 = load i32, i32* @nb_blocks, align 4
  %289 = add nsw i32 %288, 1
  store i32 %289, i32* @nb_blocks, align 4
  %290 = load i32, i32* @PROGRESS_THRESHOLD, align 4
  %291 = srem i32 %288, %290
  %292 = icmp eq i32 %291, 0
  br i1 %292, label %293, label %299

293:                                              ; preds = %284
  %294 = load i32, i32* @OP_FILE_COPY, align 4
  %295 = load i32, i32* @MSG_231, align 4
  %296 = load i32, i32* @nb_blocks, align 4
  %297 = load i32, i32* @total_blocks, align 4
  %298 = call i32 @UpdateProgressWithInfo(i32 %294, i32 %295, i32 %296, i32 %297)
  br label %299

299:                                              ; preds = %293, %284
  br label %250

300:                                              ; preds = %250
  br label %301

301:                                              ; preds = %300, %245
  %302 = load i64, i64* @preserve_timestamps, align 8
  %303 = icmp ne i64 %302, 0
  br i1 %303, label %304, label %320

304:                                              ; preds = %301
  %305 = load i64, i64* %8, align 8
  %306 = load i32*, i32** %6, align 8
  %307 = call i32 @udf_get_attribute_time(i32* %306)
  %308 = call i32 @to_filetime(i32 %307)
  %309 = load i32*, i32** %6, align 8
  %310 = call i32 @udf_get_access_time(i32* %309)
  %311 = call i32 @to_filetime(i32 %310)
  %312 = load i32*, i32** %6, align 8
  %313 = call i32 @udf_get_modification_time(i32* %312)
  %314 = call i32 @to_filetime(i32 %313)
  %315 = call i32 @SetFileTime(i64 %305, i32 %308, i32 %311, i32 %314)
  %316 = icmp ne i32 %315, 0
  br i1 %316, label %320, label %317

317:                                              ; preds = %304
  %318 = call i8* (...) @WindowsErrorString()
  %319 = call i32 (i8*, ...) @uprintf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.11, i64 0, i64 0), i8* %318)
  br label %320

320:                                              ; preds = %317, %304, %301
  %321 = load i64, i64* %8, align 8
  %322 = call i32 @safe_closehandle(i64 %321)
  %323 = call i32 @ISO_BLOCKING(i32 %322)
  %324 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %325 = load i64, i64* %324, align 8
  %326 = icmp ne i64 %325, 0
  br i1 %326, label %327, label %332

327:                                              ; preds = %320
  %328 = load i8*, i8** %19, align 8
  %329 = load i8*, i8** %7, align 8
  %330 = load i8*, i8** %20, align 8
  %331 = call i32 @fix_config(i8* %328, i8* %329, i8* %330, %struct.TYPE_4__* %12)
  br label %332

332:                                              ; preds = %327, %320
  %333 = load i8*, i8** %19, align 8
  %334 = call i32 @safe_free(i8* %333)
  br label %335

335:                                              ; preds = %332, %137
  %336 = load i8*, i8** %18, align 8
  %337 = call i32 @safe_free(i8* %336)
  br label %47

338:                                              ; preds = %47
  store i32 0, i32* %4, align 4
  store i32 1, i32* %26, align 4
  br label %353

339:                                              ; preds = %281, %264, %256, %244, %135, %90, %79, %54
  %340 = load i32*, i32** %6, align 8
  %341 = icmp ne i32* %340, null
  br i1 %341, label %342, label %345

342:                                              ; preds = %339
  %343 = load i32*, i32** %6, align 8
  %344 = call i32 @udf_dirent_free(i32* %343)
  br label %345

345:                                              ; preds = %342, %339
  %346 = load i64, i64* %8, align 8
  %347 = call i32 @safe_closehandle(i64 %346)
  %348 = call i32 @ISO_BLOCKING(i32 %347)
  %349 = load i8*, i8** %19, align 8
  %350 = call i32 @safe_free(i8* %349)
  %351 = load i8*, i8** %18, align 8
  %352 = call i32 @safe_free(i8* %351)
  store i32 1, i32* %4, align 4
  store i32 1, i32* %26, align 4
  br label %353

353:                                              ; preds = %345, %338, %36
  %354 = load i8*, i8** %22, align 8
  call void @llvm.stackrestore(i8* %354)
  %355 = load i32, i32* %4, align 4
  ret i32 %355
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @UpdateProgressWithInfoInit(i32*, i32) #2

declare dso_local i32* @udf_readdir(i32*) #2

declare dso_local i8* @udf_get_filename(i32*) #2

declare dso_local i64 @strlen(i8*) #2

declare dso_local i64 @calloc(i32, i32) #2

declare dso_local i32 @uprintf(i8*, ...) #2

declare dso_local i32 @_snprintf(i8*, i32, i8*, i8*, i8*, i8*) #2

declare dso_local i64 @udf_is_dir(i32*) #2

declare dso_local i8* @sanitize_filename(i8*, i32*) #2

declare dso_local i32 @IGNORE_RETVAL(i32) #2

declare dso_local i32 @_mkdirU(i8*) #2

declare dso_local i32 @set_directory_timestamp(i8*, i32, i32, i32) #2

declare dso_local i32 @to_filetime(i32) #2

declare dso_local i32 @udf_get_attribute_time(i32*) #2

declare dso_local i32 @udf_get_access_time(i32*) #2

declare dso_local i32 @udf_get_modification_time(i32*) #2

declare dso_local i32 @safe_free(i8*) #2

declare dso_local i32* @udf_opendir(i32*) #2

declare dso_local i64 @udf_get_file_length(i32*) #2

declare dso_local i64 @check_iso_props(i8*, i64, i8*, i8*, %struct.TYPE_4__*) #2

declare dso_local i32 @print_extracted_file(i8*, i64) #2

declare dso_local i32 @static_sprintf(i8*, i8*, i32, i32, i32) #2

declare dso_local i64 @CopyFileU(i8*, i8*, i32) #2

declare dso_local i64 @IsFileInDB(i8*) #2

declare dso_local i8* @WindowsErrorString(...) #2

declare dso_local i64 @CreateFileU(i8*, i32, i32, i32*, i32, i32, i32*) #2

declare dso_local i64 @GetLastError(...) #2

declare dso_local i64 @safe_strcmp(i8*, i32) #2

declare dso_local i32 @preallocate_filesize(i64, i64) #2

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i64 @udf_read_block(i32*, i32*, i32) #2

declare dso_local i64 @MIN(i64, i64) #2

declare dso_local i32 @ISO_BLOCKING(i32) #2

declare dso_local i32 @WriteFileWithRetry(i64, i32*, i64, i64*, i32) #2

declare dso_local i32 @UpdateProgressWithInfo(i32, i32, i32, i32) #2

declare dso_local i32 @SetFileTime(i64, i32, i32, i32) #2

declare dso_local i32 @safe_closehandle(i64) #2

declare dso_local i32 @fix_config(i8*, i8*, i8*, %struct.TYPE_4__*) #2

declare dso_local i32 @udf_dirent_free(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
