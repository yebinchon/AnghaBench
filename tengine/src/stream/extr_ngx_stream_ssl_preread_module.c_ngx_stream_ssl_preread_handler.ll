; ModuleID = '/home/carl/AnghaBench/tengine/src/stream/extr_ngx_stream_ssl_preread_module.c_ngx_stream_ssl_preread_handler.c'
source_filename = "/home/carl/AnghaBench/tengine/src/stream/extr_ngx_stream_ssl_preread_module.c_ngx_stream_ssl_preread_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i64, %struct.TYPE_15__*, i32, i32 }
%struct.TYPE_15__ = type { i32*, i32* }
%struct.TYPE_17__ = type { i32*, i32*, i32, i32 }
%struct.TYPE_16__ = type { i32 }

@NGX_LOG_DEBUG_STREAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"ssl preread handler\00", align 1
@ngx_stream_ssl_preread_module = common dso_local global i32 0, align 4
@NGX_DECLINED = common dso_local global i64 0, align 8
@SOCK_STREAM = common dso_local global i64 0, align 8
@NGX_AGAIN = common dso_local global i64 0, align 8
@NGX_ERROR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [35 x i8] c"ssl preread: version 2 ClientHello\00", align 1
@NGX_OK = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [29 x i8] c"ssl preread: not a handshake\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"ssl preread: unsupported SSL version\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_18__*)* @ngx_stream_ssl_preread_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ngx_stream_ssl_preread_handler(%struct.TYPE_18__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_18__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_19__*, align 8
  %9 = alloca %struct.TYPE_17__*, align 8
  %10 = alloca %struct.TYPE_16__*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %3, align 8
  %11 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  store %struct.TYPE_19__* %13, %struct.TYPE_19__** %8, align 8
  %14 = load i32, i32* @NGX_LOG_DEBUG_STREAM, align 4
  %15 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %16 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @ngx_log_debug0(i32 %14, i32 %17, i32 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %20 = load i32, i32* @ngx_stream_ssl_preread_module, align 4
  %21 = call %struct.TYPE_16__* @ngx_stream_get_module_srv_conf(%struct.TYPE_18__* %19, i32 %20)
  store %struct.TYPE_16__* %21, %struct.TYPE_16__** %10, align 8
  %22 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %23 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %1
  %27 = load i64, i64* @NGX_DECLINED, align 8
  store i64 %27, i64* %2, align 8
  br label %221

28:                                               ; preds = %1
  %29 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @SOCK_STREAM, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %28
  %35 = load i64, i64* @NGX_DECLINED, align 8
  store i64 %35, i64* %2, align 8
  br label %221

36:                                               ; preds = %28
  %37 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %38, align 8
  %40 = icmp eq %struct.TYPE_15__* %39, null
  br i1 %40, label %41, label %43

41:                                               ; preds = %36
  %42 = load i64, i64* @NGX_AGAIN, align 8
  store i64 %42, i64* %2, align 8
  br label %221

43:                                               ; preds = %36
  %44 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %45 = load i32, i32* @ngx_stream_ssl_preread_module, align 4
  %46 = call %struct.TYPE_17__* @ngx_stream_get_module_ctx(%struct.TYPE_18__* %44, i32 %45)
  store %struct.TYPE_17__* %46, %struct.TYPE_17__** %9, align 8
  %47 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %48 = icmp eq %struct.TYPE_17__* %47, null
  br i1 %48, label %49, label %80

49:                                               ; preds = %43
  %50 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = call %struct.TYPE_17__* @ngx_pcalloc(i32 %52, i32 24)
  store %struct.TYPE_17__* %53, %struct.TYPE_17__** %9, align 8
  %54 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %55 = icmp eq %struct.TYPE_17__* %54, null
  br i1 %55, label %56, label %58

56:                                               ; preds = %49
  %57 = load i64, i64* @NGX_ERROR, align 8
  store i64 %57, i64* %2, align 8
  br label %221

58:                                               ; preds = %49
  %59 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %60 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %61 = load i32, i32* @ngx_stream_ssl_preread_module, align 4
  %62 = call i32 @ngx_stream_set_ctx(%struct.TYPE_18__* %59, %struct.TYPE_17__* %60, i32 %61)
  %63 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %67 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %66, i32 0, i32 3
  store i32 %65, i32* %67, align 4
  %68 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %72 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %71, i32 0, i32 2
  store i32 %70, i32* %72, align 8
  %73 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %73, i32 0, i32 1
  %75 = load %struct.TYPE_15__*, %struct.TYPE_15__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %79 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %78, i32 0, i32 0
  store i32* %77, i32** %79, align 8
  br label %80

80:                                               ; preds = %58, %43
  %81 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %82 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %81, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  store i32* %83, i32** %5, align 8
  %84 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %84, i32 0, i32 1
  %86 = load %struct.TYPE_15__*, %struct.TYPE_15__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %86, i32 0, i32 1
  %88 = load i32*, i32** %87, align 8
  store i32* %88, i32** %4, align 8
  br label %89

89:                                               ; preds = %212, %80
  %90 = load i32*, i32** %4, align 8
  %91 = load i32*, i32** %5, align 8
  %92 = ptrtoint i32* %90 to i64
  %93 = ptrtoint i32* %91 to i64
  %94 = sub i64 %92, %93
  %95 = sdiv exact i64 %94, 4
  %96 = icmp sge i64 %95, 5
  br i1 %96, label %97, label %216

97:                                               ; preds = %89
  %98 = load i32*, i32** %5, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 0
  %100 = load i32, i32* %99, align 4
  %101 = and i32 %100, 128
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %139

103:                                              ; preds = %97
  %104 = load i32*, i32** %5, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 2
  %106 = load i32, i32* %105, align 4
  %107 = icmp eq i32 %106, 1
  br i1 %107, label %108, label %139

108:                                              ; preds = %103
  %109 = load i32*, i32** %5, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 3
  %111 = load i32, i32* %110, align 4
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %118, label %113

113:                                              ; preds = %108
  %114 = load i32*, i32** %5, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 3
  %116 = load i32, i32* %115, align 4
  %117 = icmp eq i32 %116, 3
  br i1 %117, label %118, label %139

118:                                              ; preds = %113, %108
  %119 = load i32, i32* @NGX_LOG_DEBUG_STREAM, align 4
  %120 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %121 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 8
  %123 = call i32 @ngx_log_debug0(i32 %119, i32 %122, i32 0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %124 = load i32*, i32** %5, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 3
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %128 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %127, i32 0, i32 1
  %129 = load i32*, i32** %128, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 0
  store i32 %126, i32* %130, align 4
  %131 = load i32*, i32** %5, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 4
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %135 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %134, i32 0, i32 1
  %136 = load i32*, i32** %135, align 8
  %137 = getelementptr inbounds i32, i32* %136, i64 1
  store i32 %133, i32* %137, align 4
  %138 = load i64, i64* @NGX_OK, align 8
  store i64 %138, i64* %2, align 8
  br label %221

139:                                              ; preds = %113, %103, %97
  %140 = load i32*, i32** %5, align 8
  %141 = getelementptr inbounds i32, i32* %140, i64 0
  %142 = load i32, i32* %141, align 4
  %143 = icmp ne i32 %142, 22
  br i1 %143, label %144, label %154

144:                                              ; preds = %139
  %145 = load i32, i32* @NGX_LOG_DEBUG_STREAM, align 4
  %146 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %147 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 8
  %149 = call i32 @ngx_log_debug0(i32 %145, i32 %148, i32 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %150 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %151 = load i32, i32* @ngx_stream_ssl_preread_module, align 4
  %152 = call i32 @ngx_stream_set_ctx(%struct.TYPE_18__* %150, %struct.TYPE_17__* null, i32 %151)
  %153 = load i64, i64* @NGX_DECLINED, align 8
  store i64 %153, i64* %2, align 8
  br label %221

154:                                              ; preds = %139
  %155 = load i32*, i32** %5, align 8
  %156 = getelementptr inbounds i32, i32* %155, i64 1
  %157 = load i32, i32* %156, align 4
  %158 = icmp ne i32 %157, 3
  br i1 %158, label %159, label %169

159:                                              ; preds = %154
  %160 = load i32, i32* @NGX_LOG_DEBUG_STREAM, align 4
  %161 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %162 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 8
  %164 = call i32 @ngx_log_debug0(i32 %160, i32 %163, i32 0, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  %165 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %166 = load i32, i32* @ngx_stream_ssl_preread_module, align 4
  %167 = call i32 @ngx_stream_set_ctx(%struct.TYPE_18__* %165, %struct.TYPE_17__* null, i32 %166)
  %168 = load i64, i64* @NGX_DECLINED, align 8
  store i64 %168, i64* %2, align 8
  br label %221

169:                                              ; preds = %154
  %170 = load i32*, i32** %5, align 8
  %171 = getelementptr inbounds i32, i32* %170, i64 3
  %172 = load i32, i32* %171, align 4
  %173 = shl i32 %172, 8
  %174 = load i32*, i32** %5, align 8
  %175 = getelementptr inbounds i32, i32* %174, i64 4
  %176 = load i32, i32* %175, align 4
  %177 = add nsw i32 %173, %176
  %178 = sext i32 %177 to i64
  store i64 %178, i64* %6, align 8
  %179 = load i32*, i32** %4, align 8
  %180 = load i32*, i32** %5, align 8
  %181 = ptrtoint i32* %179 to i64
  %182 = ptrtoint i32* %180 to i64
  %183 = sub i64 %181, %182
  %184 = sdiv exact i64 %183, 4
  %185 = load i64, i64* %6, align 8
  %186 = add i64 %185, 5
  %187 = icmp ult i64 %184, %186
  br i1 %187, label %188, label %189

188:                                              ; preds = %169
  br label %216

189:                                              ; preds = %169
  %190 = load i32*, i32** %5, align 8
  %191 = getelementptr inbounds i32, i32* %190, i64 5
  store i32* %191, i32** %5, align 8
  %192 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %193 = load i32*, i32** %5, align 8
  %194 = load i32*, i32** %5, align 8
  %195 = load i64, i64* %6, align 8
  %196 = getelementptr inbounds i32, i32* %194, i64 %195
  %197 = call i64 @ngx_stream_ssl_preread_parse_record(%struct.TYPE_17__* %192, i32* %193, i32* %196)
  store i64 %197, i64* %7, align 8
  %198 = load i64, i64* %7, align 8
  %199 = load i64, i64* @NGX_DECLINED, align 8
  %200 = icmp eq i64 %198, %199
  br i1 %200, label %201, label %206

201:                                              ; preds = %189
  %202 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %203 = load i32, i32* @ngx_stream_ssl_preread_module, align 4
  %204 = call i32 @ngx_stream_set_ctx(%struct.TYPE_18__* %202, %struct.TYPE_17__* null, i32 %203)
  %205 = load i64, i64* @NGX_DECLINED, align 8
  store i64 %205, i64* %2, align 8
  br label %221

206:                                              ; preds = %189
  %207 = load i64, i64* %7, align 8
  %208 = load i64, i64* @NGX_AGAIN, align 8
  %209 = icmp ne i64 %207, %208
  br i1 %209, label %210, label %212

210:                                              ; preds = %206
  %211 = load i64, i64* %7, align 8
  store i64 %211, i64* %2, align 8
  br label %221

212:                                              ; preds = %206
  %213 = load i64, i64* %6, align 8
  %214 = load i32*, i32** %5, align 8
  %215 = getelementptr inbounds i32, i32* %214, i64 %213
  store i32* %215, i32** %5, align 8
  br label %89

216:                                              ; preds = %188, %89
  %217 = load i32*, i32** %5, align 8
  %218 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %219 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %218, i32 0, i32 0
  store i32* %217, i32** %219, align 8
  %220 = load i64, i64* @NGX_AGAIN, align 8
  store i64 %220, i64* %2, align 8
  br label %221

221:                                              ; preds = %216, %210, %201, %159, %144, %118, %56, %41, %34, %26
  %222 = load i64, i64* %2, align 8
  ret i64 %222
}

declare dso_local i32 @ngx_log_debug0(i32, i32, i32, i8*) #1

declare dso_local %struct.TYPE_16__* @ngx_stream_get_module_srv_conf(%struct.TYPE_18__*, i32) #1

declare dso_local %struct.TYPE_17__* @ngx_stream_get_module_ctx(%struct.TYPE_18__*, i32) #1

declare dso_local %struct.TYPE_17__* @ngx_pcalloc(i32, i32) #1

declare dso_local i32 @ngx_stream_set_ctx(%struct.TYPE_18__*, %struct.TYPE_17__*, i32) #1

declare dso_local i64 @ngx_stream_ssl_preread_parse_record(%struct.TYPE_17__*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
