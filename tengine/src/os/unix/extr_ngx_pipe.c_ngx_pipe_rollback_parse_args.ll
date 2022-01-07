; ModuleID = '/home/carl/AnghaBench/tengine/src/os/unix/extr_ngx_pipe.c_ngx_pipe_rollback_parse_args.c'
source_filename = "/home/carl/AnghaBench/tengine/src/os/unix/extr_ngx_pipe.c_ngx_pipe_rollback_parse_args.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32, i32 }
%struct.TYPE_18__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32, i8** }
%struct.TYPE_17__ = type { i8*, i32, i32, i32, i8*, i32, i32, i32**, i32 }
%struct.TYPE_16__ = type { i8*, i32 }

@NGX_ERROR = common dso_local global i64 0, align 8
@NGX_OK = common dso_local global i64 0, align 8
@NGX_LOG_EMERG = common dso_local global i32 0, align 4
@ngx_errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"get fullname failed\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"interval=\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"baknum=\00", align 1
@MAX_BACKUP_NUM = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [9 x i8] c"maxsize=\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"suitpath=\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"adjust=\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"%s.%i%Z\00", align 1
@NGX_LOG_INFO = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [74 x i8] c"log rollback param: num [%i], interval %i(S), size %i(B), adjust %i/%i(S)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ngx_pipe_rollback_parse_args(%struct.TYPE_19__* %0, %struct.TYPE_18__* %1, %struct.TYPE_17__* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_16__, align 8
  %13 = alloca %struct.TYPE_16__, align 8
  %14 = alloca i32, align 4
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %5, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %6, align 8
  store %struct.TYPE_17__* %2, %struct.TYPE_17__** %7, align 8
  %15 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_15__*, %struct.TYPE_15__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp slt i32 %19, 3
  br i1 %20, label %21, label %23

21:                                               ; preds = %3
  %22 = load i64, i64* @NGX_ERROR, align 8
  store i64 %22, i64* %4, align 8
  br label %368

23:                                               ; preds = %3
  %24 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %26, i32 0, i32 1
  %28 = load i8**, i8*** %27, align 8
  store i8** %28, i8*** %8, align 8
  %29 = load i8**, i8*** %8, align 8
  %30 = getelementptr inbounds i8*, i8** %29, i64 1
  %31 = load i8*, i8** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 0
  store i8* %31, i8** %32, align 8
  %33 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = call i32 @ngx_strlen(i8* %34)
  %36 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 1
  store i32 %35, i32* %36, align 8
  %37 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %38 = call i64 @ngx_conf_full_name(%struct.TYPE_19__* %37, %struct.TYPE_16__* %12, i32 0)
  %39 = load i64, i64* @NGX_OK, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %49

41:                                               ; preds = %23
  %42 = load i32, i32* @NGX_LOG_EMERG, align 4
  %43 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @ngx_errno, align 4
  %47 = call i32 (i32, i32, i32, i8*, ...) @ngx_log_error(i32 %42, i32 %45, i32 %46, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %48 = load i64, i64* @NGX_ERROR, align 8
  store i64 %48, i64* %4, align 8
  br label %368

49:                                               ; preds = %23
  %50 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  %52 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %52, i32 0, i32 0
  store i8* %51, i8** %53, align 8
  %54 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %54, i32 0, i32 1
  store i32 1, i32* %55, align 8
  %56 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %56, i32 0, i32 2
  store i32 -1, i32* %57, align 4
  %58 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %58, i32 0, i32 3
  store i32 -1, i32* %59, align 8
  %60 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %60, i32 0, i32 4
  store i8* null, i8** %61, align 8
  %62 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %62, i32 0, i32 5
  store i32 60, i32* %63, align 8
  %64 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %64, i32 0, i32 6
  store i32 60, i32* %65, align 4
  %66 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %66, i32 0, i32 7
  %68 = load i32**, i32*** %67, align 8
  %69 = call i32 @memset(i32** %68, i32 0, i32 8)
  store i64 2, i64* %9, align 8
  br label %70

70:                                               ; preds = %274, %49
  %71 = load i64, i64* %9, align 8
  %72 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %72, i32 0, i32 0
  %74 = load %struct.TYPE_15__*, %struct.TYPE_15__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = sext i32 %76 to i64
  %78 = icmp ult i64 %71, %77
  br i1 %78, label %79, label %277

79:                                               ; preds = %70
  %80 = load i8**, i8*** %8, align 8
  %81 = load i64, i64* %9, align 8
  %82 = getelementptr inbounds i8*, i8** %80, i64 %81
  %83 = load i8*, i8** %82, align 8
  %84 = icmp eq i8* %83, null
  br i1 %84, label %85, label %86

85:                                               ; preds = %79
  br label %277

86:                                               ; preds = %79
  %87 = load i8**, i8*** %8, align 8
  %88 = load i64, i64* %9, align 8
  %89 = getelementptr inbounds i8*, i8** %87, i64 %88
  %90 = load i8*, i8** %89, align 8
  %91 = call i64 @ngx_strncmp(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* %90, i32 9)
  %92 = icmp eq i64 %91, 0
  br i1 %92, label %93, label %119

93:                                               ; preds = %86
  %94 = load i8**, i8*** %8, align 8
  %95 = load i64, i64* %9, align 8
  %96 = getelementptr inbounds i8*, i8** %94, i64 %95
  %97 = load i8*, i8** %96, align 8
  %98 = getelementptr inbounds i8, i8* %97, i64 9
  %99 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 0
  store i8* %98, i8** %99, align 8
  %100 = load i8**, i8*** %8, align 8
  %101 = load i64, i64* %9, align 8
  %102 = getelementptr inbounds i8*, i8** %100, i64 %101
  %103 = load i8*, i8** %102, align 8
  %104 = call i32 @ngx_strlen(i8* %103)
  %105 = sub nsw i32 %104, 9
  %106 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 1
  store i32 %105, i32* %106, align 8
  %107 = call i8* @ngx_parse_time(%struct.TYPE_16__* %13, i32 1)
  %108 = ptrtoint i8* %107 to i32
  %109 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %110 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %109, i32 0, i32 3
  store i32 %108, i32* %110, align 8
  %111 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %112 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 8
  %114 = icmp sle i32 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %93
  %116 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %117 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %116, i32 0, i32 3
  store i32 -1, i32* %117, align 8
  br label %118

118:                                              ; preds = %115, %93
  br label %273

119:                                              ; preds = %86
  %120 = load i8**, i8*** %8, align 8
  %121 = load i64, i64* %9, align 8
  %122 = getelementptr inbounds i8*, i8** %120, i64 %121
  %123 = load i8*, i8** %122, align 8
  %124 = call i64 @ngx_strncmp(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* %123, i32 7)
  %125 = icmp eq i64 %124, 0
  br i1 %125, label %126, label %163

126:                                              ; preds = %119
  %127 = load i8**, i8*** %8, align 8
  %128 = load i64, i64* %9, align 8
  %129 = getelementptr inbounds i8*, i8** %127, i64 %128
  %130 = load i8*, i8** %129, align 8
  %131 = getelementptr inbounds i8, i8* %130, i64 7
  %132 = load i8**, i8*** %8, align 8
  %133 = load i64, i64* %9, align 8
  %134 = getelementptr inbounds i8*, i8** %132, i64 %133
  %135 = load i8*, i8** %134, align 8
  %136 = call i32 @ngx_strlen(i8* %135)
  %137 = sub nsw i32 %136, 7
  %138 = call i8* @ngx_atoi(i8* %131, i32 %137)
  %139 = ptrtoint i8* %138 to i32
  %140 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %141 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %140, i32 0, i32 1
  store i32 %139, i32* %141, align 8
  %142 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %143 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 8
  %145 = icmp sle i32 %144, 0
  br i1 %145, label %146, label %149

146:                                              ; preds = %126
  %147 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %148 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %147, i32 0, i32 1
  store i32 1, i32* %148, align 8
  br label %162

149:                                              ; preds = %126
  %150 = load i64, i64* @MAX_BACKUP_NUM, align 8
  %151 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %152 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 8
  %154 = sext i32 %153 to i64
  %155 = icmp ult i64 %150, %154
  br i1 %155, label %156, label %161

156:                                              ; preds = %149
  %157 = load i64, i64* @MAX_BACKUP_NUM, align 8
  %158 = trunc i64 %157 to i32
  %159 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %160 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %159, i32 0, i32 1
  store i32 %158, i32* %160, align 8
  br label %161

161:                                              ; preds = %156, %149
  br label %162

162:                                              ; preds = %161, %146
  br label %272

163:                                              ; preds = %119
  %164 = load i8**, i8*** %8, align 8
  %165 = load i64, i64* %9, align 8
  %166 = getelementptr inbounds i8*, i8** %164, i64 %165
  %167 = load i8*, i8** %166, align 8
  %168 = call i64 @ngx_strncmp(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* %167, i32 8)
  %169 = icmp eq i64 %168, 0
  br i1 %169, label %170, label %195

170:                                              ; preds = %163
  %171 = load i8**, i8*** %8, align 8
  %172 = load i64, i64* %9, align 8
  %173 = getelementptr inbounds i8*, i8** %171, i64 %172
  %174 = load i8*, i8** %173, align 8
  %175 = getelementptr inbounds i8, i8* %174, i64 8
  %176 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 0
  store i8* %175, i8** %176, align 8
  %177 = load i8**, i8*** %8, align 8
  %178 = load i64, i64* %9, align 8
  %179 = getelementptr inbounds i8*, i8** %177, i64 %178
  %180 = load i8*, i8** %179, align 8
  %181 = call i32 @ngx_strlen(i8* %180)
  %182 = sub nsw i32 %181, 8
  %183 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 1
  store i32 %182, i32* %183, align 8
  %184 = call i32 @ngx_parse_offset(%struct.TYPE_16__* %13)
  %185 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %186 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %185, i32 0, i32 2
  store i32 %184, i32* %186, align 4
  %187 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %188 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %187, i32 0, i32 2
  %189 = load i32, i32* %188, align 4
  %190 = icmp sle i32 %189, 0
  br i1 %190, label %191, label %194

191:                                              ; preds = %170
  %192 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %193 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %192, i32 0, i32 2
  store i32 -1, i32* %193, align 4
  br label %194

194:                                              ; preds = %191, %170
  br label %271

195:                                              ; preds = %163
  %196 = load i8**, i8*** %8, align 8
  %197 = load i64, i64* %9, align 8
  %198 = getelementptr inbounds i8*, i8** %196, i64 %197
  %199 = load i8*, i8** %198, align 8
  %200 = call i64 @ngx_strncmp(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8* %199, i32 9)
  %201 = icmp eq i64 %200, 0
  br i1 %201, label %202, label %236

202:                                              ; preds = %195
  %203 = load i8**, i8*** %8, align 8
  %204 = load i64, i64* %9, align 8
  %205 = getelementptr inbounds i8*, i8** %203, i64 %204
  %206 = load i8*, i8** %205, align 8
  %207 = getelementptr inbounds i8, i8* %206, i64 9
  %208 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 0
  store i8* %207, i8** %208, align 8
  %209 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 0
  %210 = load i8*, i8** %209, align 8
  %211 = call i32 @ngx_strlen(i8* %210)
  %212 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 1
  store i32 %211, i32* %212, align 8
  %213 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %214 = call i64 @ngx_conf_full_name(%struct.TYPE_19__* %213, %struct.TYPE_16__* %12, i32 0)
  %215 = load i64, i64* @NGX_OK, align 8
  %216 = icmp ne i64 %214, %215
  br i1 %216, label %217, label %225

217:                                              ; preds = %202
  %218 = load i32, i32* @NGX_LOG_EMERG, align 4
  %219 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %220 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 4
  %222 = load i32, i32* @ngx_errno, align 4
  %223 = call i32 (i32, i32, i32, i8*, ...) @ngx_log_error(i32 %218, i32 %221, i32 %222, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %224 = load i64, i64* @NGX_ERROR, align 8
  store i64 %224, i64* %4, align 8
  br label %368

225:                                              ; preds = %202
  %226 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 0
  %227 = load i8*, i8** %226, align 8
  %228 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %229 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %228, i32 0, i32 4
  store i8* %227, i8** %229, align 8
  %230 = call i32 (...) @ngx_pipe_get_now_sec()
  %231 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %232 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %231, i32 0, i32 8
  store i32 %230, i32* %232, align 8
  %233 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %234 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %235 = call i32 @ngx_pipe_create_suitpath(%struct.TYPE_19__* %233, %struct.TYPE_17__* %234)
  br label %270

236:                                              ; preds = %195
  %237 = load i8**, i8*** %8, align 8
  %238 = load i64, i64* %9, align 8
  %239 = getelementptr inbounds i8*, i8** %237, i64 %238
  %240 = load i8*, i8** %239, align 8
  %241 = call i64 @ngx_strncmp(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8* %240, i32 7)
  %242 = icmp eq i64 %241, 0
  br i1 %242, label %243, label %269

243:                                              ; preds = %236
  %244 = load i8**, i8*** %8, align 8
  %245 = load i64, i64* %9, align 8
  %246 = getelementptr inbounds i8*, i8** %244, i64 %245
  %247 = load i8*, i8** %246, align 8
  %248 = getelementptr inbounds i8, i8* %247, i64 7
  %249 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 0
  store i8* %248, i8** %249, align 8
  %250 = load i8**, i8*** %8, align 8
  %251 = load i64, i64* %9, align 8
  %252 = getelementptr inbounds i8*, i8** %250, i64 %251
  %253 = load i8*, i8** %252, align 8
  %254 = call i32 @ngx_strlen(i8* %253)
  %255 = sub nsw i32 %254, 7
  %256 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 1
  store i32 %255, i32* %256, align 8
  %257 = call i8* @ngx_parse_time(%struct.TYPE_16__* %13, i32 1)
  %258 = ptrtoint i8* %257 to i32
  %259 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %260 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %259, i32 0, i32 6
  store i32 %258, i32* %260, align 4
  %261 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %262 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %261, i32 0, i32 6
  %263 = load i32, i32* %262, align 4
  %264 = icmp slt i32 %263, 1
  br i1 %264, label %265, label %268

265:                                              ; preds = %243
  %266 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %267 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %266, i32 0, i32 6
  store i32 1, i32* %267, align 4
  br label %268

268:                                              ; preds = %265, %243
  br label %269

269:                                              ; preds = %268, %236
  br label %270

270:                                              ; preds = %269, %225
  br label %271

271:                                              ; preds = %270, %194
  br label %272

272:                                              ; preds = %271, %162
  br label %273

273:                                              ; preds = %272, %118
  br label %274

274:                                              ; preds = %273
  %275 = load i64, i64* %9, align 8
  %276 = add i64 %275, 1
  store i64 %276, i64* %9, align 8
  br label %70

277:                                              ; preds = %85, %70
  %278 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %279 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %278, i32 0, i32 0
  %280 = load i8*, i8** %279, align 8
  %281 = call i32 @ngx_strlen(i8* %280)
  %282 = add nsw i32 %281, 5
  %283 = sext i32 %282 to i64
  store i64 %283, i64* %11, align 8
  store i64 0, i64* %10, align 8
  br label %284

284:                                              ; preds = %326, %277
  %285 = load i64, i64* %10, align 8
  %286 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %287 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %286, i32 0, i32 1
  %288 = load i32, i32* %287, align 8
  %289 = sext i32 %288 to i64
  %290 = icmp ult i64 %285, %289
  br i1 %290, label %291, label %329

291:                                              ; preds = %284
  %292 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %293 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %292, i32 0, i32 1
  %294 = load i32, i32* %293, align 4
  %295 = load i64, i64* %11, align 8
  %296 = call i32* @ngx_pcalloc(i32 %294, i64 %295)
  %297 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %298 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %297, i32 0, i32 7
  %299 = load i32**, i32*** %298, align 8
  %300 = load i64, i64* %10, align 8
  %301 = getelementptr inbounds i32*, i32** %299, i64 %300
  store i32* %296, i32** %301, align 8
  %302 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %303 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %302, i32 0, i32 7
  %304 = load i32**, i32*** %303, align 8
  %305 = load i64, i64* %10, align 8
  %306 = getelementptr inbounds i32*, i32** %304, i64 %305
  %307 = load i32*, i32** %306, align 8
  %308 = icmp eq i32* %307, null
  br i1 %308, label %309, label %311

309:                                              ; preds = %291
  %310 = load i64, i64* @NGX_ERROR, align 8
  store i64 %310, i64* %4, align 8
  br label %368

311:                                              ; preds = %291
  %312 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %313 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %312, i32 0, i32 7
  %314 = load i32**, i32*** %313, align 8
  %315 = load i64, i64* %10, align 8
  %316 = getelementptr inbounds i32*, i32** %314, i64 %315
  %317 = load i32*, i32** %316, align 8
  %318 = bitcast i32* %317 to i8*
  %319 = load i64, i64* %11, align 8
  %320 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %321 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %320, i32 0, i32 0
  %322 = load i8*, i8** %321, align 8
  %323 = load i64, i64* %10, align 8
  %324 = add i64 %323, 1
  %325 = call i32 @ngx_snprintf(i8* %318, i64 %319, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i8* %322, i64 %324)
  br label %326

326:                                              ; preds = %311
  %327 = load i64, i64* %10, align 8
  %328 = add i64 %327, 1
  store i64 %328, i64* %10, align 8
  br label %284

329:                                              ; preds = %284
  %330 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %331 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %330, i32 0, i32 0
  %332 = load i8*, i8** %331, align 8
  %333 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %334 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %333, i32 0, i32 0
  %335 = load i8*, i8** %334, align 8
  %336 = call i32 @ngx_strlen(i8* %335)
  %337 = call i32 @ngx_crc32_short(i8* %332, i32 %336)
  store i32 %337, i32* %14, align 4
  %338 = load i32, i32* %14, align 4
  %339 = call i32 @srand(i32 %338)
  %340 = call i32 (...) @rand()
  %341 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %342 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %341, i32 0, i32 6
  %343 = load i32, i32* %342, align 4
  %344 = srem i32 %340, %343
  %345 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %346 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %345, i32 0, i32 5
  store i32 %344, i32* %346, align 8
  %347 = load i32, i32* @NGX_LOG_INFO, align 4
  %348 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %349 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %348, i32 0, i32 0
  %350 = load i32, i32* %349, align 4
  %351 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %352 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %351, i32 0, i32 1
  %353 = load i32, i32* %352, align 8
  %354 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %355 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %354, i32 0, i32 3
  %356 = load i32, i32* %355, align 8
  %357 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %358 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %357, i32 0, i32 2
  %359 = load i32, i32* %358, align 4
  %360 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %361 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %360, i32 0, i32 5
  %362 = load i32, i32* %361, align 8
  %363 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %364 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %363, i32 0, i32 6
  %365 = load i32, i32* %364, align 4
  %366 = call i32 (i32, i32, i32, i8*, ...) @ngx_log_error(i32 %347, i32 %350, i32 0, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.7, i64 0, i64 0), i32 %353, i32 %356, i32 %359, i32 %362, i32 %365)
  %367 = load i64, i64* @NGX_OK, align 8
  store i64 %367, i64* %4, align 8
  br label %368

368:                                              ; preds = %329, %309, %217, %41, %21
  %369 = load i64, i64* %4, align 8
  ret i64 %369
}

declare dso_local i32 @ngx_strlen(i8*) #1

declare dso_local i64 @ngx_conf_full_name(%struct.TYPE_19__*, %struct.TYPE_16__*, i32) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*, ...) #1

declare dso_local i32 @memset(i32**, i32, i32) #1

declare dso_local i64 @ngx_strncmp(i8*, i8*, i32) #1

declare dso_local i8* @ngx_parse_time(%struct.TYPE_16__*, i32) #1

declare dso_local i8* @ngx_atoi(i8*, i32) #1

declare dso_local i32 @ngx_parse_offset(%struct.TYPE_16__*) #1

declare dso_local i32 @ngx_pipe_get_now_sec(...) #1

declare dso_local i32 @ngx_pipe_create_suitpath(%struct.TYPE_19__*, %struct.TYPE_17__*) #1

declare dso_local i32* @ngx_pcalloc(i32, i64) #1

declare dso_local i32 @ngx_snprintf(i8*, i64, i8*, i8*, i64) #1

declare dso_local i32 @ngx_crc32_short(i8*, i32) #1

declare dso_local i32 @srand(i32) #1

declare dso_local i32 @rand(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
