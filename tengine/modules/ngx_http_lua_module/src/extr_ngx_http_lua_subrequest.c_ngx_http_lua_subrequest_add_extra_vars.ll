; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_subrequest.c_ngx_http_lua_subrequest_add_extra_vars.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_subrequest.c_ngx_http_lua_subrequest_add_extra_vars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_30__ = type { %struct.TYPE_25__*, %struct.TYPE_28__*, i32 }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_28__ = type { i32, i64, i32*, i64, i64 }
%struct.TYPE_22__ = type { i64, %struct.TYPE_27__* }
%struct.TYPE_27__ = type { %struct.TYPE_24__, %struct.TYPE_23__ }
%struct.TYPE_24__ = type { i64, i32 }
%struct.TYPE_23__ = type { i64, i32 }
%struct.TYPE_31__ = type { i32 }
%struct.TYPE_29__ = type { i32, i64, i32, i32 (%struct.TYPE_30__*, %struct.TYPE_28__*, i32)* }
%struct.TYPE_26__ = type { i64, i32* }

@NGX_OK = common dso_local global i32 0, align 4
@ngx_http_core_module = common dso_local global i32 0, align 4
@NGX_ERROR = common dso_local global i32 0, align 4
@NGX_HTTP_VAR_CHANGEABLE = common dso_local global i32 0, align 4
@NGX_LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"variable \22%V\22 not changeable\00", align 1
@NGX_HTTP_INTERNAL_SERVER_ERROR = common dso_local global i32 0, align 4
@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"variable \22%V\22 set to value \22%v\22\00", align 1
@NGX_HTTP_VAR_INDEXED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [81 x i8] c"variable \22%V\22 cannot be assigned a value (maybe you forgot to define it first?) \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_30__*, %struct.TYPE_22__*)* @ngx_http_lua_subrequest_add_extra_vars to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_http_lua_subrequest_add_extra_vars(%struct.TYPE_30__* %0, %struct.TYPE_22__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_30__*, align 8
  %5 = alloca %struct.TYPE_22__*, align 8
  %6 = alloca %struct.TYPE_31__*, align 8
  %7 = alloca %struct.TYPE_29__*, align 8
  %8 = alloca %struct.TYPE_28__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_26__, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_27__*, align 8
  store %struct.TYPE_30__* %0, %struct.TYPE_30__** %4, align 8
  store %struct.TYPE_22__* %1, %struct.TYPE_22__** %5, align 8
  %17 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %18 = icmp eq %struct.TYPE_22__* %17, null
  br i1 %18, label %24, label %19

19:                                               ; preds = %2
  %20 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %19, %2
  %25 = load i32, i32* @NGX_OK, align 4
  store i32 %25, i32* %3, align 4
  br label %218

26:                                               ; preds = %19
  %27 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %28 = load i32, i32* @ngx_http_core_module, align 4
  %29 = call %struct.TYPE_31__* @ngx_http_get_module_main_conf(%struct.TYPE_30__* %27, i32 %28)
  store %struct.TYPE_31__* %29, %struct.TYPE_31__** %6, align 8
  %30 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %30, i32 0, i32 0
  store i32* %31, i32** %15, align 8
  %32 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_27__*, %struct.TYPE_27__** %33, align 8
  store %struct.TYPE_27__* %34, %struct.TYPE_27__** %16, align 8
  store i64 0, i64* %11, align 8
  br label %35

35:                                               ; preds = %211, %26
  %36 = load i64, i64* %11, align 8
  %37 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp slt i64 %36, %39
  br i1 %40, label %41, label %216

41:                                               ; preds = %35
  %42 = load %struct.TYPE_27__*, %struct.TYPE_27__** %16, align 8
  %43 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.TYPE_27__*, %struct.TYPE_27__** %16, align 8
  %47 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = add i64 %45, %49
  store i64 %50, i64* %14, align 8
  %51 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = load i64, i64* %14, align 8
  %55 = call i32* @ngx_pnalloc(i32 %53, i64 %54)
  store i32* %55, i32** %10, align 8
  %56 = load i32*, i32** %10, align 8
  %57 = icmp eq i32* %56, null
  br i1 %57, label %58, label %60

58:                                               ; preds = %41
  %59 = load i32, i32* @NGX_ERROR, align 4
  store i32 %59, i32* %3, align 4
  br label %218

60:                                               ; preds = %41
  %61 = load i32*, i32** %10, align 8
  %62 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %13, i32 0, i32 1
  store i32* %61, i32** %62, align 8
  %63 = load %struct.TYPE_27__*, %struct.TYPE_27__** %16, align 8
  %64 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %13, i32 0, i32 0
  store i64 %66, i64* %67, align 8
  %68 = load i32*, i32** %10, align 8
  %69 = load %struct.TYPE_27__*, %struct.TYPE_27__** %16, align 8
  %70 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.TYPE_27__*, %struct.TYPE_27__** %16, align 8
  %74 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = call i32* @ngx_copy(i32* %68, i32 %72, i64 %76)
  store i32* %77, i32** %10, align 8
  %78 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %13, i32 0, i32 1
  %79 = load i32*, i32** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %13, i32 0, i32 1
  %81 = load i32*, i32** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %13, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = call i64 @ngx_hash_strlow(i32* %79, i32* %81, i64 %83)
  store i64 %84, i64* %12, align 8
  %85 = load i32*, i32** %10, align 8
  store i32* %85, i32** %9, align 8
  %86 = load %struct.TYPE_27__*, %struct.TYPE_27__** %16, align 8
  %87 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  store i64 %89, i64* %14, align 8
  %90 = load i32*, i32** %10, align 8
  %91 = load %struct.TYPE_27__*, %struct.TYPE_27__** %16, align 8
  %92 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = load i64, i64* %14, align 8
  %96 = call i32 @ngx_memcpy(i32* %90, i32 %94, i64 %95)
  %97 = load i32*, i32** %15, align 8
  %98 = load i64, i64* %12, align 8
  %99 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %13, i32 0, i32 1
  %100 = load i32*, i32** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %13, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = call %struct.TYPE_29__* @ngx_hash_find(i32* %97, i64 %98, i32* %100, i64 %102)
  store %struct.TYPE_29__* %103, %struct.TYPE_29__** %7, align 8
  %104 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %105 = icmp ne %struct.TYPE_29__* %104, null
  br i1 %105, label %106, label %202

106:                                              ; preds = %60
  %107 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %108 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* @NGX_HTTP_VAR_CHANGEABLE, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %122, label %113

113:                                              ; preds = %106
  %114 = load i32, i32* @NGX_LOG_ERR, align 4
  %115 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %115, i32 0, i32 0
  %117 = load %struct.TYPE_25__*, %struct.TYPE_25__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @ngx_log_error(i32 %114, i32 %119, i32 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), %struct.TYPE_26__* %13)
  %121 = load i32, i32* @NGX_HTTP_INTERNAL_SERVER_ERROR, align 4
  store i32 %121, i32* %3, align 4
  br label %218

122:                                              ; preds = %106
  %123 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %124 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %123, i32 0, i32 3
  %125 = load i32 (%struct.TYPE_30__*, %struct.TYPE_28__*, i32)*, i32 (%struct.TYPE_30__*, %struct.TYPE_28__*, i32)** %124, align 8
  %126 = icmp ne i32 (%struct.TYPE_30__*, %struct.TYPE_28__*, i32)* %125, null
  br i1 %126, label %127, label %166

127:                                              ; preds = %122
  %128 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %129 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 8
  %131 = call %struct.TYPE_28__* @ngx_palloc(i32 %130, i32 40)
  store %struct.TYPE_28__* %131, %struct.TYPE_28__** %8, align 8
  %132 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %133 = icmp eq %struct.TYPE_28__* %132, null
  br i1 %133, label %134, label %136

134:                                              ; preds = %127
  %135 = load i32, i32* @NGX_ERROR, align 4
  store i32 %135, i32* %3, align 4
  br label %218

136:                                              ; preds = %127
  %137 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %138 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %137, i32 0, i32 0
  store i32 1, i32* %138, align 8
  %139 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %140 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %139, i32 0, i32 4
  store i64 0, i64* %140, align 8
  %141 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %142 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %141, i32 0, i32 3
  store i64 0, i64* %142, align 8
  %143 = load i32*, i32** %9, align 8
  %144 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %145 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %144, i32 0, i32 2
  store i32* %143, i32** %145, align 8
  %146 = load i64, i64* %14, align 8
  %147 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %148 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %147, i32 0, i32 1
  store i64 %146, i64* %148, align 8
  %149 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %150 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %149, i32 0, i32 3
  %151 = load i32 (%struct.TYPE_30__*, %struct.TYPE_28__*, i32)*, i32 (%struct.TYPE_30__*, %struct.TYPE_28__*, i32)** %150, align 8
  %152 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %153 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %154 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %155 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 8
  %157 = call i32 %151(%struct.TYPE_30__* %152, %struct.TYPE_28__* %153, i32 %156)
  %158 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %159 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %160 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %159, i32 0, i32 0
  %161 = load %struct.TYPE_25__*, %struct.TYPE_25__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %165 = call i32 @ngx_log_debug2(i32 %158, i32 %163, i32 0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_26__* %13, %struct.TYPE_28__* %164)
  br label %211

166:                                              ; preds = %122
  %167 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %168 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = load i32, i32* @NGX_HTTP_VAR_INDEXED, align 4
  %171 = and i32 %169, %170
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %201

173:                                              ; preds = %166
  %174 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %175 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %174, i32 0, i32 1
  %176 = load %struct.TYPE_28__*, %struct.TYPE_28__** %175, align 8
  %177 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %178 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %177, i32 0, i32 1
  %179 = load i64, i64* %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %176, i64 %179
  store %struct.TYPE_28__* %180, %struct.TYPE_28__** %8, align 8
  %181 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %182 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %181, i32 0, i32 0
  store i32 1, i32* %182, align 8
  %183 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %184 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %183, i32 0, i32 4
  store i64 0, i64* %184, align 8
  %185 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %186 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %185, i32 0, i32 3
  store i64 0, i64* %186, align 8
  %187 = load i32*, i32** %9, align 8
  %188 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %189 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %188, i32 0, i32 2
  store i32* %187, i32** %189, align 8
  %190 = load i64, i64* %14, align 8
  %191 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %192 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %191, i32 0, i32 1
  store i64 %190, i64* %192, align 8
  %193 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %194 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %195 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %194, i32 0, i32 0
  %196 = load %struct.TYPE_25__*, %struct.TYPE_25__** %195, align 8
  %197 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 4
  %199 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %200 = call i32 @ngx_log_debug2(i32 %193, i32 %198, i32 0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_26__* %13, %struct.TYPE_28__* %199)
  br label %211

201:                                              ; preds = %166
  br label %202

202:                                              ; preds = %201, %60
  %203 = load i32, i32* @NGX_LOG_ERR, align 4
  %204 = load %struct.TYPE_30__*, %struct.TYPE_30__** %4, align 8
  %205 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %204, i32 0, i32 0
  %206 = load %struct.TYPE_25__*, %struct.TYPE_25__** %205, align 8
  %207 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 4
  %209 = call i32 @ngx_log_error(i32 %203, i32 %208, i32 0, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_26__* %13)
  %210 = load i32, i32* @NGX_ERROR, align 4
  store i32 %210, i32* %3, align 4
  br label %218

211:                                              ; preds = %173, %136
  %212 = load i64, i64* %11, align 8
  %213 = add nsw i64 %212, 1
  store i64 %213, i64* %11, align 8
  %214 = load %struct.TYPE_27__*, %struct.TYPE_27__** %16, align 8
  %215 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %214, i32 1
  store %struct.TYPE_27__* %215, %struct.TYPE_27__** %16, align 8
  br label %35

216:                                              ; preds = %35
  %217 = load i32, i32* @NGX_OK, align 4
  store i32 %217, i32* %3, align 4
  br label %218

218:                                              ; preds = %216, %202, %134, %113, %58, %24
  %219 = load i32, i32* %3, align 4
  ret i32 %219
}

declare dso_local %struct.TYPE_31__* @ngx_http_get_module_main_conf(%struct.TYPE_30__*, i32) #1

declare dso_local i32* @ngx_pnalloc(i32, i64) #1

declare dso_local i32* @ngx_copy(i32*, i32, i64) #1

declare dso_local i64 @ngx_hash_strlow(i32*, i32*, i64) #1

declare dso_local i32 @ngx_memcpy(i32*, i32, i64) #1

declare dso_local %struct.TYPE_29__* @ngx_hash_find(i32*, i64, i32*, i64) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*, %struct.TYPE_26__*) #1

declare dso_local %struct.TYPE_28__* @ngx_palloc(i32, i32) #1

declare dso_local i32 @ngx_log_debug2(i32, i32, i32, i8*, %struct.TYPE_26__*, %struct.TYPE_28__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
