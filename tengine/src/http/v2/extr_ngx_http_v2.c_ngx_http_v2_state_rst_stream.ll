; ModuleID = '/home/carl/AnghaBench/tengine/src/http/v2/extr_ngx_http_v2.c_ngx_http_v2_state_rst_stream.c'
source_filename = "/home/carl/AnghaBench/tengine/src/http/v2/extr_ngx_http_v2.c_ngx_http_v2_state_rst_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { %struct.TYPE_19__, %struct.TYPE_17__* }
%struct.TYPE_19__ = type { i32, i64 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_23__ = type { i32 (%struct.TYPE_23__*)* }
%struct.TYPE_24__ = type { i32, %struct.TYPE_23__*, i32 }
%struct.TYPE_21__ = type { %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32, i32, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { %struct.TYPE_24__* }

@NGX_HTTP_V2_RST_STREAM_SIZE = common dso_local global i32 0, align 4
@NGX_LOG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"client sent RST_STREAM frame with incorrect length %uz\00", align 1
@NGX_HTTP_V2_SIZE_ERROR = common dso_local global i32 0, align 4
@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"http2 RST_STREAM frame, sid:%ui status:%ui\00", align 1
@.str.2 = private unnamed_addr constant [55 x i8] c"client sent RST_STREAM frame with incorrect identifier\00", align 1
@NGX_HTTP_V2_PROTOCOL_ERROR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"unknown http2 stream\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"client canceled stream %ui\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"client refused stream %ui\00", align 1
@.str.6 = private unnamed_addr constant [51 x i8] c"client terminated stream %ui due to internal error\00", align 1
@.str.7 = private unnamed_addr constant [45 x i8] c"client terminated stream %ui with status %ui\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_22__*, i32*, i32*)* @ngx_http_v2_state_rst_stream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @ngx_http_v2_state_rst_stream(%struct.TYPE_22__* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_22__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_23__*, align 8
  %10 = alloca %struct.TYPE_24__*, align 8
  %11 = alloca %struct.TYPE_21__*, align 8
  %12 = alloca %struct.TYPE_20__*, align 8
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %13 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @NGX_HTTP_V2_RST_STREAM_SIZE, align 4
  %18 = icmp ne i32 %16, %17
  br i1 %18, label %19, label %34

19:                                               ; preds = %3
  %20 = load i32, i32* @NGX_LOG_INFO, align 4
  %21 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_17__*, %struct.TYPE_17__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 (i32, i32, i32, i8*, ...) @ngx_log_error(i32 %20, i32 %25, i32 0, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %32 = load i32, i32* @NGX_HTTP_V2_SIZE_ERROR, align 4
  %33 = call i32* @ngx_http_v2_connection_error(%struct.TYPE_22__* %31, i32 %32)
  store i32* %33, i32** %4, align 8
  br label %180

34:                                               ; preds = %3
  %35 = load i32*, i32** %7, align 8
  %36 = load i32*, i32** %6, align 8
  %37 = ptrtoint i32* %35 to i64
  %38 = ptrtoint i32* %36 to i64
  %39 = sub i64 %37, %38
  %40 = sdiv exact i64 %39, 4
  %41 = load i32, i32* @NGX_HTTP_V2_RST_STREAM_SIZE, align 4
  %42 = sext i32 %41 to i64
  %43 = icmp slt i64 %40, %42
  br i1 %43, label %44, label %49

44:                                               ; preds = %34
  %45 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %46 = load i32*, i32** %6, align 8
  %47 = load i32*, i32** %7, align 8
  %48 = call i32* @ngx_http_v2_state_save(%struct.TYPE_22__* %45, i32* %46, i32* %47, i32* (%struct.TYPE_22__*, i32*, i32*)* @ngx_http_v2_state_rst_stream)
  store i32* %48, i32** %4, align 8
  br label %180

49:                                               ; preds = %34
  %50 = load i32*, i32** %6, align 8
  %51 = call i32 @ngx_http_v2_parse_uint32(i32* %50)
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* @NGX_HTTP_V2_RST_STREAM_SIZE, align 4
  %53 = load i32*, i32** %6, align 8
  %54 = sext i32 %52 to i64
  %55 = getelementptr inbounds i32, i32* %53, i64 %54
  store i32* %55, i32** %6, align 8
  %56 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %57 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %57, i32 0, i32 1
  %59 = load %struct.TYPE_17__*, %struct.TYPE_17__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load i32, i32* %8, align 4
  %67 = call i32 @ngx_log_debug2(i32 %56, i32 %61, i32 0, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i64 %65, i32 %66)
  %68 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %73, label %84

73:                                               ; preds = %49
  %74 = load i32, i32* @NGX_LOG_INFO, align 4
  %75 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %75, i32 0, i32 1
  %77 = load %struct.TYPE_17__*, %struct.TYPE_17__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 (i32, i32, i32, i8*, ...) @ngx_log_error(i32 %74, i32 %79, i32 0, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0))
  %81 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %82 = load i32, i32* @NGX_HTTP_V2_PROTOCOL_ERROR, align 4
  %83 = call i32* @ngx_http_v2_connection_error(%struct.TYPE_22__* %81, i32 %82)
  store i32* %83, i32** %4, align 8
  br label %180

84:                                               ; preds = %49
  %85 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %86 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = call %struct.TYPE_21__* @ngx_http_v2_get_node_by_id(%struct.TYPE_22__* %85, i64 %89, i32 0)
  store %struct.TYPE_21__* %90, %struct.TYPE_21__** %11, align 8
  %91 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %92 = icmp eq %struct.TYPE_21__* %91, null
  br i1 %92, label %98, label %93

93:                                               ; preds = %84
  %94 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %95 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %94, i32 0, i32 0
  %96 = load %struct.TYPE_20__*, %struct.TYPE_20__** %95, align 8
  %97 = icmp eq %struct.TYPE_20__* %96, null
  br i1 %97, label %98, label %110

98:                                               ; preds = %93, %84
  %99 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %100 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %100, i32 0, i32 1
  %102 = load %struct.TYPE_17__*, %struct.TYPE_17__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @ngx_log_debug0(i32 %99, i32 %104, i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %106 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %107 = load i32*, i32** %6, align 8
  %108 = load i32*, i32** %7, align 8
  %109 = call i32* @ngx_http_v2_state_complete(%struct.TYPE_22__* %106, i32* %107, i32* %108)
  store i32* %109, i32** %4, align 8
  br label %180

110:                                              ; preds = %93
  %111 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %112 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %111, i32 0, i32 0
  %113 = load %struct.TYPE_20__*, %struct.TYPE_20__** %112, align 8
  store %struct.TYPE_20__* %113, %struct.TYPE_20__** %12, align 8
  %114 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %115 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %114, i32 0, i32 0
  store i32 1, i32* %115, align 8
  %116 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %117 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %116, i32 0, i32 1
  store i32 1, i32* %117, align 4
  %118 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %119 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %118, i32 0, i32 2
  %120 = load %struct.TYPE_18__*, %struct.TYPE_18__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %120, i32 0, i32 0
  %122 = load %struct.TYPE_24__*, %struct.TYPE_24__** %121, align 8
  store %struct.TYPE_24__* %122, %struct.TYPE_24__** %10, align 8
  %123 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %124 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %123, i32 0, i32 0
  store i32 1, i32* %124, align 8
  %125 = load i32, i32* %8, align 4
  switch i32 %125, label %156 [
    i32 130, label %126
    i32 128, label %136
    i32 129, label %146
  ]

126:                                              ; preds = %110
  %127 = load i32, i32* @NGX_LOG_INFO, align 4
  %128 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %129 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 8
  %131 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %132 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = call i32 (i32, i32, i32, i8*, ...) @ngx_log_error(i32 %127, i32 %130, i32 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i64 %134)
  br label %167

136:                                              ; preds = %110
  %137 = load i32, i32* @NGX_LOG_INFO, align 4
  %138 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %139 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 8
  %141 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %142 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %142, i32 0, i32 1
  %144 = load i64, i64* %143, align 8
  %145 = call i32 (i32, i32, i32, i8*, ...) @ngx_log_error(i32 %137, i32 %140, i32 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i64 %144)
  br label %167

146:                                              ; preds = %110
  %147 = load i32, i32* @NGX_LOG_INFO, align 4
  %148 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %149 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 8
  %151 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %152 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %152, i32 0, i32 1
  %154 = load i64, i64* %153, align 8
  %155 = call i32 (i32, i32, i32, i8*, ...) @ngx_log_error(i32 %147, i32 %150, i32 0, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.6, i64 0, i64 0), i64 %154)
  br label %167

156:                                              ; preds = %110
  %157 = load i32, i32* @NGX_LOG_INFO, align 4
  %158 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %159 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 8
  %161 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %162 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %162, i32 0, i32 1
  %164 = load i64, i64* %163, align 8
  %165 = load i32, i32* %8, align 4
  %166 = call i32 (i32, i32, i32, i8*, ...) @ngx_log_error(i32 %157, i32 %160, i32 0, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.7, i64 0, i64 0), i64 %164, i32 %165)
  br label %167

167:                                              ; preds = %156, %146, %136, %126
  %168 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %169 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %168, i32 0, i32 1
  %170 = load %struct.TYPE_23__*, %struct.TYPE_23__** %169, align 8
  store %struct.TYPE_23__* %170, %struct.TYPE_23__** %9, align 8
  %171 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %172 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %171, i32 0, i32 0
  %173 = load i32 (%struct.TYPE_23__*)*, i32 (%struct.TYPE_23__*)** %172, align 8
  %174 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %175 = call i32 %173(%struct.TYPE_23__* %174)
  %176 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %177 = load i32*, i32** %6, align 8
  %178 = load i32*, i32** %7, align 8
  %179 = call i32* @ngx_http_v2_state_complete(%struct.TYPE_22__* %176, i32* %177, i32* %178)
  store i32* %179, i32** %4, align 8
  br label %180

180:                                              ; preds = %167, %98, %73, %44, %19
  %181 = load i32*, i32** %4, align 8
  ret i32* %181
}

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*, ...) #1

declare dso_local i32* @ngx_http_v2_connection_error(%struct.TYPE_22__*, i32) #1

declare dso_local i32* @ngx_http_v2_state_save(%struct.TYPE_22__*, i32*, i32*, i32* (%struct.TYPE_22__*, i32*, i32*)*) #1

declare dso_local i32 @ngx_http_v2_parse_uint32(i32*) #1

declare dso_local i32 @ngx_log_debug2(i32, i32, i32, i8*, i64, i32) #1

declare dso_local %struct.TYPE_21__* @ngx_http_v2_get_node_by_id(%struct.TYPE_22__*, i64, i32) #1

declare dso_local i32 @ngx_log_debug0(i32, i32, i32, i8*) #1

declare dso_local i32* @ngx_http_v2_state_complete(%struct.TYPE_22__*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
