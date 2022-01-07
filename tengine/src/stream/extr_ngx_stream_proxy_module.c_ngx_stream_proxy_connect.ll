; ModuleID = '/home/carl/AnghaBench/tengine/src/stream/extr_ngx_stream_proxy_module.c_ngx_stream_proxy_connect.c'
source_filename = "/home/carl/AnghaBench/tengine/src/stream/extr_ngx_stream_proxy_module.c_ngx_stream_proxy_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { i32, %struct.TYPE_23__*, %struct.TYPE_26__* }
%struct.TYPE_23__ = type { i8*, %struct.TYPE_20__, %struct.TYPE_18__*, i32, i64 }
%struct.TYPE_20__ = type { %struct.TYPE_26__*, i32 }
%struct.TYPE_18__ = type { i32, i8*, i8*, i8* }
%struct.TYPE_26__ = type { %struct.TYPE_21__*, %struct.TYPE_22__*, %struct.TYPE_19__*, i32, %struct.TYPE_24__* }
%struct.TYPE_21__ = type { i8*, %struct.TYPE_19__* }
%struct.TYPE_22__ = type { i8*, %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i8* }
%struct.TYPE_25__ = type { i32, i32 }

@.str = private unnamed_addr constant [23 x i8] c"connecting to upstream\00", align 1
@ngx_stream_proxy_module = common dso_local global i32 0, align 4
@ngx_current_msec = common dso_local global i8* null, align 8
@NGX_STREAM_INTERNAL_SERVER_ERROR = common dso_local global i32 0, align 4
@NGX_LOG_DEBUG_STREAM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"proxy connect: %i\00", align 1
@NGX_ERROR = common dso_local global i64 0, align 8
@NGX_BUSY = common dso_local global i64 0, align 8
@NGX_LOG_ERR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"no live upstreams\00", align 1
@NGX_STREAM_BAD_GATEWAY = common dso_local global i32 0, align 4
@NGX_DECLINED = common dso_local global i64 0, align 8
@NGX_AGAIN = common dso_local global i64 0, align 8
@ngx_stream_proxy_connect_handler = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_24__*)* @ngx_stream_proxy_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ngx_stream_proxy_connect(%struct.TYPE_24__* %0) #0 {
  %2 = alloca %struct.TYPE_24__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_26__*, align 8
  %5 = alloca %struct.TYPE_26__*, align 8
  %6 = alloca %struct.TYPE_23__*, align 8
  %7 = alloca %struct.TYPE_25__*, align 8
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %2, align 8
  %8 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %8, i32 0, i32 2
  %10 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  store %struct.TYPE_26__* %10, %struct.TYPE_26__** %4, align 8
  %11 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %11, i32 0, i32 2
  %13 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %13, i32 0, i32 0
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8** %14, align 8
  %15 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %16 = load i32, i32* @ngx_stream_proxy_module, align 4
  %17 = call %struct.TYPE_25__* @ngx_stream_get_module_srv_conf(%struct.TYPE_24__* %15, i32 %16)
  store %struct.TYPE_25__* %17, %struct.TYPE_25__** %7, align 8
  %18 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_23__*, %struct.TYPE_23__** %19, align 8
  store %struct.TYPE_23__* %20, %struct.TYPE_23__** %6, align 8
  %21 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %21, i32 0, i32 4
  store i64 0, i64* %22, align 8
  %23 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %26, i32 0, i32 3
  store i32 %25, i32* %27, align 8
  %28 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %28, i32 0, i32 2
  %30 = load %struct.TYPE_18__*, %struct.TYPE_18__** %29, align 8
  %31 = icmp ne %struct.TYPE_18__* %30, null
  br i1 %31, label %32, label %45

32:                                               ; preds = %1
  %33 = load i8*, i8** @ngx_current_msec, align 8
  %34 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = ptrtoint i8* %33 to i64
  %38 = ptrtoint i8* %36 to i64
  %39 = sub i64 %37, %38
  %40 = inttoptr i64 %39 to i8*
  %41 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %41, i32 0, i32 2
  %43 = load %struct.TYPE_18__*, %struct.TYPE_18__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %43, i32 0, i32 1
  store i8* %40, i8** %44, align 8
  br label %45

45:                                               ; preds = %32, %1
  %46 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call %struct.TYPE_18__* @ngx_array_push(i32 %48)
  %50 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %50, i32 0, i32 2
  store %struct.TYPE_18__* %49, %struct.TYPE_18__** %51, align 8
  %52 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %52, i32 0, i32 2
  %54 = load %struct.TYPE_18__*, %struct.TYPE_18__** %53, align 8
  %55 = icmp eq %struct.TYPE_18__* %54, null
  br i1 %55, label %56, label %60

56:                                               ; preds = %45
  %57 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %58 = load i32, i32* @NGX_STREAM_INTERNAL_SERVER_ERROR, align 4
  %59 = call i32 @ngx_stream_proxy_finalize(%struct.TYPE_24__* %57, i32 %58)
  br label %180

60:                                               ; preds = %45
  %61 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %61, i32 0, i32 2
  %63 = load %struct.TYPE_18__*, %struct.TYPE_18__** %62, align 8
  %64 = call i32 @ngx_memzero(%struct.TYPE_18__* %63, i32 4)
  %65 = load i8*, i8** @ngx_current_msec, align 8
  %66 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %66, i32 0, i32 0
  store i8* %65, i8** %67, align 8
  %68 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %68, i32 0, i32 2
  %70 = load %struct.TYPE_18__*, %struct.TYPE_18__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %70, i32 0, i32 3
  store i8* inttoptr (i64 -1 to i8*), i8** %71, align 8
  %72 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %72, i32 0, i32 2
  %74 = load %struct.TYPE_18__*, %struct.TYPE_18__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %74, i32 0, i32 2
  store i8* inttoptr (i64 -1 to i8*), i8** %75, align 8
  %76 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %76, i32 0, i32 2
  %78 = load %struct.TYPE_18__*, %struct.TYPE_18__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %78, i32 0, i32 1
  store i8* inttoptr (i64 -1 to i8*), i8** %79, align 8
  %80 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %80, i32 0, i32 1
  %82 = call i64 @ngx_event_connect_peer(%struct.TYPE_20__* %81)
  store i64 %82, i64* %3, align 8
  %83 = load i32, i32* @NGX_LOG_DEBUG_STREAM, align 4
  %84 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %84, i32 0, i32 2
  %86 = load %struct.TYPE_19__*, %struct.TYPE_19__** %85, align 8
  %87 = load i64, i64* %3, align 8
  %88 = call i32 @ngx_log_debug1(i32 %83, %struct.TYPE_19__* %86, i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i64 %87)
  %89 = load i64, i64* %3, align 8
  %90 = load i64, i64* @NGX_ERROR, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %96

92:                                               ; preds = %60
  %93 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %94 = load i32, i32* @NGX_STREAM_INTERNAL_SERVER_ERROR, align 4
  %95 = call i32 @ngx_stream_proxy_finalize(%struct.TYPE_24__* %93, i32 %94)
  br label %180

96:                                               ; preds = %60
  %97 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %101, i32 0, i32 2
  %103 = load %struct.TYPE_18__*, %struct.TYPE_18__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %103, i32 0, i32 0
  store i32 %100, i32* %104, align 8
  %105 = load i64, i64* %3, align 8
  %106 = load i64, i64* @NGX_BUSY, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %108, label %117

108:                                              ; preds = %96
  %109 = load i32, i32* @NGX_LOG_ERR, align 4
  %110 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %110, i32 0, i32 2
  %112 = load %struct.TYPE_19__*, %struct.TYPE_19__** %111, align 8
  %113 = call i32 @ngx_log_error(i32 %109, %struct.TYPE_19__* %112, i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %114 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %115 = load i32, i32* @NGX_STREAM_BAD_GATEWAY, align 4
  %116 = call i32 @ngx_stream_proxy_finalize(%struct.TYPE_24__* %114, i32 %115)
  br label %180

117:                                              ; preds = %96
  %118 = load i64, i64* %3, align 8
  %119 = load i64, i64* @NGX_DECLINED, align 8
  %120 = icmp eq i64 %118, %119
  br i1 %120, label %121, label %124

121:                                              ; preds = %117
  %122 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %123 = call i32 @ngx_stream_proxy_next_upstream(%struct.TYPE_24__* %122)
  br label %180

124:                                              ; preds = %117
  %125 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %126 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %126, i32 0, i32 0
  %128 = load %struct.TYPE_26__*, %struct.TYPE_26__** %127, align 8
  store %struct.TYPE_26__* %128, %struct.TYPE_26__** %5, align 8
  %129 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %130 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %130, i32 0, i32 4
  store %struct.TYPE_24__* %129, %struct.TYPE_24__** %131, align 8
  %132 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %132, i32 0, i32 2
  %134 = load %struct.TYPE_19__*, %struct.TYPE_19__** %133, align 8
  %135 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %136 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %135, i32 0, i32 2
  store %struct.TYPE_19__* %134, %struct.TYPE_19__** %136, align 8
  %137 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %138 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %137, i32 0, i32 3
  %139 = load i32, i32* %138, align 8
  %140 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %141 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %140, i32 0, i32 3
  store i32 %139, i32* %141, align 8
  %142 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %143 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %142, i32 0, i32 2
  %144 = load %struct.TYPE_19__*, %struct.TYPE_19__** %143, align 8
  %145 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %146 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %145, i32 0, i32 1
  %147 = load %struct.TYPE_22__*, %struct.TYPE_22__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %147, i32 0, i32 1
  store %struct.TYPE_19__* %144, %struct.TYPE_19__** %148, align 8
  %149 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %150 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %149, i32 0, i32 2
  %151 = load %struct.TYPE_19__*, %struct.TYPE_19__** %150, align 8
  %152 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %153 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %152, i32 0, i32 0
  %154 = load %struct.TYPE_21__*, %struct.TYPE_21__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %154, i32 0, i32 1
  store %struct.TYPE_19__* %151, %struct.TYPE_19__** %155, align 8
  %156 = load i64, i64* %3, align 8
  %157 = load i64, i64* @NGX_AGAIN, align 8
  %158 = icmp ne i64 %156, %157
  br i1 %158, label %159, label %162

159:                                              ; preds = %124
  %160 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %161 = call i32 @ngx_stream_proxy_init_upstream(%struct.TYPE_24__* %160)
  br label %180

162:                                              ; preds = %124
  %163 = load i8*, i8** @ngx_stream_proxy_connect_handler, align 8
  %164 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %165 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %164, i32 0, i32 1
  %166 = load %struct.TYPE_22__*, %struct.TYPE_22__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %166, i32 0, i32 0
  store i8* %163, i8** %167, align 8
  %168 = load i8*, i8** @ngx_stream_proxy_connect_handler, align 8
  %169 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %170 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %169, i32 0, i32 0
  %171 = load %struct.TYPE_21__*, %struct.TYPE_21__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %171, i32 0, i32 0
  store i8* %168, i8** %172, align 8
  %173 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %174 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %173, i32 0, i32 0
  %175 = load %struct.TYPE_21__*, %struct.TYPE_21__** %174, align 8
  %176 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %177 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = call i32 @ngx_add_timer(%struct.TYPE_21__* %175, i32 %178)
  br label %180

180:                                              ; preds = %162, %159, %121, %108, %92, %56
  ret void
}

declare dso_local %struct.TYPE_25__* @ngx_stream_get_module_srv_conf(%struct.TYPE_24__*, i32) #1

declare dso_local %struct.TYPE_18__* @ngx_array_push(i32) #1

declare dso_local i32 @ngx_stream_proxy_finalize(%struct.TYPE_24__*, i32) #1

declare dso_local i32 @ngx_memzero(%struct.TYPE_18__*, i32) #1

declare dso_local i64 @ngx_event_connect_peer(%struct.TYPE_20__*) #1

declare dso_local i32 @ngx_log_debug1(i32, %struct.TYPE_19__*, i32, i8*, i64) #1

declare dso_local i32 @ngx_log_error(i32, %struct.TYPE_19__*, i32, i8*) #1

declare dso_local i32 @ngx_stream_proxy_next_upstream(%struct.TYPE_24__*) #1

declare dso_local i32 @ngx_stream_proxy_init_upstream(%struct.TYPE_24__*) #1

declare dso_local i32 @ngx_add_timer(%struct.TYPE_21__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
