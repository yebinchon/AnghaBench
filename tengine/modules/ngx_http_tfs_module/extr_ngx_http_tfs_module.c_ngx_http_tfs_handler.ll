; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_tfs_module/extr_ngx_http_tfs_module.c_ngx_http_tfs_handler.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_tfs_module/extr_ngx_http_tfs_module.c_ngx_http_tfs_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_30__ = type { %struct.TYPE_39__, %struct.TYPE_38__*, %struct.TYPE_36__*, i32, i32 }
%struct.TYPE_39__ = type { i32 }
%struct.TYPE_38__ = type { i32 }
%struct.TYPE_36__ = type { i32 }
%struct.TYPE_40__ = type { %struct.TYPE_31__, %struct.TYPE_29__*, i32, %struct.TYPE_34__, %struct.TYPE_32__, %struct.TYPE_28__*, i32*, i32, %struct.TYPE_30__*, i32 }
%struct.TYPE_31__ = type { i32, %struct.TYPE_37__ }
%struct.TYPE_37__ = type { i32 }
%struct.TYPE_29__ = type { %struct.TYPE_35__* }
%struct.TYPE_35__ = type { i32 }
%struct.TYPE_34__ = type { i32, %struct.TYPE_33__, i32, i32* }
%struct.TYPE_33__ = type { i32*, %struct.TYPE_40__* }
%struct.TYPE_32__ = type { i64 }
%struct.TYPE_28__ = type { i64, i32, i32* }

@ngx_http_tfs_module = common dso_local global i32 0, align 4
@NGX_LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"alloc ngx_http_tfs_t failed\00", align 1
@NGX_HTTP_INTERNAL_SERVER_ERROR = common dso_local global i64 0, align 8
@NGX_HTTP_TFS_LOCAL_BLOCK_CACHE = common dso_local global i32 0, align 4
@NGX_HTTP_TFS_YES = common dso_local global i64 0, align 8
@NGX_HTTP_TFS_REMOTE_BLOCK_CACHE = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [90 x i8] c"custom file requires tfs_enable_rcs on, and make sure you have MetaServer and RootServer!\00", align 1
@NGX_HTTP_BAD_REQUEST = common dso_local global i64 0, align 8
@NGX_HTTP_SPECIAL_RESPONSE = common dso_local global i64 0, align 8
@NGX_DONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_30__*)* @ngx_http_tfs_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ngx_http_tfs_handler(%struct.TYPE_30__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_30__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_40__*, align 8
  %6 = alloca %struct.TYPE_29__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_28__*, align 8
  store %struct.TYPE_30__* %0, %struct.TYPE_30__** %3, align 8
  %9 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %10 = load i32, i32* @ngx_http_tfs_module, align 4
  %11 = call %struct.TYPE_29__* @ngx_http_get_module_loc_conf(%struct.TYPE_30__* %9, i32 %10)
  store %struct.TYPE_29__* %11, %struct.TYPE_29__** %6, align 8
  %12 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %13 = load i32, i32* @ngx_http_tfs_module, align 4
  %14 = call i32* @ngx_http_get_module_srv_conf(%struct.TYPE_30__* %12, i32 %13)
  store i32* %14, i32** %7, align 8
  %15 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %16 = load i32, i32* @ngx_http_tfs_module, align 4
  %17 = call %struct.TYPE_28__* @ngx_http_get_module_main_conf(%struct.TYPE_30__* %15, i32 %16)
  store %struct.TYPE_28__* %17, %struct.TYPE_28__** %8, align 8
  %18 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.TYPE_40__* @ngx_pcalloc(i32 %20, i32 112)
  store %struct.TYPE_40__* %21, %struct.TYPE_40__** %5, align 8
  %22 = load %struct.TYPE_40__*, %struct.TYPE_40__** %5, align 8
  %23 = icmp eq %struct.TYPE_40__* %22, null
  br i1 %23, label %24, label %33

24:                                               ; preds = %1
  %25 = load i32, i32* @NGX_LOG_ERR, align 4
  %26 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %26, i32 0, i32 2
  %28 = load %struct.TYPE_36__*, %struct.TYPE_36__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @ngx_log_error(i32 %25, i32 %30, i32 0, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %32 = load i64, i64* @NGX_HTTP_INTERNAL_SERVER_ERROR, align 8
  store i64 %32, i64* %2, align 8
  br label %193

33:                                               ; preds = %1
  %34 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.TYPE_40__*, %struct.TYPE_40__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %37, i32 0, i32 9
  store i32 %36, i32* %38, align 8
  %39 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %40 = load %struct.TYPE_40__*, %struct.TYPE_40__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %40, i32 0, i32 8
  store %struct.TYPE_30__* %39, %struct.TYPE_30__** %41, align 8
  %42 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %42, i32 0, i32 2
  %44 = load %struct.TYPE_36__*, %struct.TYPE_36__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.TYPE_40__*, %struct.TYPE_40__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %47, i32 0, i32 7
  store i32 %46, i32* %48, align 8
  %49 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %50 = load %struct.TYPE_40__*, %struct.TYPE_40__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %50, i32 0, i32 1
  store %struct.TYPE_29__* %49, %struct.TYPE_29__** %51, align 8
  %52 = load i32*, i32** %7, align 8
  %53 = load %struct.TYPE_40__*, %struct.TYPE_40__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %53, i32 0, i32 6
  store i32* %52, i32** %54, align 8
  %55 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %56 = load %struct.TYPE_40__*, %struct.TYPE_40__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %56, i32 0, i32 5
  store %struct.TYPE_28__* %55, %struct.TYPE_28__** %57, align 8
  %58 = load %struct.TYPE_40__*, %struct.TYPE_40__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %58, i32 0, i32 4
  %60 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %59, i32 0, i32 0
  store i64 ptrtoint (i32* @ngx_http_tfs_module to i64), i64* %60, align 8
  %61 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %61, i32 0, i32 2
  %63 = load i32*, i32** %62, align 8
  %64 = icmp ne i32* %63, null
  br i1 %64, label %65, label %78

65:                                               ; preds = %33
  %66 = load i32, i32* @NGX_HTTP_TFS_LOCAL_BLOCK_CACHE, align 4
  %67 = load %struct.TYPE_40__*, %struct.TYPE_40__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %67, i32 0, i32 3
  %69 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = or i32 %70, %66
  store i32 %71, i32* %69, align 8
  %72 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %72, i32 0, i32 2
  %74 = load i32*, i32** %73, align 8
  %75 = load %struct.TYPE_40__*, %struct.TYPE_40__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %75, i32 0, i32 3
  %77 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %76, i32 0, i32 3
  store i32* %74, i32** %77, align 8
  br label %78

78:                                               ; preds = %65, %33
  %79 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %80 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @NGX_HTTP_TFS_YES, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %91

84:                                               ; preds = %78
  %85 = load i32, i32* @NGX_HTTP_TFS_REMOTE_BLOCK_CACHE, align 4
  %86 = load %struct.TYPE_40__*, %struct.TYPE_40__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %86, i32 0, i32 3
  %88 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = or i32 %89, %85
  store i32 %90, i32* %88, align 8
  br label %91

91:                                               ; preds = %84, %78
  %92 = load %struct.TYPE_40__*, %struct.TYPE_40__** %5, align 8
  %93 = load %struct.TYPE_40__*, %struct.TYPE_40__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %93, i32 0, i32 3
  %95 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %95, i32 0, i32 1
  store %struct.TYPE_40__* %92, %struct.TYPE_40__** %96, align 8
  %97 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %98 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %97, i32 0, i32 1
  %99 = load %struct.TYPE_40__*, %struct.TYPE_40__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %99, i32 0, i32 3
  %101 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %101, i32 0, i32 0
  store i32* %98, i32** %102, align 8
  %103 = load i32, i32* @NGX_HTTP_TFS_LOCAL_BLOCK_CACHE, align 4
  %104 = load %struct.TYPE_40__*, %struct.TYPE_40__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %104, i32 0, i32 3
  %106 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %105, i32 0, i32 0
  store i32 %103, i32* %106, align 8
  %107 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %108 = load %struct.TYPE_40__*, %struct.TYPE_40__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %108, i32 0, i32 0
  %110 = call i64 @ngx_http_restful_parse(%struct.TYPE_30__* %107, %struct.TYPE_31__* %109)
  store i64 %110, i64* %4, align 8
  %111 = load i64, i64* %4, align 8
  %112 = load i64, i64* @NGX_OK, align 8
  %113 = icmp ne i64 %111, %112
  br i1 %113, label %114, label %116

114:                                              ; preds = %91
  %115 = load i64, i64* %4, align 8
  store i64 %115, i64* %2, align 8
  br label %193

116:                                              ; preds = %91
  %117 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %118 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %117, i32 0, i32 3
  %119 = load i32, i32* %118, align 8
  %120 = load %struct.TYPE_40__*, %struct.TYPE_40__** %5, align 8
  %121 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %120, i32 0, i32 2
  store i32 %119, i32* %121, align 8
  %122 = load %struct.TYPE_40__*, %struct.TYPE_40__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %122, i32 0, i32 1
  %124 = load %struct.TYPE_29__*, %struct.TYPE_29__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %124, i32 0, i32 0
  %126 = load %struct.TYPE_35__*, %struct.TYPE_35__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %145, label %130

130:                                              ; preds = %116
  %131 = load %struct.TYPE_40__*, %struct.TYPE_40__** %5, align 8
  %132 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = icmp eq i32 %134, 2
  br i1 %135, label %136, label %145

136:                                              ; preds = %130
  %137 = load i32, i32* @NGX_LOG_ERR, align 4
  %138 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %139 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %138, i32 0, i32 2
  %140 = load %struct.TYPE_36__*, %struct.TYPE_36__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @ngx_log_error(i32 %137, i32 %142, i32 0, i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.1, i64 0, i64 0))
  %144 = load i64, i64* @NGX_HTTP_BAD_REQUEST, align 8
  store i64 %144, i64* %2, align 8
  br label %193

145:                                              ; preds = %130, %116
  %146 = load %struct.TYPE_40__*, %struct.TYPE_40__** %5, align 8
  %147 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %147, i32 0, i32 1
  %149 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  switch i32 %150, label %191 [
    i32 140, label %151
    i32 139, label %151
    i32 131, label %151
    i32 130, label %151
    i32 134, label %151
    i32 133, label %151
    i32 136, label %151
    i32 135, label %151
    i32 129, label %151
    i32 137, label %151
    i32 132, label %151
    i32 138, label %151
    i32 128, label %175
  ]

151:                                              ; preds = %145, %145, %145, %145, %145, %145, %145, %145, %145, %145, %145, %145
  %152 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %153 = call i64 @ngx_http_discard_request_body(%struct.TYPE_30__* %152)
  store i64 %153, i64* %4, align 8
  %154 = load i64, i64* %4, align 8
  %155 = load i64, i64* @NGX_OK, align 8
  %156 = icmp ne i64 %154, %155
  br i1 %156, label %157, label %159

157:                                              ; preds = %151
  %158 = load i64, i64* %4, align 8
  store i64 %158, i64* %2, align 8
  br label %193

159:                                              ; preds = %151
  %160 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %161 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %161, i32 0, i32 0
  store i32 -1, i32* %162, align 8
  %163 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %164 = load %struct.TYPE_40__*, %struct.TYPE_40__** %5, align 8
  %165 = load i32, i32* @ngx_http_tfs_module, align 4
  %166 = call i32 @ngx_http_set_ctx(%struct.TYPE_30__* %163, %struct.TYPE_40__* %164, i32 %165)
  %167 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %168 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %167, i32 0, i32 1
  %169 = load %struct.TYPE_38__*, %struct.TYPE_38__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %170, align 4
  %173 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %174 = call i32 @ngx_http_tfs_read_body_handler(%struct.TYPE_30__* %173)
  br label %191

175:                                              ; preds = %145
  %176 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %177 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %177, i32 0, i32 0
  store i32 -1, i32* %178, align 8
  %179 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %180 = load %struct.TYPE_40__*, %struct.TYPE_40__** %5, align 8
  %181 = load i32, i32* @ngx_http_tfs_module, align 4
  %182 = call i32 @ngx_http_set_ctx(%struct.TYPE_30__* %179, %struct.TYPE_40__* %180, i32 %181)
  %183 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %184 = call i64 @ngx_http_read_client_request_body(%struct.TYPE_30__* %183, i32 (%struct.TYPE_30__*)* @ngx_http_tfs_read_body_handler)
  store i64 %184, i64* %4, align 8
  %185 = load i64, i64* %4, align 8
  %186 = load i64, i64* @NGX_HTTP_SPECIAL_RESPONSE, align 8
  %187 = icmp sge i64 %185, %186
  br i1 %187, label %188, label %190

188:                                              ; preds = %175
  %189 = load i64, i64* %4, align 8
  store i64 %189, i64* %2, align 8
  br label %193

190:                                              ; preds = %175
  br label %191

191:                                              ; preds = %145, %190, %159
  %192 = load i64, i64* @NGX_DONE, align 8
  store i64 %192, i64* %2, align 8
  br label %193

193:                                              ; preds = %191, %188, %157, %136, %114, %24
  %194 = load i64, i64* %2, align 8
  ret i64 %194
}

declare dso_local %struct.TYPE_29__* @ngx_http_get_module_loc_conf(%struct.TYPE_30__*, i32) #1

declare dso_local i32* @ngx_http_get_module_srv_conf(%struct.TYPE_30__*, i32) #1

declare dso_local %struct.TYPE_28__* @ngx_http_get_module_main_conf(%struct.TYPE_30__*, i32) #1

declare dso_local %struct.TYPE_40__* @ngx_pcalloc(i32, i32) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*) #1

declare dso_local i64 @ngx_http_restful_parse(%struct.TYPE_30__*, %struct.TYPE_31__*) #1

declare dso_local i64 @ngx_http_discard_request_body(%struct.TYPE_30__*) #1

declare dso_local i32 @ngx_http_set_ctx(%struct.TYPE_30__*, %struct.TYPE_40__*, i32) #1

declare dso_local i32 @ngx_http_tfs_read_body_handler(%struct.TYPE_30__*) #1

declare dso_local i64 @ngx_http_read_client_request_body(%struct.TYPE_30__*, i32 (%struct.TYPE_30__*)*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
