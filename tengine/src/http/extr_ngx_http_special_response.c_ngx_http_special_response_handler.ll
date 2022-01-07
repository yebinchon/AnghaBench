; ModuleID = '/home/carl/AnghaBench/tengine/src/http/extr_ngx_http_special_response.c_ngx_http_special_response_handler.c'
source_filename = "/home/carl/AnghaBench/tengine/src/http/extr_ngx_http_special_response.c_ngx_http_special_response_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i32, i32, i64, i32, %struct.TYPE_22__, i64, %struct.TYPE_20__, i64, i32, i32, %struct.TYPE_18__* }
%struct.TYPE_22__ = type { i64 }
%struct.TYPE_20__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i64 }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_25__ = type { i64, i64, %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i64, %struct.TYPE_24__* }

@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"http special response: %i, \22%V?%V\22\00", align 1
@ngx_http_core_module = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i64 0, align 8
@NGX_HTTP_MOVED_PERMANENTLY = common dso_local global i32 0, align 4
@NGX_HTTP_MOVED_TEMPORARILY = common dso_local global i32 0, align 4
@NGX_HTTP_CREATED = common dso_local global i32 0, align 4
@NGX_HTTP_NO_CONTENT = common dso_local global i32 0, align 4
@NGX_HTTP_LAST_3XX = common dso_local global i32 0, align 4
@NGX_HTTP_OFF_3XX = common dso_local global i32 0, align 4
@NGX_HTTP_LAST_4XX = common dso_local global i32 0, align 4
@NGX_HTTP_OFF_4XX = common dso_local global i32 0, align 4
@NGX_HTTP_NGINX_CODES = common dso_local global i32 0, align 4
@NGX_HTTP_LAST_5XX = common dso_local global i32 0, align 4
@NGX_HTTP_OFF_5XX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ngx_http_special_response_handler(%struct.TYPE_23__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_23__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_24__*, align 8
  %9 = alloca %struct.TYPE_25__*, align 8
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %11 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %11, i32 0, i32 10
  %13 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %17, i32 0, i32 9
  %19 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %19, i32 0, i32 8
  %21 = call i32 @ngx_log_debug3(i32 %10, i32 %15, i32 0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %16, i32* %18, i32* %20)
  %22 = load i32, i32* %5, align 4
  %23 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %25, i32 0, i32 5
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %2
  %30 = load i32, i32* %5, align 4
  switch i32 %30, label %34 [
    i32 134, label %31
    i32 131, label %31
    i32 129, label %31
    i32 128, label %31
    i32 136, label %31
    i32 135, label %31
    i32 133, label %31
    i32 132, label %31
  ]

31:                                               ; preds = %29, %29, %29, %29, %29, %29, %29, %29
  %32 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %32, i32 0, i32 5
  store i64 0, i64* %33, align 8
  br label %34

34:                                               ; preds = %31, %29
  br label %35

35:                                               ; preds = %34, %2
  %36 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %36, i32 0, i32 7
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %35
  %41 = load i32, i32* %5, align 4
  switch i32 %41, label %45 [
    i32 134, label %42
    i32 128, label %42
    i32 136, label %42
    i32 135, label %42
  ]

42:                                               ; preds = %40, %40, %40, %40
  %43 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %43, i32 0, i32 7
  store i64 0, i64* %44, align 8
  br label %45

45:                                               ; preds = %42, %40
  br label %46

46:                                               ; preds = %45, %35
  %47 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %47, i32 0, i32 6
  %49 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %49, i32 0, i32 0
  store i64 0, i64* %50, align 8
  %51 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %52 = load i32, i32* @ngx_http_core_module, align 4
  %53 = call %struct.TYPE_25__* @ngx_http_get_module_loc_conf(%struct.TYPE_23__* %51, i32 %52)
  store %struct.TYPE_25__* %53, %struct.TYPE_25__** %9, align 8
  %54 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %109, label %58

58:                                               ; preds = %46
  %59 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %60 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %59, i32 0, i32 2
  %61 = load %struct.TYPE_21__*, %struct.TYPE_21__** %60, align 8
  %62 = icmp ne %struct.TYPE_21__* %61, null
  br i1 %62, label %63, label %109

63:                                               ; preds = %58
  %64 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %109

68:                                               ; preds = %63
  %69 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %70 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %68
  %74 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %74, i32 0, i32 1
  store i32 1, i32* %75, align 4
  br label %76

76:                                               ; preds = %73, %68
  %77 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %78 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %77, i32 0, i32 2
  %79 = load %struct.TYPE_21__*, %struct.TYPE_21__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %79, i32 0, i32 1
  %81 = load %struct.TYPE_24__*, %struct.TYPE_24__** %80, align 8
  store %struct.TYPE_24__* %81, %struct.TYPE_24__** %8, align 8
  store i64 0, i64* %6, align 8
  br label %82

82:                                               ; preds = %105, %76
  %83 = load i64, i64* %6, align 8
  %84 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %85 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %84, i32 0, i32 2
  %86 = load %struct.TYPE_21__*, %struct.TYPE_21__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = icmp ult i64 %83, %88
  br i1 %89, label %90, label %108

90:                                               ; preds = %82
  %91 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %92 = load i64, i64* %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %91, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* %5, align 4
  %97 = icmp eq i32 %95, %96
  br i1 %97, label %98, label %104

98:                                               ; preds = %90
  %99 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %100 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %101 = load i64, i64* %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %100, i64 %101
  %103 = call i32 @ngx_http_send_error_page(%struct.TYPE_23__* %99, %struct.TYPE_24__* %102)
  store i32 %103, i32* %3, align 4
  br label %209

104:                                              ; preds = %90
  br label %105

105:                                              ; preds = %104
  %106 = load i64, i64* %6, align 8
  %107 = add i64 %106, 1
  store i64 %107, i64* %6, align 8
  br label %82

108:                                              ; preds = %82
  br label %109

109:                                              ; preds = %108, %63, %58, %46
  %110 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %110, i32 0, i32 3
  store i32 1, i32* %111, align 8
  %112 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %113 = call i64 @ngx_http_discard_request_body(%struct.TYPE_23__* %112)
  %114 = load i64, i64* @NGX_OK, align 8
  %115 = icmp ne i64 %113, %114
  br i1 %115, label %116, label %119

116:                                              ; preds = %109
  %117 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %117, i32 0, i32 5
  store i64 0, i64* %118, align 8
  br label %119

119:                                              ; preds = %116, %109
  %120 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %121 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %141

124:                                              ; preds = %119
  %125 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %126 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %125, i32 0, i32 4
  %127 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %141

130:                                              ; preds = %124
  %131 = load i32, i32* %5, align 4
  %132 = load i32, i32* @NGX_HTTP_MOVED_PERMANENTLY, align 4
  %133 = icmp eq i32 %131, %132
  br i1 %133, label %138, label %134

134:                                              ; preds = %130
  %135 = load i32, i32* %5, align 4
  %136 = load i32, i32* @NGX_HTTP_MOVED_TEMPORARILY, align 4
  %137 = icmp eq i32 %135, %136
  br i1 %137, label %138, label %141

138:                                              ; preds = %134, %130
  %139 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %140 = call i32 @ngx_http_send_refresh(%struct.TYPE_23__* %139)
  store i32 %140, i32* %3, align 4
  br label %209

141:                                              ; preds = %134, %124, %119
  %142 = load i32, i32* %5, align 4
  %143 = load i32, i32* @NGX_HTTP_CREATED, align 4
  %144 = icmp eq i32 %142, %143
  br i1 %144, label %145, label %146

145:                                              ; preds = %141
  store i64 0, i64* %7, align 8
  br label %204

146:                                              ; preds = %141
  %147 = load i32, i32* %5, align 4
  %148 = load i32, i32* @NGX_HTTP_NO_CONTENT, align 4
  %149 = icmp eq i32 %147, %148
  br i1 %149, label %150, label %151

150:                                              ; preds = %146
  store i64 0, i64* %7, align 8
  br label %203

151:                                              ; preds = %146
  %152 = load i32, i32* %5, align 4
  %153 = load i32, i32* @NGX_HTTP_MOVED_PERMANENTLY, align 4
  %154 = icmp sge i32 %152, %153
  br i1 %154, label %155, label %166

155:                                              ; preds = %151
  %156 = load i32, i32* %5, align 4
  %157 = load i32, i32* @NGX_HTTP_LAST_3XX, align 4
  %158 = icmp slt i32 %156, %157
  br i1 %158, label %159, label %166

159:                                              ; preds = %155
  %160 = load i32, i32* %5, align 4
  %161 = load i32, i32* @NGX_HTTP_MOVED_PERMANENTLY, align 4
  %162 = sub nsw i32 %160, %161
  %163 = load i32, i32* @NGX_HTTP_OFF_3XX, align 4
  %164 = add nsw i32 %162, %163
  %165 = sext i32 %164 to i64
  store i64 %165, i64* %7, align 8
  br label %202

166:                                              ; preds = %155, %151
  %167 = load i32, i32* %5, align 4
  %168 = icmp sge i32 %167, 134
  br i1 %168, label %169, label %179

169:                                              ; preds = %166
  %170 = load i32, i32* %5, align 4
  %171 = load i32, i32* @NGX_HTTP_LAST_4XX, align 4
  %172 = icmp slt i32 %170, %171
  br i1 %172, label %173, label %179

173:                                              ; preds = %169
  %174 = load i32, i32* %5, align 4
  %175 = sub nsw i32 %174, 134
  %176 = load i32, i32* @NGX_HTTP_OFF_4XX, align 4
  %177 = add nsw i32 %175, %176
  %178 = sext i32 %177 to i64
  store i64 %178, i64* %7, align 8
  br label %201

179:                                              ; preds = %169, %166
  %180 = load i32, i32* %5, align 4
  %181 = load i32, i32* @NGX_HTTP_NGINX_CODES, align 4
  %182 = icmp sge i32 %180, %181
  br i1 %182, label %183, label %199

183:                                              ; preds = %179
  %184 = load i32, i32* %5, align 4
  %185 = load i32, i32* @NGX_HTTP_LAST_5XX, align 4
  %186 = icmp slt i32 %184, %185
  br i1 %186, label %187, label %199

187:                                              ; preds = %183
  %188 = load i32, i32* %5, align 4
  %189 = load i32, i32* @NGX_HTTP_NGINX_CODES, align 4
  %190 = sub nsw i32 %188, %189
  %191 = load i32, i32* @NGX_HTTP_OFF_5XX, align 4
  %192 = add nsw i32 %190, %191
  %193 = sext i32 %192 to i64
  store i64 %193, i64* %7, align 8
  %194 = load i32, i32* %5, align 4
  switch i32 %194, label %198 [
    i32 128, label %195
    i32 136, label %195
    i32 135, label %195
    i32 130, label %195
  ]

195:                                              ; preds = %187, %187, %187, %187
  %196 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %197 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %196, i32 0, i32 0
  store i32 134, i32* %197, align 8
  br label %198

198:                                              ; preds = %195, %187
  br label %200

199:                                              ; preds = %183, %179
  store i64 0, i64* %7, align 8
  br label %200

200:                                              ; preds = %199, %198
  br label %201

201:                                              ; preds = %200, %173
  br label %202

202:                                              ; preds = %201, %159
  br label %203

203:                                              ; preds = %202, %150
  br label %204

204:                                              ; preds = %203, %145
  %205 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %206 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %207 = load i64, i64* %7, align 8
  %208 = call i32 @ngx_http_send_special_response(%struct.TYPE_23__* %205, %struct.TYPE_25__* %206, i64 %207)
  store i32 %208, i32* %3, align 4
  br label %209

209:                                              ; preds = %204, %138, %98
  %210 = load i32, i32* %3, align 4
  ret i32 %210
}

declare dso_local i32 @ngx_log_debug3(i32, i32, i32, i8*, i32, i32*, i32*) #1

declare dso_local %struct.TYPE_25__* @ngx_http_get_module_loc_conf(%struct.TYPE_23__*, i32) #1

declare dso_local i32 @ngx_http_send_error_page(%struct.TYPE_23__*, %struct.TYPE_24__*) #1

declare dso_local i64 @ngx_http_discard_request_body(%struct.TYPE_23__*) #1

declare dso_local i32 @ngx_http_send_refresh(%struct.TYPE_23__*) #1

declare dso_local i32 @ngx_http_send_special_response(%struct.TYPE_23__*, %struct.TYPE_25__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
