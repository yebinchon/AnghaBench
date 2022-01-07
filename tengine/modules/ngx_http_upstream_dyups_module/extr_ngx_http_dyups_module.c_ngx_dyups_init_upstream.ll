; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_upstream_dyups_module/extr_ngx_http_dyups_module.c_ngx_dyups_init_upstream.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_upstream_dyups_module/extr_ngx_http_dyups_module.c_ngx_dyups_init_upstream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_35__ = type { %struct.TYPE_39__**, i64*, i32 }
%struct.TYPE_39__ = type { i64, i64, i64, %struct.TYPE_42__* }
%struct.TYPE_42__ = type { %struct.TYPE_40__* (%struct.TYPE_30__*)* }
%struct.TYPE_40__ = type { i32, i32, %struct.TYPE_40__**, i64, i64, i64, i32*, %struct.TYPE_37__ }
%struct.TYPE_37__ = type { i32, i32* }
%struct.TYPE_30__ = type { i32*, i32*, i64, i32, i64 }
%struct.TYPE_31__ = type { i64 }
%struct.TYPE_32__ = type { i64 }
%struct.TYPE_36__ = type { i64 }
%struct.TYPE_33__ = type { i64 }
%struct.TYPE_43__ = type { i32, i64, %struct.TYPE_29__*, i32*, i32*, %struct.TYPE_40__* }
%struct.TYPE_29__ = type { %struct.TYPE_40__**, i32 }
%struct.TYPE_38__ = type { i32 }
%struct.TYPE_41__ = type { %struct.TYPE_34__ }
%struct.TYPE_34__ = type { %struct.TYPE_40__** }

@ngx_cycle = common dso_local global %struct.TYPE_35__* null, align 8
@ngx_http_upstream_module = common dso_local global %struct.TYPE_31__ zeroinitializer, align 8
@NGX_ERROR = common dso_local global i32 0, align 4
@NGX_HTTP_UPSTREAM_CREATE = common dso_local global i32 0, align 4
@NGX_HTTP_UPSTREAM_WEIGHT = common dso_local global i32 0, align 4
@NGX_HTTP_UPSTREAM_MAX_FAILS = common dso_local global i32 0, align 4
@NGX_HTTP_UPSTREAM_FAIL_TIMEOUT = common dso_local global i32 0, align 4
@NGX_HTTP_UPSTREAM_DOWN = common dso_local global i32 0, align 4
@NGX_HTTP_UPSTREAM_BACKUP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"dynamic_upstream\00", align 1
@NGX_HTTP_MODULE = common dso_local global i64 0, align 8
@NGX_HTTP_MAIN_CONF = common dso_local global i32 0, align 4
@ngx_http_module = common dso_local global %struct.TYPE_32__ zeroinitializer, align 8
@ngx_http_max_module = common dso_local global i32 0, align 4
@ngx_modules = common dso_local global %struct.TYPE_39__** null, align 8
@ngx_http_core_module = common dso_local global %struct.TYPE_36__ zeroinitializer, align 8
@ngx_http_dyups_module = common dso_local global %struct.TYPE_33__ zeroinitializer, align 8
@NGX_OK = common dso_local global i32 0, align 4
@NGX_HTTP_UPSTREAM_MAX_CONNS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_43__*, %struct.TYPE_38__*, i64)* @ngx_dyups_init_upstream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_dyups_init_upstream(%struct.TYPE_43__* %0, %struct.TYPE_38__* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_43__*, align 8
  %6 = alloca %struct.TYPE_38__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_30__, align 8
  %11 = alloca %struct.TYPE_39__**, align 8
  %12 = alloca %struct.TYPE_42__*, align 8
  %13 = alloca %struct.TYPE_29__*, align 8
  %14 = alloca %struct.TYPE_40__*, align 8
  %15 = alloca %struct.TYPE_40__**, align 8
  %16 = alloca %struct.TYPE_41__*, align 8
  %17 = alloca %struct.TYPE_40__*, align 8
  store %struct.TYPE_43__* %0, %struct.TYPE_43__** %5, align 8
  store %struct.TYPE_38__* %1, %struct.TYPE_38__** %6, align 8
  store i64 %2, i64* %7, align 8
  %18 = load %struct.TYPE_35__*, %struct.TYPE_35__** @ngx_cycle, align 8
  %19 = load i64, i64* getelementptr inbounds (%struct.TYPE_31__, %struct.TYPE_31__* @ngx_http_upstream_module, i32 0, i32 0), align 8
  %20 = call %struct.TYPE_41__* @ngx_http_cycle_get_module_main_conf(%struct.TYPE_35__* %18, i64 %19)
  store %struct.TYPE_41__* %20, %struct.TYPE_41__** %16, align 8
  %21 = load %struct.TYPE_41__*, %struct.TYPE_41__** %16, align 8
  %22 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_40__**, %struct.TYPE_40__*** %23, align 8
  store %struct.TYPE_40__** %24, %struct.TYPE_40__*** %15, align 8
  %25 = load %struct.TYPE_35__*, %struct.TYPE_35__** @ngx_cycle, align 8
  %26 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = call i32* @ngx_create_pool(i32 512, i32 %27)
  %29 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %29, i32 0, i32 4
  store i32* %28, i32** %30, align 8
  %31 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %31, i32 0, i32 4
  %33 = load i32*, i32** %32, align 8
  %34 = icmp eq i32* %33, null
  br i1 %34, label %35, label %37

35:                                               ; preds = %3
  %36 = load i32, i32* @NGX_ERROR, align 4
  store i32 %36, i32* %4, align 4
  br label %256

37:                                               ; preds = %3
  %38 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %38, i32 0, i32 4
  %40 = load i32*, i32** %39, align 8
  %41 = call i8* @ngx_pcalloc(i32* %40, i32 64)
  %42 = bitcast i8* %41 to %struct.TYPE_40__*
  store %struct.TYPE_40__* %42, %struct.TYPE_40__** %14, align 8
  %43 = load %struct.TYPE_40__*, %struct.TYPE_40__** %14, align 8
  %44 = icmp eq %struct.TYPE_40__* %43, null
  br i1 %44, label %45, label %47

45:                                               ; preds = %37
  %46 = load i32, i32* @NGX_ERROR, align 4
  store i32 %46, i32* %4, align 4
  br label %256

47:                                               ; preds = %37
  %48 = load i32, i32* @NGX_HTTP_UPSTREAM_CREATE, align 4
  %49 = load i32, i32* @NGX_HTTP_UPSTREAM_WEIGHT, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* @NGX_HTTP_UPSTREAM_MAX_FAILS, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* @NGX_HTTP_UPSTREAM_FAIL_TIMEOUT, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* @NGX_HTTP_UPSTREAM_DOWN, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* @NGX_HTTP_UPSTREAM_BACKUP, align 4
  %58 = or i32 %56, %57
  %59 = load %struct.TYPE_40__*, %struct.TYPE_40__** %14, align 8
  %60 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 8
  %61 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %61, i32 0, i32 4
  %63 = load i32*, i32** %62, align 8
  %64 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %65 = call i32* @ngx_pstrdup(i32* %63, %struct.TYPE_38__* %64)
  %66 = load %struct.TYPE_40__*, %struct.TYPE_40__** %14, align 8
  %67 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %66, i32 0, i32 7
  %68 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %67, i32 0, i32 1
  store i32* %65, i32** %68, align 8
  %69 = load %struct.TYPE_40__*, %struct.TYPE_40__** %14, align 8
  %70 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %69, i32 0, i32 7
  %71 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %70, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = icmp eq i32* %72, null
  br i1 %73, label %74, label %76

74:                                               ; preds = %47
  %75 = load i32, i32* @NGX_ERROR, align 4
  store i32 %75, i32* %4, align 4
  br label %256

76:                                               ; preds = %47
  %77 = load %struct.TYPE_38__*, %struct.TYPE_38__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.TYPE_40__*, %struct.TYPE_40__** %14, align 8
  %81 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %80, i32 0, i32 7
  %82 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %81, i32 0, i32 0
  store i32 %79, i32* %82, align 8
  %83 = load %struct.TYPE_40__*, %struct.TYPE_40__** %14, align 8
  %84 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %83, i32 0, i32 6
  store i32* bitcast ([17 x i8]* @.str to i32*), i32** %84, align 8
  %85 = load %struct.TYPE_40__*, %struct.TYPE_40__** %14, align 8
  %86 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %85, i32 0, i32 5
  store i64 0, i64* %86, align 8
  %87 = load %struct.TYPE_40__*, %struct.TYPE_40__** %14, align 8
  %88 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %87, i32 0, i32 4
  store i64 0, i64* %88, align 8
  %89 = load %struct.TYPE_40__*, %struct.TYPE_40__** %14, align 8
  %90 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %89, i32 0, i32 3
  store i64 0, i64* %90, align 8
  %91 = load %struct.TYPE_40__*, %struct.TYPE_40__** %14, align 8
  %92 = load %struct.TYPE_40__**, %struct.TYPE_40__*** %15, align 8
  %93 = load i64, i64* %7, align 8
  %94 = getelementptr inbounds %struct.TYPE_40__*, %struct.TYPE_40__** %92, i64 %93
  store %struct.TYPE_40__* %91, %struct.TYPE_40__** %94, align 8
  %95 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %95, i32 0, i32 0
  store i32 1, i32* %96, align 8
  %97 = load %struct.TYPE_40__*, %struct.TYPE_40__** %14, align 8
  %98 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %98, i32 0, i32 5
  store %struct.TYPE_40__* %97, %struct.TYPE_40__** %99, align 8
  %100 = call i32 @ngx_memzero(%struct.TYPE_30__* %10, i32 40)
  %101 = load i64, i64* @NGX_HTTP_MODULE, align 8
  %102 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %10, i32 0, i32 4
  store i64 %101, i64* %102, align 8
  %103 = load i32, i32* @NGX_HTTP_MAIN_CONF, align 4
  %104 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %10, i32 0, i32 3
  store i32 %103, i32* %104, align 8
  %105 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %105, i32 0, i32 4
  %107 = load i32*, i32** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %10, i32 0, i32 0
  store i32* %107, i32** %108, align 8
  %109 = load %struct.TYPE_35__*, %struct.TYPE_35__** @ngx_cycle, align 8
  %110 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %109, i32 0, i32 1
  %111 = load i64*, i64** %110, align 8
  %112 = load i64, i64* getelementptr inbounds (%struct.TYPE_32__, %struct.TYPE_32__* @ngx_http_module, i32 0, i32 0), align 8
  %113 = getelementptr inbounds i64, i64* %111, i64 %112
  %114 = load i64, i64* %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %10, i32 0, i32 2
  store i64 %114, i64* %115, align 8
  %116 = load %struct.TYPE_35__*, %struct.TYPE_35__** @ngx_cycle, align 8
  %117 = bitcast %struct.TYPE_35__* %116 to i32*
  %118 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %10, i32 0, i32 1
  store i32* %117, i32** %118, align 8
  %119 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %119, i32 0, i32 4
  %121 = load i32*, i32** %120, align 8
  %122 = call i8* @ngx_pcalloc(i32* %121, i32 16)
  %123 = bitcast i8* %122 to %struct.TYPE_29__*
  store %struct.TYPE_29__* %123, %struct.TYPE_29__** %13, align 8
  %124 = load %struct.TYPE_29__*, %struct.TYPE_29__** %13, align 8
  %125 = icmp eq %struct.TYPE_29__* %124, null
  br i1 %125, label %126, label %128

126:                                              ; preds = %76
  %127 = load i32, i32* @NGX_ERROR, align 4
  store i32 %127, i32* %4, align 4
  br label %256

128:                                              ; preds = %76
  %129 = load %struct.TYPE_35__*, %struct.TYPE_35__** @ngx_cycle, align 8
  %130 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %129, i32 0, i32 1
  %131 = load i64*, i64** %130, align 8
  %132 = load i64, i64* getelementptr inbounds (%struct.TYPE_32__, %struct.TYPE_32__* @ngx_http_module, i32 0, i32 0), align 8
  %133 = getelementptr inbounds i64, i64* %131, i64 %132
  %134 = load i64, i64* %133, align 8
  %135 = inttoptr i64 %134 to %struct.TYPE_29__*
  %136 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 8
  %138 = load %struct.TYPE_29__*, %struct.TYPE_29__** %13, align 8
  %139 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %138, i32 0, i32 1
  store i32 %137, i32* %139, align 8
  %140 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %10, i32 0, i32 0
  %141 = load i32*, i32** %140, align 8
  %142 = load i32, i32* @ngx_http_max_module, align 4
  %143 = sext i32 %142 to i64
  %144 = mul i64 8, %143
  %145 = trunc i64 %144 to i32
  %146 = call i8* @ngx_pcalloc(i32* %141, i32 %145)
  %147 = bitcast i8* %146 to %struct.TYPE_40__**
  %148 = load %struct.TYPE_29__*, %struct.TYPE_29__** %13, align 8
  %149 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %148, i32 0, i32 0
  store %struct.TYPE_40__** %147, %struct.TYPE_40__*** %149, align 8
  %150 = load %struct.TYPE_29__*, %struct.TYPE_29__** %13, align 8
  %151 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %150, i32 0, i32 0
  %152 = load %struct.TYPE_40__**, %struct.TYPE_40__*** %151, align 8
  %153 = icmp eq %struct.TYPE_40__** %152, null
  br i1 %153, label %154, label %156

154:                                              ; preds = %128
  %155 = load i32, i32* @NGX_ERROR, align 4
  store i32 %155, i32* %4, align 4
  br label %256

156:                                              ; preds = %128
  %157 = load %struct.TYPE_40__*, %struct.TYPE_40__** %14, align 8
  %158 = load %struct.TYPE_29__*, %struct.TYPE_29__** %13, align 8
  %159 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %158, i32 0, i32 0
  %160 = load %struct.TYPE_40__**, %struct.TYPE_40__*** %159, align 8
  %161 = load i64, i64* getelementptr inbounds (%struct.TYPE_31__, %struct.TYPE_31__* @ngx_http_upstream_module, i32 0, i32 0), align 8
  %162 = getelementptr inbounds %struct.TYPE_40__*, %struct.TYPE_40__** %160, i64 %161
  store %struct.TYPE_40__* %157, %struct.TYPE_40__** %162, align 8
  %163 = load %struct.TYPE_29__*, %struct.TYPE_29__** %13, align 8
  %164 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %163, i32 0, i32 0
  %165 = load %struct.TYPE_40__**, %struct.TYPE_40__*** %164, align 8
  %166 = load %struct.TYPE_40__*, %struct.TYPE_40__** %14, align 8
  %167 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %166, i32 0, i32 2
  store %struct.TYPE_40__** %165, %struct.TYPE_40__*** %167, align 8
  %168 = load %struct.TYPE_39__**, %struct.TYPE_39__*** @ngx_modules, align 8
  store %struct.TYPE_39__** %168, %struct.TYPE_39__*** %11, align 8
  store i64 0, i64* %9, align 8
  br label %169

169:                                              ; preds = %233, %156
  %170 = load %struct.TYPE_39__**, %struct.TYPE_39__*** %11, align 8
  %171 = load i64, i64* %9, align 8
  %172 = getelementptr inbounds %struct.TYPE_39__*, %struct.TYPE_39__** %170, i64 %171
  %173 = load %struct.TYPE_39__*, %struct.TYPE_39__** %172, align 8
  %174 = icmp ne %struct.TYPE_39__* %173, null
  br i1 %174, label %175, label %236

175:                                              ; preds = %169
  %176 = load %struct.TYPE_39__**, %struct.TYPE_39__*** %11, align 8
  %177 = load i64, i64* %9, align 8
  %178 = getelementptr inbounds %struct.TYPE_39__*, %struct.TYPE_39__** %176, i64 %177
  %179 = load %struct.TYPE_39__*, %struct.TYPE_39__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %179, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = load i64, i64* @NGX_HTTP_MODULE, align 8
  %183 = icmp ne i64 %181, %182
  br i1 %183, label %184, label %185

184:                                              ; preds = %175
  br label %233

185:                                              ; preds = %175
  %186 = load %struct.TYPE_39__**, %struct.TYPE_39__*** %11, align 8
  %187 = load i64, i64* %9, align 8
  %188 = getelementptr inbounds %struct.TYPE_39__*, %struct.TYPE_39__** %186, i64 %187
  %189 = load %struct.TYPE_39__*, %struct.TYPE_39__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %189, i32 0, i32 1
  %191 = load i64, i64* %190, align 8
  %192 = load i64, i64* getelementptr inbounds (%struct.TYPE_36__, %struct.TYPE_36__* @ngx_http_core_module, i32 0, i32 0), align 8
  %193 = icmp eq i64 %191, %192
  br i1 %193, label %194, label %195

194:                                              ; preds = %185
  br label %233

195:                                              ; preds = %185
  %196 = load %struct.TYPE_39__**, %struct.TYPE_39__*** %11, align 8
  %197 = load i64, i64* %9, align 8
  %198 = getelementptr inbounds %struct.TYPE_39__*, %struct.TYPE_39__** %196, i64 %197
  %199 = load %struct.TYPE_39__*, %struct.TYPE_39__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %199, i32 0, i32 3
  %201 = load %struct.TYPE_42__*, %struct.TYPE_42__** %200, align 8
  store %struct.TYPE_42__* %201, %struct.TYPE_42__** %12, align 8
  %202 = load %struct.TYPE_39__**, %struct.TYPE_39__*** %11, align 8
  %203 = load i64, i64* %9, align 8
  %204 = getelementptr inbounds %struct.TYPE_39__*, %struct.TYPE_39__** %202, i64 %203
  %205 = load %struct.TYPE_39__*, %struct.TYPE_39__** %204, align 8
  %206 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %205, i32 0, i32 2
  %207 = load i64, i64* %206, align 8
  store i64 %207, i64* %8, align 8
  %208 = load %struct.TYPE_42__*, %struct.TYPE_42__** %12, align 8
  %209 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %208, i32 0, i32 0
  %210 = load %struct.TYPE_40__* (%struct.TYPE_30__*)*, %struct.TYPE_40__* (%struct.TYPE_30__*)** %209, align 8
  %211 = icmp ne %struct.TYPE_40__* (%struct.TYPE_30__*)* %210, null
  br i1 %211, label %212, label %232

212:                                              ; preds = %195
  %213 = load %struct.TYPE_42__*, %struct.TYPE_42__** %12, align 8
  %214 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %213, i32 0, i32 0
  %215 = load %struct.TYPE_40__* (%struct.TYPE_30__*)*, %struct.TYPE_40__* (%struct.TYPE_30__*)** %214, align 8
  %216 = call %struct.TYPE_40__* %215(%struct.TYPE_30__* %10)
  %217 = load %struct.TYPE_29__*, %struct.TYPE_29__** %13, align 8
  %218 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %217, i32 0, i32 0
  %219 = load %struct.TYPE_40__**, %struct.TYPE_40__*** %218, align 8
  %220 = load i64, i64* %8, align 8
  %221 = getelementptr inbounds %struct.TYPE_40__*, %struct.TYPE_40__** %219, i64 %220
  store %struct.TYPE_40__* %216, %struct.TYPE_40__** %221, align 8
  %222 = load %struct.TYPE_29__*, %struct.TYPE_29__** %13, align 8
  %223 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %222, i32 0, i32 0
  %224 = load %struct.TYPE_40__**, %struct.TYPE_40__*** %223, align 8
  %225 = load i64, i64* %8, align 8
  %226 = getelementptr inbounds %struct.TYPE_40__*, %struct.TYPE_40__** %224, i64 %225
  %227 = load %struct.TYPE_40__*, %struct.TYPE_40__** %226, align 8
  %228 = icmp eq %struct.TYPE_40__* %227, null
  br i1 %228, label %229, label %231

229:                                              ; preds = %212
  %230 = load i32, i32* @NGX_ERROR, align 4
  store i32 %230, i32* %4, align 4
  br label %256

231:                                              ; preds = %212
  br label %232

232:                                              ; preds = %231, %195
  br label %233

233:                                              ; preds = %232, %194, %184
  %234 = load i64, i64* %9, align 8
  %235 = add i64 %234, 1
  store i64 %235, i64* %9, align 8
  br label %169

236:                                              ; preds = %169
  %237 = load %struct.TYPE_40__*, %struct.TYPE_40__** %14, align 8
  %238 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %237, i32 0, i32 2
  %239 = load %struct.TYPE_40__**, %struct.TYPE_40__*** %238, align 8
  %240 = load i64, i64* getelementptr inbounds (%struct.TYPE_33__, %struct.TYPE_33__* @ngx_http_dyups_module, i32 0, i32 0), align 8
  %241 = getelementptr inbounds %struct.TYPE_40__*, %struct.TYPE_40__** %239, i64 %240
  %242 = load %struct.TYPE_40__*, %struct.TYPE_40__** %241, align 8
  store %struct.TYPE_40__* %242, %struct.TYPE_40__** %17, align 8
  %243 = load %struct.TYPE_40__*, %struct.TYPE_40__** %17, align 8
  %244 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %243, i32 0, i32 1
  %245 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %246 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %245, i32 0, i32 3
  store i32* %244, i32** %246, align 8
  %247 = load %struct.TYPE_29__*, %struct.TYPE_29__** %13, align 8
  %248 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %249 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %248, i32 0, i32 2
  store %struct.TYPE_29__* %247, %struct.TYPE_29__** %249, align 8
  %250 = load %struct.TYPE_43__*, %struct.TYPE_43__** %5, align 8
  %251 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %250, i32 0, i32 1
  store i64 0, i64* %251, align 8
  %252 = load %struct.TYPE_41__*, %struct.TYPE_41__** %16, align 8
  %253 = load %struct.TYPE_40__*, %struct.TYPE_40__** %14, align 8
  %254 = call i32 @ngx_dyups_add_upstream_top_filter(%struct.TYPE_41__* %252, %struct.TYPE_40__* %253)
  %255 = load i32, i32* @NGX_OK, align 4
  store i32 %255, i32* %4, align 4
  br label %256

256:                                              ; preds = %236, %229, %154, %126, %74, %45, %35
  %257 = load i32, i32* %4, align 4
  ret i32 %257
}

declare dso_local %struct.TYPE_41__* @ngx_http_cycle_get_module_main_conf(%struct.TYPE_35__*, i64) #1

declare dso_local i32* @ngx_create_pool(i32, i32) #1

declare dso_local i8* @ngx_pcalloc(i32*, i32) #1

declare dso_local i32* @ngx_pstrdup(i32*, %struct.TYPE_38__*) #1

declare dso_local i32 @ngx_memzero(%struct.TYPE_30__*, i32) #1

declare dso_local i32 @ngx_dyups_add_upstream_top_filter(%struct.TYPE_41__*, %struct.TYPE_40__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
