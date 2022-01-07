; ModuleID = '/home/carl/AnghaBench/tengine/src/http/extr_ngx_http_upstream.c_ngx_http_upstream_send_request_body.c'
source_filename = "/home/carl/AnghaBench/tengine/src/http/extr_ngx_http_upstream.c_ngx_http_upstream_send_request_body.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32, i32, i64, %struct.TYPE_18__*, i32, i32, %struct.TYPE_16__* }
%struct.TYPE_18__ = type { %struct.TYPE_23__* }
%struct.TYPE_23__ = type { %struct.TYPE_23__* }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_20__ = type { i32, i32, %struct.TYPE_19__*, i32, i32, %struct.TYPE_17__, %struct.TYPE_23__*, i64 }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_17__ = type { i32* }
%struct.TYPE_22__ = type { i64 }

@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"http upstream send request body\00", align 1
@NGX_AGAIN = common dso_local global i64 0, align 8
@ngx_http_core_module = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i64 0, align 8
@NGX_ERROR = common dso_local global i64 0, align 8
@ngx_http_upstream_read_request_handler = common dso_local global i32 0, align 4
@NGX_HTTP_SPECIAL_RESPONSE = common dso_local global i64 0, align 8
@ngx_http_upstream_rd_check_broken_connection = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_21__*, %struct.TYPE_20__*, i32)* @ngx_http_upstream_send_request_body to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ngx_http_upstream_send_request_body(%struct.TYPE_21__* %0, %struct.TYPE_20__* %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_21__*, align 8
  %6 = alloca %struct.TYPE_20__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_23__*, align 8
  %10 = alloca %struct.TYPE_23__*, align 8
  %11 = alloca %struct.TYPE_23__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_22__*, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %5, align 8
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %15 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %15, i32 0, i32 6
  %17 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @ngx_log_debug0(i32 %14, i32 %19, i32 0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %21 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %21, i32 0, i32 5
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %53, label %25

25:                                               ; preds = %3
  %26 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %36, label %30

30:                                               ; preds = %25
  %31 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %31, i32 0, i32 0
  store i32 1, i32* %32, align 8
  %33 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %33, i32 0, i32 6
  %35 = load %struct.TYPE_23__*, %struct.TYPE_23__** %34, align 8
  store %struct.TYPE_23__* %35, %struct.TYPE_23__** %9, align 8
  br label %37

36:                                               ; preds = %25
  store %struct.TYPE_23__* null, %struct.TYPE_23__** %9, align 8
  br label %37

37:                                               ; preds = %36, %30
  %38 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %38, i32 0, i32 4
  %40 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %41 = call i64 @ngx_output_chain(i32* %39, %struct.TYPE_23__* %40)
  store i64 %41, i64* %8, align 8
  %42 = load i64, i64* %8, align 8
  %43 = load i64, i64* @NGX_AGAIN, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %37
  %46 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %46, i32 0, i32 1
  store i32 1, i32* %47, align 4
  br label %51

48:                                               ; preds = %37
  %49 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %49, i32 0, i32 1
  store i32 0, i32* %50, align 4
  br label %51

51:                                               ; preds = %48, %45
  %52 = load i64, i64* %8, align 8
  store i64 %52, i64* %4, align 8
  br label %225

53:                                               ; preds = %3
  %54 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %117, label %58

58:                                               ; preds = %53
  %59 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %59, i32 0, i32 0
  store i32 1, i32* %60, align 8
  %61 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %61, i32 0, i32 6
  %63 = load %struct.TYPE_23__*, %struct.TYPE_23__** %62, align 8
  store %struct.TYPE_23__* %63, %struct.TYPE_23__** %9, align 8
  %64 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %64, i32 0, i32 3
  %66 = load %struct.TYPE_18__*, %struct.TYPE_18__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_23__*, %struct.TYPE_23__** %67, align 8
  %69 = icmp ne %struct.TYPE_23__* %68, null
  br i1 %69, label %70, label %94

70:                                               ; preds = %58
  %71 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  store %struct.TYPE_23__* %71, %struct.TYPE_23__** %10, align 8
  br label %72

72:                                               ; preds = %78, %70
  %73 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %74 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_23__*, %struct.TYPE_23__** %74, align 8
  %76 = icmp ne %struct.TYPE_23__* %75, null
  br i1 %76, label %77, label %82

77:                                               ; preds = %72
  br label %78

78:                                               ; preds = %77
  %79 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %80 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_23__*, %struct.TYPE_23__** %80, align 8
  store %struct.TYPE_23__* %81, %struct.TYPE_23__** %10, align 8
  br label %72

82:                                               ; preds = %72
  %83 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %83, i32 0, i32 3
  %85 = load %struct.TYPE_18__*, %struct.TYPE_18__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %85, i32 0, i32 0
  %87 = load %struct.TYPE_23__*, %struct.TYPE_23__** %86, align 8
  %88 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %89 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %88, i32 0, i32 0
  store %struct.TYPE_23__* %87, %struct.TYPE_23__** %89, align 8
  %90 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %90, i32 0, i32 3
  %92 = load %struct.TYPE_18__*, %struct.TYPE_18__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %92, i32 0, i32 0
  store %struct.TYPE_23__* null, %struct.TYPE_23__** %93, align 8
  br label %94

94:                                               ; preds = %82, %58
  %95 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %95, i32 0, i32 5
  %97 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %96, i32 0, i32 0
  %98 = load i32*, i32** %97, align 8
  store i32* %98, i32** %12, align 8
  %99 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %100 = load i32, i32* @ngx_http_core_module, align 4
  %101 = call %struct.TYPE_22__* @ngx_http_get_module_loc_conf(%struct.TYPE_21__* %99, i32 %100)
  store %struct.TYPE_22__* %101, %struct.TYPE_22__** %13, align 8
  %102 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %103 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %113

106:                                              ; preds = %94
  %107 = load i32*, i32** %12, align 8
  %108 = call i64 @ngx_tcp_nodelay(i32* %107)
  %109 = load i64, i64* @NGX_OK, align 8
  %110 = icmp ne i64 %108, %109
  br i1 %110, label %111, label %113

111:                                              ; preds = %106
  %112 = load i64, i64* @NGX_ERROR, align 8
  store i64 %112, i64* %4, align 8
  br label %225

113:                                              ; preds = %106, %94
  %114 = load i32, i32* @ngx_http_upstream_read_request_handler, align 4
  %115 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %115, i32 0, i32 0
  store i32 %114, i32* %116, align 8
  br label %118

117:                                              ; preds = %53
  store %struct.TYPE_23__* null, %struct.TYPE_23__** %9, align 8
  br label %118

118:                                              ; preds = %117, %113
  br label %119

119:                                              ; preds = %195, %118
  %120 = load i32, i32* %7, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %167

122:                                              ; preds = %119
  %123 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %124 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %123, i32 0, i32 4
  %125 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %126 = call i64 @ngx_output_chain(i32* %124, %struct.TYPE_23__* %125)
  store i64 %126, i64* %8, align 8
  %127 = load i64, i64* %8, align 8
  %128 = load i64, i64* @NGX_ERROR, align 8
  %129 = icmp eq i64 %127, %128
  br i1 %129, label %130, label %132

130:                                              ; preds = %122
  %131 = load i64, i64* @NGX_ERROR, align 8
  store i64 %131, i64* %4, align 8
  br label %225

132:                                              ; preds = %122
  br label %133

133:                                              ; preds = %136, %132
  %134 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %135 = icmp ne %struct.TYPE_23__* %134, null
  br i1 %135, label %136, label %146

136:                                              ; preds = %133
  %137 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  store %struct.TYPE_23__* %137, %struct.TYPE_23__** %11, align 8
  %138 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %139 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %138, i32 0, i32 0
  %140 = load %struct.TYPE_23__*, %struct.TYPE_23__** %139, align 8
  store %struct.TYPE_23__* %140, %struct.TYPE_23__** %9, align 8
  %141 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %142 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %141, i32 0, i32 4
  %143 = load i32, i32* %142, align 8
  %144 = load %struct.TYPE_23__*, %struct.TYPE_23__** %11, align 8
  %145 = call i32 @ngx_free_chain(i32 %143, %struct.TYPE_23__* %144)
  br label %133

146:                                              ; preds = %133
  %147 = load i64, i64* %8, align 8
  %148 = load i64, i64* @NGX_AGAIN, align 8
  %149 = icmp eq i64 %147, %148
  br i1 %149, label %150, label %153

150:                                              ; preds = %146
  %151 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %152 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %151, i32 0, i32 1
  store i32 1, i32* %152, align 4
  br label %156

153:                                              ; preds = %146
  %154 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %155 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %154, i32 0, i32 1
  store i32 0, i32* %155, align 4
  br label %156

156:                                              ; preds = %153, %150
  %157 = load i64, i64* %8, align 8
  %158 = load i64, i64* @NGX_OK, align 8
  %159 = icmp eq i64 %157, %158
  br i1 %159, label %160, label %166

160:                                              ; preds = %156
  %161 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %162 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %161, i32 0, i32 2
  %163 = load i64, i64* %162, align 8
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %166, label %165

165:                                              ; preds = %160
  br label %196

166:                                              ; preds = %160, %156
  br label %167

167:                                              ; preds = %166, %119
  %168 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %169 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %168, i32 0, i32 2
  %170 = load i64, i64* %169, align 8
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %190

172:                                              ; preds = %167
  %173 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %174 = call i64 @ngx_http_read_unbuffered_request_body(%struct.TYPE_21__* %173)
  store i64 %174, i64* %8, align 8
  %175 = load i64, i64* %8, align 8
  %176 = load i64, i64* @NGX_HTTP_SPECIAL_RESPONSE, align 8
  %177 = icmp sge i64 %175, %176
  br i1 %177, label %178, label %180

178:                                              ; preds = %172
  %179 = load i64, i64* %8, align 8
  store i64 %179, i64* %4, align 8
  br label %225

180:                                              ; preds = %172
  %181 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %182 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %181, i32 0, i32 3
  %183 = load %struct.TYPE_18__*, %struct.TYPE_18__** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %183, i32 0, i32 0
  %185 = load %struct.TYPE_23__*, %struct.TYPE_23__** %184, align 8
  store %struct.TYPE_23__* %185, %struct.TYPE_23__** %9, align 8
  %186 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %187 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %186, i32 0, i32 3
  %188 = load %struct.TYPE_18__*, %struct.TYPE_18__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %188, i32 0, i32 0
  store %struct.TYPE_23__* null, %struct.TYPE_23__** %189, align 8
  br label %190

190:                                              ; preds = %180, %167
  %191 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %192 = icmp eq %struct.TYPE_23__* %191, null
  br i1 %192, label %193, label %195

193:                                              ; preds = %190
  %194 = load i64, i64* @NGX_AGAIN, align 8
  store i64 %194, i64* %8, align 8
  br label %196

195:                                              ; preds = %190
  store i32 1, i32* %7, align 4
  br label %119

196:                                              ; preds = %193, %165
  %197 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %198 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %197, i32 0, i32 2
  %199 = load i64, i64* %198, align 8
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %223, label %201

201:                                              ; preds = %196
  %202 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %203 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %202, i32 0, i32 3
  %204 = load i32, i32* %203, align 8
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %222, label %206

206:                                              ; preds = %201
  %207 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %208 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %207, i32 0, i32 1
  %209 = load i32, i32* %208, align 4
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %222, label %211

211:                                              ; preds = %206
  %212 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %213 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %212, i32 0, i32 2
  %214 = load %struct.TYPE_19__*, %struct.TYPE_19__** %213, align 8
  %215 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 4
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %222, label %218

218:                                              ; preds = %211
  %219 = load i32, i32* @ngx_http_upstream_rd_check_broken_connection, align 4
  %220 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %221 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %220, i32 0, i32 0
  store i32 %219, i32* %221, align 8
  br label %222

222:                                              ; preds = %218, %211, %206, %201
  br label %223

223:                                              ; preds = %222, %196
  %224 = load i64, i64* %8, align 8
  store i64 %224, i64* %4, align 8
  br label %225

225:                                              ; preds = %223, %178, %130, %111, %51
  %226 = load i64, i64* %4, align 8
  ret i64 %226
}

declare dso_local i32 @ngx_log_debug0(i32, i32, i32, i8*) #1

declare dso_local i64 @ngx_output_chain(i32*, %struct.TYPE_23__*) #1

declare dso_local %struct.TYPE_22__* @ngx_http_get_module_loc_conf(%struct.TYPE_21__*, i32) #1

declare dso_local i64 @ngx_tcp_nodelay(i32*) #1

declare dso_local i32 @ngx_free_chain(i32, %struct.TYPE_23__*) #1

declare dso_local i64 @ngx_http_read_unbuffered_request_body(%struct.TYPE_21__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
