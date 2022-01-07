; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_upstream_check_module/extr_ngx_http_upstream_check_module.c_ngx_http_upstream_check_status_handler.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_upstream_check_module/extr_ngx_http_upstream_check_module.c_ngx_http_upstream_check_status_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_34__ = type { %struct.TYPE_30__ }
%struct.TYPE_30__ = type { i32 }
%struct.TYPE_36__ = type { i64, i32, %struct.TYPE_32__, i32, %struct.TYPE_29__* }
%struct.TYPE_32__ = type { i64, i8*, i32*, %struct.TYPE_28__, i32 }
%struct.TYPE_28__ = type { i32 }
%struct.TYPE_29__ = type { i32 }
%struct.TYPE_27__ = type { i64, i64, i32 }
%struct.TYPE_26__ = type { i32*, %struct.TYPE_27__* }
%struct.TYPE_35__ = type { %struct.TYPE_31__* }
%struct.TYPE_31__ = type { i32 (%struct.TYPE_27__*, %struct.TYPE_34__*, i32)*, %struct.TYPE_28__ }
%struct.TYPE_33__ = type { i32, %struct.TYPE_31__* }

@NGX_HTTP_GET = common dso_local global i64 0, align 8
@NGX_HTTP_HEAD = common dso_local global i64 0, align 8
@NGX_HTTP_NOT_ALLOWED = common dso_local global i64 0, align 8
@NGX_OK = common dso_local global i64 0, align 8
@ngx_http_upstream_check_module = common dso_local global i32 0, align 4
@NGX_HTTP_INTERNAL_SERVER_ERROR = common dso_local global i64 0, align 8
@NGX_HTTP_OK = common dso_local global i8* null, align 8
@NGX_ERROR = common dso_local global i64 0, align 8
@check_peers_ctx = common dso_local global %struct.TYPE_34__* null, align 8
@NGX_LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [99 x i8] c"http upstream check module can not find any check server, make sure you've added the check servers\00", align 1
@ngx_pagesize = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_36__*)* @ngx_http_upstream_check_status_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ngx_http_upstream_check_status_handler(%struct.TYPE_36__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_36__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_27__*, align 8
  %7 = alloca %struct.TYPE_26__, align 8
  %8 = alloca %struct.TYPE_34__*, align 8
  %9 = alloca %struct.TYPE_35__*, align 8
  %10 = alloca %struct.TYPE_33__*, align 8
  store %struct.TYPE_36__* %0, %struct.TYPE_36__** %3, align 8
  %11 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @NGX_HTTP_GET, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %24

16:                                               ; preds = %1
  %17 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @NGX_HTTP_HEAD, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %16
  %23 = load i64, i64* @NGX_HTTP_NOT_ALLOWED, align 8
  store i64 %23, i64* %2, align 8
  br label %203

24:                                               ; preds = %16, %1
  %25 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %26 = call i64 @ngx_http_discard_request_body(%struct.TYPE_36__* %25)
  store i64 %26, i64* %5, align 8
  %27 = load i64, i64* %5, align 8
  %28 = load i64, i64* @NGX_OK, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %24
  %31 = load i64, i64* %5, align 8
  store i64 %31, i64* %2, align 8
  br label %203

32:                                               ; preds = %24
  %33 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %34 = load i32, i32* @ngx_http_upstream_check_module, align 4
  %35 = call %struct.TYPE_35__* @ngx_http_get_module_loc_conf(%struct.TYPE_36__* %33, i32 %34)
  store %struct.TYPE_35__* %35, %struct.TYPE_35__** %9, align 8
  %36 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 8
  %39 = call %struct.TYPE_33__* @ngx_pcalloc(i32 %38, i32 16)
  store %struct.TYPE_33__* %39, %struct.TYPE_33__** %10, align 8
  %40 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %41 = icmp eq %struct.TYPE_33__* %40, null
  br i1 %41, label %42, label %44

42:                                               ; preds = %32
  %43 = load i64, i64* @NGX_HTTP_INTERNAL_SERVER_ERROR, align 8
  store i64 %43, i64* %2, align 8
  br label %203

44:                                               ; preds = %32
  %45 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %46 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %47 = call i32 @ngx_http_upstream_check_status_parse_args(%struct.TYPE_36__* %45, %struct.TYPE_33__* %46)
  %48 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %49 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %48, i32 0, i32 1
  %50 = load %struct.TYPE_31__*, %struct.TYPE_31__** %49, align 8
  %51 = icmp eq %struct.TYPE_31__* %50, null
  br i1 %51, label %52, label %58

52:                                               ; preds = %44
  %53 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %54 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_31__*, %struct.TYPE_31__** %54, align 8
  %56 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %57 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %56, i32 0, i32 1
  store %struct.TYPE_31__* %55, %struct.TYPE_31__** %57, align 8
  br label %58

58:                                               ; preds = %52, %44
  %59 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %60 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %59, i32 0, i32 1
  %61 = load %struct.TYPE_31__*, %struct.TYPE_31__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %66, i32 0, i32 4
  store i32 %64, i32* %67, align 4
  %68 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %69, i32 0, i32 3
  %71 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %72 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %71, i32 0, i32 1
  %73 = load %struct.TYPE_31__*, %struct.TYPE_31__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %73, i32 0, i32 1
  %75 = bitcast %struct.TYPE_28__* %70 to i8*
  %76 = bitcast %struct.TYPE_28__* %74 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %75, i8* align 8 %76, i64 4, i1 false)
  %77 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %78, i32 0, i32 2
  store i32* null, i32** %79, align 8
  %80 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @NGX_HTTP_HEAD, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %107

85:                                               ; preds = %58
  %86 = load i8*, i8** @NGX_HTTP_OK, align 8
  %87 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %87, i32 0, i32 2
  %89 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %88, i32 0, i32 1
  store i8* %86, i8** %89, align 8
  %90 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %91 = call i64 @ngx_http_send_header(%struct.TYPE_36__* %90)
  store i64 %91, i64* %5, align 8
  %92 = load i64, i64* %5, align 8
  %93 = load i64, i64* @NGX_ERROR, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %104, label %95

95:                                               ; preds = %85
  %96 = load i64, i64* %5, align 8
  %97 = load i64, i64* @NGX_OK, align 8
  %98 = icmp sgt i64 %96, %97
  br i1 %98, label %104, label %99

99:                                               ; preds = %95
  %100 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %99, %95, %85
  %105 = load i64, i64* %5, align 8
  store i64 %105, i64* %2, align 8
  br label %203

106:                                              ; preds = %99
  br label %107

107:                                              ; preds = %106, %58
  %108 = load %struct.TYPE_34__*, %struct.TYPE_34__** @check_peers_ctx, align 8
  store %struct.TYPE_34__* %108, %struct.TYPE_34__** %8, align 8
  %109 = load %struct.TYPE_34__*, %struct.TYPE_34__** %8, align 8
  %110 = icmp eq %struct.TYPE_34__* %109, null
  br i1 %110, label %111, label %120

111:                                              ; preds = %107
  %112 = load i32, i32* @NGX_LOG_ERR, align 4
  %113 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %114 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %113, i32 0, i32 4
  %115 = load %struct.TYPE_29__*, %struct.TYPE_29__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @ngx_log_error(i32 %112, i32 %117, i32 0, i8* getelementptr inbounds ([99 x i8], [99 x i8]* @.str, i64 0, i64 0))
  %119 = load i64, i64* @NGX_HTTP_INTERNAL_SERVER_ERROR, align 8
  store i64 %119, i64* %2, align 8
  br label %203

120:                                              ; preds = %107
  %121 = load %struct.TYPE_34__*, %struct.TYPE_34__** %8, align 8
  %122 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* @ngx_pagesize, align 4
  %126 = mul nsw i32 %124, %125
  %127 = sdiv i32 %126, 4
  %128 = sext i32 %127 to i64
  store i64 %128, i64* %4, align 8
  %129 = load i64, i64* %4, align 8
  %130 = load i32, i32* @ngx_pagesize, align 4
  %131 = call i32 @ngx_align(i64 %129, i32 %130)
  %132 = load i32, i32* @ngx_pagesize, align 4
  %133 = add nsw i32 %131, %132
  %134 = sext i32 %133 to i64
  store i64 %134, i64* %4, align 8
  %135 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %136 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %135, i32 0, i32 3
  %137 = load i32, i32* %136, align 8
  %138 = load i64, i64* %4, align 8
  %139 = call %struct.TYPE_27__* @ngx_create_temp_buf(i32 %137, i64 %138)
  store %struct.TYPE_27__* %139, %struct.TYPE_27__** %6, align 8
  %140 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %141 = icmp eq %struct.TYPE_27__* %140, null
  br i1 %141, label %142, label %144

142:                                              ; preds = %120
  %143 = load i64, i64* @NGX_HTTP_INTERNAL_SERVER_ERROR, align 8
  store i64 %143, i64* %2, align 8
  br label %203

144:                                              ; preds = %120
  %145 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %146 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %7, i32 0, i32 1
  store %struct.TYPE_27__* %145, %struct.TYPE_27__** %146, align 8
  %147 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %7, i32 0, i32 0
  store i32* null, i32** %147, align 8
  %148 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %149 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %148, i32 0, i32 1
  %150 = load %struct.TYPE_31__*, %struct.TYPE_31__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %150, i32 0, i32 0
  %152 = load i32 (%struct.TYPE_27__*, %struct.TYPE_34__*, i32)*, i32 (%struct.TYPE_27__*, %struct.TYPE_34__*, i32)** %151, align 8
  %153 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %154 = load %struct.TYPE_34__*, %struct.TYPE_34__** %8, align 8
  %155 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %156 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = call i32 %152(%struct.TYPE_27__* %153, %struct.TYPE_34__* %154, i32 %157)
  %159 = load i8*, i8** @NGX_HTTP_OK, align 8
  %160 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %161 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %160, i32 0, i32 2
  %162 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %161, i32 0, i32 1
  store i8* %159, i8** %162, align 8
  %163 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %164 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %167 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %166, i32 0, i32 1
  %168 = load i64, i64* %167, align 8
  %169 = sub nsw i64 %165, %168
  %170 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %171 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %170, i32 0, i32 2
  %172 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %171, i32 0, i32 0
  store i64 %169, i64* %172, align 8
  %173 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %174 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %173, i32 0, i32 2
  %175 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %174, i32 0, i32 0
  %176 = load i64, i64* %175, align 8
  %177 = icmp eq i64 %176, 0
  br i1 %177, label %178, label %181

178:                                              ; preds = %144
  %179 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %180 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %179, i32 0, i32 1
  store i32 1, i32* %180, align 8
  br label %181

181:                                              ; preds = %178, %144
  %182 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %183 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %182, i32 0, i32 2
  store i32 1, i32* %183, align 8
  %184 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %185 = call i64 @ngx_http_send_header(%struct.TYPE_36__* %184)
  store i64 %185, i64* %5, align 8
  %186 = load i64, i64* %5, align 8
  %187 = load i64, i64* @NGX_ERROR, align 8
  %188 = icmp eq i64 %186, %187
  br i1 %188, label %198, label %189

189:                                              ; preds = %181
  %190 = load i64, i64* %5, align 8
  %191 = load i64, i64* @NGX_OK, align 8
  %192 = icmp sgt i64 %190, %191
  br i1 %192, label %198, label %193

193:                                              ; preds = %189
  %194 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %195 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 8
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %200

198:                                              ; preds = %193, %189, %181
  %199 = load i64, i64* %5, align 8
  store i64 %199, i64* %2, align 8
  br label %203

200:                                              ; preds = %193
  %201 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %202 = call i64 @ngx_http_output_filter(%struct.TYPE_36__* %201, %struct.TYPE_26__* %7)
  store i64 %202, i64* %2, align 8
  br label %203

203:                                              ; preds = %200, %198, %142, %111, %104, %42, %30, %22
  %204 = load i64, i64* %2, align 8
  ret i64 %204
}

declare dso_local i64 @ngx_http_discard_request_body(%struct.TYPE_36__*) #1

declare dso_local %struct.TYPE_35__* @ngx_http_get_module_loc_conf(%struct.TYPE_36__*, i32) #1

declare dso_local %struct.TYPE_33__* @ngx_pcalloc(i32, i32) #1

declare dso_local i32 @ngx_http_upstream_check_status_parse_args(%struct.TYPE_36__*, %struct.TYPE_33__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @ngx_http_send_header(%struct.TYPE_36__*) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*) #1

declare dso_local i32 @ngx_align(i64, i32) #1

declare dso_local %struct.TYPE_27__* @ngx_create_temp_buf(i32, i64) #1

declare dso_local i64 @ngx_http_output_filter(%struct.TYPE_36__*, %struct.TYPE_26__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
