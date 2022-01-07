; ModuleID = '/home/carl/AnghaBench/tengine/src/http/v2/extr_ngx_http_v2.c_ngx_http_v2_push_stream.c'
source_filename = "/home/carl/AnghaBench/tengine/src/http/v2/extr_ngx_http_v2.c_ngx_http_v2_push_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_45__ = type { i32, %struct.TYPE_39__ }
%struct.TYPE_39__ = type { i64 }
%struct.TYPE_44__ = type { i32, %struct.TYPE_35__*, %struct.TYPE_46__*, i32*, %struct.TYPE_34__* }
%struct.TYPE_35__ = type { i32, %struct.TYPE_43__, i32, i32, %struct.TYPE_36__* }
%struct.TYPE_43__ = type { i8*, i64 }
%struct.TYPE_36__ = type { %struct.TYPE_37__* }
%struct.TYPE_37__ = type { i32 }
%struct.TYPE_46__ = type { i32, i32, %struct.TYPE_44__*, i32, i32*, i32 }
%struct.TYPE_34__ = type { %struct.TYPE_41__*, i32, i32, i32, i32*, %struct.TYPE_38__* }
%struct.TYPE_41__ = type { i32, i32 }
%struct.TYPE_38__ = type { i32 }
%struct.TYPE_42__ = type { %struct.TYPE_40__ }
%struct.TYPE_40__ = type { i32, i32 }

@ngx_http_v2_module = common dso_local global i32 0, align 4
@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"http2 push stream sid:%ui depends on %ui excl:0 weight:16\00", align 1
@NGX_HTTP_V2_DEFAULT_WEIGHT = common dso_local global i32 0, align 4
@ngx_http_core_get_method = common dso_local global i32 0, align 4
@NGX_HTTP_GET = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i64 0, align 8
@ngx_http_v2_parse_headers = common dso_local global %struct.TYPE_45__* null, align 8
@ngx_http_v2_run_request_handler = common dso_local global i32 0, align 4
@ngx_posted_events = common dso_local global i32 0, align 4
@NGX_ABORT = common dso_local global i64 0, align 8
@NGX_DECLINED = common dso_local global i64 0, align 8
@NGX_HTTP_BAD_REQUEST = common dso_local global i32 0, align 4
@NGX_HTTP_INTERNAL_SERVER_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_44__* @ngx_http_v2_push_stream(%struct.TYPE_44__* %0, %struct.TYPE_43__* %1) #0 {
  %3 = alloca %struct.TYPE_44__*, align 8
  %4 = alloca %struct.TYPE_44__*, align 8
  %5 = alloca %struct.TYPE_43__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_43__, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_42__**, align 8
  %11 = alloca %struct.TYPE_36__*, align 8
  %12 = alloca %struct.TYPE_35__*, align 8
  %13 = alloca %struct.TYPE_46__*, align 8
  %14 = alloca %struct.TYPE_44__*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_34__*, align 8
  %17 = alloca %struct.TYPE_45__*, align 8
  store %struct.TYPE_44__* %0, %struct.TYPE_44__** %4, align 8
  store %struct.TYPE_43__* %1, %struct.TYPE_43__** %5, align 8
  %18 = load %struct.TYPE_44__*, %struct.TYPE_44__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %18, i32 0, i32 4
  %20 = load %struct.TYPE_34__*, %struct.TYPE_34__** %19, align 8
  store %struct.TYPE_34__* %20, %struct.TYPE_34__** %16, align 8
  %21 = load %struct.TYPE_34__*, %struct.TYPE_34__** %16, align 8
  %22 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_41__*, %struct.TYPE_41__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32* @ngx_create_pool(i32 1024, i32 %25)
  store i32* %26, i32** %8, align 8
  %27 = load i32*, i32** %8, align 8
  %28 = icmp eq i32* %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %2
  br label %295

30:                                               ; preds = %2
  %31 = load %struct.TYPE_34__*, %struct.TYPE_34__** %16, align 8
  %32 = load %struct.TYPE_34__*, %struct.TYPE_34__** %16, align 8
  %33 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call %struct.TYPE_46__* @ngx_http_v2_get_node_by_id(%struct.TYPE_34__* %31, i32 %34, i32 1)
  store %struct.TYPE_46__* %35, %struct.TYPE_46__** %13, align 8
  %36 = load %struct.TYPE_46__*, %struct.TYPE_46__** %13, align 8
  %37 = icmp eq %struct.TYPE_46__* %36, null
  br i1 %37, label %38, label %41

38:                                               ; preds = %30
  %39 = load i32*, i32** %8, align 8
  %40 = call i32 @ngx_destroy_pool(i32* %39)
  br label %295

41:                                               ; preds = %30
  %42 = load %struct.TYPE_34__*, %struct.TYPE_34__** %16, align 8
  %43 = call %struct.TYPE_44__* @ngx_http_v2_create_stream(%struct.TYPE_34__* %42, i32 1)
  store %struct.TYPE_44__* %43, %struct.TYPE_44__** %14, align 8
  %44 = load %struct.TYPE_44__*, %struct.TYPE_44__** %14, align 8
  %45 = icmp eq %struct.TYPE_44__* %44, null
  br i1 %45, label %46, label %84

46:                                               ; preds = %41
  %47 = load %struct.TYPE_46__*, %struct.TYPE_46__** %13, align 8
  %48 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %47, i32 0, i32 4
  %49 = load i32*, i32** %48, align 8
  %50 = icmp eq i32* %49, null
  br i1 %50, label %51, label %81

51:                                               ; preds = %46
  %52 = load %struct.TYPE_34__*, %struct.TYPE_34__** %16, align 8
  %53 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %52, i32 0, i32 5
  %54 = load %struct.TYPE_38__*, %struct.TYPE_38__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @ngx_http_v2_module, align 4
  %58 = call i32* @ngx_http_get_module_srv_conf(i32 %56, i32 %57)
  store i32* %58, i32** %15, align 8
  %59 = load i32*, i32** %15, align 8
  %60 = load %struct.TYPE_34__*, %struct.TYPE_34__** %16, align 8
  %61 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = call i64 @ngx_http_v2_index(i32* %59, i32 %62)
  store i64 %63, i64* %9, align 8
  %64 = load %struct.TYPE_46__*, %struct.TYPE_46__** %13, align 8
  %65 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %64, i32 0, i32 5
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.TYPE_34__*, %struct.TYPE_34__** %16, align 8
  %68 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %67, i32 0, i32 4
  %69 = load i32*, i32** %68, align 8
  %70 = load i64, i64* %9, align 8
  %71 = getelementptr inbounds i32, i32* %69, i64 %70
  store i32 %66, i32* %71, align 4
  %72 = load %struct.TYPE_34__*, %struct.TYPE_34__** %16, align 8
  %73 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %72, i32 0, i32 3
  %74 = load %struct.TYPE_46__*, %struct.TYPE_46__** %13, align 8
  %75 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %74, i32 0, i32 3
  %76 = call i32 @ngx_queue_insert_tail(i32* %73, i32* %75)
  %77 = load %struct.TYPE_34__*, %struct.TYPE_34__** %16, align 8
  %78 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %78, align 4
  br label %81

81:                                               ; preds = %51, %46
  %82 = load i32*, i32** %8, align 8
  %83 = call i32 @ngx_destroy_pool(i32* %82)
  br label %295

84:                                               ; preds = %41
  %85 = load %struct.TYPE_46__*, %struct.TYPE_46__** %13, align 8
  %86 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %85, i32 0, i32 4
  %87 = load i32*, i32** %86, align 8
  %88 = icmp ne i32* %87, null
  br i1 %88, label %89, label %97

89:                                               ; preds = %84
  %90 = load %struct.TYPE_46__*, %struct.TYPE_46__** %13, align 8
  %91 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %90, i32 0, i32 3
  %92 = call i32 @ngx_queue_remove(i32* %91)
  %93 = load %struct.TYPE_34__*, %struct.TYPE_34__** %16, align 8
  %94 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = add nsw i32 %95, -1
  store i32 %96, i32* %94, align 4
  br label %97

97:                                               ; preds = %89, %84
  %98 = load i32*, i32** %8, align 8
  %99 = load %struct.TYPE_44__*, %struct.TYPE_44__** %14, align 8
  %100 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %99, i32 0, i32 3
  store i32* %98, i32** %100, align 8
  %101 = load %struct.TYPE_44__*, %struct.TYPE_44__** %14, align 8
  %102 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %101, i32 0, i32 1
  %103 = load %struct.TYPE_35__*, %struct.TYPE_35__** %102, align 8
  store %struct.TYPE_35__* %103, %struct.TYPE_35__** %12, align 8
  %104 = load %struct.TYPE_35__*, %struct.TYPE_35__** %12, align 8
  %105 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %104, i32 0, i32 4
  %106 = load %struct.TYPE_36__*, %struct.TYPE_36__** %105, align 8
  store %struct.TYPE_36__* %106, %struct.TYPE_36__** %11, align 8
  %107 = load %struct.TYPE_44__*, %struct.TYPE_44__** %14, align 8
  %108 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %107, i32 0, i32 0
  store i32 1, i32* %108, align 8
  %109 = load %struct.TYPE_46__*, %struct.TYPE_46__** %13, align 8
  %110 = load %struct.TYPE_44__*, %struct.TYPE_44__** %14, align 8
  %111 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %110, i32 0, i32 2
  store %struct.TYPE_46__* %109, %struct.TYPE_46__** %111, align 8
  %112 = load %struct.TYPE_44__*, %struct.TYPE_44__** %14, align 8
  %113 = load %struct.TYPE_46__*, %struct.TYPE_46__** %13, align 8
  %114 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %113, i32 0, i32 2
  store %struct.TYPE_44__* %112, %struct.TYPE_44__** %114, align 8
  %115 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %116 = load %struct.TYPE_34__*, %struct.TYPE_34__** %16, align 8
  %117 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %116, i32 0, i32 0
  %118 = load %struct.TYPE_41__*, %struct.TYPE_41__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.TYPE_34__*, %struct.TYPE_34__** %16, align 8
  %122 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 8
  %124 = load %struct.TYPE_44__*, %struct.TYPE_44__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %124, i32 0, i32 2
  %126 = load %struct.TYPE_46__*, %struct.TYPE_46__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = call i32 @ngx_log_debug2(i32 %115, i32 %120, i32 0, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %123, i32 %128)
  %130 = load i32, i32* @NGX_HTTP_V2_DEFAULT_WEIGHT, align 4
  %131 = load %struct.TYPE_46__*, %struct.TYPE_46__** %13, align 8
  %132 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %131, i32 0, i32 1
  store i32 %130, i32* %132, align 4
  %133 = load %struct.TYPE_34__*, %struct.TYPE_34__** %16, align 8
  %134 = load %struct.TYPE_46__*, %struct.TYPE_46__** %13, align 8
  %135 = load %struct.TYPE_44__*, %struct.TYPE_44__** %4, align 8
  %136 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %135, i32 0, i32 2
  %137 = load %struct.TYPE_46__*, %struct.TYPE_46__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = call i32 @ngx_http_v2_set_dependency(%struct.TYPE_34__* %133, %struct.TYPE_46__* %134, i32 %139, i32 0)
  %141 = load i32, i32* @ngx_http_core_get_method, align 4
  %142 = load %struct.TYPE_35__*, %struct.TYPE_35__** %12, align 8
  %143 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %142, i32 0, i32 3
  store i32 %141, i32* %143, align 4
  %144 = load i32, i32* @NGX_HTTP_GET, align 4
  %145 = load %struct.TYPE_35__*, %struct.TYPE_35__** %12, align 8
  %146 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %145, i32 0, i32 2
  store i32 %144, i32* %146, align 8
  %147 = load i32*, i32** %8, align 8
  %148 = load %struct.TYPE_44__*, %struct.TYPE_44__** %4, align 8
  %149 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %148, i32 0, i32 1
  %150 = load %struct.TYPE_35__*, %struct.TYPE_35__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %150, i32 0, i32 1
  %152 = call i8* @ngx_pstrdup(i32* %147, %struct.TYPE_43__* %151)
  %153 = load %struct.TYPE_35__*, %struct.TYPE_35__** %12, align 8
  %154 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %153, i32 0, i32 1
  %155 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %154, i32 0, i32 0
  store i8* %152, i8** %155, align 8
  %156 = load %struct.TYPE_35__*, %struct.TYPE_35__** %12, align 8
  %157 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %156, i32 0, i32 1
  %158 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %157, i32 0, i32 0
  %159 = load i8*, i8** %158, align 8
  %160 = icmp eq i8* %159, null
  br i1 %160, label %161, label %162

161:                                              ; preds = %97
  br label %291

162:                                              ; preds = %97
  %163 = load %struct.TYPE_44__*, %struct.TYPE_44__** %4, align 8
  %164 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %163, i32 0, i32 1
  %165 = load %struct.TYPE_35__*, %struct.TYPE_35__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %165, i32 0, i32 1
  %167 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %166, i32 0, i32 1
  %168 = load i64, i64* %167, align 8
  %169 = load %struct.TYPE_35__*, %struct.TYPE_35__** %12, align 8
  %170 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %169, i32 0, i32 1
  %171 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %170, i32 0, i32 1
  store i64 %168, i64* %171, align 8
  %172 = load i32*, i32** %8, align 8
  %173 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %174 = call i8* @ngx_pstrdup(i32* %172, %struct.TYPE_43__* %173)
  %175 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %7, i32 0, i32 0
  store i8* %174, i8** %175, align 8
  %176 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %7, i32 0, i32 0
  %177 = load i8*, i8** %176, align 8
  %178 = icmp eq i8* %177, null
  br i1 %178, label %179, label %180

179:                                              ; preds = %162
  br label %291

180:                                              ; preds = %162
  %181 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %182 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %181, i32 0, i32 1
  %183 = load i64, i64* %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %7, i32 0, i32 1
  store i64 %183, i64* %184, align 8
  %185 = load %struct.TYPE_35__*, %struct.TYPE_35__** %12, align 8
  %186 = call i64 @ngx_http_v2_parse_path(%struct.TYPE_35__* %185, %struct.TYPE_43__* %7)
  store i64 %186, i64* %6, align 8
  %187 = load i64, i64* %6, align 8
  %188 = load i64, i64* @NGX_OK, align 8
  %189 = icmp ne i64 %187, %188
  br i1 %189, label %190, label %191

190:                                              ; preds = %180
  br label %273

191:                                              ; preds = %180
  %192 = load %struct.TYPE_45__*, %struct.TYPE_45__** @ngx_http_v2_parse_headers, align 8
  store %struct.TYPE_45__* %192, %struct.TYPE_45__** %17, align 8
  br label %193

193:                                              ; preds = %259, %191
  %194 = load %struct.TYPE_45__*, %struct.TYPE_45__** %17, align 8
  %195 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %194, i32 0, i32 1
  %196 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %195, i32 0, i32 0
  %197 = load i64, i64* %196, align 8
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %262

199:                                              ; preds = %193
  %200 = load %struct.TYPE_44__*, %struct.TYPE_44__** %4, align 8
  %201 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %200, i32 0, i32 1
  %202 = load %struct.TYPE_35__*, %struct.TYPE_35__** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %202, i32 0, i32 0
  %204 = bitcast i32* %203 to i8*
  %205 = load %struct.TYPE_45__*, %struct.TYPE_45__** %17, align 8
  %206 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 8
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds i8, i8* %204, i64 %208
  %210 = bitcast i8* %209 to %struct.TYPE_42__**
  store %struct.TYPE_42__** %210, %struct.TYPE_42__*** %10, align 8
  %211 = load %struct.TYPE_42__**, %struct.TYPE_42__*** %10, align 8
  %212 = load %struct.TYPE_42__*, %struct.TYPE_42__** %211, align 8
  %213 = icmp eq %struct.TYPE_42__* %212, null
  br i1 %213, label %214, label %215

214:                                              ; preds = %199
  br label %259

215:                                              ; preds = %199
  %216 = load %struct.TYPE_42__**, %struct.TYPE_42__*** %10, align 8
  %217 = load %struct.TYPE_42__*, %struct.TYPE_42__** %216, align 8
  %218 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %217, i32 0, i32 0
  %219 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %7, i32 0, i32 1
  store i64 %221, i64* %222, align 8
  %223 = load i32*, i32** %8, align 8
  %224 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %7, i32 0, i32 1
  %225 = load i64, i64* %224, align 8
  %226 = add i64 %225, 1
  %227 = trunc i64 %226 to i32
  %228 = call i8* @ngx_pnalloc(i32* %223, i32 %227)
  %229 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %7, i32 0, i32 0
  store i8* %228, i8** %229, align 8
  %230 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %7, i32 0, i32 0
  %231 = load i8*, i8** %230, align 8
  %232 = icmp eq i8* %231, null
  br i1 %232, label %233, label %234

233:                                              ; preds = %215
  br label %291

234:                                              ; preds = %215
  %235 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %7, i32 0, i32 0
  %236 = load i8*, i8** %235, align 8
  %237 = load %struct.TYPE_42__**, %struct.TYPE_42__*** %10, align 8
  %238 = load %struct.TYPE_42__*, %struct.TYPE_42__** %237, align 8
  %239 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %238, i32 0, i32 0
  %240 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %239, i32 0, i32 1
  %241 = load i32, i32* %240, align 4
  %242 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %7, i32 0, i32 1
  %243 = load i64, i64* %242, align 8
  %244 = trunc i64 %243 to i32
  %245 = call i32 @ngx_memcpy(i8* %236, i32 %241, i32 %244)
  %246 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %7, i32 0, i32 0
  %247 = load i8*, i8** %246, align 8
  %248 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %7, i32 0, i32 1
  %249 = load i64, i64* %248, align 8
  %250 = getelementptr inbounds i8, i8* %247, i64 %249
  store i8 0, i8* %250, align 1
  %251 = load %struct.TYPE_35__*, %struct.TYPE_35__** %12, align 8
  %252 = load %struct.TYPE_45__*, %struct.TYPE_45__** %17, align 8
  %253 = call i64 @ngx_http_v2_parse_header(%struct.TYPE_35__* %251, %struct.TYPE_45__* %252, %struct.TYPE_43__* %7)
  store i64 %253, i64* %6, align 8
  %254 = load i64, i64* %6, align 8
  %255 = load i64, i64* @NGX_OK, align 8
  %256 = icmp ne i64 %254, %255
  br i1 %256, label %257, label %258

257:                                              ; preds = %234
  br label %273

258:                                              ; preds = %234
  br label %259

259:                                              ; preds = %258, %214
  %260 = load %struct.TYPE_45__*, %struct.TYPE_45__** %17, align 8
  %261 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %260, i32 1
  store %struct.TYPE_45__* %261, %struct.TYPE_45__** %17, align 8
  br label %193

262:                                              ; preds = %193
  %263 = load i32, i32* @ngx_http_v2_run_request_handler, align 4
  %264 = load %struct.TYPE_36__*, %struct.TYPE_36__** %11, align 8
  %265 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %264, i32 0, i32 0
  %266 = load %struct.TYPE_37__*, %struct.TYPE_37__** %265, align 8
  %267 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %266, i32 0, i32 0
  store i32 %263, i32* %267, align 4
  %268 = load %struct.TYPE_36__*, %struct.TYPE_36__** %11, align 8
  %269 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %268, i32 0, i32 0
  %270 = load %struct.TYPE_37__*, %struct.TYPE_37__** %269, align 8
  %271 = call i32 @ngx_post_event(%struct.TYPE_37__* %270, i32* @ngx_posted_events)
  %272 = load %struct.TYPE_44__*, %struct.TYPE_44__** %14, align 8
  store %struct.TYPE_44__* %272, %struct.TYPE_44__** %3, align 8
  br label %310

273:                                              ; preds = %257, %190
  %274 = load i64, i64* %6, align 8
  %275 = load i64, i64* @NGX_ABORT, align 8
  %276 = icmp eq i64 %274, %275
  br i1 %276, label %277, label %280

277:                                              ; preds = %273
  %278 = load %struct.TYPE_36__*, %struct.TYPE_36__** %11, align 8
  %279 = call i32 @ngx_http_run_posted_requests(%struct.TYPE_36__* %278)
  store %struct.TYPE_44__* null, %struct.TYPE_44__** %3, align 8
  br label %310

280:                                              ; preds = %273
  %281 = load i64, i64* %6, align 8
  %282 = load i64, i64* @NGX_DECLINED, align 8
  %283 = icmp eq i64 %281, %282
  br i1 %283, label %284, label %290

284:                                              ; preds = %280
  %285 = load %struct.TYPE_35__*, %struct.TYPE_35__** %12, align 8
  %286 = load i32, i32* @NGX_HTTP_BAD_REQUEST, align 4
  %287 = call i32 @ngx_http_finalize_request(%struct.TYPE_35__* %285, i32 %286)
  %288 = load %struct.TYPE_36__*, %struct.TYPE_36__** %11, align 8
  %289 = call i32 @ngx_http_run_posted_requests(%struct.TYPE_36__* %288)
  store %struct.TYPE_44__* null, %struct.TYPE_44__** %3, align 8
  br label %310

290:                                              ; preds = %280
  br label %291

291:                                              ; preds = %290, %233, %179, %161
  %292 = load %struct.TYPE_44__*, %struct.TYPE_44__** %14, align 8
  %293 = load i32, i32* @NGX_HTTP_INTERNAL_SERVER_ERROR, align 4
  %294 = call i32 @ngx_http_v2_close_stream(%struct.TYPE_44__* %292, i32 %293)
  store %struct.TYPE_44__* null, %struct.TYPE_44__** %3, align 8
  br label %310

295:                                              ; preds = %81, %38, %29
  %296 = load %struct.TYPE_34__*, %struct.TYPE_34__** %16, align 8
  %297 = load %struct.TYPE_34__*, %struct.TYPE_34__** %16, align 8
  %298 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %297, i32 0, i32 1
  %299 = load i32, i32* %298, align 8
  %300 = load i32, i32* @NGX_HTTP_INTERNAL_SERVER_ERROR, align 4
  %301 = call i64 @ngx_http_v2_send_rst_stream(%struct.TYPE_34__* %296, i32 %299, i32 %300)
  %302 = load i64, i64* @NGX_OK, align 8
  %303 = icmp ne i64 %301, %302
  br i1 %303, label %304, label %309

304:                                              ; preds = %295
  %305 = load %struct.TYPE_34__*, %struct.TYPE_34__** %16, align 8
  %306 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %305, i32 0, i32 0
  %307 = load %struct.TYPE_41__*, %struct.TYPE_41__** %306, align 8
  %308 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %307, i32 0, i32 0
  store i32 1, i32* %308, align 4
  br label %309

309:                                              ; preds = %304, %295
  store %struct.TYPE_44__* null, %struct.TYPE_44__** %3, align 8
  br label %310

310:                                              ; preds = %309, %291, %284, %277, %262
  %311 = load %struct.TYPE_44__*, %struct.TYPE_44__** %3, align 8
  ret %struct.TYPE_44__* %311
}

declare dso_local i32* @ngx_create_pool(i32, i32) #1

declare dso_local %struct.TYPE_46__* @ngx_http_v2_get_node_by_id(%struct.TYPE_34__*, i32, i32) #1

declare dso_local i32 @ngx_destroy_pool(i32*) #1

declare dso_local %struct.TYPE_44__* @ngx_http_v2_create_stream(%struct.TYPE_34__*, i32) #1

declare dso_local i32* @ngx_http_get_module_srv_conf(i32, i32) #1

declare dso_local i64 @ngx_http_v2_index(i32*, i32) #1

declare dso_local i32 @ngx_queue_insert_tail(i32*, i32*) #1

declare dso_local i32 @ngx_queue_remove(i32*) #1

declare dso_local i32 @ngx_log_debug2(i32, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @ngx_http_v2_set_dependency(%struct.TYPE_34__*, %struct.TYPE_46__*, i32, i32) #1

declare dso_local i8* @ngx_pstrdup(i32*, %struct.TYPE_43__*) #1

declare dso_local i64 @ngx_http_v2_parse_path(%struct.TYPE_35__*, %struct.TYPE_43__*) #1

declare dso_local i8* @ngx_pnalloc(i32*, i32) #1

declare dso_local i32 @ngx_memcpy(i8*, i32, i32) #1

declare dso_local i64 @ngx_http_v2_parse_header(%struct.TYPE_35__*, %struct.TYPE_45__*, %struct.TYPE_43__*) #1

declare dso_local i32 @ngx_post_event(%struct.TYPE_37__*, i32*) #1

declare dso_local i32 @ngx_http_run_posted_requests(%struct.TYPE_36__*) #1

declare dso_local i32 @ngx_http_finalize_request(%struct.TYPE_35__*, i32) #1

declare dso_local i32 @ngx_http_v2_close_stream(%struct.TYPE_44__*, i32) #1

declare dso_local i64 @ngx_http_v2_send_rst_stream(%struct.TYPE_34__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
