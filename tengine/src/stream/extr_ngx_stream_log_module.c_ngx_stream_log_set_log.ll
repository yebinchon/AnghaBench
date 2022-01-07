; ModuleID = '/home/carl/AnghaBench/tengine/src/stream/extr_ngx_stream_log_module.c_ngx_stream_log_set_log.c'
source_filename = "/home/carl/AnghaBench/tengine/src/stream/extr_ngx_stream_log_module.c_ngx_stream_log_set_log.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_35__ = type { %struct.TYPE_38__*, i32, %struct.TYPE_42__* }
%struct.TYPE_38__ = type { i32 }
%struct.TYPE_42__ = type { i32, %struct.TYPE_34__* }
%struct.TYPE_34__ = type { i8*, i64 }
%struct.TYPE_44__ = type { i32, i32* }
%struct.TYPE_43__ = type { i32, i32, %struct.TYPE_37__*, i32*, %struct.TYPE_40__*, i32*, i32*, %struct.TYPE_34__*, %struct.TYPE_35__*, %struct.TYPE_32__*, i64, i32*, i32*, %struct.TYPE_34__* }
%struct.TYPE_37__ = type { %struct.TYPE_33__*, i32 }
%struct.TYPE_33__ = type { i64, i32, %struct.TYPE_41__*, i32*, i32*, i32* }
%struct.TYPE_41__ = type { i32, i32*, i32, %struct.TYPE_37__* }
%struct.TYPE_40__ = type { i32, i32 }
%struct.TYPE_32__ = type { %struct.TYPE_39__ }
%struct.TYPE_39__ = type { i64, i32 }
%struct.TYPE_45__ = type { %struct.TYPE_36__ }
%struct.TYPE_36__ = type { i64, %struct.TYPE_32__* }

@.str = private unnamed_addr constant [4 x i8] c"off\00", align 1
@NGX_CONF_OK = common dso_local global i8* null, align 8
@NGX_LOG_EMERG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"invalid parameter \22%V\22\00", align 1
@NGX_CONF_ERROR = common dso_local global i8* null, align 8
@ngx_stream_log_module = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"syslog:\00", align 1
@NGX_OK = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [28 x i8] c"log format is not specified\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"unknown log format \22%V\22\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"buffer=\00", align 1
@NGX_ERROR = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [25 x i8] c"invalid buffer size \22%V\22\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"flush=\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"invalid flush time \22%V\22\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"gzip\00", align 1
@.str.10 = private unnamed_addr constant [37 x i8] c"nginx was built without zlib support\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"if=\00", align 1
@.str.12 = private unnamed_addr constant [41 x i8] c"no buffer is defined for access_log \22%V\22\00", align 1
@.str.13 = private unnamed_addr constant [44 x i8] c"buffered logs cannot have variables in name\00", align 1
@.str.14 = private unnamed_addr constant [34 x i8] c"logs to syslog cannot be buffered\00", align 1
@.str.15 = private unnamed_addr constant [60 x i8] c"access_log \22%V\22 already defined with conflicting parameters\00", align 1
@ngx_stream_log_flush_handler = common dso_local global i32 0, align 4
@ngx_stream_log_flush = common dso_local global i32 0, align 4
@Z_BEST_SPEED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_35__*, i32*, i8*)* @ngx_stream_log_set_log to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ngx_stream_log_set_log(%struct.TYPE_35__* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_35__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_44__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_34__*, align 8
  %15 = alloca %struct.TYPE_34__, align 8
  %16 = alloca %struct.TYPE_34__, align 8
  %17 = alloca %struct.TYPE_43__*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca %struct.TYPE_33__*, align 8
  %20 = alloca %struct.TYPE_32__*, align 8
  %21 = alloca %struct.TYPE_43__, align 8
  %22 = alloca %struct.TYPE_45__*, align 8
  %23 = alloca %struct.TYPE_43__, align 8
  store %struct.TYPE_35__* %0, %struct.TYPE_35__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %24 = load i8*, i8** %7, align 8
  %25 = bitcast i8* %24 to %struct.TYPE_44__*
  store %struct.TYPE_44__* %25, %struct.TYPE_44__** %8, align 8
  %26 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %26, i32 0, i32 2
  %28 = load %struct.TYPE_42__*, %struct.TYPE_42__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_34__*, %struct.TYPE_34__** %29, align 8
  store %struct.TYPE_34__* %30, %struct.TYPE_34__** %14, align 8
  %31 = load %struct.TYPE_34__*, %struct.TYPE_34__** %14, align 8
  %32 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %31, i64 1
  %33 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = call i64 @ngx_strcmp(i8* %34, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %55

37:                                               ; preds = %3
  %38 = load %struct.TYPE_44__*, %struct.TYPE_44__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %38, i32 0, i32 0
  store i32 1, i32* %39, align 8
  %40 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %40, i32 0, i32 2
  %42 = load %struct.TYPE_42__*, %struct.TYPE_42__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp eq i32 %44, 2
  br i1 %45, label %46, label %48

46:                                               ; preds = %37
  %47 = load i8*, i8** @NGX_CONF_OK, align 8
  store i8* %47, i8** %4, align 8
  br label %615

48:                                               ; preds = %37
  %49 = load i32, i32* @NGX_LOG_EMERG, align 4
  %50 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %51 = load %struct.TYPE_34__*, %struct.TYPE_34__** %14, align 8
  %52 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %51, i64 2
  %53 = call i32 (i32, %struct.TYPE_35__*, i32, i8*, ...) @ngx_conf_log_error(i32 %49, %struct.TYPE_35__* %50, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_34__* %52)
  %54 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %54, i8** %4, align 8
  br label %615

55:                                               ; preds = %3
  %56 = load %struct.TYPE_44__*, %struct.TYPE_44__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = icmp eq i32* %58, null
  br i1 %59, label %60, label %74

60:                                               ; preds = %55
  %61 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = call i32* @ngx_array_create(i32 %63, i32 2, i32 104)
  %65 = load %struct.TYPE_44__*, %struct.TYPE_44__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %65, i32 0, i32 1
  store i32* %64, i32** %66, align 8
  %67 = load %struct.TYPE_44__*, %struct.TYPE_44__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %67, i32 0, i32 1
  %69 = load i32*, i32** %68, align 8
  %70 = icmp eq i32* %69, null
  br i1 %70, label %71, label %73

71:                                               ; preds = %60
  %72 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %72, i8** %4, align 8
  br label %615

73:                                               ; preds = %60
  br label %74

74:                                               ; preds = %73, %55
  %75 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %76 = load i32, i32* @ngx_stream_log_module, align 4
  %77 = call %struct.TYPE_45__* @ngx_stream_conf_get_module_main_conf(%struct.TYPE_35__* %75, i32 %76)
  store %struct.TYPE_45__* %77, %struct.TYPE_45__** %22, align 8
  %78 = load %struct.TYPE_44__*, %struct.TYPE_44__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %78, i32 0, i32 1
  %80 = load i32*, i32** %79, align 8
  %81 = call %struct.TYPE_43__* @ngx_array_push(i32* %80)
  store %struct.TYPE_43__* %81, %struct.TYPE_43__** %17, align 8
  %82 = load %struct.TYPE_43__*, %struct.TYPE_43__** %17, align 8
  %83 = icmp eq %struct.TYPE_43__* %82, null
  br i1 %83, label %84, label %86

84:                                               ; preds = %74
  %85 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %85, i8** %4, align 8
  br label %615

86:                                               ; preds = %74
  %87 = load %struct.TYPE_43__*, %struct.TYPE_43__** %17, align 8
  %88 = call i32 @ngx_memzero(%struct.TYPE_43__* %87, i32 104)
  %89 = load %struct.TYPE_34__*, %struct.TYPE_34__** %14, align 8
  %90 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %89, i64 1
  %91 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %90, i32 0, i32 0
  %92 = load i8*, i8** %91, align 8
  %93 = call i64 @ngx_strncmp(i8* %92, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 7)
  %94 = icmp eq i64 %93, 0
  br i1 %94, label %95, label %117

95:                                               ; preds = %86
  %96 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = call i8* @ngx_pcalloc(i32 %98, i32 4)
  %100 = bitcast i8* %99 to i32*
  store i32* %100, i32** %18, align 8
  %101 = load i32*, i32** %18, align 8
  %102 = icmp eq i32* %101, null
  br i1 %102, label %103, label %105

103:                                              ; preds = %95
  %104 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %104, i8** %4, align 8
  br label %615

105:                                              ; preds = %95
  %106 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %107 = load i32*, i32** %18, align 8
  %108 = call i8* @ngx_syslog_process_conf(%struct.TYPE_35__* %106, i32* %107)
  %109 = load i8*, i8** @NGX_CONF_OK, align 8
  %110 = icmp ne i8* %108, %109
  br i1 %110, label %111, label %113

111:                                              ; preds = %105
  %112 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %112, i8** %4, align 8
  br label %615

113:                                              ; preds = %105
  %114 = load i32*, i32** %18, align 8
  %115 = load %struct.TYPE_43__*, %struct.TYPE_43__** %17, align 8
  %116 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %115, i32 0, i32 3
  store i32* %114, i32** %116, align 8
  br label %192

117:                                              ; preds = %86
  %118 = load %struct.TYPE_34__*, %struct.TYPE_34__** %14, align 8
  %119 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %118, i64 1
  %120 = call i64 @ngx_stream_script_variables_count(%struct.TYPE_34__* %119)
  store i64 %120, i64* %12, align 8
  %121 = load i64, i64* %12, align 8
  %122 = icmp eq i64 %121, 0
  br i1 %122, label %123, label %139

123:                                              ; preds = %117
  %124 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %124, i32 0, i32 0
  %126 = load %struct.TYPE_38__*, %struct.TYPE_38__** %125, align 8
  %127 = load %struct.TYPE_34__*, %struct.TYPE_34__** %14, align 8
  %128 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %127, i64 1
  %129 = call %struct.TYPE_37__* @ngx_conf_open_file(%struct.TYPE_38__* %126, %struct.TYPE_34__* %128)
  %130 = load %struct.TYPE_43__*, %struct.TYPE_43__** %17, align 8
  %131 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %130, i32 0, i32 2
  store %struct.TYPE_37__* %129, %struct.TYPE_37__** %131, align 8
  %132 = load %struct.TYPE_43__*, %struct.TYPE_43__** %17, align 8
  %133 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %132, i32 0, i32 2
  %134 = load %struct.TYPE_37__*, %struct.TYPE_37__** %133, align 8
  %135 = icmp eq %struct.TYPE_37__* %134, null
  br i1 %135, label %136, label %138

136:                                              ; preds = %123
  %137 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %137, i8** %4, align 8
  br label %615

138:                                              ; preds = %123
  br label %191

139:                                              ; preds = %117
  %140 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %141 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %140, i32 0, i32 0
  %142 = load %struct.TYPE_38__*, %struct.TYPE_38__** %141, align 8
  %143 = load %struct.TYPE_34__*, %struct.TYPE_34__** %14, align 8
  %144 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %143, i64 1
  %145 = call i64 @ngx_conf_full_name(%struct.TYPE_38__* %142, %struct.TYPE_34__* %144, i32 0)
  %146 = load i64, i64* @NGX_OK, align 8
  %147 = icmp ne i64 %145, %146
  br i1 %147, label %148, label %150

148:                                              ; preds = %139
  %149 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %149, i8** %4, align 8
  br label %615

150:                                              ; preds = %139
  %151 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %152 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 8
  %154 = call i8* @ngx_pcalloc(i32 %153, i32 4)
  %155 = bitcast i8* %154 to %struct.TYPE_40__*
  %156 = load %struct.TYPE_43__*, %struct.TYPE_43__** %17, align 8
  %157 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %156, i32 0, i32 4
  store %struct.TYPE_40__* %155, %struct.TYPE_40__** %157, align 8
  %158 = load %struct.TYPE_43__*, %struct.TYPE_43__** %17, align 8
  %159 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %158, i32 0, i32 4
  %160 = load %struct.TYPE_40__*, %struct.TYPE_40__** %159, align 8
  %161 = icmp eq %struct.TYPE_40__* %160, null
  br i1 %161, label %162, label %164

162:                                              ; preds = %150
  %163 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %163, i8** %4, align 8
  br label %615

164:                                              ; preds = %150
  %165 = call i32 @ngx_memzero(%struct.TYPE_43__* %21, i32 104)
  %166 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %167 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %21, i32 0, i32 8
  store %struct.TYPE_35__* %166, %struct.TYPE_35__** %167, align 8
  %168 = load %struct.TYPE_34__*, %struct.TYPE_34__** %14, align 8
  %169 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %168, i64 1
  %170 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %21, i32 0, i32 13
  store %struct.TYPE_34__* %169, %struct.TYPE_34__** %170, align 8
  %171 = load %struct.TYPE_43__*, %struct.TYPE_43__** %17, align 8
  %172 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %171, i32 0, i32 4
  %173 = load %struct.TYPE_40__*, %struct.TYPE_40__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %173, i32 0, i32 1
  %175 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %21, i32 0, i32 12
  store i32* %174, i32** %175, align 8
  %176 = load %struct.TYPE_43__*, %struct.TYPE_43__** %17, align 8
  %177 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %176, i32 0, i32 4
  %178 = load %struct.TYPE_40__*, %struct.TYPE_40__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %21, i32 0, i32 11
  store i32* %179, i32** %180, align 8
  %181 = load i64, i64* %12, align 8
  %182 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %21, i32 0, i32 10
  store i64 %181, i64* %182, align 8
  %183 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %21, i32 0, i32 0
  store i32 1, i32* %183, align 8
  %184 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %21, i32 0, i32 1
  store i32 1, i32* %184, align 4
  %185 = call i64 @ngx_stream_script_compile(%struct.TYPE_43__* %21)
  %186 = load i64, i64* @NGX_OK, align 8
  %187 = icmp ne i64 %185, %186
  br i1 %187, label %188, label %190

188:                                              ; preds = %164
  %189 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %189, i8** %4, align 8
  br label %615

190:                                              ; preds = %164
  br label %191

191:                                              ; preds = %190, %138
  br label %192

192:                                              ; preds = %191, %113
  %193 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %194 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %193, i32 0, i32 2
  %195 = load %struct.TYPE_42__*, %struct.TYPE_42__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = icmp sge i32 %197, 3
  br i1 %198, label %199, label %204

199:                                              ; preds = %192
  %200 = load %struct.TYPE_34__*, %struct.TYPE_34__** %14, align 8
  %201 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %200, i64 2
  %202 = bitcast %struct.TYPE_34__* %15 to i8*
  %203 = bitcast %struct.TYPE_34__* %201 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %202, i8* align 8 %203, i64 16, i1 false)
  br label %209

204:                                              ; preds = %192
  %205 = load i32, i32* @NGX_LOG_EMERG, align 4
  %206 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %207 = call i32 (i32, %struct.TYPE_35__*, i32, i8*, ...) @ngx_conf_log_error(i32 %205, %struct.TYPE_35__* %206, i32 0, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %208 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %208, i8** %4, align 8
  br label %615

209:                                              ; preds = %199
  %210 = load %struct.TYPE_45__*, %struct.TYPE_45__** %22, align 8
  %211 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %210, i32 0, i32 0
  %212 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %211, i32 0, i32 1
  %213 = load %struct.TYPE_32__*, %struct.TYPE_32__** %212, align 8
  store %struct.TYPE_32__* %213, %struct.TYPE_32__** %20, align 8
  store i64 0, i64* %11, align 8
  br label %214

214:                                              ; preds = %249, %209
  %215 = load i64, i64* %11, align 8
  %216 = load %struct.TYPE_45__*, %struct.TYPE_45__** %22, align 8
  %217 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %216, i32 0, i32 0
  %218 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %217, i32 0, i32 0
  %219 = load i64, i64* %218, align 8
  %220 = icmp slt i64 %215, %219
  br i1 %220, label %221, label %252

221:                                              ; preds = %214
  %222 = load %struct.TYPE_32__*, %struct.TYPE_32__** %20, align 8
  %223 = load i64, i64* %11, align 8
  %224 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %222, i64 %223
  %225 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %224, i32 0, i32 0
  %226 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %225, i32 0, i32 0
  %227 = load i64, i64* %226, align 8
  %228 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %15, i32 0, i32 1
  %229 = load i64, i64* %228, align 8
  %230 = icmp eq i64 %227, %229
  br i1 %230, label %231, label %248

231:                                              ; preds = %221
  %232 = load %struct.TYPE_32__*, %struct.TYPE_32__** %20, align 8
  %233 = load i64, i64* %11, align 8
  %234 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %232, i64 %233
  %235 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %234, i32 0, i32 0
  %236 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %235, i32 0, i32 1
  %237 = load i32, i32* %236, align 8
  %238 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %15, i32 0, i32 0
  %239 = load i8*, i8** %238, align 8
  %240 = call i64 @ngx_strcasecmp(i32 %237, i8* %239)
  %241 = icmp eq i64 %240, 0
  br i1 %241, label %242, label %248

242:                                              ; preds = %231
  %243 = load %struct.TYPE_32__*, %struct.TYPE_32__** %20, align 8
  %244 = load i64, i64* %11, align 8
  %245 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %243, i64 %244
  %246 = load %struct.TYPE_43__*, %struct.TYPE_43__** %17, align 8
  %247 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %246, i32 0, i32 9
  store %struct.TYPE_32__* %245, %struct.TYPE_32__** %247, align 8
  br label %252

248:                                              ; preds = %231, %221
  br label %249

249:                                              ; preds = %248
  %250 = load i64, i64* %11, align 8
  %251 = add nsw i64 %250, 1
  store i64 %251, i64* %11, align 8
  br label %214

252:                                              ; preds = %242, %214
  %253 = load %struct.TYPE_43__*, %struct.TYPE_43__** %17, align 8
  %254 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %253, i32 0, i32 9
  %255 = load %struct.TYPE_32__*, %struct.TYPE_32__** %254, align 8
  %256 = icmp eq %struct.TYPE_32__* %255, null
  br i1 %256, label %257, label %262

257:                                              ; preds = %252
  %258 = load i32, i32* @NGX_LOG_EMERG, align 4
  %259 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %260 = call i32 (i32, %struct.TYPE_35__*, i32, i8*, ...) @ngx_conf_log_error(i32 %258, %struct.TYPE_35__* %259, i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), %struct.TYPE_34__* %15)
  %261 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %261, i8** %4, align 8
  br label %615

262:                                              ; preds = %252
  store i32 0, i32* %9, align 4
  store i64 0, i64* %13, align 8
  store i32 0, i32* %10, align 4
  store i64 3, i64* %11, align 8
  br label %263

263:                                              ; preds = %431, %262
  %264 = load i64, i64* %11, align 8
  %265 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %266 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %265, i32 0, i32 2
  %267 = load %struct.TYPE_42__*, %struct.TYPE_42__** %266, align 8
  %268 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 8
  %270 = sext i32 %269 to i64
  %271 = icmp slt i64 %264, %270
  br i1 %271, label %272, label %434

272:                                              ; preds = %263
  %273 = load %struct.TYPE_34__*, %struct.TYPE_34__** %14, align 8
  %274 = load i64, i64* %11, align 8
  %275 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %273, i64 %274
  %276 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %275, i32 0, i32 0
  %277 = load i8*, i8** %276, align 8
  %278 = call i64 @ngx_strncmp(i8* %277, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32 7)
  %279 = icmp eq i64 %278, 0
  br i1 %279, label %280, label %308

280:                                              ; preds = %272
  %281 = load %struct.TYPE_34__*, %struct.TYPE_34__** %14, align 8
  %282 = load i64, i64* %11, align 8
  %283 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %281, i64 %282
  %284 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %283, i32 0, i32 1
  %285 = load i64, i64* %284, align 8
  %286 = sub nsw i64 %285, 7
  %287 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %16, i32 0, i32 1
  store i64 %286, i64* %287, align 8
  %288 = load %struct.TYPE_34__*, %struct.TYPE_34__** %14, align 8
  %289 = load i64, i64* %11, align 8
  %290 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %288, i64 %289
  %291 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %290, i32 0, i32 0
  %292 = load i8*, i8** %291, align 8
  %293 = getelementptr inbounds i8, i8* %292, i64 7
  %294 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %16, i32 0, i32 0
  store i8* %293, i8** %294, align 8
  %295 = call i32 @ngx_parse_size(%struct.TYPE_34__* %16)
  store i32 %295, i32* %9, align 4
  %296 = load i32, i32* %9, align 4
  %297 = load i32, i32* @NGX_ERROR, align 4
  %298 = icmp eq i32 %296, %297
  br i1 %298, label %302, label %299

299:                                              ; preds = %280
  %300 = load i32, i32* %9, align 4
  %301 = icmp eq i32 %300, 0
  br i1 %301, label %302, label %307

302:                                              ; preds = %299, %280
  %303 = load i32, i32* @NGX_LOG_EMERG, align 4
  %304 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %305 = call i32 (i32, %struct.TYPE_35__*, i32, i8*, ...) @ngx_conf_log_error(i32 %303, %struct.TYPE_35__* %304, i32 0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0), %struct.TYPE_34__* %16)
  %306 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %306, i8** %4, align 8
  br label %615

307:                                              ; preds = %299
  br label %431

308:                                              ; preds = %272
  %309 = load %struct.TYPE_34__*, %struct.TYPE_34__** %14, align 8
  %310 = load i64, i64* %11, align 8
  %311 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %309, i64 %310
  %312 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %311, i32 0, i32 0
  %313 = load i8*, i8** %312, align 8
  %314 = call i64 @ngx_strncmp(i8* %313, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i32 6)
  %315 = icmp eq i64 %314, 0
  br i1 %315, label %316, label %345

316:                                              ; preds = %308
  %317 = load %struct.TYPE_34__*, %struct.TYPE_34__** %14, align 8
  %318 = load i64, i64* %11, align 8
  %319 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %317, i64 %318
  %320 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %319, i32 0, i32 1
  %321 = load i64, i64* %320, align 8
  %322 = sub nsw i64 %321, 6
  %323 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %16, i32 0, i32 1
  store i64 %322, i64* %323, align 8
  %324 = load %struct.TYPE_34__*, %struct.TYPE_34__** %14, align 8
  %325 = load i64, i64* %11, align 8
  %326 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %324, i64 %325
  %327 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %326, i32 0, i32 0
  %328 = load i8*, i8** %327, align 8
  %329 = getelementptr inbounds i8, i8* %328, i64 6
  %330 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %16, i32 0, i32 0
  store i8* %329, i8** %330, align 8
  %331 = call i64 @ngx_parse_time(%struct.TYPE_34__* %16, i32 0)
  store i64 %331, i64* %13, align 8
  %332 = load i64, i64* %13, align 8
  %333 = load i32, i32* @NGX_ERROR, align 4
  %334 = sext i32 %333 to i64
  %335 = icmp eq i64 %332, %334
  br i1 %335, label %339, label %336

336:                                              ; preds = %316
  %337 = load i64, i64* %13, align 8
  %338 = icmp eq i64 %337, 0
  br i1 %338, label %339, label %344

339:                                              ; preds = %336, %316
  %340 = load i32, i32* @NGX_LOG_EMERG, align 4
  %341 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %342 = call i32 (i32, %struct.TYPE_35__*, i32, i8*, ...) @ngx_conf_log_error(i32 %340, %struct.TYPE_35__* %341, i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0), %struct.TYPE_34__* %16)
  %343 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %343, i8** %4, align 8
  br label %615

344:                                              ; preds = %336
  br label %431

345:                                              ; preds = %308
  %346 = load %struct.TYPE_34__*, %struct.TYPE_34__** %14, align 8
  %347 = load i64, i64* %11, align 8
  %348 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %346, i64 %347
  %349 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %348, i32 0, i32 0
  %350 = load i8*, i8** %349, align 8
  %351 = call i64 @ngx_strncmp(i8* %350, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i32 4)
  %352 = icmp eq i64 %351, 0
  br i1 %352, label %353, label %375

353:                                              ; preds = %345
  %354 = load %struct.TYPE_34__*, %struct.TYPE_34__** %14, align 8
  %355 = load i64, i64* %11, align 8
  %356 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %354, i64 %355
  %357 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %356, i32 0, i32 1
  %358 = load i64, i64* %357, align 8
  %359 = icmp eq i64 %358, 4
  br i1 %359, label %370, label %360

360:                                              ; preds = %353
  %361 = load %struct.TYPE_34__*, %struct.TYPE_34__** %14, align 8
  %362 = load i64, i64* %11, align 8
  %363 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %361, i64 %362
  %364 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %363, i32 0, i32 0
  %365 = load i8*, i8** %364, align 8
  %366 = getelementptr inbounds i8, i8* %365, i64 4
  %367 = load i8, i8* %366, align 1
  %368 = sext i8 %367 to i32
  %369 = icmp eq i32 %368, 61
  br i1 %369, label %370, label %375

370:                                              ; preds = %360, %353
  %371 = load i32, i32* @NGX_LOG_EMERG, align 4
  %372 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %373 = call i32 (i32, %struct.TYPE_35__*, i32, i8*, ...) @ngx_conf_log_error(i32 %371, %struct.TYPE_35__* %372, i32 0, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.10, i64 0, i64 0))
  %374 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %374, i8** %4, align 8
  br label %615

375:                                              ; preds = %360, %345
  %376 = load %struct.TYPE_34__*, %struct.TYPE_34__** %14, align 8
  %377 = load i64, i64* %11, align 8
  %378 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %376, i64 %377
  %379 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %378, i32 0, i32 0
  %380 = load i8*, i8** %379, align 8
  %381 = call i64 @ngx_strncmp(i8* %380, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 3)
  %382 = icmp eq i64 %381, 0
  br i1 %382, label %383, label %423

383:                                              ; preds = %375
  %384 = load %struct.TYPE_34__*, %struct.TYPE_34__** %14, align 8
  %385 = load i64, i64* %11, align 8
  %386 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %384, i64 %385
  %387 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %386, i32 0, i32 1
  %388 = load i64, i64* %387, align 8
  %389 = sub nsw i64 %388, 3
  %390 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %16, i32 0, i32 1
  store i64 %389, i64* %390, align 8
  %391 = load %struct.TYPE_34__*, %struct.TYPE_34__** %14, align 8
  %392 = load i64, i64* %11, align 8
  %393 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %391, i64 %392
  %394 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %393, i32 0, i32 0
  %395 = load i8*, i8** %394, align 8
  %396 = getelementptr inbounds i8, i8* %395, i64 3
  %397 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %16, i32 0, i32 0
  store i8* %396, i8** %397, align 8
  %398 = call i32 @ngx_memzero(%struct.TYPE_43__* %23, i32 104)
  %399 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %400 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %23, i32 0, i32 8
  store %struct.TYPE_35__* %399, %struct.TYPE_35__** %400, align 8
  %401 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %23, i32 0, i32 7
  store %struct.TYPE_34__* %16, %struct.TYPE_34__** %401, align 8
  %402 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %403 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %402, i32 0, i32 1
  %404 = load i32, i32* %403, align 8
  %405 = call i32* @ngx_palloc(i32 %404, i32 4)
  %406 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %23, i32 0, i32 5
  store i32* %405, i32** %406, align 8
  %407 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %23, i32 0, i32 5
  %408 = load i32*, i32** %407, align 8
  %409 = icmp eq i32* %408, null
  br i1 %409, label %410, label %412

410:                                              ; preds = %383
  %411 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %411, i8** %4, align 8
  br label %615

412:                                              ; preds = %383
  %413 = call i64 @ngx_stream_compile_complex_value(%struct.TYPE_43__* %23)
  %414 = load i64, i64* @NGX_OK, align 8
  %415 = icmp ne i64 %413, %414
  br i1 %415, label %416, label %418

416:                                              ; preds = %412
  %417 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %417, i8** %4, align 8
  br label %615

418:                                              ; preds = %412
  %419 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %23, i32 0, i32 5
  %420 = load i32*, i32** %419, align 8
  %421 = load %struct.TYPE_43__*, %struct.TYPE_43__** %17, align 8
  %422 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %421, i32 0, i32 6
  store i32* %420, i32** %422, align 8
  br label %431

423:                                              ; preds = %375
  %424 = load i32, i32* @NGX_LOG_EMERG, align 4
  %425 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %426 = load %struct.TYPE_34__*, %struct.TYPE_34__** %14, align 8
  %427 = load i64, i64* %11, align 8
  %428 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %426, i64 %427
  %429 = call i32 (i32, %struct.TYPE_35__*, i32, i8*, ...) @ngx_conf_log_error(i32 %424, %struct.TYPE_35__* %425, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_34__* %428)
  %430 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %430, i8** %4, align 8
  br label %615

431:                                              ; preds = %418, %344, %307
  %432 = load i64, i64* %11, align 8
  %433 = add nsw i64 %432, 1
  store i64 %433, i64* %11, align 8
  br label %263

434:                                              ; preds = %263
  %435 = load i64, i64* %13, align 8
  %436 = icmp ne i64 %435, 0
  br i1 %436, label %437, label %447

437:                                              ; preds = %434
  %438 = load i32, i32* %9, align 4
  %439 = icmp eq i32 %438, 0
  br i1 %439, label %440, label %447

440:                                              ; preds = %437
  %441 = load i32, i32* @NGX_LOG_EMERG, align 4
  %442 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %443 = load %struct.TYPE_34__*, %struct.TYPE_34__** %14, align 8
  %444 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %443, i64 1
  %445 = call i32 (i32, %struct.TYPE_35__*, i32, i8*, ...) @ngx_conf_log_error(i32 %441, %struct.TYPE_35__* %442, i32 0, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.12, i64 0, i64 0), %struct.TYPE_34__* %444)
  %446 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %446, i8** %4, align 8
  br label %615

447:                                              ; preds = %437, %434
  %448 = load i32, i32* %9, align 4
  %449 = icmp ne i32 %448, 0
  br i1 %449, label %450, label %613

450:                                              ; preds = %447
  %451 = load %struct.TYPE_43__*, %struct.TYPE_43__** %17, align 8
  %452 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %451, i32 0, i32 4
  %453 = load %struct.TYPE_40__*, %struct.TYPE_40__** %452, align 8
  %454 = icmp ne %struct.TYPE_40__* %453, null
  br i1 %454, label %455, label %460

455:                                              ; preds = %450
  %456 = load i32, i32* @NGX_LOG_EMERG, align 4
  %457 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %458 = call i32 (i32, %struct.TYPE_35__*, i32, i8*, ...) @ngx_conf_log_error(i32 %456, %struct.TYPE_35__* %457, i32 0, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.13, i64 0, i64 0))
  %459 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %459, i8** %4, align 8
  br label %615

460:                                              ; preds = %450
  %461 = load %struct.TYPE_43__*, %struct.TYPE_43__** %17, align 8
  %462 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %461, i32 0, i32 3
  %463 = load i32*, i32** %462, align 8
  %464 = icmp ne i32* %463, null
  br i1 %464, label %465, label %470

465:                                              ; preds = %460
  %466 = load i32, i32* @NGX_LOG_EMERG, align 4
  %467 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %468 = call i32 (i32, %struct.TYPE_35__*, i32, i8*, ...) @ngx_conf_log_error(i32 %466, %struct.TYPE_35__* %467, i32 0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.14, i64 0, i64 0))
  %469 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %469, i8** %4, align 8
  br label %615

470:                                              ; preds = %460
  %471 = load %struct.TYPE_43__*, %struct.TYPE_43__** %17, align 8
  %472 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %471, i32 0, i32 2
  %473 = load %struct.TYPE_37__*, %struct.TYPE_37__** %472, align 8
  %474 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %473, i32 0, i32 0
  %475 = load %struct.TYPE_33__*, %struct.TYPE_33__** %474, align 8
  %476 = icmp ne %struct.TYPE_33__* %475, null
  br i1 %476, label %477, label %517

477:                                              ; preds = %470
  %478 = load %struct.TYPE_43__*, %struct.TYPE_43__** %17, align 8
  %479 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %478, i32 0, i32 2
  %480 = load %struct.TYPE_37__*, %struct.TYPE_37__** %479, align 8
  %481 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %480, i32 0, i32 0
  %482 = load %struct.TYPE_33__*, %struct.TYPE_33__** %481, align 8
  store %struct.TYPE_33__* %482, %struct.TYPE_33__** %19, align 8
  %483 = load %struct.TYPE_33__*, %struct.TYPE_33__** %19, align 8
  %484 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %483, i32 0, i32 4
  %485 = load i32*, i32** %484, align 8
  %486 = load %struct.TYPE_33__*, %struct.TYPE_33__** %19, align 8
  %487 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %486, i32 0, i32 3
  %488 = load i32*, i32** %487, align 8
  %489 = ptrtoint i32* %485 to i64
  %490 = ptrtoint i32* %488 to i64
  %491 = sub i64 %489, %490
  %492 = sdiv exact i64 %491, 4
  %493 = load i32, i32* %9, align 4
  %494 = sext i32 %493 to i64
  %495 = icmp ne i64 %492, %494
  br i1 %495, label %508, label %496

496:                                              ; preds = %477
  %497 = load %struct.TYPE_33__*, %struct.TYPE_33__** %19, align 8
  %498 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %497, i32 0, i32 0
  %499 = load i64, i64* %498, align 8
  %500 = load i64, i64* %13, align 8
  %501 = icmp ne i64 %499, %500
  br i1 %501, label %508, label %502

502:                                              ; preds = %496
  %503 = load %struct.TYPE_33__*, %struct.TYPE_33__** %19, align 8
  %504 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %503, i32 0, i32 1
  %505 = load i32, i32* %504, align 8
  %506 = load i32, i32* %10, align 4
  %507 = icmp ne i32 %505, %506
  br i1 %507, label %508, label %515

508:                                              ; preds = %502, %496, %477
  %509 = load i32, i32* @NGX_LOG_EMERG, align 4
  %510 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %511 = load %struct.TYPE_34__*, %struct.TYPE_34__** %14, align 8
  %512 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %511, i64 1
  %513 = call i32 (i32, %struct.TYPE_35__*, i32, i8*, ...) @ngx_conf_log_error(i32 %509, %struct.TYPE_35__* %510, i32 0, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.15, i64 0, i64 0), %struct.TYPE_34__* %512)
  %514 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %514, i8** %4, align 8
  br label %615

515:                                              ; preds = %502
  %516 = load i8*, i8** @NGX_CONF_OK, align 8
  store i8* %516, i8** %4, align 8
  br label %615

517:                                              ; preds = %470
  %518 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %519 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %518, i32 0, i32 1
  %520 = load i32, i32* %519, align 8
  %521 = call i8* @ngx_pcalloc(i32 %520, i32 48)
  %522 = bitcast i8* %521 to %struct.TYPE_33__*
  store %struct.TYPE_33__* %522, %struct.TYPE_33__** %19, align 8
  %523 = load %struct.TYPE_33__*, %struct.TYPE_33__** %19, align 8
  %524 = icmp eq %struct.TYPE_33__* %523, null
  br i1 %524, label %525, label %527

525:                                              ; preds = %517
  %526 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %526, i8** %4, align 8
  br label %615

527:                                              ; preds = %517
  %528 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %529 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %528, i32 0, i32 1
  %530 = load i32, i32* %529, align 8
  %531 = load i32, i32* %9, align 4
  %532 = call i32* @ngx_pnalloc(i32 %530, i32 %531)
  %533 = load %struct.TYPE_33__*, %struct.TYPE_33__** %19, align 8
  %534 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %533, i32 0, i32 3
  store i32* %532, i32** %534, align 8
  %535 = load %struct.TYPE_33__*, %struct.TYPE_33__** %19, align 8
  %536 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %535, i32 0, i32 3
  %537 = load i32*, i32** %536, align 8
  %538 = icmp eq i32* %537, null
  br i1 %538, label %539, label %541

539:                                              ; preds = %527
  %540 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %540, i8** %4, align 8
  br label %615

541:                                              ; preds = %527
  %542 = load %struct.TYPE_33__*, %struct.TYPE_33__** %19, align 8
  %543 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %542, i32 0, i32 3
  %544 = load i32*, i32** %543, align 8
  %545 = load %struct.TYPE_33__*, %struct.TYPE_33__** %19, align 8
  %546 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %545, i32 0, i32 5
  store i32* %544, i32** %546, align 8
  %547 = load %struct.TYPE_33__*, %struct.TYPE_33__** %19, align 8
  %548 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %547, i32 0, i32 3
  %549 = load i32*, i32** %548, align 8
  %550 = load i32, i32* %9, align 4
  %551 = sext i32 %550 to i64
  %552 = getelementptr inbounds i32, i32* %549, i64 %551
  %553 = load %struct.TYPE_33__*, %struct.TYPE_33__** %19, align 8
  %554 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %553, i32 0, i32 4
  store i32* %552, i32** %554, align 8
  %555 = load i64, i64* %13, align 8
  %556 = icmp ne i64 %555, 0
  br i1 %556, label %557, label %599

557:                                              ; preds = %541
  %558 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %559 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %558, i32 0, i32 1
  %560 = load i32, i32* %559, align 8
  %561 = call i8* @ngx_pcalloc(i32 %560, i32 4)
  %562 = bitcast i8* %561 to %struct.TYPE_41__*
  %563 = load %struct.TYPE_33__*, %struct.TYPE_33__** %19, align 8
  %564 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %563, i32 0, i32 2
  store %struct.TYPE_41__* %562, %struct.TYPE_41__** %564, align 8
  %565 = load %struct.TYPE_33__*, %struct.TYPE_33__** %19, align 8
  %566 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %565, i32 0, i32 2
  %567 = load %struct.TYPE_41__*, %struct.TYPE_41__** %566, align 8
  %568 = icmp eq %struct.TYPE_41__* %567, null
  br i1 %568, label %569, label %571

569:                                              ; preds = %557
  %570 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %570, i8** %4, align 8
  br label %615

571:                                              ; preds = %557
  %572 = load %struct.TYPE_43__*, %struct.TYPE_43__** %17, align 8
  %573 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %572, i32 0, i32 2
  %574 = load %struct.TYPE_37__*, %struct.TYPE_37__** %573, align 8
  %575 = load %struct.TYPE_33__*, %struct.TYPE_33__** %19, align 8
  %576 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %575, i32 0, i32 2
  %577 = load %struct.TYPE_41__*, %struct.TYPE_41__** %576, align 8
  %578 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %577, i32 0, i32 3
  store %struct.TYPE_37__* %574, %struct.TYPE_37__** %578, align 8
  %579 = load i32, i32* @ngx_stream_log_flush_handler, align 4
  %580 = load %struct.TYPE_33__*, %struct.TYPE_33__** %19, align 8
  %581 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %580, i32 0, i32 2
  %582 = load %struct.TYPE_41__*, %struct.TYPE_41__** %581, align 8
  %583 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %582, i32 0, i32 2
  store i32 %579, i32* %583, align 8
  %584 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %585 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %584, i32 0, i32 0
  %586 = load %struct.TYPE_38__*, %struct.TYPE_38__** %585, align 8
  %587 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %586, i32 0, i32 0
  %588 = load %struct.TYPE_33__*, %struct.TYPE_33__** %19, align 8
  %589 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %588, i32 0, i32 2
  %590 = load %struct.TYPE_41__*, %struct.TYPE_41__** %589, align 8
  %591 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %590, i32 0, i32 1
  store i32* %587, i32** %591, align 8
  %592 = load %struct.TYPE_33__*, %struct.TYPE_33__** %19, align 8
  %593 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %592, i32 0, i32 2
  %594 = load %struct.TYPE_41__*, %struct.TYPE_41__** %593, align 8
  %595 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %594, i32 0, i32 0
  store i32 1, i32* %595, align 8
  %596 = load i64, i64* %13, align 8
  %597 = load %struct.TYPE_33__*, %struct.TYPE_33__** %19, align 8
  %598 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %597, i32 0, i32 0
  store i64 %596, i64* %598, align 8
  br label %599

599:                                              ; preds = %571, %541
  %600 = load i32, i32* %10, align 4
  %601 = load %struct.TYPE_33__*, %struct.TYPE_33__** %19, align 8
  %602 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %601, i32 0, i32 1
  store i32 %600, i32* %602, align 8
  %603 = load i32, i32* @ngx_stream_log_flush, align 4
  %604 = load %struct.TYPE_43__*, %struct.TYPE_43__** %17, align 8
  %605 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %604, i32 0, i32 2
  %606 = load %struct.TYPE_37__*, %struct.TYPE_37__** %605, align 8
  %607 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %606, i32 0, i32 1
  store i32 %603, i32* %607, align 8
  %608 = load %struct.TYPE_33__*, %struct.TYPE_33__** %19, align 8
  %609 = load %struct.TYPE_43__*, %struct.TYPE_43__** %17, align 8
  %610 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %609, i32 0, i32 2
  %611 = load %struct.TYPE_37__*, %struct.TYPE_37__** %610, align 8
  %612 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %611, i32 0, i32 0
  store %struct.TYPE_33__* %608, %struct.TYPE_33__** %612, align 8
  br label %613

613:                                              ; preds = %599, %447
  %614 = load i8*, i8** @NGX_CONF_OK, align 8
  store i8* %614, i8** %4, align 8
  br label %615

615:                                              ; preds = %613, %569, %539, %525, %515, %508, %465, %455, %440, %423, %416, %410, %370, %339, %302, %257, %204, %188, %162, %148, %136, %111, %103, %84, %71, %48, %46
  %616 = load i8*, i8** %4, align 8
  ret i8* %616
}

declare dso_local i64 @ngx_strcmp(i8*, i8*) #1

declare dso_local i32 @ngx_conf_log_error(i32, %struct.TYPE_35__*, i32, i8*, ...) #1

declare dso_local i32* @ngx_array_create(i32, i32, i32) #1

declare dso_local %struct.TYPE_45__* @ngx_stream_conf_get_module_main_conf(%struct.TYPE_35__*, i32) #1

declare dso_local %struct.TYPE_43__* @ngx_array_push(i32*) #1

declare dso_local i32 @ngx_memzero(%struct.TYPE_43__*, i32) #1

declare dso_local i64 @ngx_strncmp(i8*, i8*, i32) #1

declare dso_local i8* @ngx_pcalloc(i32, i32) #1

declare dso_local i8* @ngx_syslog_process_conf(%struct.TYPE_35__*, i32*) #1

declare dso_local i64 @ngx_stream_script_variables_count(%struct.TYPE_34__*) #1

declare dso_local %struct.TYPE_37__* @ngx_conf_open_file(%struct.TYPE_38__*, %struct.TYPE_34__*) #1

declare dso_local i64 @ngx_conf_full_name(%struct.TYPE_38__*, %struct.TYPE_34__*, i32) #1

declare dso_local i64 @ngx_stream_script_compile(%struct.TYPE_43__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @ngx_strcasecmp(i32, i8*) #1

declare dso_local i32 @ngx_parse_size(%struct.TYPE_34__*) #1

declare dso_local i64 @ngx_parse_time(%struct.TYPE_34__*, i32) #1

declare dso_local i32* @ngx_palloc(i32, i32) #1

declare dso_local i64 @ngx_stream_compile_complex_value(%struct.TYPE_43__*) #1

declare dso_local i32* @ngx_pnalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
