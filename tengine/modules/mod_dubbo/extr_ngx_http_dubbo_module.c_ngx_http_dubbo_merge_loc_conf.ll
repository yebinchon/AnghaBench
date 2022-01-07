; ModuleID = '/home/carl/AnghaBench/tengine/modules/mod_dubbo/extr_ngx_http_dubbo_module.c_ngx_http_dubbo_merge_loc_conf.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/mod_dubbo/extr_ngx_http_dubbo_module.c_ngx_http_dubbo_merge_loc_conf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i8*, i32 }
%struct.TYPE_9__ = type { i32*, i64, i64 }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32, i32*, i32, i32, i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@ngx_pagesize = common dso_local global i64 0, align 8
@NGX_CONF_BITMASK_SET = common dso_local global i32 0, align 4
@NGX_HTTP_UPSTREAM_FT_ERROR = common dso_local global i32 0, align 4
@NGX_HTTP_UPSTREAM_FT_TIMEOUT = common dso_local global i32 0, align 4
@NGX_HTTP_UPSTREAM_FT_OFF = common dso_local global i32 0, align 4
@ngx_cacheline_size = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"dubbo_headers_hash\00", align 1
@ngx_http_dubbo_hide_headers = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i64 0, align 8
@NGX_CONF_ERROR = common dso_local global i8* null, align 8
@ngx_http_core_module = common dso_local global i32 0, align 4
@ngx_http_dubbo_handler = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@NGX_CONF_OK = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*, i8*, i8*)* @ngx_http_dubbo_merge_loc_conf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ngx_http_dubbo_merge_loc_conf(i32* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_10__, align 8
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca %struct.TYPE_8__*, align 8
  %11 = alloca %struct.TYPE_8__*, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %13, %struct.TYPE_8__** %10, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = bitcast i8* %14 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %15, %struct.TYPE_8__** %11, align 8
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 7
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 16
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 7
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 16
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @ngx_conf_merge_ptr_value(i32 %19, i32 %23, i32* null)
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 7
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 15
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 7
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 15
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @ngx_conf_merge_value(i32 %28, i32 %32, i32 0)
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 7
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 14
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 7
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 14
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @ngx_conf_merge_uint_value(i32 %37, i32 %41, i32 0)
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 7
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 13
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 7
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 13
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @ngx_conf_merge_msec_value(i32 %46, i32 %50, i32 60000)
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 7
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 12
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 7
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 12
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @ngx_conf_merge_msec_value(i32 %55, i32 %59, i32 60000)
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 7
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 11
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 7
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 11
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @ngx_conf_merge_msec_value(i32 %64, i32 %68, i32 60000)
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 7
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 10
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 7
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 10
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @ngx_conf_merge_msec_value(i32 %73, i32 %77, i32 0)
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 7
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 9
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 7
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 9
  %86 = load i32, i32* %85, align 8
  %87 = load i64, i64* @ngx_pagesize, align 8
  %88 = call i32 @ngx_conf_merge_size_value(i32 %82, i32 %86, i64 %87)
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 7
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 7
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* @NGX_CONF_BITMASK_SET, align 4
  %98 = call i32 @ngx_conf_merge_bitmask_value(i32 %92, i32 %96, i32 %97)
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 7
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 7
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @NGX_CONF_BITMASK_SET, align 4
  %108 = load i32, i32* @NGX_HTTP_UPSTREAM_FT_ERROR, align 4
  %109 = or i32 %107, %108
  %110 = load i32, i32* @NGX_HTTP_UPSTREAM_FT_TIMEOUT, align 4
  %111 = or i32 %109, %110
  %112 = call i32 @ngx_conf_merge_bitmask_value(i32 %102, i32 %106, i32 %111)
  %113 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 7
  %115 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* @NGX_HTTP_UPSTREAM_FT_OFF, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %127

120:                                              ; preds = %3
  %121 = load i32, i32* @NGX_CONF_BITMASK_SET, align 4
  %122 = load i32, i32* @NGX_HTTP_UPSTREAM_FT_OFF, align 4
  %123 = or i32 %121, %122
  %124 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 7
  %126 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %125, i32 0, i32 1
  store i32 %123, i32* %126, align 4
  br label %127

127:                                              ; preds = %120, %3
  %128 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 7
  %130 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %129, i32 0, i32 8
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i32 0, i32 7
  %134 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %133, i32 0, i32 8
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @ngx_conf_merge_value(i32 %131, i32 %135, i32 0)
  %137 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 0
  store i32 512, i32* %137, align 8
  %138 = load i32, i32* @ngx_cacheline_size, align 4
  %139 = call i32 @ngx_align(i32 64, i32 %138)
  %140 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 2
  store i32 %139, i32* %140, align 8
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 1
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8** %141, align 8
  %142 = load i32*, i32** %5, align 8
  %143 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i32 0, i32 7
  %145 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %146 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %145, i32 0, i32 7
  %147 = load i32, i32* @ngx_http_dubbo_hide_headers, align 4
  %148 = call i64 @ngx_http_upstream_hide_headers_hash(i32* %142, %struct.TYPE_11__* %144, %struct.TYPE_11__* %146, i32 %147, %struct.TYPE_10__* %8)
  %149 = load i64, i64* @NGX_OK, align 8
  %150 = icmp ne i64 %148, %149
  br i1 %150, label %151, label %153

151:                                              ; preds = %127
  %152 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %152, i8** %4, align 8
  br label %246

153:                                              ; preds = %127
  %154 = load i32*, i32** %5, align 8
  %155 = load i32, i32* @ngx_http_core_module, align 4
  %156 = call %struct.TYPE_9__* @ngx_http_conf_get_module_loc_conf(i32* %154, i32 %155)
  store %struct.TYPE_9__* %156, %struct.TYPE_9__** %9, align 8
  %157 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %158 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %157, i32 0, i32 2
  %159 = load i64, i64* %158, align 8
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %175

161:                                              ; preds = %153
  %162 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %163 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %162, i32 0, i32 7
  %164 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %163, i32 0, i32 2
  %165 = load i32*, i32** %164, align 8
  %166 = icmp eq i32* %165, null
  br i1 %166, label %167, label %175

167:                                              ; preds = %161
  %168 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %169 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %168, i32 0, i32 7
  %170 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %169, i32 0, i32 2
  %171 = load i32*, i32** %170, align 8
  %172 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %173 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %172, i32 0, i32 7
  %174 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %173, i32 0, i32 2
  store i32* %171, i32** %174, align 8
  br label %175

175:                                              ; preds = %167, %161, %153
  %176 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %177 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %176, i32 0, i32 1
  %178 = load i64, i64* %177, align 8
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %195

180:                                              ; preds = %175
  %181 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %182 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %181, i32 0, i32 0
  %183 = load i32*, i32** %182, align 8
  %184 = icmp eq i32* %183, null
  br i1 %184, label %185, label %195

185:                                              ; preds = %180
  %186 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %187 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %186, i32 0, i32 7
  %188 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %187, i32 0, i32 2
  %189 = load i32*, i32** %188, align 8
  %190 = icmp ne i32* %189, null
  br i1 %190, label %191, label %195

191:                                              ; preds = %185
  %192 = load i32*, i32** @ngx_http_dubbo_handler, align 8
  %193 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %194 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %193, i32 0, i32 0
  store i32* %192, i32** %194, align 8
  br label %195

195:                                              ; preds = %191, %185, %180, %175
  %196 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %197 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %196, i32 0, i32 6
  %198 = load i32, i32* %197, align 8
  %199 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %200 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %199, i32 0, i32 6
  %201 = load i32, i32* %200, align 8
  %202 = call i32 @ngx_conf_merge_str_value(i32 %198, i32 %201, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %203 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %204 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %203, i32 0, i32 5
  %205 = load i32, i32* %204, align 4
  %206 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %207 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %206, i32 0, i32 5
  %208 = load i32, i32* %207, align 4
  %209 = call i32 @ngx_conf_merge_str_value(i32 %205, i32 %208, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %210 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %211 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %210, i32 0, i32 4
  %212 = load i32, i32* %211, align 8
  %213 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %214 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %213, i32 0, i32 4
  %215 = load i32, i32* %214, align 8
  %216 = call i32 @ngx_conf_merge_ptr_value(i32 %212, i32 %215, i32* null)
  %217 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %218 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %217, i32 0, i32 3
  %219 = load i32, i32* %218, align 4
  %220 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %221 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %220, i32 0, i32 3
  %222 = load i32, i32* %221, align 4
  %223 = call i32 @ngx_conf_merge_value(i32 %219, i32 %222, i32 1)
  %224 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %225 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %224, i32 0, i32 2
  %226 = load i32, i32* %225, align 8
  %227 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %228 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %227, i32 0, i32 2
  %229 = load i32, i32* %228, align 8
  %230 = call i32 @ngx_conf_merge_value(i32 %226, i32 %229, i32 1)
  %231 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %232 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %231, i32 0, i32 1
  %233 = load i32, i32* %232, align 4
  %234 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %235 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %234, i32 0, i32 1
  %236 = load i32, i32* %235, align 4
  %237 = call i32 @ngx_conf_merge_value(i32 %233, i32 %236, i32 0)
  %238 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %239 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 8
  %241 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %242 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 8
  %244 = call i32 @ngx_conf_merge_msec_value(i32 %240, i32 %243, i32 60000)
  %245 = load i8*, i8** @NGX_CONF_OK, align 8
  store i8* %245, i8** %4, align 8
  br label %246

246:                                              ; preds = %195, %151
  %247 = load i8*, i8** %4, align 8
  ret i8* %247
}

declare dso_local i32 @ngx_conf_merge_ptr_value(i32, i32, i32*) #1

declare dso_local i32 @ngx_conf_merge_value(i32, i32, i32) #1

declare dso_local i32 @ngx_conf_merge_uint_value(i32, i32, i32) #1

declare dso_local i32 @ngx_conf_merge_msec_value(i32, i32, i32) #1

declare dso_local i32 @ngx_conf_merge_size_value(i32, i32, i64) #1

declare dso_local i32 @ngx_conf_merge_bitmask_value(i32, i32, i32) #1

declare dso_local i32 @ngx_align(i32, i32) #1

declare dso_local i64 @ngx_http_upstream_hide_headers_hash(i32*, %struct.TYPE_11__*, %struct.TYPE_11__*, i32, %struct.TYPE_10__*) #1

declare dso_local %struct.TYPE_9__* @ngx_http_conf_get_module_loc_conf(i32*, i32) #1

declare dso_local i32 @ngx_conf_merge_str_value(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
