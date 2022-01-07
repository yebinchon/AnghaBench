; ModuleID = '/home/carl/AnghaBench/tengine/src/http/modules/extr_ngx_http_uwsgi_module.c_ngx_http_uwsgi_process_header.c'
source_filename = "/home/carl/AnghaBench/tengine/src/http/modules/extr_ngx_http_uwsgi_module.c_ngx_http_uwsgi_process_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { i32, i32, i32, i32, i64, i32, %struct.TYPE_30__*, %struct.TYPE_28__, %struct.TYPE_34__*, i32, i64 }
%struct.TYPE_30__ = type { i32 }
%struct.TYPE_28__ = type { i64 }
%struct.TYPE_34__ = type { i32, %struct.TYPE_31__, %struct.TYPE_27__*, i32 }
%struct.TYPE_31__ = type { i32, %struct.TYPE_33__, i64, %struct.TYPE_29__*, i32 }
%struct.TYPE_33__ = type { i32 }
%struct.TYPE_29__ = type { %struct.TYPE_33__ }
%struct.TYPE_27__ = type { i32 }
%struct.TYPE_32__ = type { i8*, %struct.TYPE_26__, %struct.TYPE_25__, i64 }
%struct.TYPE_26__ = type { i32, i8* }
%struct.TYPE_25__ = type { i32, i8* }
%struct.TYPE_23__ = type { i64 (%struct.TYPE_24__*, %struct.TYPE_32__*, i32)*, i32 }
%struct.TYPE_35__ = type { i32 }

@ngx_http_upstream_module = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i64 0, align 8
@NGX_ERROR = common dso_local global i64 0, align 8
@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"http uwsgi header: \22%V: %V\22\00", align 1
@NGX_HTTP_PARSE_HEADER_DONE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"http uwsgi header done\00", align 1
@NGX_LOG_ERR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"upstream sent invalid status \22%V\22\00", align 1
@NGX_HTTP_UPSTREAM_INVALID_HEADER = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [22 x i8] c"302 Moved Temporarily\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"200 OK\00", align 1
@NGX_HTTP_SWITCHING_PROTOCOLS = common dso_local global i32 0, align 4
@NGX_AGAIN = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [29 x i8] c"upstream sent invalid header\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_24__*)* @ngx_http_uwsgi_process_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ngx_http_uwsgi_process_header(%struct.TYPE_24__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_24__*, align 8
  %4 = alloca %struct.TYPE_33__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_32__*, align 8
  %8 = alloca %struct.TYPE_34__*, align 8
  %9 = alloca %struct.TYPE_23__*, align 8
  %10 = alloca %struct.TYPE_35__*, align 8
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %3, align 8
  %11 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %12 = load i32, i32* @ngx_http_upstream_module, align 4
  %13 = call %struct.TYPE_35__* @ngx_http_get_module_main_conf(%struct.TYPE_24__* %11, i32 %12)
  store %struct.TYPE_35__* %13, %struct.TYPE_35__** %10, align 8
  br label %14

14:                                               ; preds = %236, %1
  %15 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %16 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %16, i32 0, i32 8
  %18 = load %struct.TYPE_34__*, %struct.TYPE_34__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %18, i32 0, i32 3
  %20 = call i64 @ngx_http_parse_header_line(%struct.TYPE_24__* %15, i32* %19, i32 1)
  store i64 %20, i64* %5, align 8
  %21 = load i64, i64* %5, align 8
  %22 = load i64, i64* @NGX_OK, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %248

24:                                               ; preds = %14
  %25 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %25, i32 0, i32 8
  %27 = load %struct.TYPE_34__*, %struct.TYPE_34__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %28, i32 0, i32 4
  %30 = call %struct.TYPE_32__* @ngx_list_push(i32* %29)
  store %struct.TYPE_32__* %30, %struct.TYPE_32__** %7, align 8
  %31 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %32 = icmp eq %struct.TYPE_32__* %31, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %24
  %34 = load i64, i64* @NGX_ERROR, align 8
  store i64 %34, i64* %2, align 8
  br label %388

35:                                               ; preds = %24
  %36 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %36, i32 0, i32 10
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %39, i32 0, i32 3
  store i64 %38, i64* %40, align 8
  %41 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = sub nsw i32 %43, %46
  %48 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %49, i32 0, i32 0
  store i32 %47, i32* %50, align 8
  %51 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = sub nsw i32 %53, %56
  %58 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %59, i32 0, i32 0
  store i32 %57, i32* %60, align 8
  %61 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %61, i32 0, i32 9
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = add nsw i32 %67, 1
  %69 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = add nsw i32 %68, %72
  %74 = add nsw i32 %73, 1
  %75 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = add nsw i32 %74, %78
  %80 = call i8* @ngx_pnalloc(i32 %63, i32 %79)
  %81 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %82, i32 0, i32 1
  store i8* %80, i8** %83, align 8
  %84 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %84, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %85, i32 0, i32 1
  %87 = load i8*, i8** %86, align 8
  %88 = icmp eq i8* %87, null
  br i1 %88, label %89, label %93

89:                                               ; preds = %35
  %90 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %91 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %90, i32 0, i32 3
  store i64 0, i64* %91, align 8
  %92 = load i64, i64* @NGX_ERROR, align 8
  store i64 %92, i64* %2, align 8
  br label %388

93:                                               ; preds = %35
  %94 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %95 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %94, i32 0, i32 2
  %96 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %95, i32 0, i32 1
  %97 = load i8*, i8** %96, align 8
  %98 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %98, i32 0, i32 2
  %100 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i8, i8* %97, i64 %102
  %104 = getelementptr inbounds i8, i8* %103, i64 1
  %105 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %106 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %106, i32 0, i32 1
  store i8* %104, i8** %107, align 8
  %108 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %109 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %108, i32 0, i32 2
  %110 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %109, i32 0, i32 1
  %111 = load i8*, i8** %110, align 8
  %112 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %113 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %112, i32 0, i32 2
  %114 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i8, i8* %111, i64 %116
  %118 = getelementptr inbounds i8, i8* %117, i64 1
  %119 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %120 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i8, i8* %118, i64 %123
  %125 = getelementptr inbounds i8, i8* %124, i64 1
  %126 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %127 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %126, i32 0, i32 0
  store i8* %125, i8** %127, align 8
  %128 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %129 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %128, i32 0, i32 2
  %130 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %129, i32 0, i32 1
  %131 = load i8*, i8** %130, align 8
  %132 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %133 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %136 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %135, i32 0, i32 2
  %137 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = call i32 @ngx_memcpy(i8* %131, i32 %134, i32 %138)
  %140 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %141 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %140, i32 0, i32 2
  %142 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %141, i32 0, i32 1
  %143 = load i8*, i8** %142, align 8
  %144 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %145 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %144, i32 0, i32 2
  %146 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i8, i8* %143, i64 %148
  store i8 0, i8* %149, align 1
  %150 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %151 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %150, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %151, i32 0, i32 1
  %153 = load i8*, i8** %152, align 8
  %154 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %155 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %154, i32 0, i32 3
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %158 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %157, i32 0, i32 1
  %159 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = call i32 @ngx_memcpy(i8* %153, i32 %156, i32 %160)
  %162 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %163 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %162, i32 0, i32 1
  %164 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %163, i32 0, i32 1
  %165 = load i8*, i8** %164, align 8
  %166 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %167 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %166, i32 0, i32 1
  %168 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i8, i8* %165, i64 %170
  store i8 0, i8* %171, align 1
  %172 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %173 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %172, i32 0, i32 2
  %174 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = sext i32 %175 to i64
  %177 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %178 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %177, i32 0, i32 4
  %179 = load i64, i64* %178, align 8
  %180 = icmp eq i64 %176, %179
  br i1 %180, label %181, label %193

181:                                              ; preds = %93
  %182 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %183 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %182, i32 0, i32 0
  %184 = load i8*, i8** %183, align 8
  %185 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %186 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %185, i32 0, i32 5
  %187 = load i32, i32* %186, align 8
  %188 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %189 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %188, i32 0, i32 2
  %190 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = call i32 @ngx_memcpy(i8* %184, i32 %187, i32 %191)
  br label %206

193:                                              ; preds = %93
  %194 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %195 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %194, i32 0, i32 0
  %196 = load i8*, i8** %195, align 8
  %197 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %198 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %197, i32 0, i32 2
  %199 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %198, i32 0, i32 1
  %200 = load i8*, i8** %199, align 8
  %201 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %202 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %201, i32 0, i32 2
  %203 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  %205 = call i32 @ngx_strlow(i8* %196, i8* %200, i32 %204)
  br label %206

206:                                              ; preds = %193, %181
  %207 = load %struct.TYPE_35__*, %struct.TYPE_35__** %10, align 8
  %208 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %207, i32 0, i32 0
  %209 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %210 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %209, i32 0, i32 3
  %211 = load i64, i64* %210, align 8
  %212 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %213 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %212, i32 0, i32 0
  %214 = load i8*, i8** %213, align 8
  %215 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %216 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %215, i32 0, i32 2
  %217 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 8
  %219 = call %struct.TYPE_23__* @ngx_hash_find(i32* %208, i64 %211, i8* %214, i32 %218)
  store %struct.TYPE_23__* %219, %struct.TYPE_23__** %9, align 8
  %220 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %221 = icmp ne %struct.TYPE_23__* %220, null
  br i1 %221, label %222, label %236

222:                                              ; preds = %206
  %223 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %224 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %223, i32 0, i32 0
  %225 = load i64 (%struct.TYPE_24__*, %struct.TYPE_32__*, i32)*, i64 (%struct.TYPE_24__*, %struct.TYPE_32__*, i32)** %224, align 8
  %226 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %227 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %228 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %229 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %228, i32 0, i32 1
  %230 = load i32, i32* %229, align 8
  %231 = call i64 %225(%struct.TYPE_24__* %226, %struct.TYPE_32__* %227, i32 %230)
  %232 = load i64, i64* @NGX_OK, align 8
  %233 = icmp ne i64 %231, %232
  br i1 %233, label %234, label %236

234:                                              ; preds = %222
  %235 = load i64, i64* @NGX_ERROR, align 8
  store i64 %235, i64* %2, align 8
  br label %388

236:                                              ; preds = %222, %206
  %237 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %238 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %239 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %238, i32 0, i32 6
  %240 = load %struct.TYPE_30__*, %struct.TYPE_30__** %239, align 8
  %241 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 4
  %243 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %244 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %243, i32 0, i32 2
  %245 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %246 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %245, i32 0, i32 1
  %247 = call i32 @ngx_log_debug2(i32 %237, i32 %242, i32 0, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), %struct.TYPE_25__* %244, %struct.TYPE_26__* %246)
  br label %14

248:                                              ; preds = %14
  %249 = load i64, i64* %5, align 8
  %250 = load i64, i64* @NGX_HTTP_PARSE_HEADER_DONE, align 8
  %251 = icmp eq i64 %249, %250
  br i1 %251, label %252, label %373

252:                                              ; preds = %248
  %253 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %254 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %255 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %254, i32 0, i32 6
  %256 = load %struct.TYPE_30__*, %struct.TYPE_30__** %255, align 8
  %257 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %256, i32 0, i32 0
  %258 = load i32, i32* %257, align 4
  %259 = call i32 @ngx_log_debug0(i32 %253, i32 %258, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %260 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %261 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %260, i32 0, i32 8
  %262 = load %struct.TYPE_34__*, %struct.TYPE_34__** %261, align 8
  store %struct.TYPE_34__* %262, %struct.TYPE_34__** %8, align 8
  %263 = load %struct.TYPE_34__*, %struct.TYPE_34__** %8, align 8
  %264 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %263, i32 0, i32 1
  %265 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %264, i32 0, i32 0
  %266 = load i32, i32* %265, align 8
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %268, label %269

268:                                              ; preds = %252
  br label %355

269:                                              ; preds = %252
  %270 = load %struct.TYPE_34__*, %struct.TYPE_34__** %8, align 8
  %271 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %270, i32 0, i32 1
  %272 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %271, i32 0, i32 3
  %273 = load %struct.TYPE_29__*, %struct.TYPE_29__** %272, align 8
  %274 = icmp ne %struct.TYPE_29__* %273, null
  br i1 %274, label %275, label %310

275:                                              ; preds = %269
  %276 = load %struct.TYPE_34__*, %struct.TYPE_34__** %8, align 8
  %277 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %276, i32 0, i32 1
  %278 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %277, i32 0, i32 3
  %279 = load %struct.TYPE_29__*, %struct.TYPE_29__** %278, align 8
  %280 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %279, i32 0, i32 0
  store %struct.TYPE_33__* %280, %struct.TYPE_33__** %4, align 8
  %281 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %282 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %281, i32 0, i32 0
  %283 = load i32, i32* %282, align 4
  %284 = call i64 @ngx_atoi(i32 %283, i32 3)
  store i64 %284, i64* %6, align 8
  %285 = load i64, i64* %6, align 8
  %286 = load i64, i64* @NGX_ERROR, align 8
  %287 = icmp eq i64 %285, %286
  br i1 %287, label %288, label %298

288:                                              ; preds = %275
  %289 = load i32, i32* @NGX_LOG_ERR, align 4
  %290 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %291 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %290, i32 0, i32 6
  %292 = load %struct.TYPE_30__*, %struct.TYPE_30__** %291, align 8
  %293 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %292, i32 0, i32 0
  %294 = load i32, i32* %293, align 4
  %295 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %296 = call i32 (i32, i32, i32, i8*, ...) @ngx_log_error(i32 %289, i32 %294, i32 0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_33__* %295)
  %297 = load i64, i64* @NGX_HTTP_UPSTREAM_INVALID_HEADER, align 8
  store i64 %297, i64* %2, align 8
  br label %388

298:                                              ; preds = %275
  %299 = load i64, i64* %6, align 8
  %300 = trunc i64 %299 to i32
  %301 = load %struct.TYPE_34__*, %struct.TYPE_34__** %8, align 8
  %302 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %301, i32 0, i32 1
  %303 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %302, i32 0, i32 0
  store i32 %300, i32* %303, align 8
  %304 = load %struct.TYPE_34__*, %struct.TYPE_34__** %8, align 8
  %305 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %304, i32 0, i32 1
  %306 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %305, i32 0, i32 1
  %307 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %308 = bitcast %struct.TYPE_33__* %306 to i8*
  %309 = bitcast %struct.TYPE_33__* %307 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %308, i8* align 4 %309, i64 4, i1 false)
  br label %333

310:                                              ; preds = %269
  %311 = load %struct.TYPE_34__*, %struct.TYPE_34__** %8, align 8
  %312 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %311, i32 0, i32 1
  %313 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %312, i32 0, i32 2
  %314 = load i64, i64* %313, align 8
  %315 = icmp ne i64 %314, 0
  br i1 %315, label %316, label %324

316:                                              ; preds = %310
  %317 = load %struct.TYPE_34__*, %struct.TYPE_34__** %8, align 8
  %318 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %317, i32 0, i32 1
  %319 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %318, i32 0, i32 0
  store i32 302, i32* %319, align 8
  %320 = load %struct.TYPE_34__*, %struct.TYPE_34__** %8, align 8
  %321 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %320, i32 0, i32 1
  %322 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %321, i32 0, i32 1
  %323 = call i32 @ngx_str_set(%struct.TYPE_33__* %322, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  br label %332

324:                                              ; preds = %310
  %325 = load %struct.TYPE_34__*, %struct.TYPE_34__** %8, align 8
  %326 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %325, i32 0, i32 1
  %327 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %326, i32 0, i32 0
  store i32 200, i32* %327, align 8
  %328 = load %struct.TYPE_34__*, %struct.TYPE_34__** %8, align 8
  %329 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %328, i32 0, i32 1
  %330 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %329, i32 0, i32 1
  %331 = call i32 @ngx_str_set(%struct.TYPE_33__* %330, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  br label %332

332:                                              ; preds = %324, %316
  br label %333

333:                                              ; preds = %332, %298
  %334 = load %struct.TYPE_34__*, %struct.TYPE_34__** %8, align 8
  %335 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %334, i32 0, i32 2
  %336 = load %struct.TYPE_27__*, %struct.TYPE_27__** %335, align 8
  %337 = icmp ne %struct.TYPE_27__* %336, null
  br i1 %337, label %338, label %354

338:                                              ; preds = %333
  %339 = load %struct.TYPE_34__*, %struct.TYPE_34__** %8, align 8
  %340 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %339, i32 0, i32 2
  %341 = load %struct.TYPE_27__*, %struct.TYPE_27__** %340, align 8
  %342 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %341, i32 0, i32 0
  %343 = load i32, i32* %342, align 4
  %344 = icmp eq i32 %343, 0
  br i1 %344, label %345, label %354

345:                                              ; preds = %338
  %346 = load %struct.TYPE_34__*, %struct.TYPE_34__** %8, align 8
  %347 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %346, i32 0, i32 1
  %348 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %347, i32 0, i32 0
  %349 = load i32, i32* %348, align 8
  %350 = load %struct.TYPE_34__*, %struct.TYPE_34__** %8, align 8
  %351 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %350, i32 0, i32 2
  %352 = load %struct.TYPE_27__*, %struct.TYPE_27__** %351, align 8
  %353 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %352, i32 0, i32 0
  store i32 %349, i32* %353, align 4
  br label %354

354:                                              ; preds = %345, %338, %333
  br label %355

355:                                              ; preds = %354, %268
  %356 = load %struct.TYPE_34__*, %struct.TYPE_34__** %8, align 8
  %357 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %356, i32 0, i32 1
  %358 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %357, i32 0, i32 0
  %359 = load i32, i32* %358, align 8
  %360 = load i32, i32* @NGX_HTTP_SWITCHING_PROTOCOLS, align 4
  %361 = icmp eq i32 %359, %360
  br i1 %361, label %362, label %371

362:                                              ; preds = %355
  %363 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %364 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %363, i32 0, i32 7
  %365 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %364, i32 0, i32 0
  %366 = load i64, i64* %365, align 8
  %367 = icmp ne i64 %366, 0
  br i1 %367, label %368, label %371

368:                                              ; preds = %362
  %369 = load %struct.TYPE_34__*, %struct.TYPE_34__** %8, align 8
  %370 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %369, i32 0, i32 0
  store i32 1, i32* %370, align 8
  br label %371

371:                                              ; preds = %368, %362, %355
  %372 = load i64, i64* @NGX_OK, align 8
  store i64 %372, i64* %2, align 8
  br label %388

373:                                              ; preds = %248
  %374 = load i64, i64* %5, align 8
  %375 = load i64, i64* @NGX_AGAIN, align 8
  %376 = icmp eq i64 %374, %375
  br i1 %376, label %377, label %379

377:                                              ; preds = %373
  %378 = load i64, i64* @NGX_AGAIN, align 8
  store i64 %378, i64* %2, align 8
  br label %388

379:                                              ; preds = %373
  %380 = load i32, i32* @NGX_LOG_ERR, align 4
  %381 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %382 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %381, i32 0, i32 6
  %383 = load %struct.TYPE_30__*, %struct.TYPE_30__** %382, align 8
  %384 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %383, i32 0, i32 0
  %385 = load i32, i32* %384, align 4
  %386 = call i32 (i32, i32, i32, i8*, ...) @ngx_log_error(i32 %380, i32 %385, i32 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  %387 = load i64, i64* @NGX_HTTP_UPSTREAM_INVALID_HEADER, align 8
  store i64 %387, i64* %2, align 8
  br label %388

388:                                              ; preds = %379, %377, %371, %288, %234, %89, %33
  %389 = load i64, i64* %2, align 8
  ret i64 %389
}

declare dso_local %struct.TYPE_35__* @ngx_http_get_module_main_conf(%struct.TYPE_24__*, i32) #1

declare dso_local i64 @ngx_http_parse_header_line(%struct.TYPE_24__*, i32*, i32) #1

declare dso_local %struct.TYPE_32__* @ngx_list_push(i32*) #1

declare dso_local i8* @ngx_pnalloc(i32, i32) #1

declare dso_local i32 @ngx_memcpy(i8*, i32, i32) #1

declare dso_local i32 @ngx_strlow(i8*, i8*, i32) #1

declare dso_local %struct.TYPE_23__* @ngx_hash_find(i32*, i64, i8*, i32) #1

declare dso_local i32 @ngx_log_debug2(i32, i32, i32, i8*, %struct.TYPE_25__*, %struct.TYPE_26__*) #1

declare dso_local i32 @ngx_log_debug0(i32, i32, i32, i8*) #1

declare dso_local i64 @ngx_atoi(i32, i32) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*, ...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ngx_str_set(%struct.TYPE_33__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
