; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_user_agent_module/extr_ngx_http_user_agent_module.c_ngx_http_user_agent.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_user_agent_module/extr_ngx_http_user_agent_module.c_ngx_http_user_agent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_36__ = type { i32, i32, %struct.TYPE_28__*, %struct.TYPE_35__* }
%struct.TYPE_28__ = type { i32, %struct.TYPE_33__* }
%struct.TYPE_33__ = type { i32, i32 }
%struct.TYPE_35__ = type { i32, %struct.TYPE_29__*, %struct.TYPE_31__* }
%struct.TYPE_29__ = type { i32, i64, i64, i32, i32 }
%struct.TYPE_31__ = type { %struct.TYPE_32__* (%struct.TYPE_31__*, %struct.TYPE_33__*, i32)* }
%struct.TYPE_32__ = type { i8* }
%struct.TYPE_27__ = type { i32, i64 }
%struct.TYPE_34__ = type { i64, i64, %struct.TYPE_30__* }
%struct.TYPE_30__ = type { i32, i64, i64, i32, i32 }

@NGX_LOG_EMERG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"invalid first parameter\00", align 1
@NGX_CONF_ERROR = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"include\00", align 1
@NGX_OK = common dso_local global i64 0, align 8
@NGX_LOG_DEBUG_CORE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"include %s\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"is duplicate\00", align 1
@NGX_CONF_OK = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [7 x i8] c"greedy\00", align 1
@NGX_TRIE_REVERSE = common dso_local global i32 0, align 4
@NGX_TRIE_CONTINUE = common dso_local global i32 0, align 4
@NGX_HTTP_UA_MIN_VERSION_VALUE = common dso_local global i64 0, align 8
@NGX_HTTP_UA_MAX_VERSION_VALUE = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [14 x i8] c"too many args\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"interval covered\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_36__*, i32*, i8*)* @ngx_http_user_agent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ngx_http_user_agent(%struct.TYPE_36__* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_36__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_33__*, align 8
  %9 = alloca %struct.TYPE_33__*, align 8
  %10 = alloca %struct.TYPE_33__, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_31__*, align 8
  %15 = alloca %struct.TYPE_27__*, align 8
  %16 = alloca %struct.TYPE_32__*, align 8
  %17 = alloca %struct.TYPE_35__*, align 8
  %18 = alloca %struct.TYPE_34__*, align 8
  %19 = alloca %struct.TYPE_34__*, align 8
  store %struct.TYPE_36__* %0, %struct.TYPE_36__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %20 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %20, i32 0, i32 3
  %22 = load %struct.TYPE_35__*, %struct.TYPE_35__** %21, align 8
  store %struct.TYPE_35__* %22, %struct.TYPE_35__** %17, align 8
  %23 = load %struct.TYPE_35__*, %struct.TYPE_35__** %17, align 8
  %24 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %23, i32 0, i32 2
  %25 = load %struct.TYPE_31__*, %struct.TYPE_31__** %24, align 8
  store %struct.TYPE_31__* %25, %struct.TYPE_31__** %14, align 8
  %26 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %26, i32 0, i32 2
  %28 = load %struct.TYPE_28__*, %struct.TYPE_28__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_33__*, %struct.TYPE_33__** %29, align 8
  store %struct.TYPE_33__* %30, %struct.TYPE_33__** %8, align 8
  %31 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %31, i32 0, i32 2
  %33 = load %struct.TYPE_28__*, %struct.TYPE_28__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  store i32 %35, i32* %12, align 4
  store %struct.TYPE_33__* null, %struct.TYPE_33__** %9, align 8
  %36 = load i32, i32* %12, align 4
  %37 = icmp sle i32 %36, 1
  br i1 %37, label %38, label %43

38:                                               ; preds = %3
  %39 = load i32, i32* @NGX_LOG_EMERG, align 4
  %40 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %41 = call i32 @ngx_conf_log_error(i32 %39, %struct.TYPE_36__* %40, i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %42 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %42, i8** %4, align 8
  br label %424

43:                                               ; preds = %3
  %44 = load i32, i32* %12, align 4
  %45 = icmp eq i32 %44, 2
  br i1 %45, label %46, label %158

46:                                               ; preds = %43
  %47 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %47, i64 0
  %49 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i64 @ngx_strcmp(i32 %50, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %76

53:                                               ; preds = %46
  %54 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %54, i64 1
  %56 = bitcast %struct.TYPE_33__* %10 to i8*
  %57 = bitcast %struct.TYPE_33__* %55 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %56, i8* align 4 %57, i64 8, i1 false)
  %58 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i64 @ngx_conf_full_name(i32 %60, %struct.TYPE_33__* %10, i32 1)
  %62 = load i64, i64* @NGX_OK, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %53
  %65 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %65, i8** %4, align 8
  br label %424

66:                                               ; preds = %53
  %67 = load i32, i32* @NGX_LOG_DEBUG_CORE, align 4
  %68 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %10, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @ngx_log_debug1(i32 %67, i32 %70, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %72)
  %74 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %75 = call i8* @ngx_conf_parse(%struct.TYPE_36__* %74, %struct.TYPE_33__* %10)
  store i8* %75, i8** %4, align 8
  br label %424

76:                                               ; preds = %46
  %77 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %77, i64 0
  %79 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i64 @ngx_strcmp(i32 %80, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %82 = icmp eq i64 %81, 0
  br i1 %82, label %83, label %137

83:                                               ; preds = %76
  %84 = load %struct.TYPE_35__*, %struct.TYPE_35__** %17, align 8
  %85 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %84, i32 0, i32 1
  %86 = load %struct.TYPE_29__*, %struct.TYPE_29__** %85, align 8
  %87 = icmp ne %struct.TYPE_29__* %86, null
  br i1 %87, label %88, label %93

88:                                               ; preds = %83
  %89 = load i32, i32* @NGX_LOG_EMERG, align 4
  %90 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %91 = call i32 @ngx_conf_log_error(i32 %89, %struct.TYPE_36__* %90, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  %92 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %92, i8** %4, align 8
  br label %424

93:                                               ; preds = %83
  %94 = load %struct.TYPE_35__*, %struct.TYPE_35__** %17, align 8
  %95 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = call i8* @ngx_pcalloc(i32 %96, i32 4)
  %98 = bitcast i8* %97 to %struct.TYPE_29__*
  %99 = load %struct.TYPE_35__*, %struct.TYPE_35__** %17, align 8
  %100 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %99, i32 0, i32 1
  store %struct.TYPE_29__* %98, %struct.TYPE_29__** %100, align 8
  %101 = load %struct.TYPE_35__*, %struct.TYPE_35__** %17, align 8
  %102 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %101, i32 0, i32 1
  %103 = load %struct.TYPE_29__*, %struct.TYPE_29__** %102, align 8
  %104 = icmp eq %struct.TYPE_29__* %103, null
  br i1 %104, label %105, label %107

105:                                              ; preds = %93
  %106 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %106, i8** %4, align 8
  br label %424

107:                                              ; preds = %93
  %108 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %109 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %108, i64 1
  %110 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.TYPE_35__*, %struct.TYPE_35__** %17, align 8
  %113 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %112, i32 0, i32 1
  %114 = load %struct.TYPE_29__*, %struct.TYPE_29__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %114, i32 0, i32 4
  store i32 %111, i32* %115, align 4
  %116 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %117 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %116, i64 1
  %118 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.TYPE_35__*, %struct.TYPE_35__** %17, align 8
  %121 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %120, i32 0, i32 1
  %122 = load %struct.TYPE_29__*, %struct.TYPE_29__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %122, i32 0, i32 3
  store i32 %119, i32* %123, align 8
  %124 = load %struct.TYPE_35__*, %struct.TYPE_35__** %17, align 8
  %125 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %124, i32 0, i32 1
  %126 = load %struct.TYPE_29__*, %struct.TYPE_29__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %126, i32 0, i32 2
  store i64 0, i64* %127, align 8
  %128 = load %struct.TYPE_35__*, %struct.TYPE_35__** %17, align 8
  %129 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %128, i32 0, i32 1
  %130 = load %struct.TYPE_29__*, %struct.TYPE_29__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %130, i32 0, i32 1
  store i64 0, i64* %131, align 8
  %132 = load %struct.TYPE_35__*, %struct.TYPE_35__** %17, align 8
  %133 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %132, i32 0, i32 1
  %134 = load %struct.TYPE_29__*, %struct.TYPE_29__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %134, i32 0, i32 0
  store i32 1, i32* %135, align 8
  %136 = load i8*, i8** @NGX_CONF_OK, align 8
  store i8* %136, i8** %4, align 8
  br label %424

137:                                              ; preds = %76
  %138 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %139 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %138, i64 0
  %140 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = call i64 @ngx_strcmp(i32 %141, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  %143 = icmp eq i64 %142, 0
  br i1 %143, label %144, label %157

144:                                              ; preds = %137
  %145 = load i32, i32* @NGX_TRIE_REVERSE, align 4
  %146 = load i32, i32* @NGX_TRIE_CONTINUE, align 4
  %147 = or i32 %145, %146
  store i32 %147, i32* %13, align 4
  %148 = load %struct.TYPE_31__*, %struct.TYPE_31__** %14, align 8
  %149 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %148, i32 0, i32 0
  %150 = load %struct.TYPE_32__* (%struct.TYPE_31__*, %struct.TYPE_33__*, i32)*, %struct.TYPE_32__* (%struct.TYPE_31__*, %struct.TYPE_33__*, i32)** %149, align 8
  %151 = load %struct.TYPE_31__*, %struct.TYPE_31__** %14, align 8
  %152 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %153 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %152, i64 1
  %154 = load i32, i32* %13, align 4
  %155 = call %struct.TYPE_32__* %150(%struct.TYPE_31__* %151, %struct.TYPE_33__* %153, i32 %154)
  %156 = load i8*, i8** @NGX_CONF_OK, align 8
  store i8* %156, i8** %4, align 8
  br label %424

157:                                              ; preds = %137
  br label %158

158:                                              ; preds = %157, %43
  %159 = load i32, i32* %12, align 4
  %160 = icmp eq i32 %159, 2
  br i1 %160, label %161, label %221

161:                                              ; preds = %158
  %162 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  store %struct.TYPE_33__* %162, %struct.TYPE_33__** %9, align 8
  %163 = load %struct.TYPE_35__*, %struct.TYPE_35__** %17, align 8
  %164 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = call i8* @ngx_pcalloc(i32 %165, i32 24)
  %167 = bitcast i8* %166 to %struct.TYPE_34__*
  store %struct.TYPE_34__* %167, %struct.TYPE_34__** %18, align 8
  %168 = load %struct.TYPE_34__*, %struct.TYPE_34__** %18, align 8
  %169 = icmp eq %struct.TYPE_34__* %168, null
  br i1 %169, label %170, label %172

170:                                              ; preds = %161
  %171 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %171, i8** %4, align 8
  br label %424

172:                                              ; preds = %161
  %173 = load %struct.TYPE_35__*, %struct.TYPE_35__** %17, align 8
  %174 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = call i8* @ngx_pcalloc(i32 %175, i32 4)
  %177 = bitcast i8* %176 to %struct.TYPE_30__*
  %178 = load %struct.TYPE_34__*, %struct.TYPE_34__** %18, align 8
  %179 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %178, i32 0, i32 2
  store %struct.TYPE_30__* %177, %struct.TYPE_30__** %179, align 8
  %180 = load %struct.TYPE_34__*, %struct.TYPE_34__** %18, align 8
  %181 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %180, i32 0, i32 2
  %182 = load %struct.TYPE_30__*, %struct.TYPE_30__** %181, align 8
  %183 = icmp eq %struct.TYPE_30__* %182, null
  br i1 %183, label %184, label %186

184:                                              ; preds = %172
  %185 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %185, i8** %4, align 8
  br label %424

186:                                              ; preds = %172
  %187 = load i64, i64* @NGX_HTTP_UA_MIN_VERSION_VALUE, align 8
  %188 = load %struct.TYPE_34__*, %struct.TYPE_34__** %18, align 8
  %189 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %188, i32 0, i32 0
  store i64 %187, i64* %189, align 8
  %190 = load i64, i64* @NGX_HTTP_UA_MAX_VERSION_VALUE, align 8
  %191 = load %struct.TYPE_34__*, %struct.TYPE_34__** %18, align 8
  %192 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %191, i32 0, i32 1
  store i64 %190, i64* %192, align 8
  %193 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %194 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %193, i64 1
  %195 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 4
  %197 = load %struct.TYPE_34__*, %struct.TYPE_34__** %18, align 8
  %198 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %197, i32 0, i32 2
  %199 = load %struct.TYPE_30__*, %struct.TYPE_30__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %199, i32 0, i32 4
  store i32 %196, i32* %200, align 4
  %201 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %202 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %201, i64 1
  %203 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 4
  %205 = load %struct.TYPE_34__*, %struct.TYPE_34__** %18, align 8
  %206 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %205, i32 0, i32 2
  %207 = load %struct.TYPE_30__*, %struct.TYPE_30__** %206, align 8
  %208 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %207, i32 0, i32 3
  store i32 %204, i32* %208, align 8
  %209 = load %struct.TYPE_34__*, %struct.TYPE_34__** %18, align 8
  %210 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %209, i32 0, i32 2
  %211 = load %struct.TYPE_30__*, %struct.TYPE_30__** %210, align 8
  %212 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %211, i32 0, i32 2
  store i64 0, i64* %212, align 8
  %213 = load %struct.TYPE_34__*, %struct.TYPE_34__** %18, align 8
  %214 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %213, i32 0, i32 2
  %215 = load %struct.TYPE_30__*, %struct.TYPE_30__** %214, align 8
  %216 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %215, i32 0, i32 1
  store i64 0, i64* %216, align 8
  %217 = load %struct.TYPE_34__*, %struct.TYPE_34__** %18, align 8
  %218 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %217, i32 0, i32 2
  %219 = load %struct.TYPE_30__*, %struct.TYPE_30__** %218, align 8
  %220 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %219, i32 0, i32 0
  store i32 1, i32* %220, align 8
  br label %268

221:                                              ; preds = %158
  %222 = load i32, i32* %12, align 4
  %223 = icmp eq i32 %222, 3
  br i1 %223, label %224, label %263

224:                                              ; preds = %221
  %225 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  store %struct.TYPE_33__* %225, %struct.TYPE_33__** %9, align 8
  %226 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %227 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %228 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %227, i64 1
  %229 = call %struct.TYPE_34__* @ngx_http_user_agent_get_version(%struct.TYPE_36__* %226, %struct.TYPE_33__* %228)
  store %struct.TYPE_34__* %229, %struct.TYPE_34__** %18, align 8
  %230 = load %struct.TYPE_34__*, %struct.TYPE_34__** %18, align 8
  %231 = icmp eq %struct.TYPE_34__* %230, null
  br i1 %231, label %232, label %234

232:                                              ; preds = %224
  %233 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %233, i8** %4, align 8
  br label %424

234:                                              ; preds = %224
  %235 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %236 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %235, i64 2
  %237 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %236, i32 0, i32 1
  %238 = load i32, i32* %237, align 4
  %239 = load %struct.TYPE_34__*, %struct.TYPE_34__** %18, align 8
  %240 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %239, i32 0, i32 2
  %241 = load %struct.TYPE_30__*, %struct.TYPE_30__** %240, align 8
  %242 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %241, i32 0, i32 4
  store i32 %238, i32* %242, align 4
  %243 = load %struct.TYPE_33__*, %struct.TYPE_33__** %8, align 8
  %244 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %243, i64 2
  %245 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 4
  %247 = load %struct.TYPE_34__*, %struct.TYPE_34__** %18, align 8
  %248 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %247, i32 0, i32 2
  %249 = load %struct.TYPE_30__*, %struct.TYPE_30__** %248, align 8
  %250 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %249, i32 0, i32 3
  store i32 %246, i32* %250, align 8
  %251 = load %struct.TYPE_34__*, %struct.TYPE_34__** %18, align 8
  %252 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %251, i32 0, i32 2
  %253 = load %struct.TYPE_30__*, %struct.TYPE_30__** %252, align 8
  %254 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %253, i32 0, i32 2
  store i64 0, i64* %254, align 8
  %255 = load %struct.TYPE_34__*, %struct.TYPE_34__** %18, align 8
  %256 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %255, i32 0, i32 2
  %257 = load %struct.TYPE_30__*, %struct.TYPE_30__** %256, align 8
  %258 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %257, i32 0, i32 1
  store i64 0, i64* %258, align 8
  %259 = load %struct.TYPE_34__*, %struct.TYPE_34__** %18, align 8
  %260 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %259, i32 0, i32 2
  %261 = load %struct.TYPE_30__*, %struct.TYPE_30__** %260, align 8
  %262 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %261, i32 0, i32 0
  store i32 1, i32* %262, align 8
  br label %268

263:                                              ; preds = %221
  %264 = load i32, i32* @NGX_LOG_EMERG, align 4
  %265 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %266 = call i32 @ngx_conf_log_error(i32 %264, %struct.TYPE_36__* %265, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  %267 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %267, i8** %4, align 8
  br label %424

268:                                              ; preds = %234, %186
  %269 = load i32, i32* @NGX_TRIE_REVERSE, align 4
  store i32 %269, i32* %13, align 4
  %270 = load %struct.TYPE_31__*, %struct.TYPE_31__** %14, align 8
  %271 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %270, i32 0, i32 0
  %272 = load %struct.TYPE_32__* (%struct.TYPE_31__*, %struct.TYPE_33__*, i32)*, %struct.TYPE_32__* (%struct.TYPE_31__*, %struct.TYPE_33__*, i32)** %271, align 8
  %273 = load %struct.TYPE_31__*, %struct.TYPE_31__** %14, align 8
  %274 = load %struct.TYPE_33__*, %struct.TYPE_33__** %9, align 8
  %275 = load i32, i32* %13, align 4
  %276 = call %struct.TYPE_32__* %272(%struct.TYPE_31__* %273, %struct.TYPE_33__* %274, i32 %275)
  store %struct.TYPE_32__* %276, %struct.TYPE_32__** %16, align 8
  %277 = load %struct.TYPE_32__*, %struct.TYPE_32__** %16, align 8
  %278 = icmp eq %struct.TYPE_32__* %277, null
  br i1 %278, label %279, label %281

279:                                              ; preds = %268
  %280 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %280, i8** %4, align 8
  br label %424

281:                                              ; preds = %268
  %282 = load %struct.TYPE_32__*, %struct.TYPE_32__** %16, align 8
  %283 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %282, i32 0, i32 0
  %284 = load i8*, i8** %283, align 8
  %285 = bitcast i8* %284 to %struct.TYPE_27__*
  store %struct.TYPE_27__* %285, %struct.TYPE_27__** %15, align 8
  %286 = load %struct.TYPE_27__*, %struct.TYPE_27__** %15, align 8
  %287 = icmp eq %struct.TYPE_27__* %286, null
  br i1 %287, label %288, label %298

288:                                              ; preds = %281
  %289 = load %struct.TYPE_35__*, %struct.TYPE_35__** %17, align 8
  %290 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %289, i32 0, i32 0
  %291 = load i32, i32* %290, align 8
  %292 = call %struct.TYPE_27__* @ngx_array_create(i32 %291, i32 2, i32 24)
  store %struct.TYPE_27__* %292, %struct.TYPE_27__** %15, align 8
  %293 = load %struct.TYPE_27__*, %struct.TYPE_27__** %15, align 8
  %294 = icmp eq %struct.TYPE_27__* %293, null
  br i1 %294, label %295, label %297

295:                                              ; preds = %288
  %296 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %296, i8** %4, align 8
  br label %424

297:                                              ; preds = %288
  br label %298

298:                                              ; preds = %297, %281
  %299 = load %struct.TYPE_27__*, %struct.TYPE_27__** %15, align 8
  %300 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %299, i32 0, i32 1
  %301 = load i64, i64* %300, align 8
  %302 = inttoptr i64 %301 to %struct.TYPE_34__*
  store %struct.TYPE_34__* %302, %struct.TYPE_34__** %19, align 8
  store i32 0, i32* %11, align 4
  br label %303

303:                                              ; preds = %403, %298
  %304 = load i32, i32* %11, align 4
  %305 = load %struct.TYPE_27__*, %struct.TYPE_27__** %15, align 8
  %306 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %305, i32 0, i32 0
  %307 = load i32, i32* %306, align 8
  %308 = icmp slt i32 %304, %307
  br i1 %308, label %309, label %406

309:                                              ; preds = %303
  %310 = load %struct.TYPE_34__*, %struct.TYPE_34__** %19, align 8
  %311 = load i32, i32* %11, align 4
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %310, i64 %312
  %314 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %313, i32 0, i32 0
  %315 = load i64, i64* %314, align 8
  %316 = load %struct.TYPE_34__*, %struct.TYPE_34__** %18, align 8
  %317 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %316, i32 0, i32 0
  %318 = load i64, i64* %317, align 8
  %319 = icmp sge i64 %315, %318
  br i1 %319, label %320, label %331

320:                                              ; preds = %309
  %321 = load %struct.TYPE_34__*, %struct.TYPE_34__** %19, align 8
  %322 = load i32, i32* %11, align 4
  %323 = sext i32 %322 to i64
  %324 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %321, i64 %323
  %325 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %324, i32 0, i32 0
  %326 = load i64, i64* %325, align 8
  %327 = load %struct.TYPE_34__*, %struct.TYPE_34__** %18, align 8
  %328 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %327, i32 0, i32 1
  %329 = load i64, i64* %328, align 8
  %330 = icmp sle i64 %326, %329
  br i1 %330, label %397, label %331

331:                                              ; preds = %320, %309
  %332 = load %struct.TYPE_34__*, %struct.TYPE_34__** %19, align 8
  %333 = load i32, i32* %11, align 4
  %334 = sext i32 %333 to i64
  %335 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %332, i64 %334
  %336 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %335, i32 0, i32 1
  %337 = load i64, i64* %336, align 8
  %338 = load %struct.TYPE_34__*, %struct.TYPE_34__** %18, align 8
  %339 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %338, i32 0, i32 0
  %340 = load i64, i64* %339, align 8
  %341 = icmp sge i64 %337, %340
  br i1 %341, label %342, label %353

342:                                              ; preds = %331
  %343 = load %struct.TYPE_34__*, %struct.TYPE_34__** %19, align 8
  %344 = load i32, i32* %11, align 4
  %345 = sext i32 %344 to i64
  %346 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %343, i64 %345
  %347 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %346, i32 0, i32 1
  %348 = load i64, i64* %347, align 8
  %349 = load %struct.TYPE_34__*, %struct.TYPE_34__** %18, align 8
  %350 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %349, i32 0, i32 1
  %351 = load i64, i64* %350, align 8
  %352 = icmp sle i64 %348, %351
  br i1 %352, label %397, label %353

353:                                              ; preds = %342, %331
  %354 = load %struct.TYPE_34__*, %struct.TYPE_34__** %18, align 8
  %355 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %354, i32 0, i32 0
  %356 = load i64, i64* %355, align 8
  %357 = load %struct.TYPE_34__*, %struct.TYPE_34__** %19, align 8
  %358 = load i32, i32* %11, align 4
  %359 = sext i32 %358 to i64
  %360 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %357, i64 %359
  %361 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %360, i32 0, i32 0
  %362 = load i64, i64* %361, align 8
  %363 = icmp sge i64 %356, %362
  br i1 %363, label %364, label %375

364:                                              ; preds = %353
  %365 = load %struct.TYPE_34__*, %struct.TYPE_34__** %18, align 8
  %366 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %365, i32 0, i32 0
  %367 = load i64, i64* %366, align 8
  %368 = load %struct.TYPE_34__*, %struct.TYPE_34__** %19, align 8
  %369 = load i32, i32* %11, align 4
  %370 = sext i32 %369 to i64
  %371 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %368, i64 %370
  %372 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %371, i32 0, i32 1
  %373 = load i64, i64* %372, align 8
  %374 = icmp sle i64 %367, %373
  br i1 %374, label %397, label %375

375:                                              ; preds = %364, %353
  %376 = load %struct.TYPE_34__*, %struct.TYPE_34__** %18, align 8
  %377 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %376, i32 0, i32 1
  %378 = load i64, i64* %377, align 8
  %379 = load %struct.TYPE_34__*, %struct.TYPE_34__** %19, align 8
  %380 = load i32, i32* %11, align 4
  %381 = sext i32 %380 to i64
  %382 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %379, i64 %381
  %383 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %382, i32 0, i32 0
  %384 = load i64, i64* %383, align 8
  %385 = icmp sge i64 %378, %384
  br i1 %385, label %386, label %402

386:                                              ; preds = %375
  %387 = load %struct.TYPE_34__*, %struct.TYPE_34__** %18, align 8
  %388 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %387, i32 0, i32 1
  %389 = load i64, i64* %388, align 8
  %390 = load %struct.TYPE_34__*, %struct.TYPE_34__** %19, align 8
  %391 = load i32, i32* %11, align 4
  %392 = sext i32 %391 to i64
  %393 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %390, i64 %392
  %394 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %393, i32 0, i32 1
  %395 = load i64, i64* %394, align 8
  %396 = icmp sle i64 %389, %395
  br i1 %396, label %397, label %402

397:                                              ; preds = %386, %364, %342, %320
  %398 = load i32, i32* @NGX_LOG_EMERG, align 4
  %399 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %400 = call i32 @ngx_conf_log_error(i32 %398, %struct.TYPE_36__* %399, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0))
  %401 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %401, i8** %4, align 8
  br label %424

402:                                              ; preds = %386, %375
  br label %403

403:                                              ; preds = %402
  %404 = load i32, i32* %11, align 4
  %405 = add nsw i32 %404, 1
  store i32 %405, i32* %11, align 4
  br label %303

406:                                              ; preds = %303
  %407 = load %struct.TYPE_27__*, %struct.TYPE_27__** %15, align 8
  %408 = call i64 @ngx_array_push(%struct.TYPE_27__* %407)
  %409 = inttoptr i64 %408 to %struct.TYPE_34__*
  store %struct.TYPE_34__* %409, %struct.TYPE_34__** %19, align 8
  %410 = load %struct.TYPE_34__*, %struct.TYPE_34__** %19, align 8
  %411 = icmp eq %struct.TYPE_34__* %410, null
  br i1 %411, label %412, label %414

412:                                              ; preds = %406
  %413 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %413, i8** %4, align 8
  br label %424

414:                                              ; preds = %406
  %415 = load %struct.TYPE_34__*, %struct.TYPE_34__** %19, align 8
  %416 = load %struct.TYPE_34__*, %struct.TYPE_34__** %18, align 8
  %417 = bitcast %struct.TYPE_34__* %415 to i8*
  %418 = bitcast %struct.TYPE_34__* %416 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %417, i8* align 8 %418, i64 24, i1 false)
  %419 = load %struct.TYPE_27__*, %struct.TYPE_27__** %15, align 8
  %420 = bitcast %struct.TYPE_27__* %419 to i8*
  %421 = load %struct.TYPE_32__*, %struct.TYPE_32__** %16, align 8
  %422 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %421, i32 0, i32 0
  store i8* %420, i8** %422, align 8
  %423 = load i8*, i8** @NGX_CONF_OK, align 8
  store i8* %423, i8** %4, align 8
  br label %424

424:                                              ; preds = %414, %412, %397, %295, %279, %263, %232, %184, %170, %144, %107, %105, %88, %66, %64, %38
  %425 = load i8*, i8** %4, align 8
  ret i8* %425
}

declare dso_local i32 @ngx_conf_log_error(i32, %struct.TYPE_36__*, i32, i8*) #1

declare dso_local i64 @ngx_strcmp(i32, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @ngx_conf_full_name(i32, %struct.TYPE_33__*, i32) #1

declare dso_local i32 @ngx_log_debug1(i32, i32, i32, i8*, i32) #1

declare dso_local i8* @ngx_conf_parse(%struct.TYPE_36__*, %struct.TYPE_33__*) #1

declare dso_local i8* @ngx_pcalloc(i32, i32) #1

declare dso_local %struct.TYPE_34__* @ngx_http_user_agent_get_version(%struct.TYPE_36__*, %struct.TYPE_33__*) #1

declare dso_local %struct.TYPE_27__* @ngx_array_create(i32, i32, i32) #1

declare dso_local i64 @ngx_array_push(%struct.TYPE_27__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
