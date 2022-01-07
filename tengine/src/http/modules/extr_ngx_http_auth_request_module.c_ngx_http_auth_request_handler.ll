; ModuleID = '/home/carl/AnghaBench/tengine/src/http/modules/extr_ngx_http_auth_request_module.c_ngx_http_auth_request_handler.c'
source_filename = "/home/carl/AnghaBench/tengine/src/http/modules/extr_ngx_http_auth_request_module.c_ngx_http_auth_request_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_29__ = type { i32, i32*, i32, %struct.TYPE_28__*, %struct.TYPE_27__, %struct.TYPE_26__* }
%struct.TYPE_28__ = type { i32 }
%struct.TYPE_27__ = type { i32*, i32 }
%struct.TYPE_26__ = type { %struct.TYPE_25__ }
%struct.TYPE_25__ = type { i32* }
%struct.TYPE_30__ = type { %struct.TYPE_31__*, i32 }
%struct.TYPE_31__ = type { i64, %struct.TYPE_29__*, i32 }
%struct.TYPE_32__ = type { %struct.TYPE_24__ }
%struct.TYPE_24__ = type { i64 }

@ngx_http_auth_request_module = common dso_local global i32 0, align 4
@NGX_DECLINED = common dso_local global i64 0, align 8
@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"auth request handler\00", align 1
@NGX_AGAIN = common dso_local global i64 0, align 8
@NGX_OK = common dso_local global i64 0, align 8
@NGX_ERROR = common dso_local global i64 0, align 8
@NGX_HTTP_FORBIDDEN = common dso_local global i64 0, align 8
@NGX_HTTP_UNAUTHORIZED = common dso_local global i64 0, align 8
@NGX_HTTP_OK = common dso_local global i64 0, align 8
@NGX_HTTP_SPECIAL_RESPONSE = common dso_local global i64 0, align 8
@NGX_LOG_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"auth request unexpected status: %ui\00", align 1
@NGX_HTTP_INTERNAL_SERVER_ERROR = common dso_local global i64 0, align 8
@ngx_http_auth_request_done = common dso_local global i32 0, align 4
@NGX_HTTP_SUBREQUEST_WAITED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_29__*)* @ngx_http_auth_request_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ngx_http_auth_request_handler(%struct.TYPE_29__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_29__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_29__*, align 8
  %7 = alloca %struct.TYPE_30__*, align 8
  %8 = alloca %struct.TYPE_31__*, align 8
  %9 = alloca %struct.TYPE_32__*, align 8
  store %struct.TYPE_29__* %0, %struct.TYPE_29__** %3, align 8
  %10 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %11 = load i32, i32* @ngx_http_auth_request_module, align 4
  %12 = call %struct.TYPE_32__* @ngx_http_get_module_loc_conf(%struct.TYPE_29__* %10, i32 %11)
  store %struct.TYPE_32__* %12, %struct.TYPE_32__** %9, align 8
  %13 = load %struct.TYPE_32__*, %struct.TYPE_32__** %9, align 8
  %14 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load i64, i64* @NGX_DECLINED, align 8
  store i64 %19, i64* %2, align 8
  br label %198

20:                                               ; preds = %1
  %21 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %22 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %22, i32 0, i32 3
  %24 = load %struct.TYPE_28__*, %struct.TYPE_28__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @ngx_log_debug0(i32 %21, i32 %26, i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %28 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %29 = load i32, i32* @ngx_http_auth_request_module, align 4
  %30 = call %struct.TYPE_31__* @ngx_http_get_module_ctx(%struct.TYPE_29__* %28, i32 %29)
  store %struct.TYPE_31__* %30, %struct.TYPE_31__** %8, align 8
  %31 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %32 = icmp ne %struct.TYPE_31__* %31, null
  br i1 %32, label %33, label %137

33:                                               ; preds = %20
  %34 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %33
  %39 = load i64, i64* @NGX_AGAIN, align 8
  store i64 %39, i64* %2, align 8
  br label %198

40:                                               ; preds = %33
  %41 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %42 = load %struct.TYPE_32__*, %struct.TYPE_32__** %9, align 8
  %43 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %44 = call i64 @ngx_http_auth_request_set_variables(%struct.TYPE_29__* %41, %struct.TYPE_32__* %42, %struct.TYPE_31__* %43)
  %45 = load i64, i64* @NGX_OK, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %40
  %48 = load i64, i64* @NGX_ERROR, align 8
  store i64 %48, i64* %2, align 8
  br label %198

49:                                               ; preds = %40
  %50 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @NGX_HTTP_FORBIDDEN, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %59

55:                                               ; preds = %49
  %56 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  store i64 %58, i64* %2, align 8
  br label %198

59:                                               ; preds = %49
  %60 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @NGX_HTTP_UNAUTHORIZED, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %111

65:                                               ; preds = %59
  %66 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %66, i32 0, i32 1
  %68 = load %struct.TYPE_29__*, %struct.TYPE_29__** %67, align 8
  store %struct.TYPE_29__* %68, %struct.TYPE_29__** %6, align 8
  %69 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %69, i32 0, i32 4
  %71 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  store i32* %72, i32** %4, align 8
  %73 = load i32*, i32** %4, align 8
  %74 = icmp ne i32* %73, null
  br i1 %74, label %87, label %75

75:                                               ; preds = %65
  %76 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %76, i32 0, i32 5
  %78 = load %struct.TYPE_26__*, %struct.TYPE_26__** %77, align 8
  %79 = icmp ne %struct.TYPE_26__* %78, null
  br i1 %79, label %80, label %87

80:                                               ; preds = %75
  %81 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %81, i32 0, i32 5
  %83 = load %struct.TYPE_26__*, %struct.TYPE_26__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %84, i32 0, i32 0
  %86 = load i32*, i32** %85, align 8
  store i32* %86, i32** %4, align 8
  br label %87

87:                                               ; preds = %80, %75, %65
  %88 = load i32*, i32** %4, align 8
  %89 = icmp ne i32* %88, null
  br i1 %89, label %90, label %107

90:                                               ; preds = %87
  %91 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %91, i32 0, i32 4
  %93 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %92, i32 0, i32 1
  %94 = call i32* @ngx_list_push(i32* %93)
  store i32* %94, i32** %5, align 8
  %95 = load i32*, i32** %5, align 8
  %96 = icmp eq i32* %95, null
  br i1 %96, label %97, label %99

97:                                               ; preds = %90
  %98 = load i64, i64* @NGX_ERROR, align 8
  store i64 %98, i64* %2, align 8
  br label %198

99:                                               ; preds = %90
  %100 = load i32*, i32** %4, align 8
  %101 = load i32, i32* %100, align 4
  %102 = load i32*, i32** %5, align 8
  store i32 %101, i32* %102, align 4
  %103 = load i32*, i32** %5, align 8
  %104 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %105 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %104, i32 0, i32 4
  %106 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %105, i32 0, i32 0
  store i32* %103, i32** %106, align 8
  br label %107

107:                                              ; preds = %99, %87
  %108 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %109 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  store i64 %110, i64* %2, align 8
  br label %198

111:                                              ; preds = %59
  %112 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %113 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @NGX_HTTP_OK, align 8
  %116 = icmp sge i64 %114, %115
  br i1 %116, label %117, label %125

117:                                              ; preds = %111
  %118 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %119 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @NGX_HTTP_SPECIAL_RESPONSE, align 8
  %122 = icmp slt i64 %120, %121
  br i1 %122, label %123, label %125

123:                                              ; preds = %117
  %124 = load i64, i64* @NGX_OK, align 8
  store i64 %124, i64* %2, align 8
  br label %198

125:                                              ; preds = %117, %111
  %126 = load i32, i32* @NGX_LOG_ERR, align 4
  %127 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %128 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %127, i32 0, i32 3
  %129 = load %struct.TYPE_28__*, %struct.TYPE_28__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %133 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = call i32 @ngx_log_error(i32 %126, i32 %131, i32 0, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i64 %134)
  %136 = load i64, i64* @NGX_HTTP_INTERNAL_SERVER_ERROR, align 8
  store i64 %136, i64* %2, align 8
  br label %198

137:                                              ; preds = %20
  %138 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %139 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 8
  %141 = call i8* @ngx_pcalloc(i32 %140, i32 24)
  %142 = bitcast i8* %141 to %struct.TYPE_31__*
  store %struct.TYPE_31__* %142, %struct.TYPE_31__** %8, align 8
  %143 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %144 = icmp eq %struct.TYPE_31__* %143, null
  br i1 %144, label %145, label %147

145:                                              ; preds = %137
  %146 = load i64, i64* @NGX_ERROR, align 8
  store i64 %146, i64* %2, align 8
  br label %198

147:                                              ; preds = %137
  %148 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %149 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 8
  %151 = call %struct.TYPE_30__* @ngx_palloc(i32 %150, i32 16)
  store %struct.TYPE_30__* %151, %struct.TYPE_30__** %7, align 8
  %152 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %153 = icmp eq %struct.TYPE_30__* %152, null
  br i1 %153, label %154, label %156

154:                                              ; preds = %147
  %155 = load i64, i64* @NGX_ERROR, align 8
  store i64 %155, i64* %2, align 8
  br label %198

156:                                              ; preds = %147
  %157 = load i32, i32* @ngx_http_auth_request_done, align 4
  %158 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %159 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %158, i32 0, i32 1
  store i32 %157, i32* %159, align 8
  %160 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %161 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %162 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %161, i32 0, i32 0
  store %struct.TYPE_31__* %160, %struct.TYPE_31__** %162, align 8
  %163 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %164 = load %struct.TYPE_32__*, %struct.TYPE_32__** %9, align 8
  %165 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %164, i32 0, i32 0
  %166 = load %struct.TYPE_30__*, %struct.TYPE_30__** %7, align 8
  %167 = load i32, i32* @NGX_HTTP_SUBREQUEST_WAITED, align 4
  %168 = call i64 @ngx_http_subrequest(%struct.TYPE_29__* %163, %struct.TYPE_24__* %165, i32* null, %struct.TYPE_29__** %6, %struct.TYPE_30__* %166, i32 %167)
  %169 = load i64, i64* @NGX_OK, align 8
  %170 = icmp ne i64 %168, %169
  br i1 %170, label %171, label %173

171:                                              ; preds = %156
  %172 = load i64, i64* @NGX_ERROR, align 8
  store i64 %172, i64* %2, align 8
  br label %198

173:                                              ; preds = %156
  %174 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %175 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %174, i32 0, i32 2
  %176 = load i32, i32* %175, align 8
  %177 = call i8* @ngx_pcalloc(i32 %176, i32 4)
  %178 = bitcast i8* %177 to i32*
  %179 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %180 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %179, i32 0, i32 1
  store i32* %178, i32** %180, align 8
  %181 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %182 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %181, i32 0, i32 1
  %183 = load i32*, i32** %182, align 8
  %184 = icmp eq i32* %183, null
  br i1 %184, label %185, label %187

185:                                              ; preds = %173
  %186 = load i64, i64* @NGX_ERROR, align 8
  store i64 %186, i64* %2, align 8
  br label %198

187:                                              ; preds = %173
  %188 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %189 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %188, i32 0, i32 0
  store i32 1, i32* %189, align 8
  %190 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %191 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %192 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %191, i32 0, i32 1
  store %struct.TYPE_29__* %190, %struct.TYPE_29__** %192, align 8
  %193 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %194 = load %struct.TYPE_31__*, %struct.TYPE_31__** %8, align 8
  %195 = load i32, i32* @ngx_http_auth_request_module, align 4
  %196 = call i32 @ngx_http_set_ctx(%struct.TYPE_29__* %193, %struct.TYPE_31__* %194, i32 %195)
  %197 = load i64, i64* @NGX_AGAIN, align 8
  store i64 %197, i64* %2, align 8
  br label %198

198:                                              ; preds = %187, %185, %171, %154, %145, %125, %123, %107, %97, %55, %47, %38, %18
  %199 = load i64, i64* %2, align 8
  ret i64 %199
}

declare dso_local %struct.TYPE_32__* @ngx_http_get_module_loc_conf(%struct.TYPE_29__*, i32) #1

declare dso_local i32 @ngx_log_debug0(i32, i32, i32, i8*) #1

declare dso_local %struct.TYPE_31__* @ngx_http_get_module_ctx(%struct.TYPE_29__*, i32) #1

declare dso_local i64 @ngx_http_auth_request_set_variables(%struct.TYPE_29__*, %struct.TYPE_32__*, %struct.TYPE_31__*) #1

declare dso_local i32* @ngx_list_push(i32*) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*, i64) #1

declare dso_local i8* @ngx_pcalloc(i32, i32) #1

declare dso_local %struct.TYPE_30__* @ngx_palloc(i32, i32) #1

declare dso_local i64 @ngx_http_subrequest(%struct.TYPE_29__*, %struct.TYPE_24__*, i32*, %struct.TYPE_29__**, %struct.TYPE_30__*, i32) #1

declare dso_local i32 @ngx_http_set_ctx(%struct.TYPE_29__*, %struct.TYPE_31__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
