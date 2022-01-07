; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_multi_upstream_module/extr_ngx_http_multi_upstream.c_ngx_http_multi_upstream_read_handler.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_multi_upstream_module/extr_ngx_http_multi_upstream.c_ngx_http_multi_upstream_read_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_46__ = type { i64 (%struct.TYPE_46__*, i64, i64)*, %struct.TYPE_37__*, i32, %struct.TYPE_45__* }
%struct.TYPE_37__ = type { i8* }
%struct.TYPE_45__ = type { %struct.TYPE_46__*, %struct.TYPE_44__*, i32 }
%struct.TYPE_44__ = type { i64 (%struct.TYPE_45__*)*, i32, %struct.TYPE_40__, %struct.TYPE_38__*, %struct.TYPE_42__, i64, %struct.TYPE_41__*, %struct.TYPE_36__, %struct.TYPE_39__ }
%struct.TYPE_40__ = type { i64, i32, i32 }
%struct.TYPE_38__ = type { i8*, i8* }
%struct.TYPE_42__ = type { i64 }
%struct.TYPE_41__ = type { i32, i32 }
%struct.TYPE_36__ = type { i64, i64, i64, i64, i32, i32 }
%struct.TYPE_39__ = type { i32 }
%struct.TYPE_43__ = type { %struct.TYPE_45__* }

@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"multi: http upstream read handler %p\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"reading from multi upstream\00", align 1
@NGX_OK = common dso_local global i64 0, align 8
@NGX_HTTP_UPSTREAM_FT_ERROR = common dso_local global i32 0, align 4
@NGX_HTTP_INTERNAL_SERVER_ERROR = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [39 x i8] c"multi: read buffer full %p, %p, %p, %p\00", align 1
@NGX_AGAIN = common dso_local global i64 0, align 8
@NGX_LOG_ERR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [39 x i8] c"upstream prematurely closed connection\00", align 1
@NGX_ERROR = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [47 x i8] c"multi: process parse start: %d, %p, %p, %p, %p\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"multi: process parse end: %d, %p, %p, %p, %p\00", align 1
@NGX_HTTP_UPSTREAM_INVALID_HEADER = common dso_local global i64 0, align 8
@NGX_HTTP_UPSTREAM_FT_INVALID_HEADER = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [48 x i8] c"multi: upstream next because parse cur is empty\00", align 1
@NGX_HTTP_UPSTREAM_HEADER_END = common dso_local global i64 0, align 8
@ngx_current_msec = common dso_local global i8* null, align 8
@NGX_HTTP_SPECIAL_RESPONSE = common dso_local global i64 0, align 8
@NGX_HTTP_UPSTREAM_GET_BODY_DATA = common dso_local global i64 0, align 8
@NGX_LOG_INFO = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [29 x i8] c"multi: get body immediate %p\00", align 1
@NGX_HTTP_UPSTREAM_PARSE_ERROR = common dso_local global i64 0, align 8
@NGX_LOG_WARN = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [26 x i8] c"multi: parse get error %p\00", align 1
@NGX_HTTP_BAD_GATEWAY = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [30 x i8] c"multi: parse code unknown: %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ngx_http_multi_upstream_read_handler(%struct.TYPE_46__* %0) #0 {
  %2 = alloca %struct.TYPE_46__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_45__*, align 8
  %6 = alloca %struct.TYPE_45__*, align 8
  %7 = alloca %struct.TYPE_45__*, align 8
  %8 = alloca %struct.TYPE_44__*, align 8
  %9 = alloca %struct.TYPE_44__*, align 8
  %10 = alloca %struct.TYPE_44__*, align 8
  %11 = alloca %struct.TYPE_46__*, align 8
  %12 = alloca %struct.TYPE_46__*, align 8
  %13 = alloca %struct.TYPE_43__*, align 8
  %14 = alloca %struct.TYPE_36__*, align 8
  store %struct.TYPE_46__* %0, %struct.TYPE_46__** %2, align 8
  %15 = load %struct.TYPE_46__*, %struct.TYPE_46__** %2, align 8
  store %struct.TYPE_46__* %15, %struct.TYPE_46__** %11, align 8
  %16 = load %struct.TYPE_46__*, %struct.TYPE_46__** %2, align 8
  %17 = call %struct.TYPE_43__* @ngx_get_multi_connection(%struct.TYPE_46__* %16)
  store %struct.TYPE_43__* %17, %struct.TYPE_43__** %13, align 8
  %18 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %19 = load %struct.TYPE_46__*, %struct.TYPE_46__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_37__*, %struct.TYPE_37__** %20, align 8
  %22 = load %struct.TYPE_46__*, %struct.TYPE_46__** %2, align 8
  %23 = call i32 @ngx_log_debug1(i32 %18, %struct.TYPE_37__* %21, i32 0, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), %struct.TYPE_46__* %22)
  %24 = load %struct.TYPE_46__*, %struct.TYPE_46__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_37__*, %struct.TYPE_37__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %26, i32 0, i32 0
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i8** %27, align 8
  %28 = load %struct.TYPE_46__*, %struct.TYPE_46__** %2, align 8
  %29 = call i64 @ngx_http_upstream_test_connect(%struct.TYPE_46__* %28)
  %30 = load i64, i64* @NGX_OK, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %1
  %33 = load %struct.TYPE_46__*, %struct.TYPE_46__** %2, align 8
  %34 = load i32, i32* @NGX_HTTP_UPSTREAM_FT_ERROR, align 4
  %35 = call i32 @ngx_http_multi_upstream_next(%struct.TYPE_46__* %33, i32 %34)
  br label %535

36:                                               ; preds = %1
  %37 = load %struct.TYPE_46__*, %struct.TYPE_46__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %37, i32 0, i32 3
  %39 = load %struct.TYPE_45__*, %struct.TYPE_45__** %38, align 8
  store %struct.TYPE_45__* %39, %struct.TYPE_45__** %5, align 8
  %40 = load %struct.TYPE_45__*, %struct.TYPE_45__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %40, i32 0, i32 1
  %42 = load %struct.TYPE_44__*, %struct.TYPE_44__** %41, align 8
  store %struct.TYPE_44__* %42, %struct.TYPE_44__** %8, align 8
  %43 = load %struct.TYPE_45__*, %struct.TYPE_45__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %43, i32 0, i32 1
  %45 = load %struct.TYPE_44__*, %struct.TYPE_44__** %44, align 8
  store %struct.TYPE_44__* %45, %struct.TYPE_44__** %9, align 8
  %46 = load %struct.TYPE_45__*, %struct.TYPE_45__** %5, align 8
  store %struct.TYPE_45__* %46, %struct.TYPE_45__** %6, align 8
  %47 = load %struct.TYPE_44__*, %struct.TYPE_44__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %47, i32 0, i32 7
  %49 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = inttoptr i64 %50 to i8*
  %52 = icmp eq i8* %51, null
  br i1 %52, label %53, label %145

53:                                               ; preds = %36
  %54 = load %struct.TYPE_45__*, %struct.TYPE_45__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.TYPE_44__*, %struct.TYPE_44__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %57, i32 0, i32 6
  %59 = load %struct.TYPE_41__*, %struct.TYPE_41__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32* @ngx_palloc(i32 %56, i32 %61)
  %63 = ptrtoint i32* %62 to i64
  %64 = load %struct.TYPE_44__*, %struct.TYPE_44__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %64, i32 0, i32 7
  %66 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %65, i32 0, i32 1
  store i64 %63, i64* %66, align 8
  %67 = load %struct.TYPE_44__*, %struct.TYPE_44__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %67, i32 0, i32 7
  %69 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = inttoptr i64 %70 to i8*
  %72 = icmp eq i8* %71, null
  br i1 %72, label %73, label %78

73:                                               ; preds = %53
  %74 = load %struct.TYPE_45__*, %struct.TYPE_45__** %5, align 8
  %75 = load %struct.TYPE_44__*, %struct.TYPE_44__** %8, align 8
  %76 = load i64, i64* @NGX_HTTP_INTERNAL_SERVER_ERROR, align 8
  %77 = call i32 @ngx_http_upstream_finalize_request(%struct.TYPE_45__* %74, %struct.TYPE_44__* %75, i64 %76)
  br label %535

78:                                               ; preds = %53
  %79 = load %struct.TYPE_44__*, %struct.TYPE_44__** %8, align 8
  %80 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %79, i32 0, i32 7
  %81 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.TYPE_44__*, %struct.TYPE_44__** %8, align 8
  %84 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %83, i32 0, i32 7
  %85 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %84, i32 0, i32 0
  store i64 %82, i64* %85, align 8
  %86 = load %struct.TYPE_44__*, %struct.TYPE_44__** %8, align 8
  %87 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %86, i32 0, i32 7
  %88 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.TYPE_44__*, %struct.TYPE_44__** %8, align 8
  %91 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %90, i32 0, i32 7
  %92 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %91, i32 0, i32 2
  store i64 %89, i64* %92, align 8
  %93 = load %struct.TYPE_44__*, %struct.TYPE_44__** %8, align 8
  %94 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %93, i32 0, i32 7
  %95 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.TYPE_44__*, %struct.TYPE_44__** %8, align 8
  %98 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %97, i32 0, i32 6
  %99 = load %struct.TYPE_41__*, %struct.TYPE_41__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = sext i32 %101 to i64
  %103 = add nsw i64 %96, %102
  %104 = load %struct.TYPE_44__*, %struct.TYPE_44__** %8, align 8
  %105 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %104, i32 0, i32 7
  %106 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %105, i32 0, i32 3
  store i64 %103, i64* %106, align 8
  %107 = load %struct.TYPE_44__*, %struct.TYPE_44__** %8, align 8
  %108 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %107, i32 0, i32 7
  %109 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %108, i32 0, i32 4
  store i32 1, i32* %109, align 8
  %110 = load %struct.TYPE_44__*, %struct.TYPE_44__** %8, align 8
  %111 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %110, i32 0, i32 8
  %112 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.TYPE_44__*, %struct.TYPE_44__** %8, align 8
  %115 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %114, i32 0, i32 7
  %116 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %115, i32 0, i32 5
  store i32 %113, i32* %116, align 4
  %117 = load %struct.TYPE_44__*, %struct.TYPE_44__** %8, align 8
  %118 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %117, i32 0, i32 2
  %119 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %118, i32 0, i32 2
  %120 = load %struct.TYPE_45__*, %struct.TYPE_45__** %5, align 8
  %121 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 8
  %123 = call i64 @ngx_list_init(i32* %119, i32 %122, i32 8, i32 4)
  %124 = load i64, i64* @NGX_OK, align 8
  %125 = icmp ne i64 %123, %124
  br i1 %125, label %126, label %130

126:                                              ; preds = %78
  %127 = load %struct.TYPE_46__*, %struct.TYPE_46__** %2, align 8
  %128 = load i64, i64* @NGX_HTTP_INTERNAL_SERVER_ERROR, align 8
  %129 = call i32 @ngx_http_multi_upstream_finalize_request(%struct.TYPE_46__* %127, i64 %128)
  br label %535

130:                                              ; preds = %78
  %131 = load %struct.TYPE_44__*, %struct.TYPE_44__** %8, align 8
  %132 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %131, i32 0, i32 2
  %133 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %132, i32 0, i32 1
  %134 = load %struct.TYPE_45__*, %struct.TYPE_45__** %5, align 8
  %135 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 8
  %137 = call i64 @ngx_list_init(i32* %133, i32 %136, i32 2, i32 4)
  %138 = load i64, i64* @NGX_OK, align 8
  %139 = icmp ne i64 %137, %138
  br i1 %139, label %140, label %144

140:                                              ; preds = %130
  %141 = load %struct.TYPE_46__*, %struct.TYPE_46__** %2, align 8
  %142 = load i64, i64* @NGX_HTTP_INTERNAL_SERVER_ERROR, align 8
  %143 = call i32 @ngx_http_multi_upstream_finalize_request(%struct.TYPE_46__* %141, i64 %142)
  br label %535

144:                                              ; preds = %130
  br label %145

145:                                              ; preds = %144, %36
  %146 = load %struct.TYPE_44__*, %struct.TYPE_44__** %9, align 8
  %147 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %146, i32 0, i32 7
  store %struct.TYPE_36__* %147, %struct.TYPE_36__** %14, align 8
  br label %148

148:                                              ; preds = %534, %145
  %149 = load %struct.TYPE_36__*, %struct.TYPE_36__** %14, align 8
  %150 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %149, i32 0, i32 2
  %151 = load i64, i64* %150, align 8
  %152 = load %struct.TYPE_36__*, %struct.TYPE_36__** %14, align 8
  %153 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %152, i32 0, i32 3
  %154 = load i64, i64* %153, align 8
  %155 = icmp eq i64 %151, %154
  br i1 %155, label %156, label %174

156:                                              ; preds = %148
  %157 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %158 = load %struct.TYPE_46__*, %struct.TYPE_46__** %2, align 8
  %159 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %158, i32 0, i32 1
  %160 = load %struct.TYPE_37__*, %struct.TYPE_37__** %159, align 8
  %161 = load %struct.TYPE_36__*, %struct.TYPE_36__** %14, align 8
  %162 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %161, i32 0, i32 1
  %163 = load i64, i64* %162, align 8
  %164 = load %struct.TYPE_36__*, %struct.TYPE_36__** %14, align 8
  %165 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %164, i32 0, i32 3
  %166 = load i64, i64* %165, align 8
  %167 = load %struct.TYPE_36__*, %struct.TYPE_36__** %14, align 8
  %168 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = load %struct.TYPE_36__*, %struct.TYPE_36__** %14, align 8
  %171 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %170, i32 0, i32 2
  %172 = load i64, i64* %171, align 8
  %173 = call i32 @ngx_log_debug4(i32 %157, %struct.TYPE_37__* %160, i32 0, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i64 %163, i64 %166, i64 %169, i64 %172)
  br label %240

174:                                              ; preds = %148
  %175 = load %struct.TYPE_46__*, %struct.TYPE_46__** %11, align 8
  %176 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %175, i32 0, i32 0
  %177 = load i64 (%struct.TYPE_46__*, i64, i64)*, i64 (%struct.TYPE_46__*, i64, i64)** %176, align 8
  %178 = load %struct.TYPE_46__*, %struct.TYPE_46__** %11, align 8
  %179 = load %struct.TYPE_36__*, %struct.TYPE_36__** %14, align 8
  %180 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %179, i32 0, i32 2
  %181 = load i64, i64* %180, align 8
  %182 = load %struct.TYPE_36__*, %struct.TYPE_36__** %14, align 8
  %183 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %182, i32 0, i32 3
  %184 = load i64, i64* %183, align 8
  %185 = load %struct.TYPE_36__*, %struct.TYPE_36__** %14, align 8
  %186 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %185, i32 0, i32 2
  %187 = load i64, i64* %186, align 8
  %188 = sub nsw i64 %184, %187
  %189 = call i64 %177(%struct.TYPE_46__* %178, i64 %181, i64 %188)
  store i64 %189, i64* %3, align 8
  %190 = load i64, i64* %3, align 8
  %191 = load i64, i64* @NGX_AGAIN, align 8
  %192 = icmp eq i64 %190, %191
  br i1 %192, label %193, label %214

193:                                              ; preds = %174
  %194 = load %struct.TYPE_46__*, %struct.TYPE_46__** %2, align 8
  %195 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %194, i32 0, i32 2
  %196 = load i32, i32* %195, align 8
  %197 = load %struct.TYPE_44__*, %struct.TYPE_44__** %8, align 8
  %198 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %197, i32 0, i32 6
  %199 = load %struct.TYPE_41__*, %struct.TYPE_41__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 4
  %202 = call i32 @ngx_add_timer(i32 %196, i32 %201)
  %203 = load %struct.TYPE_46__*, %struct.TYPE_46__** %11, align 8
  %204 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %203, i32 0, i32 2
  %205 = load i32, i32* %204, align 8
  %206 = call i64 @ngx_handle_read_event(i32 %205, i32 0)
  %207 = load i64, i64* @NGX_OK, align 8
  %208 = icmp ne i64 %206, %207
  br i1 %208, label %209, label %213

209:                                              ; preds = %193
  %210 = load %struct.TYPE_46__*, %struct.TYPE_46__** %2, align 8
  %211 = load i64, i64* @NGX_HTTP_INTERNAL_SERVER_ERROR, align 8
  %212 = call i32 @ngx_http_multi_upstream_finalize_request(%struct.TYPE_46__* %210, i64 %211)
  br label %535

213:                                              ; preds = %193
  br label %535

214:                                              ; preds = %174
  %215 = load i64, i64* %3, align 8
  %216 = icmp eq i64 %215, 0
  br i1 %216, label %217, label %223

217:                                              ; preds = %214
  %218 = load i32, i32* @NGX_LOG_ERR, align 4
  %219 = load %struct.TYPE_46__*, %struct.TYPE_46__** %11, align 8
  %220 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %219, i32 0, i32 1
  %221 = load %struct.TYPE_37__*, %struct.TYPE_37__** %220, align 8
  %222 = call i32 (i32, %struct.TYPE_37__*, i32, i8*, ...) @ngx_log_error(i32 %218, %struct.TYPE_37__* %221, i32 0, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  br label %223

223:                                              ; preds = %217, %214
  %224 = load i64, i64* %3, align 8
  %225 = load i64, i64* @NGX_ERROR, align 8
  %226 = icmp eq i64 %224, %225
  br i1 %226, label %230, label %227

227:                                              ; preds = %223
  %228 = load i64, i64* %3, align 8
  %229 = icmp eq i64 %228, 0
  br i1 %229, label %230, label %234

230:                                              ; preds = %227, %223
  %231 = load %struct.TYPE_46__*, %struct.TYPE_46__** %2, align 8
  %232 = load i32, i32* @NGX_HTTP_UPSTREAM_FT_ERROR, align 4
  %233 = call i32 @ngx_http_multi_upstream_next(%struct.TYPE_46__* %231, i32 %232)
  br label %535

234:                                              ; preds = %227
  %235 = load i64, i64* %3, align 8
  %236 = load %struct.TYPE_36__*, %struct.TYPE_36__** %14, align 8
  %237 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %236, i32 0, i32 2
  %238 = load i64, i64* %237, align 8
  %239 = add nsw i64 %238, %235
  store i64 %239, i64* %237, align 8
  br label %240

240:                                              ; preds = %234, %156
  br label %241

241:                                              ; preds = %531, %473, %465, %458, %411, %403, %396, %240
  %242 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %243 = load %struct.TYPE_46__*, %struct.TYPE_46__** %11, align 8
  %244 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %243, i32 0, i32 1
  %245 = load %struct.TYPE_37__*, %struct.TYPE_37__** %244, align 8
  %246 = load %struct.TYPE_36__*, %struct.TYPE_36__** %14, align 8
  %247 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %246, i32 0, i32 2
  %248 = load i64, i64* %247, align 8
  %249 = load %struct.TYPE_36__*, %struct.TYPE_36__** %14, align 8
  %250 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %249, i32 0, i32 0
  %251 = load i64, i64* %250, align 8
  %252 = sub nsw i64 %248, %251
  %253 = load %struct.TYPE_36__*, %struct.TYPE_36__** %14, align 8
  %254 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %253, i32 0, i32 1
  %255 = load i64, i64* %254, align 8
  %256 = load %struct.TYPE_36__*, %struct.TYPE_36__** %14, align 8
  %257 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %256, i32 0, i32 3
  %258 = load i64, i64* %257, align 8
  %259 = load %struct.TYPE_36__*, %struct.TYPE_36__** %14, align 8
  %260 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %259, i32 0, i32 0
  %261 = load i64, i64* %260, align 8
  %262 = load %struct.TYPE_36__*, %struct.TYPE_36__** %14, align 8
  %263 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %262, i32 0, i32 2
  %264 = load i64, i64* %263, align 8
  %265 = call i32 @ngx_log_debug5(i32 %242, %struct.TYPE_37__* %245, i32 0, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0), i64 %252, i64 %255, i64 %258, i64 %261, i64 %264)
  %266 = load %struct.TYPE_44__*, %struct.TYPE_44__** %8, align 8
  %267 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %266, i32 0, i32 0
  %268 = load i64 (%struct.TYPE_45__*)*, i64 (%struct.TYPE_45__*)** %267, align 8
  %269 = load %struct.TYPE_45__*, %struct.TYPE_45__** %6, align 8
  %270 = call i64 %268(%struct.TYPE_45__* %269)
  store i64 %270, i64* %4, align 8
  %271 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %272 = load %struct.TYPE_46__*, %struct.TYPE_46__** %11, align 8
  %273 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %272, i32 0, i32 1
  %274 = load %struct.TYPE_37__*, %struct.TYPE_37__** %273, align 8
  %275 = load %struct.TYPE_36__*, %struct.TYPE_36__** %14, align 8
  %276 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %275, i32 0, i32 2
  %277 = load i64, i64* %276, align 8
  %278 = load %struct.TYPE_36__*, %struct.TYPE_36__** %14, align 8
  %279 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %278, i32 0, i32 0
  %280 = load i64, i64* %279, align 8
  %281 = sub nsw i64 %277, %280
  %282 = load %struct.TYPE_36__*, %struct.TYPE_36__** %14, align 8
  %283 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %282, i32 0, i32 1
  %284 = load i64, i64* %283, align 8
  %285 = load %struct.TYPE_36__*, %struct.TYPE_36__** %14, align 8
  %286 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %285, i32 0, i32 3
  %287 = load i64, i64* %286, align 8
  %288 = load %struct.TYPE_36__*, %struct.TYPE_36__** %14, align 8
  %289 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %288, i32 0, i32 0
  %290 = load i64, i64* %289, align 8
  %291 = load %struct.TYPE_36__*, %struct.TYPE_36__** %14, align 8
  %292 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %291, i32 0, i32 2
  %293 = load i64, i64* %292, align 8
  %294 = call i32 @ngx_log_debug5(i32 %271, %struct.TYPE_37__* %274, i32 0, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0), i64 %281, i64 %284, i64 %287, i64 %290, i64 %293)
  %295 = load i64, i64* %4, align 8
  %296 = load i64, i64* @NGX_AGAIN, align 8
  %297 = icmp eq i64 %295, %296
  br i1 %297, label %298, label %326

298:                                              ; preds = %241
  %299 = load %struct.TYPE_36__*, %struct.TYPE_36__** %14, align 8
  %300 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %299, i32 0, i32 2
  %301 = load i64, i64* %300, align 8
  %302 = load %struct.TYPE_36__*, %struct.TYPE_36__** %14, align 8
  %303 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %302, i32 0, i32 3
  %304 = load i64, i64* %303, align 8
  %305 = icmp eq i64 %301, %304
  br i1 %305, label %306, label %325

306:                                              ; preds = %298
  %307 = load %struct.TYPE_36__*, %struct.TYPE_36__** %14, align 8
  %308 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %307, i32 0, i32 0
  %309 = load i64, i64* %308, align 8
  %310 = load %struct.TYPE_36__*, %struct.TYPE_36__** %14, align 8
  %311 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %310, i32 0, i32 2
  %312 = load i64, i64* %311, align 8
  %313 = icmp eq i64 %309, %312
  br i1 %313, label %314, label %325

314:                                              ; preds = %306
  %315 = load %struct.TYPE_36__*, %struct.TYPE_36__** %14, align 8
  %316 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %315, i32 0, i32 1
  %317 = load i64, i64* %316, align 8
  %318 = load %struct.TYPE_36__*, %struct.TYPE_36__** %14, align 8
  %319 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %318, i32 0, i32 0
  store i64 %317, i64* %319, align 8
  %320 = load %struct.TYPE_36__*, %struct.TYPE_36__** %14, align 8
  %321 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %320, i32 0, i32 1
  %322 = load i64, i64* %321, align 8
  %323 = load %struct.TYPE_36__*, %struct.TYPE_36__** %14, align 8
  %324 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %323, i32 0, i32 2
  store i64 %322, i64* %324, align 8
  br label %325

325:                                              ; preds = %314, %306, %298
  br label %534

326:                                              ; preds = %241
  %327 = load i64, i64* %4, align 8
  %328 = load i64, i64* @NGX_HTTP_UPSTREAM_INVALID_HEADER, align 8
  %329 = icmp eq i64 %327, %328
  br i1 %329, label %330, label %334

330:                                              ; preds = %326
  %331 = load %struct.TYPE_46__*, %struct.TYPE_46__** %2, align 8
  %332 = load i32, i32* @NGX_HTTP_UPSTREAM_FT_INVALID_HEADER, align 4
  %333 = call i32 @ngx_http_multi_upstream_next(%struct.TYPE_46__* %331, i32 %332)
  br label %535

334:                                              ; preds = %326
  %335 = load i64, i64* %4, align 8
  %336 = load i64, i64* @NGX_ERROR, align 8
  %337 = icmp eq i64 %335, %336
  br i1 %337, label %338, label %342

338:                                              ; preds = %334
  %339 = load %struct.TYPE_46__*, %struct.TYPE_46__** %2, align 8
  %340 = load i64, i64* @NGX_HTTP_INTERNAL_SERVER_ERROR, align 8
  %341 = call i32 @ngx_http_multi_upstream_finalize_request(%struct.TYPE_46__* %339, i64 %340)
  br label %535

342:                                              ; preds = %334
  %343 = load %struct.TYPE_43__*, %struct.TYPE_43__** %13, align 8
  %344 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %343, i32 0, i32 0
  %345 = load %struct.TYPE_45__*, %struct.TYPE_45__** %344, align 8
  %346 = icmp ne %struct.TYPE_45__* %345, null
  br i1 %346, label %356, label %347

347:                                              ; preds = %342
  %348 = load i32, i32* @NGX_LOG_ERR, align 4
  %349 = load %struct.TYPE_46__*, %struct.TYPE_46__** %11, align 8
  %350 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %349, i32 0, i32 1
  %351 = load %struct.TYPE_37__*, %struct.TYPE_37__** %350, align 8
  %352 = call i32 (i32, %struct.TYPE_37__*, i32, i8*, ...) @ngx_log_error(i32 %348, %struct.TYPE_37__* %351, i32 0, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.6, i64 0, i64 0))
  %353 = load %struct.TYPE_46__*, %struct.TYPE_46__** %2, align 8
  %354 = load i64, i64* @NGX_HTTP_INTERNAL_SERVER_ERROR, align 8
  %355 = call i32 @ngx_http_multi_upstream_finalize_request(%struct.TYPE_46__* %353, i64 %354)
  br label %535

356:                                              ; preds = %342
  %357 = load %struct.TYPE_43__*, %struct.TYPE_43__** %13, align 8
  %358 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %357, i32 0, i32 0
  %359 = load %struct.TYPE_45__*, %struct.TYPE_45__** %358, align 8
  store %struct.TYPE_45__* %359, %struct.TYPE_45__** %7, align 8
  %360 = load %struct.TYPE_45__*, %struct.TYPE_45__** %7, align 8
  %361 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %360, i32 0, i32 1
  %362 = load %struct.TYPE_44__*, %struct.TYPE_44__** %361, align 8
  store %struct.TYPE_44__* %362, %struct.TYPE_44__** %10, align 8
  %363 = load %struct.TYPE_45__*, %struct.TYPE_45__** %7, align 8
  %364 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %363, i32 0, i32 0
  %365 = load %struct.TYPE_46__*, %struct.TYPE_46__** %364, align 8
  store %struct.TYPE_46__* %365, %struct.TYPE_46__** %12, align 8
  %366 = load i64, i64* %4, align 8
  %367 = load i64, i64* @NGX_HTTP_UPSTREAM_HEADER_END, align 8
  %368 = icmp eq i64 %366, %367
  br i1 %368, label %369, label %416

369:                                              ; preds = %356
  %370 = load i8*, i8** @ngx_current_msec, align 8
  %371 = load %struct.TYPE_44__*, %struct.TYPE_44__** %10, align 8
  %372 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %371, i32 0, i32 3
  %373 = load %struct.TYPE_38__*, %struct.TYPE_38__** %372, align 8
  %374 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %373, i32 0, i32 0
  %375 = load i8*, i8** %374, align 8
  %376 = ptrtoint i8* %370 to i64
  %377 = ptrtoint i8* %375 to i64
  %378 = sub i64 %376, %377
  %379 = inttoptr i64 %378 to i8*
  %380 = load %struct.TYPE_44__*, %struct.TYPE_44__** %10, align 8
  %381 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %380, i32 0, i32 3
  %382 = load %struct.TYPE_38__*, %struct.TYPE_38__** %381, align 8
  %383 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %382, i32 0, i32 1
  store i8* %379, i8** %383, align 8
  %384 = load %struct.TYPE_44__*, %struct.TYPE_44__** %10, align 8
  %385 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %384, i32 0, i32 2
  %386 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %385, i32 0, i32 0
  %387 = load i64, i64* %386, align 8
  %388 = load i64, i64* @NGX_HTTP_SPECIAL_RESPONSE, align 8
  %389 = icmp sge i64 %387, %388
  br i1 %389, label %390, label %405

390:                                              ; preds = %369
  %391 = load %struct.TYPE_45__*, %struct.TYPE_45__** %7, align 8
  %392 = load %struct.TYPE_44__*, %struct.TYPE_44__** %10, align 8
  %393 = call i64 @ngx_http_upstream_test_next(%struct.TYPE_45__* %391, %struct.TYPE_44__* %392)
  %394 = load i64, i64* @NGX_OK, align 8
  %395 = icmp eq i64 %393, %394
  br i1 %395, label %396, label %397

396:                                              ; preds = %390
  br label %241

397:                                              ; preds = %390
  %398 = load %struct.TYPE_45__*, %struct.TYPE_45__** %7, align 8
  %399 = load %struct.TYPE_44__*, %struct.TYPE_44__** %10, align 8
  %400 = call i64 @ngx_http_upstream_intercept_errors(%struct.TYPE_45__* %398, %struct.TYPE_44__* %399)
  %401 = load i64, i64* @NGX_OK, align 8
  %402 = icmp eq i64 %400, %401
  br i1 %402, label %403, label %404

403:                                              ; preds = %397
  br label %241

404:                                              ; preds = %397
  br label %405

405:                                              ; preds = %404, %369
  %406 = load %struct.TYPE_45__*, %struct.TYPE_45__** %7, align 8
  %407 = load %struct.TYPE_44__*, %struct.TYPE_44__** %10, align 8
  %408 = call i64 @ngx_http_upstream_process_headers(%struct.TYPE_45__* %406, %struct.TYPE_44__* %407)
  %409 = load i64, i64* @NGX_OK, align 8
  %410 = icmp ne i64 %408, %409
  br i1 %410, label %411, label %412

411:                                              ; preds = %405
  br label %241

412:                                              ; preds = %405
  %413 = load %struct.TYPE_45__*, %struct.TYPE_45__** %7, align 8
  %414 = load %struct.TYPE_44__*, %struct.TYPE_44__** %10, align 8
  %415 = call i32 @ngx_http_multi_upstream_send_response(%struct.TYPE_45__* %413, %struct.TYPE_44__* %414)
  br label %531

416:                                              ; preds = %356
  %417 = load i64, i64* %4, align 8
  %418 = load i64, i64* @NGX_HTTP_UPSTREAM_GET_BODY_DATA, align 8
  %419 = icmp eq i64 %417, %418
  br i1 %419, label %420, label %481

420:                                              ; preds = %416
  %421 = load %struct.TYPE_44__*, %struct.TYPE_44__** %10, align 8
  %422 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %421, i32 0, i32 1
  %423 = load i32, i32* %422, align 8
  %424 = icmp ne i32 %423, 0
  br i1 %424, label %478, label %425

425:                                              ; preds = %420
  %426 = load i32, i32* @NGX_LOG_INFO, align 4
  %427 = load %struct.TYPE_46__*, %struct.TYPE_46__** %11, align 8
  %428 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %427, i32 0, i32 1
  %429 = load %struct.TYPE_37__*, %struct.TYPE_37__** %428, align 8
  %430 = load %struct.TYPE_45__*, %struct.TYPE_45__** %6, align 8
  %431 = call i32 (i32, %struct.TYPE_37__*, i32, i8*, ...) @ngx_log_error(i32 %426, %struct.TYPE_37__* %429, i32 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0), %struct.TYPE_45__* %430)
  %432 = load i8*, i8** @ngx_current_msec, align 8
  %433 = load %struct.TYPE_44__*, %struct.TYPE_44__** %10, align 8
  %434 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %433, i32 0, i32 3
  %435 = load %struct.TYPE_38__*, %struct.TYPE_38__** %434, align 8
  %436 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %435, i32 0, i32 0
  %437 = load i8*, i8** %436, align 8
  %438 = ptrtoint i8* %432 to i64
  %439 = ptrtoint i8* %437 to i64
  %440 = sub i64 %438, %439
  %441 = inttoptr i64 %440 to i8*
  %442 = load %struct.TYPE_44__*, %struct.TYPE_44__** %10, align 8
  %443 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %442, i32 0, i32 3
  %444 = load %struct.TYPE_38__*, %struct.TYPE_38__** %443, align 8
  %445 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %444, i32 0, i32 1
  store i8* %441, i8** %445, align 8
  %446 = load %struct.TYPE_44__*, %struct.TYPE_44__** %10, align 8
  %447 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %446, i32 0, i32 2
  %448 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %447, i32 0, i32 0
  %449 = load i64, i64* %448, align 8
  %450 = load i64, i64* @NGX_HTTP_SPECIAL_RESPONSE, align 8
  %451 = icmp sge i64 %449, %450
  br i1 %451, label %452, label %467

452:                                              ; preds = %425
  %453 = load %struct.TYPE_45__*, %struct.TYPE_45__** %7, align 8
  %454 = load %struct.TYPE_44__*, %struct.TYPE_44__** %10, align 8
  %455 = call i64 @ngx_http_upstream_test_next(%struct.TYPE_45__* %453, %struct.TYPE_44__* %454)
  %456 = load i64, i64* @NGX_OK, align 8
  %457 = icmp eq i64 %455, %456
  br i1 %457, label %458, label %459

458:                                              ; preds = %452
  br label %241

459:                                              ; preds = %452
  %460 = load %struct.TYPE_45__*, %struct.TYPE_45__** %7, align 8
  %461 = load %struct.TYPE_44__*, %struct.TYPE_44__** %10, align 8
  %462 = call i64 @ngx_http_upstream_intercept_errors(%struct.TYPE_45__* %460, %struct.TYPE_44__* %461)
  %463 = load i64, i64* @NGX_OK, align 8
  %464 = icmp eq i64 %462, %463
  br i1 %464, label %465, label %466

465:                                              ; preds = %459
  br label %241

466:                                              ; preds = %459
  br label %467

467:                                              ; preds = %466, %425
  %468 = load %struct.TYPE_45__*, %struct.TYPE_45__** %7, align 8
  %469 = load %struct.TYPE_44__*, %struct.TYPE_44__** %10, align 8
  %470 = call i64 @ngx_http_upstream_process_headers(%struct.TYPE_45__* %468, %struct.TYPE_44__* %469)
  %471 = load i64, i64* @NGX_OK, align 8
  %472 = icmp ne i64 %470, %471
  br i1 %472, label %473, label %474

473:                                              ; preds = %467
  br label %241

474:                                              ; preds = %467
  %475 = load %struct.TYPE_45__*, %struct.TYPE_45__** %7, align 8
  %476 = load %struct.TYPE_44__*, %struct.TYPE_44__** %10, align 8
  %477 = call i32 @ngx_http_multi_upstream_send_response(%struct.TYPE_45__* %475, %struct.TYPE_44__* %476)
  br label %478

478:                                              ; preds = %474, %420
  %479 = load %struct.TYPE_45__*, %struct.TYPE_45__** %7, align 8
  %480 = call i32 @ngx_http_multi_upstream_process_non_buffered_request(%struct.TYPE_45__* %479)
  br label %530

481:                                              ; preds = %416
  %482 = load i64, i64* %4, align 8
  %483 = load i64, i64* @NGX_HTTP_UPSTREAM_PARSE_ERROR, align 8
  %484 = icmp eq i64 %482, %483
  br i1 %484, label %485, label %507

485:                                              ; preds = %481
  %486 = load i32, i32* @NGX_LOG_WARN, align 4
  %487 = load %struct.TYPE_46__*, %struct.TYPE_46__** %11, align 8
  %488 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %487, i32 0, i32 1
  %489 = load %struct.TYPE_37__*, %struct.TYPE_37__** %488, align 8
  %490 = load %struct.TYPE_45__*, %struct.TYPE_45__** %6, align 8
  %491 = call i32 (i32, %struct.TYPE_37__*, i32, i8*, ...) @ngx_log_error(i32 %486, %struct.TYPE_37__* %489, i32 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0), %struct.TYPE_45__* %490)
  %492 = load %struct.TYPE_44__*, %struct.TYPE_44__** %10, align 8
  %493 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %492, i32 0, i32 1
  %494 = load i32, i32* %493, align 8
  %495 = icmp ne i32 %494, 0
  br i1 %495, label %501, label %496

496:                                              ; preds = %485
  %497 = load %struct.TYPE_45__*, %struct.TYPE_45__** %7, align 8
  %498 = load %struct.TYPE_44__*, %struct.TYPE_44__** %10, align 8
  %499 = load i64, i64* @NGX_HTTP_BAD_GATEWAY, align 8
  %500 = call i32 @ngx_http_upstream_finalize_request(%struct.TYPE_45__* %497, %struct.TYPE_44__* %498, i64 %499)
  br label %506

501:                                              ; preds = %485
  %502 = load %struct.TYPE_45__*, %struct.TYPE_45__** %7, align 8
  %503 = load %struct.TYPE_44__*, %struct.TYPE_44__** %10, align 8
  %504 = load i64, i64* @NGX_ERROR, align 8
  %505 = call i32 @ngx_http_upstream_finalize_request(%struct.TYPE_45__* %502, %struct.TYPE_44__* %503, i64 %504)
  br label %506

506:                                              ; preds = %501, %496
  br label %529

507:                                              ; preds = %481
  %508 = load i32, i32* @NGX_LOG_ERR, align 4
  %509 = load %struct.TYPE_46__*, %struct.TYPE_46__** %11, align 8
  %510 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %509, i32 0, i32 1
  %511 = load %struct.TYPE_37__*, %struct.TYPE_37__** %510, align 8
  %512 = load i64, i64* %4, align 8
  %513 = call i32 (i32, %struct.TYPE_37__*, i32, i8*, ...) @ngx_log_error(i32 %508, %struct.TYPE_37__* %511, i32 0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i64 0, i64 0), i64 %512)
  %514 = load %struct.TYPE_44__*, %struct.TYPE_44__** %10, align 8
  %515 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %514, i32 0, i32 1
  %516 = load i32, i32* %515, align 8
  %517 = icmp ne i32 %516, 0
  br i1 %517, label %523, label %518

518:                                              ; preds = %507
  %519 = load %struct.TYPE_45__*, %struct.TYPE_45__** %7, align 8
  %520 = load %struct.TYPE_44__*, %struct.TYPE_44__** %10, align 8
  %521 = load i64, i64* @NGX_HTTP_INTERNAL_SERVER_ERROR, align 8
  %522 = call i32 @ngx_http_upstream_finalize_request(%struct.TYPE_45__* %519, %struct.TYPE_44__* %520, i64 %521)
  br label %528

523:                                              ; preds = %507
  %524 = load %struct.TYPE_45__*, %struct.TYPE_45__** %7, align 8
  %525 = load %struct.TYPE_44__*, %struct.TYPE_44__** %10, align 8
  %526 = load i64, i64* @NGX_ERROR, align 8
  %527 = call i32 @ngx_http_upstream_finalize_request(%struct.TYPE_45__* %524, %struct.TYPE_44__* %525, i64 %526)
  br label %528

528:                                              ; preds = %523, %518
  br label %529

529:                                              ; preds = %528, %506
  br label %530

530:                                              ; preds = %529, %478
  br label %531

531:                                              ; preds = %530, %412
  %532 = load %struct.TYPE_46__*, %struct.TYPE_46__** %12, align 8
  %533 = call i32 @ngx_http_run_posted_requests(%struct.TYPE_46__* %532)
  br label %241

534:                                              ; preds = %325
  br label %148

535:                                              ; preds = %347, %338, %330, %230, %213, %209, %140, %126, %73, %32
  ret void
}

declare dso_local %struct.TYPE_43__* @ngx_get_multi_connection(%struct.TYPE_46__*) #1

declare dso_local i32 @ngx_log_debug1(i32, %struct.TYPE_37__*, i32, i8*, %struct.TYPE_46__*) #1

declare dso_local i64 @ngx_http_upstream_test_connect(%struct.TYPE_46__*) #1

declare dso_local i32 @ngx_http_multi_upstream_next(%struct.TYPE_46__*, i32) #1

declare dso_local i32* @ngx_palloc(i32, i32) #1

declare dso_local i32 @ngx_http_upstream_finalize_request(%struct.TYPE_45__*, %struct.TYPE_44__*, i64) #1

declare dso_local i64 @ngx_list_init(i32*, i32, i32, i32) #1

declare dso_local i32 @ngx_http_multi_upstream_finalize_request(%struct.TYPE_46__*, i64) #1

declare dso_local i32 @ngx_log_debug4(i32, %struct.TYPE_37__*, i32, i8*, i64, i64, i64, i64) #1

declare dso_local i32 @ngx_add_timer(i32, i32) #1

declare dso_local i64 @ngx_handle_read_event(i32, i32) #1

declare dso_local i32 @ngx_log_error(i32, %struct.TYPE_37__*, i32, i8*, ...) #1

declare dso_local i32 @ngx_log_debug5(i32, %struct.TYPE_37__*, i32, i8*, i64, i64, i64, i64, i64) #1

declare dso_local i64 @ngx_http_upstream_test_next(%struct.TYPE_45__*, %struct.TYPE_44__*) #1

declare dso_local i64 @ngx_http_upstream_intercept_errors(%struct.TYPE_45__*, %struct.TYPE_44__*) #1

declare dso_local i64 @ngx_http_upstream_process_headers(%struct.TYPE_45__*, %struct.TYPE_44__*) #1

declare dso_local i32 @ngx_http_multi_upstream_send_response(%struct.TYPE_45__*, %struct.TYPE_44__*) #1

declare dso_local i32 @ngx_http_multi_upstream_process_non_buffered_request(%struct.TYPE_45__*) #1

declare dso_local i32 @ngx_http_run_posted_requests(%struct.TYPE_46__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
