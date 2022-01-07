; ModuleID = '/home/carl/AnghaBench/systemd/src/import/extr_pull-job.c_pull_job_curl_on_finished.c'
source_filename = "/home/carl/AnghaBench/systemd/src/import/extr_pull-job.c_pull_job_curl_on_finished.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32, i64, i64, i64, i64, i64, i64, i64, i32, i64, i32, i64, i32* }
%struct.timespec = type { i32 }

@CURLINFO_PRIVATE = common dso_local global i32 0, align 4
@CURLE_OK = common dso_local global i64 0, align 8
@PULL_JOB_DONE = common dso_local global i32 0, align 4
@PULL_JOB_FAILED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Transfer failed: %s\00", align 1
@EIO = common dso_local global i32 0, align 4
@CURLINFO_RESPONSE_CODE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Failed to retrieve response code: %s\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"Image already downloaded. Skipping download.\00", align 1
@VERIFICATION_PER_FILE = common dso_local global i64 0, align 8
@VERIFICATION_PER_DIRECTORY = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [41 x i8] c"HTTP request to %s failed with code %li.\00", align 1
@.str.4 = private unnamed_addr constant [54 x i8] c"HTTP request to %s finished with unexpected code %li.\00", align 1
@PULL_JOB_RUNNING = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [34 x i8] c"Premature connection termination.\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"Download truncated.\00", align 1
@GCRY_MD_SHA256 = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [24 x i8] c"Failed to get checksum.\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"SHA256 of %s is %s.\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [28 x i8] c"Failed to truncate file: %m\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"user.source_etag\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"user.source_url\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pull_job_curl_on_finished(i32* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca [2 x %struct.timespec], align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %7, align 8
  %13 = load i32*, i32** %5, align 8
  %14 = load i32, i32* @CURLINFO_PRIVATE, align 4
  %15 = bitcast %struct.TYPE_4__** %7 to i8**
  %16 = call i64 (i32*, i32, ...) @curl_easy_getinfo(i32* %13, i32 %14, i8** %15)
  %17 = load i64, i64* @CURLE_OK, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  br label %279

20:                                               ; preds = %3
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %22 = icmp ne %struct.TYPE_4__* %21, null
  br i1 %22, label %23, label %31

23:                                               ; preds = %20
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i32, i32* @PULL_JOB_DONE, align 4
  %28 = load i32, i32* @PULL_JOB_FAILED, align 4
  %29 = call i64 @IN_SET(i64 %26, i32 %27, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %23, %20
  br label %279

32:                                               ; preds = %23
  %33 = load i64, i64* %6, align 8
  %34 = load i64, i64* @CURLE_OK, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %42

36:                                               ; preds = %32
  %37 = load i64, i64* %6, align 8
  %38 = call i32 @curl_easy_strerror(i64 %37)
  %39 = call i32 (i8*, ...) @log_error(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %38)
  %40 = load i32, i32* @EIO, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %10, align 4
  br label %275

42:                                               ; preds = %32
  %43 = load i32*, i32** %5, align 8
  %44 = load i32, i32* @CURLINFO_RESPONSE_CODE, align 4
  %45 = call i64 (i32*, i32, ...) @curl_easy_getinfo(i32* %43, i32 %44, i64* %9)
  store i64 %45, i64* %8, align 8
  %46 = load i64, i64* %8, align 8
  %47 = load i64, i64* @CURLE_OK, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %55

49:                                               ; preds = %42
  %50 = load i64, i64* %8, align 8
  %51 = call i32 @curl_easy_strerror(i64 %50)
  %52 = call i32 (i8*, ...) @log_error(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %51)
  %53 = load i32, i32* @EIO, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %10, align 4
  br label %275

55:                                               ; preds = %42
  %56 = load i64, i64* %9, align 8
  %57 = icmp eq i64 %56, 304
  br i1 %57, label %58, label %62

58:                                               ; preds = %55
  %59 = call i32 @log_info(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0))
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 1
  store i32 1, i32* %61, align 8
  store i32 0, i32* %10, align 4
  br label %275

62:                                               ; preds = %55
  %63 = load i64, i64* %9, align 8
  %64 = icmp sge i64 %63, 300
  br i1 %64, label %65, label %111

65:                                               ; preds = %62
  %66 = load i64, i64* %9, align 8
  %67 = icmp eq i64 %66, 404
  br i1 %67, label %68, label %103

68:                                               ; preds = %65
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @VERIFICATION_PER_FILE, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %103

74:                                               ; preds = %68
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %76 = call i32 @pull_job_restart(%struct.TYPE_4__* %75)
  store i32 %76, i32* %10, align 4
  %77 = load i32, i32* %10, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %74
  br label %275

80:                                               ; preds = %74
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 13
  %83 = load i32*, i32** %82, align 8
  %84 = load i32, i32* @CURLINFO_RESPONSE_CODE, align 4
  %85 = call i64 (i32*, i32, ...) @curl_easy_getinfo(i32* %83, i32 %84, i64* %9)
  store i64 %85, i64* %8, align 8
  %86 = load i64, i64* %8, align 8
  %87 = load i64, i64* @CURLE_OK, align 8
  %88 = icmp ne i64 %86, %87
  br i1 %88, label %89, label %95

89:                                               ; preds = %80
  %90 = load i64, i64* %8, align 8
  %91 = call i32 @curl_easy_strerror(i64 %90)
  %92 = call i32 (i8*, ...) @log_error(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %91)
  %93 = load i32, i32* @EIO, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %10, align 4
  br label %275

95:                                               ; preds = %80
  %96 = load i64, i64* %9, align 8
  %97 = icmp eq i64 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %95
  %99 = load i64, i64* @VERIFICATION_PER_DIRECTORY, align 8
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 2
  store i64 %99, i64* %101, align 8
  br label %279

102:                                              ; preds = %95
  br label %103

103:                                              ; preds = %102, %68, %65
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 7
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* %9, align 8
  %108 = call i32 (i8*, ...) @log_error(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i64 %106, i64 %107)
  %109 = load i32, i32* @EIO, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %10, align 4
  br label %275

111:                                              ; preds = %62
  %112 = load i64, i64* %9, align 8
  %113 = icmp slt i64 %112, 200
  br i1 %113, label %114, label %122

114:                                              ; preds = %111
  %115 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 7
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* %9, align 8
  %119 = call i32 (i8*, ...) @log_error(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0), i64 %117, i64 %118)
  %120 = load i32, i32* @EIO, align 4
  %121 = sub nsw i32 0, %120
  store i32 %121, i32* %10, align 4
  br label %275

122:                                              ; preds = %111
  br label %123

123:                                              ; preds = %122
  br label %124

124:                                              ; preds = %123
  br label %125

125:                                              ; preds = %124
  %126 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* @PULL_JOB_RUNNING, align 8
  %130 = icmp ne i64 %128, %129
  br i1 %130, label %131, label %135

131:                                              ; preds = %125
  %132 = call i32 (i8*, ...) @log_error(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0))
  %133 = load i32, i32* @EIO, align 4
  %134 = sub nsw i32 0, %133
  store i32 %134, i32* %10, align 4
  br label %275

135:                                              ; preds = %125
  %136 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 3
  %138 = load i64, i64* %137, align 8
  %139 = icmp ne i64 %138, -1
  br i1 %139, label %140, label %152

140:                                              ; preds = %135
  %141 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 3
  %143 = load i64, i64* %142, align 8
  %144 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 4
  %146 = load i64, i64* %145, align 8
  %147 = icmp ne i64 %143, %146
  br i1 %147, label %148, label %152

148:                                              ; preds = %140
  %149 = call i32 (i8*, ...) @log_error(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0))
  %150 = load i32, i32* @EIO, align 4
  %151 = sub nsw i32 0, %150
  store i32 %151, i32* %10, align 4
  br label %275

152:                                              ; preds = %140, %135
  %153 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i32 0, i32 12
  %155 = load i64, i64* %154, align 8
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %190

157:                                              ; preds = %152
  %158 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %159 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %158, i32 0, i32 12
  %160 = load i64, i64* %159, align 8
  %161 = load i32, i32* @GCRY_MD_SHA256, align 4
  %162 = call i32* @gcry_md_read(i64 %160, i32 %161)
  store i32* %162, i32** %11, align 8
  %163 = load i32*, i32** %11, align 8
  %164 = icmp ne i32* %163, null
  br i1 %164, label %169, label %165

165:                                              ; preds = %157
  %166 = call i32 (i8*, ...) @log_error(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0))
  %167 = load i32, i32* @EIO, align 4
  %168 = sub nsw i32 0, %167
  store i32 %168, i32* %10, align 4
  br label %275

169:                                              ; preds = %157
  %170 = load i32*, i32** %11, align 8
  %171 = load i32, i32* @GCRY_MD_SHA256, align 4
  %172 = call i32 @gcry_md_get_algo_dlen(i32 %171)
  %173 = call i32 @hexmem(i32* %170, i32 %172)
  %174 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %175 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %174, i32 0, i32 11
  store i32 %173, i32* %175, align 8
  %176 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %177 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %176, i32 0, i32 11
  %178 = load i32, i32* %177, align 8
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %182, label %180

180:                                              ; preds = %169
  %181 = call i32 (...) @log_oom()
  store i32 %181, i32* %10, align 4
  br label %275

182:                                              ; preds = %169
  %183 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %184 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %183, i32 0, i32 7
  %185 = load i64, i64* %184, align 8
  %186 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %187 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %186, i32 0, i32 11
  %188 = load i32, i32* %187, align 8
  %189 = call i32 @log_debug(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0), i64 %185, i32 %188)
  br label %190

190:                                              ; preds = %182, %152
  %191 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %192 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %191, i32 0, i32 5
  %193 = load i64, i64* %192, align 8
  %194 = icmp sge i64 %193, 0
  br i1 %194, label %195, label %274

195:                                              ; preds = %190
  %196 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %197 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %196, i32 0, i32 10
  %198 = load i64, i64* %197, align 8
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %274

200:                                              ; preds = %195
  %201 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %202 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %201, i32 0, i32 5
  %203 = load i64, i64* %202, align 8
  %204 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %205 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %204, i32 0, i32 9
  %206 = load i32, i32* %205, align 8
  %207 = call i64 @ftruncate(i64 %203, i32 %206)
  %208 = icmp slt i64 %207, 0
  br i1 %208, label %209, label %212

209:                                              ; preds = %200
  %210 = load i32, i32* @errno, align 4
  %211 = call i32 @log_error_errno(i32 %210, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i64 0, i64 0))
  store i32 %211, i32* %10, align 4
  br label %275

212:                                              ; preds = %200
  %213 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %214 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %213, i32 0, i32 8
  %215 = load i64, i64* %214, align 8
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %217, label %229

217:                                              ; preds = %212
  %218 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %219 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %218, i32 0, i32 5
  %220 = load i64, i64* %219, align 8
  %221 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %222 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %221, i32 0, i32 8
  %223 = load i64, i64* %222, align 8
  %224 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %225 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %224, i32 0, i32 8
  %226 = load i64, i64* %225, align 8
  %227 = call i32 @strlen(i64 %226)
  %228 = call i32 @fsetxattr(i64 %220, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i64 0, i64 0), i64 %223, i32 %227, i32 0)
  br label %229

229:                                              ; preds = %217, %212
  %230 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %231 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %230, i32 0, i32 7
  %232 = load i64, i64* %231, align 8
  %233 = icmp ne i64 %232, 0
  br i1 %233, label %234, label %246

234:                                              ; preds = %229
  %235 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %236 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %235, i32 0, i32 5
  %237 = load i64, i64* %236, align 8
  %238 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %239 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %238, i32 0, i32 7
  %240 = load i64, i64* %239, align 8
  %241 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %242 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %241, i32 0, i32 7
  %243 = load i64, i64* %242, align 8
  %244 = call i32 @strlen(i64 %243)
  %245 = call i32 @fsetxattr(i64 %237, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0), i64 %240, i32 %244, i32 0)
  br label %246

246:                                              ; preds = %234, %229
  %247 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %248 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %247, i32 0, i32 6
  %249 = load i64, i64* %248, align 8
  %250 = icmp ne i64 %249, 0
  br i1 %250, label %251, label %273

251:                                              ; preds = %246
  %252 = getelementptr inbounds [2 x %struct.timespec], [2 x %struct.timespec]* %12, i64 0, i64 0
  %253 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %254 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %253, i32 0, i32 6
  %255 = load i64, i64* %254, align 8
  %256 = call i32 @timespec_store(%struct.timespec* %252, i64 %255)
  %257 = getelementptr inbounds [2 x %struct.timespec], [2 x %struct.timespec]* %12, i64 0, i64 1
  %258 = getelementptr inbounds [2 x %struct.timespec], [2 x %struct.timespec]* %12, i64 0, i64 0
  %259 = bitcast %struct.timespec* %257 to i8*
  %260 = bitcast %struct.timespec* %258 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %259, i8* align 4 %260, i64 4, i1 false)
  %261 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %262 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %261, i32 0, i32 5
  %263 = load i64, i64* %262, align 8
  %264 = getelementptr inbounds [2 x %struct.timespec], [2 x %struct.timespec]* %12, i64 0, i64 0
  %265 = call i32 @futimens(i64 %263, %struct.timespec* %264)
  %266 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %267 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %266, i32 0, i32 5
  %268 = load i64, i64* %267, align 8
  %269 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %270 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %269, i32 0, i32 6
  %271 = load i64, i64* %270, align 8
  %272 = call i32 @fd_setcrtime(i64 %268, i64 %271)
  br label %273

273:                                              ; preds = %251, %246
  br label %274

274:                                              ; preds = %273, %195, %190
  store i32 0, i32* %10, align 4
  br label %275

275:                                              ; preds = %274, %209, %180, %165, %148, %131, %114, %103, %89, %79, %58, %49, %36
  %276 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %277 = load i32, i32* %10, align 4
  %278 = call i32 @pull_job_finish(%struct.TYPE_4__* %276, i32 %277)
  br label %279

279:                                              ; preds = %275, %98, %31, %19
  ret void
}

declare dso_local i64 @curl_easy_getinfo(i32*, i32, ...) #1

declare dso_local i64 @IN_SET(i64, i32, i32) #1

declare dso_local i32 @log_error(i8*, ...) #1

declare dso_local i32 @curl_easy_strerror(i64) #1

declare dso_local i32 @log_info(i8*) #1

declare dso_local i32 @pull_job_restart(%struct.TYPE_4__*) #1

declare dso_local i32* @gcry_md_read(i64, i32) #1

declare dso_local i32 @hexmem(i32*, i32) #1

declare dso_local i32 @gcry_md_get_algo_dlen(i32) #1

declare dso_local i32 @log_oom(...) #1

declare dso_local i32 @log_debug(i8*, i64, i32) #1

declare dso_local i64 @ftruncate(i64, i32) #1

declare dso_local i32 @log_error_errno(i32, i8*) #1

declare dso_local i32 @fsetxattr(i64, i8*, i64, i32, i32) #1

declare dso_local i32 @strlen(i64) #1

declare dso_local i32 @timespec_store(%struct.timespec*, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @futimens(i64, %struct.timespec*) #1

declare dso_local i32 @fd_setcrtime(i64, i64) #1

declare dso_local i32 @pull_job_finish(%struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
