; ModuleID = '/home/carl/AnghaBench/tengine/modules/mod_dubbo/extr_ngx_http_dubbo_module.c_ngx_http_dubbo_body_output_filter.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/mod_dubbo/extr_ngx_http_dubbo_module.c_ngx_http_dubbo_body_output_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_32__ = type { %struct.TYPE_33__*, %struct.TYPE_32__* }
%struct.TYPE_33__ = type { i32, %struct.TYPE_33__*, i32, i32, i64, i64, i64, i32* }
%struct.TYPE_39__ = type { i32, %struct.TYPE_36__*, i32*, %struct.TYPE_35__* }
%struct.TYPE_36__ = type { i32, i32, %struct.TYPE_34__ }
%struct.TYPE_34__ = type { %struct.TYPE_31__* }
%struct.TYPE_31__ = type { i32, %struct.TYPE_39__* }
%struct.TYPE_35__ = type { i32 }
%struct.TYPE_37__ = type { i32, i32, %struct.TYPE_32__* }
%struct.TYPE_38__ = type { i32 }
%struct.TYPE_42__ = type { i32 }
%struct.TYPE_40__ = type { i32 }
%struct.TYPE_41__ = type { %struct.TYPE_32__*, i32, %struct.TYPE_32__*, %struct.TYPE_42__* }

@NGX_LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"dubbo: only support upstream multi module\00", align 1
@NGX_HTTP_INTERNAL_SERVER_ERROR = common dso_local global i32 0, align 4
@ngx_http_dubbo_module = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"dubbo: body output failed %p, %p\00", align 1
@NGX_ERROR = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [41 x i8] c"dubbo: http create request failed %p, %p\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.TYPE_32__*)* @ngx_http_dubbo_body_output_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_http_dubbo_body_output_filter(i8* %0, %struct.TYPE_32__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_32__*, align 8
  %6 = alloca %struct.TYPE_39__*, align 8
  %7 = alloca %struct.TYPE_31__*, align 8
  %8 = alloca %struct.TYPE_39__*, align 8
  %9 = alloca %struct.TYPE_32__*, align 8
  %10 = alloca %struct.TYPE_32__*, align 8
  %11 = alloca %struct.TYPE_32__**, align 8
  %12 = alloca %struct.TYPE_32__*, align 8
  %13 = alloca %struct.TYPE_37__*, align 8
  %14 = alloca %struct.TYPE_33__*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_38__*, align 8
  %18 = alloca %struct.TYPE_42__*, align 8
  %19 = alloca %struct.TYPE_40__*, align 8
  %20 = alloca %struct.TYPE_41__*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.TYPE_32__* %1, %struct.TYPE_32__** %5, align 8
  %21 = load i8*, i8** %4, align 8
  %22 = bitcast i8* %21 to %struct.TYPE_39__*
  store %struct.TYPE_39__* %22, %struct.TYPE_39__** %6, align 8
  %23 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %23, i32 0, i32 1
  %25 = load %struct.TYPE_36__*, %struct.TYPE_36__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_31__*, %struct.TYPE_31__** %27, align 8
  store %struct.TYPE_31__* %28, %struct.TYPE_31__** %7, align 8
  %29 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_39__*, %struct.TYPE_39__** %30, align 8
  store %struct.TYPE_39__* %31, %struct.TYPE_39__** %8, align 8
  %32 = load %struct.TYPE_39__*, %struct.TYPE_39__** %8, align 8
  %33 = call %struct.TYPE_41__* @ngx_http_dubbo_get_ctx(%struct.TYPE_39__* %32)
  store %struct.TYPE_41__* %33, %struct.TYPE_41__** %20, align 8
  %34 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %34, i32 0, i32 1
  %36 = load %struct.TYPE_36__*, %struct.TYPE_36__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %47, label %40

40:                                               ; preds = %2
  %41 = load i32, i32* @NGX_LOG_ERR, align 4
  %42 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 (i32, i32, i32, i8*, ...) @ngx_log_error(i32 %41, i32 %44, i32 0, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %46 = load i32, i32* @NGX_HTTP_INTERNAL_SERVER_ERROR, align 4
  store i32 %46, i32* %3, align 4
  br label %274

47:                                               ; preds = %2
  %48 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %49 = call %struct.TYPE_38__* @ngx_get_multi_connection(%struct.TYPE_31__* %48)
  store %struct.TYPE_38__* %49, %struct.TYPE_38__** %17, align 8
  %50 = load %struct.TYPE_41__*, %struct.TYPE_41__** %20, align 8
  %51 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %50, i32 0, i32 3
  %52 = load %struct.TYPE_42__*, %struct.TYPE_42__** %51, align 8
  store %struct.TYPE_42__* %52, %struct.TYPE_42__** %18, align 8
  %53 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %54 = load i32, i32* @ngx_http_dubbo_module, align 4
  %55 = call %struct.TYPE_40__* @ngx_http_get_module_loc_conf(%struct.TYPE_39__* %53, i32 %54)
  store %struct.TYPE_40__* %55, %struct.TYPE_40__** %19, align 8
  %56 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %57 = load %struct.TYPE_39__*, %struct.TYPE_39__** %8, align 8
  %58 = icmp eq %struct.TYPE_39__* %56, %57
  br i1 %58, label %59, label %71

59:                                               ; preds = %47
  %60 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %61 = icmp ne %struct.TYPE_32__* %60, null
  br i1 %61, label %62, label %71

62:                                               ; preds = %59
  %63 = load i32, i32* @NGX_LOG_ERR, align 4
  %64 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %68 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %69 = call i32 (i32, i32, i32, i8*, ...) @ngx_log_error(i32 %63, i32 %66, i32 0, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_31__* %67, %struct.TYPE_39__* %68)
  %70 = load i32, i32* @NGX_ERROR, align 4
  store i32 %70, i32* %3, align 4
  br label %274

71:                                               ; preds = %59, %47
  store %struct.TYPE_32__* null, %struct.TYPE_32__** %9, align 8
  store %struct.TYPE_32__** %9, %struct.TYPE_32__*** %11, align 8
  %72 = load %struct.TYPE_41__*, %struct.TYPE_41__** %20, align 8
  %73 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %72, i32 0, i32 2
  %74 = load %struct.TYPE_32__*, %struct.TYPE_32__** %73, align 8
  %75 = icmp ne %struct.TYPE_32__* %74, null
  br i1 %75, label %76, label %99

76:                                               ; preds = %71
  %77 = load %struct.TYPE_41__*, %struct.TYPE_41__** %20, align 8
  %78 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %77, i32 0, i32 2
  %79 = load %struct.TYPE_32__*, %struct.TYPE_32__** %78, align 8
  %80 = load %struct.TYPE_32__**, %struct.TYPE_32__*** %11, align 8
  store %struct.TYPE_32__* %79, %struct.TYPE_32__** %80, align 8
  %81 = load %struct.TYPE_41__*, %struct.TYPE_41__** %20, align 8
  %82 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %81, i32 0, i32 2
  %83 = load %struct.TYPE_32__*, %struct.TYPE_32__** %82, align 8
  store %struct.TYPE_32__* %83, %struct.TYPE_32__** %10, align 8
  %84 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %85 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %84, i32 0, i32 1
  store %struct.TYPE_32__** %85, %struct.TYPE_32__*** %11, align 8
  br label %86

86:                                               ; preds = %92, %76
  %87 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %88 = icmp ne %struct.TYPE_32__* %87, null
  br i1 %88, label %89, label %96

89:                                               ; preds = %86
  %90 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %91 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %90, i32 0, i32 1
  store %struct.TYPE_32__** %91, %struct.TYPE_32__*** %11, align 8
  br label %92

92:                                               ; preds = %89
  %93 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %94 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %93, i32 0, i32 1
  %95 = load %struct.TYPE_32__*, %struct.TYPE_32__** %94, align 8
  store %struct.TYPE_32__* %95, %struct.TYPE_32__** %10, align 8
  br label %86

96:                                               ; preds = %86
  %97 = load %struct.TYPE_41__*, %struct.TYPE_41__** %20, align 8
  %98 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %97, i32 0, i32 2
  store %struct.TYPE_32__* null, %struct.TYPE_32__** %98, align 8
  br label %99

99:                                               ; preds = %96, %71
  %100 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %101 = load %struct.TYPE_39__*, %struct.TYPE_39__** %8, align 8
  %102 = icmp ne %struct.TYPE_39__* %100, %101
  br i1 %102, label %103, label %210

103:                                              ; preds = %99
  %104 = load i64, i64* @NGX_OK, align 8
  %105 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %106 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %107 = load %struct.TYPE_32__*, %struct.TYPE_32__** %5, align 8
  %108 = call i64 @ngx_http_dubbo_create_dubbo_request(%struct.TYPE_39__* %105, %struct.TYPE_31__* %106, %struct.TYPE_37__** %13, %struct.TYPE_32__* %107)
  %109 = icmp ne i64 %104, %108
  br i1 %109, label %110, label %119

110:                                              ; preds = %103
  %111 = load i32, i32* @NGX_LOG_ERR, align 4
  %112 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %113 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.TYPE_31__*, %struct.TYPE_31__** %7, align 8
  %116 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %117 = call i32 (i32, i32, i32, i8*, ...) @ngx_log_error(i32 %111, i32 %114, i32 0, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_31__* %115, %struct.TYPE_39__* %116)
  %118 = load i32, i32* @NGX_ERROR, align 4
  store i32 %118, i32* %3, align 4
  br label %274

119:                                              ; preds = %103
  %120 = load %struct.TYPE_37__*, %struct.TYPE_37__** %13, align 8
  %121 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %120, i32 0, i32 2
  %122 = load %struct.TYPE_32__*, %struct.TYPE_32__** %121, align 8
  store %struct.TYPE_32__* %122, %struct.TYPE_32__** %10, align 8
  br label %123

123:                                              ; preds = %169, %119
  %124 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %125 = icmp ne %struct.TYPE_32__* %124, null
  br i1 %125, label %126, label %173

126:                                              ; preds = %123
  %127 = load %struct.TYPE_39__*, %struct.TYPE_39__** %8, align 8
  %128 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = load %struct.TYPE_41__*, %struct.TYPE_41__** %20, align 8
  %131 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %130, i32 0, i32 0
  %132 = call %struct.TYPE_32__* @ngx_chain_get_free_buf(i32 %129, %struct.TYPE_32__** %131)
  store %struct.TYPE_32__* %132, %struct.TYPE_32__** %12, align 8
  %133 = load %struct.TYPE_32__*, %struct.TYPE_32__** %12, align 8
  %134 = icmp eq %struct.TYPE_32__* %133, null
  br i1 %134, label %135, label %137

135:                                              ; preds = %126
  %136 = load i32, i32* @NGX_ERROR, align 4
  store i32 %136, i32* %3, align 4
  br label %274

137:                                              ; preds = %126
  %138 = load %struct.TYPE_32__*, %struct.TYPE_32__** %12, align 8
  %139 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %138, i32 0, i32 0
  %140 = load %struct.TYPE_33__*, %struct.TYPE_33__** %139, align 8
  store %struct.TYPE_33__* %140, %struct.TYPE_33__** %14, align 8
  %141 = load %struct.TYPE_33__*, %struct.TYPE_33__** %14, align 8
  %142 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %141, i32 0, i32 7
  %143 = load i32*, i32** %142, align 8
  store i32* %143, i32** %15, align 8
  %144 = load %struct.TYPE_33__*, %struct.TYPE_33__** %14, align 8
  %145 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %146 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %145, i32 0, i32 0
  %147 = load %struct.TYPE_33__*, %struct.TYPE_33__** %146, align 8
  %148 = call i32 @ngx_memcpy(%struct.TYPE_33__* %144, %struct.TYPE_33__* %147, i32 56)
  %149 = load i32*, i32** %15, align 8
  %150 = load %struct.TYPE_33__*, %struct.TYPE_33__** %14, align 8
  %151 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %150, i32 0, i32 7
  store i32* %149, i32** %151, align 8
  %152 = load %struct.TYPE_33__*, %struct.TYPE_33__** %14, align 8
  %153 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %152, i32 0, i32 6
  store i64 ptrtoint (i32 (i8*, %struct.TYPE_32__*)* @ngx_http_dubbo_body_output_filter to i64), i64* %153, align 8
  %154 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %155 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %154, i32 0, i32 0
  %156 = load %struct.TYPE_33__*, %struct.TYPE_33__** %155, align 8
  %157 = load %struct.TYPE_33__*, %struct.TYPE_33__** %14, align 8
  %158 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %157, i32 0, i32 1
  store %struct.TYPE_33__* %156, %struct.TYPE_33__** %158, align 8
  %159 = load %struct.TYPE_33__*, %struct.TYPE_33__** %14, align 8
  %160 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %159, i32 0, i32 0
  store i32 1, i32* %160, align 8
  %161 = load %struct.TYPE_33__*, %struct.TYPE_33__** %14, align 8
  %162 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %161, i32 0, i32 5
  store i64 0, i64* %162, align 8
  %163 = load %struct.TYPE_33__*, %struct.TYPE_33__** %14, align 8
  %164 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %163, i32 0, i32 4
  store i64 0, i64* %164, align 8
  %165 = load %struct.TYPE_32__*, %struct.TYPE_32__** %12, align 8
  %166 = load %struct.TYPE_32__**, %struct.TYPE_32__*** %11, align 8
  store %struct.TYPE_32__* %165, %struct.TYPE_32__** %166, align 8
  %167 = load %struct.TYPE_32__*, %struct.TYPE_32__** %12, align 8
  %168 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %167, i32 0, i32 1
  store %struct.TYPE_32__** %168, %struct.TYPE_32__*** %11, align 8
  br label %169

169:                                              ; preds = %137
  %170 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %171 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %170, i32 0, i32 1
  %172 = load %struct.TYPE_32__*, %struct.TYPE_32__** %171, align 8
  store %struct.TYPE_32__* %172, %struct.TYPE_32__** %10, align 8
  br label %123

173:                                              ; preds = %123
  %174 = load %struct.TYPE_38__*, %struct.TYPE_38__** %17, align 8
  %175 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %174, i32 0, i32 0
  %176 = load %struct.TYPE_37__*, %struct.TYPE_37__** %13, align 8
  %177 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %176, i32 0, i32 1
  %178 = call i32 @ngx_queue_insert_head(i32* %175, i32* %177)
  %179 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %180 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %179, i32 0, i32 2
  %181 = load i32*, i32** %180, align 8
  %182 = icmp eq i32* %181, null
  br i1 %182, label %183, label %203

183:                                              ; preds = %173
  %184 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %185 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %184, i32 0, i32 3
  %186 = load %struct.TYPE_35__*, %struct.TYPE_35__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 4
  %189 = call i32* @ngx_pcalloc(i32 %188, i32 4)
  %190 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %191 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %190, i32 0, i32 2
  store i32* %189, i32** %191, align 8
  %192 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %193 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %192, i32 0, i32 2
  %194 = load i32*, i32** %193, align 8
  %195 = icmp eq i32* %194, null
  br i1 %195, label %196, label %198

196:                                              ; preds = %183
  %197 = load i32, i32* @NGX_ERROR, align 4
  store i32 %197, i32* %3, align 4
  br label %274

198:                                              ; preds = %183
  %199 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %200 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %199, i32 0, i32 2
  %201 = load i32*, i32** %200, align 8
  %202 = call i32 @ngx_queue_init(i32* %201)
  br label %203

203:                                              ; preds = %198, %173
  %204 = load %struct.TYPE_39__*, %struct.TYPE_39__** %6, align 8
  %205 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %204, i32 0, i32 2
  %206 = load i32*, i32** %205, align 8
  %207 = load %struct.TYPE_37__*, %struct.TYPE_37__** %13, align 8
  %208 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %207, i32 0, i32 0
  %209 = call i32 @ngx_queue_insert_tail(i32* %206, i32* %208)
  br label %210

210:                                              ; preds = %203, %99
  %211 = load %struct.TYPE_39__*, %struct.TYPE_39__** %8, align 8
  %212 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %211, i32 0, i32 1
  %213 = load %struct.TYPE_36__*, %struct.TYPE_36__** %212, align 8
  %214 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %213, i32 0, i32 0
  %215 = load %struct.TYPE_32__*, %struct.TYPE_32__** %9, align 8
  %216 = call i32 @ngx_chain_writer(i32* %214, %struct.TYPE_32__* %215)
  store i32 %216, i32* %16, align 4
  %217 = load %struct.TYPE_39__*, %struct.TYPE_39__** %8, align 8
  %218 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 8
  %220 = load %struct.TYPE_41__*, %struct.TYPE_41__** %20, align 8
  %221 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %220, i32 0, i32 0
  %222 = load %struct.TYPE_41__*, %struct.TYPE_41__** %20, align 8
  %223 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %222, i32 0, i32 1
  %224 = call i32 @ngx_chain_update_chains(i32 %219, %struct.TYPE_32__** %221, i32* %223, %struct.TYPE_32__** %9, i64 ptrtoint (i32 (i8*, %struct.TYPE_32__*)* @ngx_http_dubbo_body_output_filter to i64))
  %225 = load %struct.TYPE_41__*, %struct.TYPE_41__** %20, align 8
  %226 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %225, i32 0, i32 0
  %227 = load %struct.TYPE_32__*, %struct.TYPE_32__** %226, align 8
  store %struct.TYPE_32__* %227, %struct.TYPE_32__** %10, align 8
  br label %228

228:                                              ; preds = %262, %210
  %229 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %230 = icmp ne %struct.TYPE_32__* %229, null
  br i1 %230, label %231, label %266

231:                                              ; preds = %228
  %232 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %233 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %232, i32 0, i32 0
  %234 = load %struct.TYPE_33__*, %struct.TYPE_33__** %233, align 8
  %235 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %234, i32 0, i32 1
  %236 = load %struct.TYPE_33__*, %struct.TYPE_33__** %235, align 8
  %237 = icmp ne %struct.TYPE_33__* %236, null
  br i1 %237, label %238, label %261

238:                                              ; preds = %231
  %239 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %240 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %239, i32 0, i32 0
  %241 = load %struct.TYPE_33__*, %struct.TYPE_33__** %240, align 8
  %242 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 8
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %256

245:                                              ; preds = %238
  %246 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %247 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %246, i32 0, i32 0
  %248 = load %struct.TYPE_33__*, %struct.TYPE_33__** %247, align 8
  %249 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %248, i32 0, i32 1
  %250 = load %struct.TYPE_33__*, %struct.TYPE_33__** %249, align 8
  store %struct.TYPE_33__* %250, %struct.TYPE_33__** %14, align 8
  %251 = load %struct.TYPE_33__*, %struct.TYPE_33__** %14, align 8
  %252 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %251, i32 0, i32 2
  %253 = load i32, i32* %252, align 8
  %254 = load %struct.TYPE_33__*, %struct.TYPE_33__** %14, align 8
  %255 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %254, i32 0, i32 3
  store i32 %253, i32* %255, align 4
  br label %256

256:                                              ; preds = %245, %238
  %257 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %258 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %257, i32 0, i32 0
  %259 = load %struct.TYPE_33__*, %struct.TYPE_33__** %258, align 8
  %260 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %259, i32 0, i32 1
  store %struct.TYPE_33__* null, %struct.TYPE_33__** %260, align 8
  br label %261

261:                                              ; preds = %256, %231
  br label %262

262:                                              ; preds = %261
  %263 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %264 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %263, i32 0, i32 1
  %265 = load %struct.TYPE_32__*, %struct.TYPE_32__** %264, align 8
  store %struct.TYPE_32__* %265, %struct.TYPE_32__** %10, align 8
  br label %228

266:                                              ; preds = %228
  %267 = load %struct.TYPE_42__*, %struct.TYPE_42__** %18, align 8
  %268 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %267, i32 0, i32 0
  %269 = load %struct.TYPE_40__*, %struct.TYPE_40__** %19, align 8
  %270 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %269, i32 0, i32 0
  %271 = load i32, i32* %270, align 4
  %272 = call i32 @ngx_add_timer(i32* %268, i32 %271)
  %273 = load i32, i32* %16, align 4
  store i32 %273, i32* %3, align 4
  br label %274

274:                                              ; preds = %266, %196, %135, %110, %62, %40
  %275 = load i32, i32* %3, align 4
  ret i32 %275
}

declare dso_local %struct.TYPE_41__* @ngx_http_dubbo_get_ctx(%struct.TYPE_39__*) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*, ...) #1

declare dso_local %struct.TYPE_38__* @ngx_get_multi_connection(%struct.TYPE_31__*) #1

declare dso_local %struct.TYPE_40__* @ngx_http_get_module_loc_conf(%struct.TYPE_39__*, i32) #1

declare dso_local i64 @ngx_http_dubbo_create_dubbo_request(%struct.TYPE_39__*, %struct.TYPE_31__*, %struct.TYPE_37__**, %struct.TYPE_32__*) #1

declare dso_local %struct.TYPE_32__* @ngx_chain_get_free_buf(i32, %struct.TYPE_32__**) #1

declare dso_local i32 @ngx_memcpy(%struct.TYPE_33__*, %struct.TYPE_33__*, i32) #1

declare dso_local i32 @ngx_queue_insert_head(i32*, i32*) #1

declare dso_local i32* @ngx_pcalloc(i32, i32) #1

declare dso_local i32 @ngx_queue_init(i32*) #1

declare dso_local i32 @ngx_queue_insert_tail(i32*, i32*) #1

declare dso_local i32 @ngx_chain_writer(i32*, %struct.TYPE_32__*) #1

declare dso_local i32 @ngx_chain_update_chains(i32, %struct.TYPE_32__**, i32*, %struct.TYPE_32__**, i64) #1

declare dso_local i32 @ngx_add_timer(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
