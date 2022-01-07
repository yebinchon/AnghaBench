; ModuleID = '/home/carl/AnghaBench/tengine/src/http/modules/extr_ngx_http_charset_filter_module.c_ngx_http_charset_postconfiguration.c'
source_filename = "/home/carl/AnghaBench/tengine/src/http/modules/extr_ngx_http_charset_filter_module.c_ngx_http_charset_postconfiguration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32, i32 }
%struct.TYPE_16__ = type { i32**, i32 }
%struct.TYPE_17__ = type { i64, i64 }
%struct.TYPE_15__ = type { i64, i64, i32*, i32* }
%struct.TYPE_18__ = type { %struct.TYPE_14__, %struct.TYPE_13__, %struct.TYPE_12__ }
%struct.TYPE_14__ = type { i32, %struct.TYPE_16__* }
%struct.TYPE_13__ = type { i64, %struct.TYPE_15__* }
%struct.TYPE_12__ = type { i64, %struct.TYPE_17__* }

@ngx_http_charset_filter_module = common dso_local global i32 0, align 4
@NGX_LOG_EMERG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"no \22charset_map\22 between the charsets \22%V\22 and \22%V\22\00", align 1
@NGX_ERROR = common dso_local global i64 0, align 8
@ngx_http_top_header_filter = common dso_local global i32 0, align 4
@ngx_http_next_header_filter = common dso_local global i32 0, align 4
@ngx_http_charset_header_filter = common dso_local global i32 0, align 4
@ngx_http_top_body_filter = common dso_local global i32 0, align 4
@ngx_http_next_body_filter = common dso_local global i32 0, align 4
@ngx_http_charset_body_filter = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_19__*)* @ngx_http_charset_postconfiguration to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ngx_http_charset_postconfiguration(%struct.TYPE_19__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_19__*, align 8
  %4 = alloca i32**, align 8
  %5 = alloca i32**, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_16__*, align 8
  %10 = alloca %struct.TYPE_17__*, align 8
  %11 = alloca %struct.TYPE_15__*, align 8
  %12 = alloca %struct.TYPE_18__*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %3, align 8
  %13 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %14 = load i32, i32* @ngx_http_charset_filter_module, align 4
  %15 = call %struct.TYPE_18__* @ngx_http_conf_get_module_main_conf(%struct.TYPE_19__* %13, i32 %14)
  store %struct.TYPE_18__* %15, %struct.TYPE_18__** %12, align 8
  %16 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %17 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  store %struct.TYPE_17__* %19, %struct.TYPE_17__** %10, align 8
  %20 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %21 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** %22, align 8
  store %struct.TYPE_15__* %23, %struct.TYPE_15__** %11, align 8
  %24 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %25 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** %26, align 8
  store %struct.TYPE_16__* %27, %struct.TYPE_16__** %9, align 8
  store i64 0, i64* %7, align 8
  br label %28

28:                                               ; preds = %114, %1
  %29 = load i64, i64* %7, align 8
  %30 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %31 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ult i64 %29, %33
  br i1 %34, label %35, label %117

35:                                               ; preds = %28
  %36 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %37 = load i64, i64* %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %36, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  store i64 %40, i64* %6, align 8
  store i64 0, i64* %8, align 8
  br label %41

41:                                               ; preds = %91, %35
  %42 = load i64, i64* %8, align 8
  %43 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %44 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ult i64 %42, %46
  br i1 %47, label %48, label %94

48:                                               ; preds = %41
  %49 = load i64, i64* %6, align 8
  %50 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %51 = load i64, i64* %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %50, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp eq i64 %49, %54
  br i1 %55, label %56, label %69

56:                                               ; preds = %48
  %57 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %58 = load i64, i64* %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %57, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %63 = load i64, i64* %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %62, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = icmp eq i64 %61, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %56
  br label %113

69:                                               ; preds = %56, %48
  %70 = load i64, i64* %6, align 8
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %72 = load i64, i64* %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %71, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = icmp eq i64 %70, %75
  br i1 %76, label %77, label %90

77:                                               ; preds = %69
  %78 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %79 = load i64, i64* %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %78, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %84 = load i64, i64* %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %83, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = icmp eq i64 %82, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %77
  br label %113

90:                                               ; preds = %77, %69
  br label %91

91:                                               ; preds = %90
  %92 = load i64, i64* %8, align 8
  %93 = add i64 %92, 1
  store i64 %93, i64* %8, align 8
  br label %41

94:                                               ; preds = %41
  %95 = load i32, i32* @NGX_LOG_EMERG, align 4
  %96 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %100 = load i64, i64* %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %99, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %101, i32 0, i32 1
  %103 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %104 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %105 = load i64, i64* %7, align 8
  %106 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %104, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %103, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %109, i32 0, i32 1
  %111 = call i32 @ngx_log_error(i32 %95, i32 %98, i32 0, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32* %102, i32* %110)
  %112 = load i64, i64* @NGX_ERROR, align 8
  store i64 %112, i64* %2, align 8
  br label %235

113:                                              ; preds = %89, %68
  br label %114

114:                                              ; preds = %113
  %115 = load i64, i64* %7, align 8
  %116 = add i64 %115, 1
  store i64 %116, i64* %7, align 8
  br label %28

117:                                              ; preds = %28
  store i64 0, i64* %8, align 8
  br label %118

118:                                              ; preds = %226, %117
  %119 = load i64, i64* %8, align 8
  %120 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %121 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = icmp ult i64 %119, %123
  br i1 %124, label %125, label %229

125:                                              ; preds = %118
  %126 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %127 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %128 = load i64, i64* %8, align 8
  %129 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %127, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %126, i64 %131
  %133 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %132, i32 0, i32 0
  %134 = load i32**, i32*** %133, align 8
  store i32** %134, i32*** %4, align 8
  %135 = load i32**, i32*** %4, align 8
  %136 = icmp eq i32** %135, null
  br i1 %136, label %137, label %163

137:                                              ; preds = %125
  %138 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %139 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %142 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = sext i32 %144 to i64
  %146 = mul i64 8, %145
  %147 = trunc i64 %146 to i32
  %148 = call i32** @ngx_pcalloc(i32 %140, i32 %147)
  store i32** %148, i32*** %4, align 8
  %149 = load i32**, i32*** %4, align 8
  %150 = icmp eq i32** %149, null
  br i1 %150, label %151, label %153

151:                                              ; preds = %137
  %152 = load i64, i64* @NGX_ERROR, align 8
  store i64 %152, i64* %2, align 8
  br label %235

153:                                              ; preds = %137
  %154 = load i32**, i32*** %4, align 8
  %155 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %156 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %157 = load i64, i64* %8, align 8
  %158 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %156, i64 %157
  %159 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %155, i64 %160
  %162 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %161, i32 0, i32 0
  store i32** %154, i32*** %162, align 8
  br label %163

163:                                              ; preds = %153, %125
  %164 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %165 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %166 = load i64, i64* %8, align 8
  %167 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %165, i64 %166
  %168 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %167, i32 0, i32 1
  %169 = load i64, i64* %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %164, i64 %169
  %171 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %170, i32 0, i32 0
  %172 = load i32**, i32*** %171, align 8
  store i32** %172, i32*** %5, align 8
  %173 = load i32**, i32*** %5, align 8
  %174 = icmp eq i32** %173, null
  br i1 %174, label %175, label %201

175:                                              ; preds = %163
  %176 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %177 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %180 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = sext i32 %182 to i64
  %184 = mul i64 8, %183
  %185 = trunc i64 %184 to i32
  %186 = call i32** @ngx_pcalloc(i32 %178, i32 %185)
  store i32** %186, i32*** %5, align 8
  %187 = load i32**, i32*** %5, align 8
  %188 = icmp eq i32** %187, null
  br i1 %188, label %189, label %191

189:                                              ; preds = %175
  %190 = load i64, i64* @NGX_ERROR, align 8
  store i64 %190, i64* %2, align 8
  br label %235

191:                                              ; preds = %175
  %192 = load i32**, i32*** %5, align 8
  %193 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %194 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %195 = load i64, i64* %8, align 8
  %196 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %194, i64 %195
  %197 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %196, i32 0, i32 1
  %198 = load i64, i64* %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %193, i64 %198
  %200 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %199, i32 0, i32 0
  store i32** %192, i32*** %200, align 8
  br label %201

201:                                              ; preds = %191, %163
  %202 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %203 = load i64, i64* %8, align 8
  %204 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %202, i64 %203
  %205 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %204, i32 0, i32 3
  %206 = load i32*, i32** %205, align 8
  %207 = load i32**, i32*** %4, align 8
  %208 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %209 = load i64, i64* %8, align 8
  %210 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %208, i64 %209
  %211 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %210, i32 0, i32 1
  %212 = load i64, i64* %211, align 8
  %213 = getelementptr inbounds i32*, i32** %207, i64 %212
  store i32* %206, i32** %213, align 8
  %214 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %215 = load i64, i64* %8, align 8
  %216 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %214, i64 %215
  %217 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %216, i32 0, i32 2
  %218 = load i32*, i32** %217, align 8
  %219 = load i32**, i32*** %5, align 8
  %220 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %221 = load i64, i64* %8, align 8
  %222 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %220, i64 %221
  %223 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %222, i32 0, i32 0
  %224 = load i64, i64* %223, align 8
  %225 = getelementptr inbounds i32*, i32** %219, i64 %224
  store i32* %218, i32** %225, align 8
  br label %226

226:                                              ; preds = %201
  %227 = load i64, i64* %8, align 8
  %228 = add i64 %227, 1
  store i64 %228, i64* %8, align 8
  br label %118

229:                                              ; preds = %118
  %230 = load i32, i32* @ngx_http_top_header_filter, align 4
  store i32 %230, i32* @ngx_http_next_header_filter, align 4
  %231 = load i32, i32* @ngx_http_charset_header_filter, align 4
  store i32 %231, i32* @ngx_http_top_header_filter, align 4
  %232 = load i32, i32* @ngx_http_top_body_filter, align 4
  store i32 %232, i32* @ngx_http_next_body_filter, align 4
  %233 = load i32, i32* @ngx_http_charset_body_filter, align 4
  store i32 %233, i32* @ngx_http_top_body_filter, align 4
  %234 = load i64, i64* @NGX_OK, align 8
  store i64 %234, i64* %2, align 8
  br label %235

235:                                              ; preds = %229, %189, %151, %94
  %236 = load i64, i64* %2, align 8
  ret i64 %236
}

declare dso_local %struct.TYPE_18__* @ngx_http_conf_get_module_main_conf(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*, i32*, i32*) #1

declare dso_local i32** @ngx_pcalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
