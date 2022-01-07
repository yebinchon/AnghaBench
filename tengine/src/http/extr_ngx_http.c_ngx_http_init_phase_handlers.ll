; ModuleID = '/home/carl/AnghaBench/tengine/src/http/extr_ngx_http.c_ngx_http_init_phase_handlers.c'
source_filename = "/home/carl/AnghaBench/tengine/src/http/extr_ngx_http.c_ngx_http_init_phase_handlers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { %struct.TYPE_12__*, %struct.TYPE_10__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64, i32* }
%struct.TYPE_10__ = type { i32, i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, i32, i32 }

@NGX_HTTP_LOG_PHASE = common dso_local global i32 0, align 4
@NGX_ERROR = common dso_local global i64 0, align 8
@ngx_http_core_rewrite_phase = common dso_local global i32 0, align 4
@ngx_http_core_find_config_phase = common dso_local global i32 0, align 4
@ngx_http_core_post_rewrite_phase = common dso_local global i32 0, align 4
@ngx_http_core_access_phase = common dso_local global i32 0, align 4
@ngx_http_core_post_access_phase = common dso_local global i32 0, align 4
@ngx_http_core_content_phase = common dso_local global i32 0, align 4
@ngx_http_core_generic_phase = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_15__*, %struct.TYPE_14__*)* @ngx_http_init_phase_handlers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ngx_http_init_phase_handlers(%struct.TYPE_15__* %0, %struct.TYPE_14__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_13__*, align 8
  %14 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %4, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %5, align 8
  %15 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 0
  store i32 -1, i32* %17, align 8
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 1
  store i32 -1, i32* %20, align 4
  store i32 0, i32* %9, align 4
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i64 129
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  %29 = zext i1 %28 to i64
  %30 = select i1 %28, i32 1, i32 0
  store i32 %30, i32* %10, align 4
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i64 134
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  %39 = zext i1 %38 to i64
  %40 = select i1 %38, i32 1, i32 0
  store i32 %40, i32* %11, align 4
  %41 = load i32, i32* %10, align 4
  %42 = add nsw i32 1, %41
  %43 = load i32, i32* %11, align 4
  %44 = add nsw i32 %42, %43
  store i32 %44, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %45

45:                                               ; preds = %63, %2
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* @NGX_HTTP_LOG_PHASE, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %66

49:                                               ; preds = %45
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %51, align 8
  %53 = load i32, i32* %7, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i32, i32* %8, align 4
  %60 = sext i32 %59 to i64
  %61 = add i64 %60, %58
  %62 = trunc i64 %61 to i32
  store i32 %62, i32* %8, align 4
  br label %63

63:                                               ; preds = %49
  %64 = load i32, i32* %7, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %7, align 4
  br label %45

66:                                               ; preds = %45
  %67 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %8, align 4
  %71 = sext i32 %70 to i64
  %72 = mul i64 %71, 12
  %73 = add i64 %72, 8
  %74 = trunc i64 %73 to i32
  %75 = call %struct.TYPE_13__* @ngx_pcalloc(i32 %69, i32 %74)
  store %struct.TYPE_13__* %75, %struct.TYPE_13__** %13, align 8
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %77 = icmp eq %struct.TYPE_13__* %76, null
  br i1 %77, label %78, label %80

78:                                               ; preds = %66
  %79 = load i64, i64* @NGX_ERROR, align 8
  store i64 %79, i64* %3, align 8
  br label %222

80:                                               ; preds = %66
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %82 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 2
  store %struct.TYPE_13__* %81, %struct.TYPE_13__** %84, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %85

85:                                               ; preds = %217, %80
  %86 = load i32, i32* %7, align 4
  %87 = load i32, i32* @NGX_HTTP_LOG_PHASE, align 4
  %88 = icmp slt i32 %86, %87
  br i1 %88, label %89, label %220

89:                                               ; preds = %85
  %90 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %90, i32 0, i32 0
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** %91, align 8
  %93 = load i32, i32* %7, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 1
  %98 = load i32*, i32** %97, align 8
  store i32* %98, i32** %12, align 8
  %99 = load i32, i32* %7, align 4
  switch i32 %99, label %169 [
    i32 128, label %100
    i32 132, label %113
    i32 129, label %122
    i32 130, label %135
    i32 134, label %150
    i32 131, label %154
    i32 133, label %167
  ]

100:                                              ; preds = %89
  %101 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = icmp eq i32 %104, -1
  br i1 %105, label %106, label %111

106:                                              ; preds = %100
  %107 = load i32, i32* %8, align 4
  %108 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 0
  store i32 %107, i32* %110, align 8
  br label %111

111:                                              ; preds = %106, %100
  %112 = load i32, i32* @ngx_http_core_rewrite_phase, align 4
  store i32 %112, i32* %14, align 4
  br label %171

113:                                              ; preds = %89
  %114 = load i32, i32* %8, align 4
  store i32 %114, i32* %9, align 4
  %115 = load i32, i32* @ngx_http_core_find_config_phase, align 4
  %116 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %117 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %116, i32 0, i32 2
  store i32 %115, i32* %117, align 4
  %118 = load i32, i32* %8, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %8, align 4
  %120 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %121 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %120, i32 1
  store %struct.TYPE_13__* %121, %struct.TYPE_13__** %13, align 8
  br label %217

122:                                              ; preds = %89
  %123 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = icmp eq i32 %126, -1
  br i1 %127, label %128, label %133

128:                                              ; preds = %122
  %129 = load i32, i32* %8, align 4
  %130 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %131, i32 0, i32 1
  store i32 %129, i32* %132, align 4
  br label %133

133:                                              ; preds = %128, %122
  %134 = load i32, i32* @ngx_http_core_rewrite_phase, align 4
  store i32 %134, i32* %14, align 4
  br label %171

135:                                              ; preds = %89
  %136 = load i32, i32* %10, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %149

138:                                              ; preds = %135
  %139 = load i32, i32* @ngx_http_core_post_rewrite_phase, align 4
  %140 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %141 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %140, i32 0, i32 2
  store i32 %139, i32* %141, align 4
  %142 = load i32, i32* %9, align 4
  %143 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %144 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %143, i32 0, i32 0
  store i32 %142, i32* %144, align 4
  %145 = load i32, i32* %8, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %8, align 4
  %147 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %148 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %147, i32 1
  store %struct.TYPE_13__* %148, %struct.TYPE_13__** %13, align 8
  br label %149

149:                                              ; preds = %138, %135
  br label %217

150:                                              ; preds = %89
  %151 = load i32, i32* @ngx_http_core_access_phase, align 4
  store i32 %151, i32* %14, align 4
  %152 = load i32, i32* %8, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %8, align 4
  br label %171

154:                                              ; preds = %89
  %155 = load i32, i32* %11, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %166

157:                                              ; preds = %154
  %158 = load i32, i32* @ngx_http_core_post_access_phase, align 4
  %159 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %160 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %159, i32 0, i32 2
  store i32 %158, i32* %160, align 4
  %161 = load i32, i32* %8, align 4
  %162 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %163 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %162, i32 0, i32 0
  store i32 %161, i32* %163, align 4
  %164 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %165 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %164, i32 1
  store %struct.TYPE_13__* %165, %struct.TYPE_13__** %13, align 8
  br label %166

166:                                              ; preds = %157, %154
  br label %217

167:                                              ; preds = %89
  %168 = load i32, i32* @ngx_http_core_content_phase, align 4
  store i32 %168, i32* %14, align 4
  br label %171

169:                                              ; preds = %89
  %170 = load i32, i32* @ngx_http_core_generic_phase, align 4
  store i32 %170, i32* %14, align 4
  br label %171

171:                                              ; preds = %169, %167, %150, %133, %111
  %172 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %173 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %172, i32 0, i32 0
  %174 = load %struct.TYPE_12__*, %struct.TYPE_12__** %173, align 8
  %175 = load i32, i32* %7, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %174, i64 %176
  %178 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %178, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  %181 = load i32, i32* %8, align 4
  %182 = sext i32 %181 to i64
  %183 = add i64 %182, %180
  %184 = trunc i64 %183 to i32
  store i32 %184, i32* %8, align 4
  %185 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %186 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %185, i32 0, i32 0
  %187 = load %struct.TYPE_12__*, %struct.TYPE_12__** %186, align 8
  %188 = load i32, i32* %7, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %187, i64 %189
  %191 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %191, i32 0, i32 0
  %193 = load i64, i64* %192, align 8
  %194 = sub i64 %193, 1
  store i64 %194, i64* %6, align 8
  br label %195

195:                                              ; preds = %213, %171
  %196 = load i64, i64* %6, align 8
  %197 = icmp uge i64 %196, 0
  br i1 %197, label %198, label %216

198:                                              ; preds = %195
  %199 = load i32, i32* %14, align 4
  %200 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %201 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %200, i32 0, i32 2
  store i32 %199, i32* %201, align 4
  %202 = load i32*, i32** %12, align 8
  %203 = load i64, i64* %6, align 8
  %204 = getelementptr inbounds i32, i32* %202, i64 %203
  %205 = load i32, i32* %204, align 4
  %206 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %207 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %206, i32 0, i32 1
  store i32 %205, i32* %207, align 4
  %208 = load i32, i32* %8, align 4
  %209 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %210 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %209, i32 0, i32 0
  store i32 %208, i32* %210, align 4
  %211 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %212 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %211, i32 1
  store %struct.TYPE_13__* %212, %struct.TYPE_13__** %13, align 8
  br label %213

213:                                              ; preds = %198
  %214 = load i64, i64* %6, align 8
  %215 = add i64 %214, -1
  store i64 %215, i64* %6, align 8
  br label %195

216:                                              ; preds = %195
  br label %217

217:                                              ; preds = %216, %166, %149, %113
  %218 = load i32, i32* %7, align 4
  %219 = add nsw i32 %218, 1
  store i32 %219, i32* %7, align 4
  br label %85

220:                                              ; preds = %85
  %221 = load i64, i64* @NGX_OK, align 8
  store i64 %221, i64* %3, align 8
  br label %222

222:                                              ; preds = %220, %78
  %223 = load i64, i64* %3, align 8
  ret i64 %223
}

declare dso_local %struct.TYPE_13__* @ngx_pcalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
