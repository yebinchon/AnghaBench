; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_upstream_session_sticky_module/extr_ngx_http_upstream_session_sticky_module.c_ngx_http_upstream_session_sticky_init_upstream.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_upstream_session_sticky_module/extr_ngx_http_upstream_session_sticky_module.c_ngx_http_upstream_session_sticky_init_upstream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_28__ = type { i32 }
%struct.TYPE_25__ = type { %struct.TYPE_23__ }
%struct.TYPE_23__ = type { i32, i64 }
%struct.TYPE_27__ = type { %struct.TYPE_22__, %struct.TYPE_20__, i32, i32, i32, %struct.TYPE_27__* }
%struct.TYPE_22__ = type { i64, i32 }
%struct.TYPE_20__ = type { i64, i32 }
%struct.TYPE_26__ = type { i32, %struct.TYPE_27__* }
%struct.TYPE_24__ = type { i32, i32, %struct.TYPE_19__* }
%struct.TYPE_19__ = type { %struct.TYPE_21__, i32, %struct.TYPE_27__*, i32, i32, %struct.TYPE_20__* }
%struct.TYPE_21__ = type { i64, i32 }

@NGX_OK = common dso_local global i64 0, align 8
@NGX_ERROR = common dso_local global i64 0, align 8
@ngx_http_upstream_session_sticky_module = common dso_local global i32 0, align 4
@NGX_HTTP_SESSION_STICKY_PLAIN = common dso_local global i32 0, align 4
@ngx_http_upstream_session_sticky_init_peer = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_28__*, %struct.TYPE_25__*)* @ngx_http_upstream_session_sticky_init_upstream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ngx_http_upstream_session_sticky_init_upstream(%struct.TYPE_28__* %0, %struct.TYPE_25__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_28__*, align 8
  %5 = alloca %struct.TYPE_25__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_27__*, align 8
  %9 = alloca %struct.TYPE_26__*, align 8
  %10 = alloca %struct.TYPE_24__*, align 8
  store %struct.TYPE_28__* %0, %struct.TYPE_28__** %4, align 8
  store %struct.TYPE_25__* %1, %struct.TYPE_25__** %5, align 8
  %11 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %12 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %13 = call i64 @ngx_http_upstream_init_round_robin(%struct.TYPE_28__* %11, %struct.TYPE_25__* %12)
  %14 = load i64, i64* @NGX_OK, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i64, i64* @NGX_ERROR, align 8
  store i64 %17, i64* %3, align 8
  br label %188

18:                                               ; preds = %2
  %19 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %20 = load i32, i32* @ngx_http_upstream_session_sticky_module, align 4
  %21 = call %struct.TYPE_24__* @ngx_http_conf_upstream_srv_conf(%struct.TYPE_25__* %19, i32 %20)
  store %struct.TYPE_24__* %21, %struct.TYPE_24__** %10, align 8
  %22 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %23 = icmp eq %struct.TYPE_24__* %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %18
  %25 = load i64, i64* @NGX_ERROR, align 8
  store i64 %25, i64* %3, align 8
  br label %188

26:                                               ; preds = %18
  %27 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = inttoptr i64 %30 to %struct.TYPE_26__*
  store %struct.TYPE_26__* %31, %struct.TYPE_26__** %9, align 8
  %32 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %33 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %6, align 4
  %35 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = mul i64 %39, 4
  %41 = trunc i64 %40 to i32
  %42 = call %struct.TYPE_19__* @ngx_palloc(i32 %37, i32 %41)
  %43 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %44 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %43, i32 0, i32 2
  store %struct.TYPE_19__* %42, %struct.TYPE_19__** %44, align 8
  %45 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %46 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %45, i32 0, i32 2
  %47 = load %struct.TYPE_19__*, %struct.TYPE_19__** %46, align 8
  %48 = icmp eq %struct.TYPE_19__* %47, null
  br i1 %48, label %49, label %51

49:                                               ; preds = %26
  %50 = load i64, i64* @NGX_ERROR, align 8
  store i64 %50, i64* %3, align 8
  br label %188

51:                                               ; preds = %26
  %52 = load i32, i32* %6, align 4
  %53 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %54 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 8
  %55 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %56 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %55, i32 0, i32 1
  %57 = load %struct.TYPE_27__*, %struct.TYPE_27__** %56, align 8
  store %struct.TYPE_27__* %57, %struct.TYPE_27__** %8, align 8
  store i32 0, i32* %7, align 4
  br label %58

58:                                               ; preds = %176, %51
  %59 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %60 = icmp ne %struct.TYPE_27__* %59, null
  br i1 %60, label %61, label %182

61:                                               ; preds = %58
  %62 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %62, i32 0, i32 1
  %64 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %65 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %64, i32 0, i32 2
  %66 = load %struct.TYPE_19__*, %struct.TYPE_19__** %65, align 8
  %67 = load i32, i32* %7, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %69, i32 0, i32 5
  store %struct.TYPE_20__* %63, %struct.TYPE_20__** %70, align 8
  %71 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %71, i32 0, i32 4
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %75 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %74, i32 0, i32 2
  %76 = load %struct.TYPE_19__*, %struct.TYPE_19__** %75, align 8
  %77 = load i32, i32* %7, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %79, i32 0, i32 4
  store i32 %73, i32* %80, align 4
  %81 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %82 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %85 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %84, i32 0, i32 2
  %86 = load %struct.TYPE_19__*, %struct.TYPE_19__** %85, align 8
  %87 = load i32, i32* %7, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %86, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %89, i32 0, i32 3
  store i32 %83, i32* %90, align 8
  %91 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %92 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %93 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %92, i32 0, i32 2
  %94 = load %struct.TYPE_19__*, %struct.TYPE_19__** %93, align 8
  %95 = load i32, i32* %7, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %94, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %97, i32 0, i32 2
  store %struct.TYPE_27__* %91, %struct.TYPE_27__** %98, align 8
  %99 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %100 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @NGX_HTTP_SESSION_STICKY_PLAIN, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %161

105:                                              ; preds = %61
  %106 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %107 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = icmp eq i64 %109, 0
  br i1 %110, label %111, label %136

111:                                              ; preds = %105
  %112 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %113 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %117 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %116, i32 0, i32 2
  %118 = load %struct.TYPE_19__*, %struct.TYPE_19__** %117, align 8
  %119 = load i32, i32* %7, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %118, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %122, i32 0, i32 1
  store i32 %115, i32* %123, align 8
  %124 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %125 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %129 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %128, i32 0, i32 2
  %130 = load %struct.TYPE_19__*, %struct.TYPE_19__** %129, align 8
  %131 = load i32, i32* %7, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %130, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %134, i32 0, i32 0
  store i64 %127, i64* %135, align 8
  br label %176

136:                                              ; preds = %105
  %137 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %138 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 8
  %141 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %142 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %141, i32 0, i32 2
  %143 = load %struct.TYPE_19__*, %struct.TYPE_19__** %142, align 8
  %144 = load i32, i32* %7, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %143, i64 %145
  %147 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %147, i32 0, i32 1
  store i32 %140, i32* %148, align 8
  %149 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %150 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %154 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %153, i32 0, i32 2
  %155 = load %struct.TYPE_19__*, %struct.TYPE_19__** %154, align 8
  %156 = load i32, i32* %7, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %155, i64 %157
  %159 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %159, i32 0, i32 0
  store i64 %152, i64* %160, align 8
  br label %175

161:                                              ; preds = %61
  %162 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %163 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %164 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %163, i32 0, i32 2
  %165 = load %struct.TYPE_19__*, %struct.TYPE_19__** %164, align 8
  %166 = load i32, i32* %7, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %165, i64 %167
  %169 = call i64 @ngx_http_upstream_session_sticky_set_sid(%struct.TYPE_28__* %162, %struct.TYPE_19__* %168)
  %170 = load i64, i64* @NGX_OK, align 8
  %171 = icmp ne i64 %169, %170
  br i1 %171, label %172, label %174

172:                                              ; preds = %161
  %173 = load i64, i64* @NGX_ERROR, align 8
  store i64 %173, i64* %3, align 8
  br label %188

174:                                              ; preds = %161
  br label %175

175:                                              ; preds = %174, %136
  br label %176

176:                                              ; preds = %175, %111
  %177 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %178 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %177, i32 0, i32 5
  %179 = load %struct.TYPE_27__*, %struct.TYPE_27__** %178, align 8
  store %struct.TYPE_27__* %179, %struct.TYPE_27__** %8, align 8
  %180 = load i32, i32* %7, align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %7, align 4
  br label %58

182:                                              ; preds = %58
  %183 = load i32, i32* @ngx_http_upstream_session_sticky_init_peer, align 4
  %184 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %185 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %185, i32 0, i32 0
  store i32 %183, i32* %186, align 8
  %187 = load i64, i64* @NGX_OK, align 8
  store i64 %187, i64* %3, align 8
  br label %188

188:                                              ; preds = %182, %172, %49, %24, %16
  %189 = load i64, i64* %3, align 8
  ret i64 %189
}

declare dso_local i64 @ngx_http_upstream_init_round_robin(%struct.TYPE_28__*, %struct.TYPE_25__*) #1

declare dso_local %struct.TYPE_24__* @ngx_http_conf_upstream_srv_conf(%struct.TYPE_25__*, i32) #1

declare dso_local %struct.TYPE_19__* @ngx_palloc(i32, i32) #1

declare dso_local i64 @ngx_http_upstream_session_sticky_set_sid(%struct.TYPE_28__*, %struct.TYPE_19__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
