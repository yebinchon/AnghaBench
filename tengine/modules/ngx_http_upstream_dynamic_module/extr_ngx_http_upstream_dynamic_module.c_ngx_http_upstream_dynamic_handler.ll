; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_upstream_dynamic_module/extr_ngx_http_upstream_dynamic_module.c_ngx_http_upstream_dynamic_handler.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_upstream_dynamic_module/extr_ngx_http_upstream_dynamic_module.c_ngx_http_upstream_dynamic_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { i64, %struct.TYPE_21__*, i64, i32, %struct.TYPE_28__* }
%struct.TYPE_21__ = type { i32, %struct.sockaddr_in* }
%struct.sockaddr_in = type { i32, %struct.TYPE_22__, i8* }
%struct.TYPE_22__ = type { i64 }
%struct.TYPE_28__ = type { %struct.TYPE_27__*, %struct.TYPE_19__* }
%struct.TYPE_27__ = type { i64 }
%struct.TYPE_19__ = type { %struct.TYPE_20__*, i32, %struct.TYPE_26__* }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_26__ = type { i32*, %struct.TYPE_25__ }
%struct.TYPE_25__ = type { i32, i8*, %struct.TYPE_23__*, %struct.sockaddr_in* }
%struct.TYPE_23__ = type { i64, i32* }
%struct.sockaddr = type { i32, %struct.TYPE_22__, i8* }

@NGX_LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"%V could not be resolved (%i: %s)\00", align 1
@NGX_HTTP_UPSTREAM_DR_FAILED = common dso_local global i8* null, align 8
@NGX_HTTP_INTERNAL_SERVER_ERROR = common dso_local global i32 0, align 4
@NGX_HTTP_UPSTREAM_DR_OK = common dso_local global i8* null, align 8
@NGX_INET_ADDRSTRLEN = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c":%d\00", align 1
@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"name was resolved to %V\00", align 1
@NGX_OK = common dso_local global i64 0, align 8
@NGX_SOCKADDR_STRLEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_24__*)* @ngx_http_upstream_dynamic_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ngx_http_upstream_dynamic_handler(%struct.TYPE_24__* %0) #0 {
  %2 = alloca %struct.TYPE_24__*, align 8
  %3 = alloca %struct.TYPE_19__*, align 8
  %4 = alloca %struct.TYPE_26__*, align 8
  %5 = alloca %struct.TYPE_25__*, align 8
  %6 = alloca %struct.sockaddr_in*, align 8
  %7 = alloca %struct.sockaddr_in*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_23__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_27__*, align 8
  %13 = alloca %struct.TYPE_28__*, align 8
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %2, align 8
  %14 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %14, i32 0, i32 4
  %16 = load %struct.TYPE_28__*, %struct.TYPE_28__** %15, align 8
  store %struct.TYPE_28__* %16, %struct.TYPE_28__** %13, align 8
  %17 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %18 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_19__*, %struct.TYPE_19__** %18, align 8
  store %struct.TYPE_19__* %19, %struct.TYPE_19__** %3, align 8
  %20 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %20, i32 0, i32 2
  %22 = load %struct.TYPE_26__*, %struct.TYPE_26__** %21, align 8
  store %struct.TYPE_26__* %22, %struct.TYPE_26__** %4, align 8
  %23 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %23, i32 0, i32 1
  store %struct.TYPE_25__* %24, %struct.TYPE_25__** %5, align 8
  %25 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %26 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_27__*, %struct.TYPE_27__** %26, align 8
  store %struct.TYPE_27__* %27, %struct.TYPE_27__** %12, align 8
  %28 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %55

32:                                               ; preds = %1
  %33 = load i32, i32* @NGX_LOG_ERR, align 4
  %34 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_20__*, %struct.TYPE_20__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %39, i32 0, i32 3
  %41 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = call i32 @ngx_resolver_strerror(i64 %46)
  %48 = call i32 @ngx_log_error(i32 %33, i32 %38, i32 0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32* %40, i64 %43, i32 %47)
  %49 = call i64 (...) @ngx_time()
  %50 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %51 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %50, i32 0, i32 0
  store i64 %49, i64* %51, align 8
  %52 = load i8*, i8** @NGX_HTTP_UPSTREAM_DR_FAILED, align 8
  %53 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %53, i32 0, i32 1
  store i8* %52, i8** %54, align 8
  br label %184

55:                                               ; preds = %1
  %56 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %57 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %56, i32 0, i32 0
  store i64 0, i64* %57, align 8
  %58 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = call %struct.sockaddr_in* @ngx_pcalloc(i32 %60, i32 24)
  store %struct.sockaddr_in* %61, %struct.sockaddr_in** %6, align 8
  %62 = load %struct.sockaddr_in*, %struct.sockaddr_in** %6, align 8
  %63 = icmp eq %struct.sockaddr_in* %62, null
  br i1 %63, label %64, label %69

64:                                               ; preds = %55
  %65 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %66 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %67 = load i32, i32* @NGX_HTTP_INTERNAL_SERVER_ERROR, align 4
  %68 = call i32 @ngx_http_upstream_finalize_request(%struct.TYPE_19__* %65, %struct.TYPE_26__* %66, i32 %67)
  br label %193

69:                                               ; preds = %55
  %70 = load %struct.sockaddr_in*, %struct.sockaddr_in** %6, align 8
  %71 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %71, i32 0, i32 3
  %73 = load %struct.sockaddr_in*, %struct.sockaddr_in** %72, align 8
  %74 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @ngx_memcpy(%struct.sockaddr_in* %70, %struct.sockaddr_in* %73, i32 %76)
  %78 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %79 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %78, i32 0, i32 1
  %80 = load %struct.TYPE_21__*, %struct.TYPE_21__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %80, i64 0
  %82 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %81, i32 0, i32 1
  %83 = load %struct.sockaddr_in*, %struct.sockaddr_in** %82, align 8
  store %struct.sockaddr_in* %83, %struct.sockaddr_in** %7, align 8
  %84 = load %struct.sockaddr_in*, %struct.sockaddr_in** %6, align 8
  %85 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.sockaddr_in*, %struct.sockaddr_in** %7, align 8
  %89 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = icmp eq i64 %87, %91
  br i1 %92, label %93, label %97

93:                                               ; preds = %69
  %94 = load i8*, i8** @NGX_HTTP_UPSTREAM_DR_OK, align 8
  %95 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %95, i32 0, i32 1
  store i8* %94, i8** %96, align 8
  br label %185

97:                                               ; preds = %69
  %98 = load %struct.sockaddr_in*, %struct.sockaddr_in** %7, align 8
  %99 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load %struct.sockaddr_in*, %struct.sockaddr_in** %6, align 8
  %103 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %103, i32 0, i32 0
  store i64 %101, i64* %104, align 8
  %105 = load i32, i32* @NGX_INET_ADDRSTRLEN, align 4
  %106 = sext i32 %105 to i64
  %107 = add i64 %106, 7
  %108 = sub i64 %107, 1
  store i64 %108, i64* %11, align 8
  %109 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %110 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = load i64, i64* %11, align 8
  %113 = call i32* @ngx_pnalloc(i32 %111, i64 %112)
  store i32* %113, i32** %10, align 8
  %114 = load i32*, i32** %10, align 8
  %115 = icmp eq i32* %114, null
  br i1 %115, label %116, label %121

116:                                              ; preds = %97
  %117 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %118 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %119 = load i32, i32* @NGX_HTTP_INTERNAL_SERVER_ERROR, align 4
  %120 = call i32 @ngx_http_upstream_finalize_request(%struct.TYPE_19__* %117, %struct.TYPE_26__* %118, i32 %119)
  br label %193

121:                                              ; preds = %97
  %122 = load %struct.sockaddr_in*, %struct.sockaddr_in** %6, align 8
  %123 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %122, i32 0, i32 2
  %124 = load i8*, i8** %123, align 8
  %125 = call i32 @ntohs(i8* %124)
  store i32 %125, i32* %8, align 4
  %126 = load i32, i32* @AF_INET, align 4
  %127 = load %struct.sockaddr_in*, %struct.sockaddr_in** %6, align 8
  %128 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %128, i32 0, i32 0
  %130 = load i32*, i32** %10, align 8
  %131 = load i32, i32* @NGX_INET_ADDRSTRLEN, align 4
  %132 = call i64 @ngx_inet_ntop(i32 %126, i64* %129, i32* %130, i32 %131)
  store i64 %132, i64* %11, align 8
  %133 = load i32*, i32** %10, align 8
  %134 = load i64, i64* %11, align 8
  %135 = getelementptr inbounds i32, i32* %133, i64 %134
  %136 = load i32, i32* %8, align 4
  %137 = call i32* @ngx_sprintf(i32* %135, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %136)
  %138 = load i32*, i32** %10, align 8
  %139 = ptrtoint i32* %137 to i64
  %140 = ptrtoint i32* %138 to i64
  %141 = sub i64 %139, %140
  %142 = sdiv exact i64 %141, 4
  store i64 %142, i64* %11, align 8
  %143 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %144 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 8
  %146 = call %struct.TYPE_23__* @ngx_palloc(i32 %145, i32 16)
  store %struct.TYPE_23__* %146, %struct.TYPE_23__** %9, align 8
  %147 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %148 = icmp eq %struct.TYPE_23__* %147, null
  br i1 %148, label %149, label %154

149:                                              ; preds = %121
  %150 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %151 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %152 = load i32, i32* @NGX_HTTP_INTERNAL_SERVER_ERROR, align 4
  %153 = call i32 @ngx_http_upstream_finalize_request(%struct.TYPE_19__* %150, %struct.TYPE_26__* %151, i32 %152)
  br label %193

154:                                              ; preds = %121
  %155 = load i32*, i32** %10, align 8
  %156 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %157 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %156, i32 0, i32 1
  store i32* %155, i32** %157, align 8
  %158 = load i64, i64* %11, align 8
  %159 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %160 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %159, i32 0, i32 0
  store i64 %158, i64* %160, align 8
  %161 = load %struct.sockaddr_in*, %struct.sockaddr_in** %6, align 8
  %162 = bitcast %struct.sockaddr_in* %161 to %struct.sockaddr*
  %163 = bitcast %struct.sockaddr* %162 to %struct.sockaddr_in*
  %164 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %165 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %164, i32 0, i32 3
  store %struct.sockaddr_in* %163, %struct.sockaddr_in** %165, align 8
  %166 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %167 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %166, i32 0, i32 0
  store i32 24, i32* %167, align 8
  %168 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %169 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %170 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %169, i32 0, i32 2
  store %struct.TYPE_23__* %168, %struct.TYPE_23__** %170, align 8
  %171 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %172 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %173 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %172, i32 0, i32 0
  %174 = load %struct.TYPE_20__*, %struct.TYPE_20__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %178 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %177, i32 0, i32 2
  %179 = load %struct.TYPE_23__*, %struct.TYPE_23__** %178, align 8
  %180 = call i32 @ngx_log_debug1(i32 %171, i32 %176, i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_23__* %179)
  %181 = load i8*, i8** @NGX_HTTP_UPSTREAM_DR_OK, align 8
  %182 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %183 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %182, i32 0, i32 1
  store i8* %181, i8** %183, align 8
  br label %184

184:                                              ; preds = %154, %32
  br label %185

185:                                              ; preds = %184, %93
  %186 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %187 = call i32 @ngx_resolve_name_done(%struct.TYPE_24__* %186)
  %188 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %189 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %188, i32 0, i32 0
  store i32* null, i32** %189, align 8
  %190 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %191 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %192 = call i32 @ngx_http_upstream_connect(%struct.TYPE_19__* %190, %struct.TYPE_26__* %191)
  br label %193

193:                                              ; preds = %185, %149, %116, %64
  ret void
}

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*, i32*, i64, i32) #1

declare dso_local i32 @ngx_resolver_strerror(i64) #1

declare dso_local i64 @ngx_time(...) #1

declare dso_local %struct.sockaddr_in* @ngx_pcalloc(i32, i32) #1

declare dso_local i32 @ngx_http_upstream_finalize_request(%struct.TYPE_19__*, %struct.TYPE_26__*, i32) #1

declare dso_local i32 @ngx_memcpy(%struct.sockaddr_in*, %struct.sockaddr_in*, i32) #1

declare dso_local i32* @ngx_pnalloc(i32, i64) #1

declare dso_local i32 @ntohs(i8*) #1

declare dso_local i64 @ngx_inet_ntop(i32, i64*, i32*, i32) #1

declare dso_local i32* @ngx_sprintf(i32*, i8*, i32) #1

declare dso_local %struct.TYPE_23__* @ngx_palloc(i32, i32) #1

declare dso_local i32 @ngx_log_debug1(i32, i32, i32, i8*, %struct.TYPE_23__*) #1

declare dso_local i32 @ngx_resolve_name_done(%struct.TYPE_24__*) #1

declare dso_local i32 @ngx_http_upstream_connect(%struct.TYPE_19__*, %struct.TYPE_26__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
