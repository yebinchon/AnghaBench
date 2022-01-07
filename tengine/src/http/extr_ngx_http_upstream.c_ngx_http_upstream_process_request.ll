; ModuleID = '/home/carl/AnghaBench/tengine/src/http/extr_ngx_http_upstream.c_ngx_http_upstream_process_request.c'
source_filename = "/home/carl/AnghaBench/tengine/src/http/extr_ngx_http_upstream.c_ngx_http_upstream_process_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { %struct.TYPE_21__*, %struct.TYPE_19__* }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_19__ = type { i64 }
%struct.TYPE_24__ = type { %struct.TYPE_22__, i64, i64, %struct.TYPE_20__, %struct.TYPE_26__* }
%struct.TYPE_22__ = type { i64 }
%struct.TYPE_20__ = type { i64, i32 }
%struct.TYPE_26__ = type { i32, i64, i64, i64, i32, i64, %struct.TYPE_23__*, i64, i32 }
%struct.TYPE_23__ = type { i32 }

@NGX_HTTP_OK = common dso_local global i64 0, align 8
@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"http upstream exit: %p\00", align 1
@NGX_LOG_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"upstream prematurely closed connection\00", align 1
@NGX_HTTP_BAD_GATEWAY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"http upstream downstream error\00", align 1
@NGX_ERROR = common dso_local global i32 0, align 4
@NGX_ABORT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_25__*, %struct.TYPE_24__*)* @ngx_http_upstream_process_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ngx_http_upstream_process_request(%struct.TYPE_25__* %0, %struct.TYPE_24__* %1) #0 {
  %3 = alloca %struct.TYPE_25__*, align 8
  %4 = alloca %struct.TYPE_24__*, align 8
  %5 = alloca %struct.TYPE_23__*, align 8
  %6 = alloca %struct.TYPE_26__*, align 8
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %3, align 8
  store %struct.TYPE_24__* %1, %struct.TYPE_24__** %4, align 8
  %7 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %7, i32 0, i32 4
  %9 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  store %struct.TYPE_26__* %9, %struct.TYPE_26__** %6, align 8
  %10 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %134

15:                                               ; preds = %2
  %16 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %71

20:                                               ; preds = %15
  %21 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %20
  %26 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %26, i32 0, i32 3
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %70

30:                                               ; preds = %25, %20
  %31 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %31, i32 0, i32 6
  %33 = load %struct.TYPE_23__*, %struct.TYPE_23__** %32, align 8
  store %struct.TYPE_23__* %33, %struct.TYPE_23__** %5, align 8
  %34 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %34, i32 0, i32 3
  %36 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @NGX_HTTP_OK, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %69

40:                                               ; preds = %30
  %41 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %41, i32 0, i32 3
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %50, label %45

45:                                               ; preds = %40
  %46 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp eq i32 %48, -1
  br i1 %49, label %50, label %69

50:                                               ; preds = %45, %40
  %51 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %51, i32 0, i32 3
  %53 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = icmp eq i32 %54, -1
  br i1 %55, label %65, label %56

56:                                               ; preds = %50
  %57 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %57, i32 0, i32 3
  %59 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = icmp eq i32 %60, %63
  br i1 %64, label %65, label %69

65:                                               ; preds = %56, %50
  %66 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %67 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %68 = call i32 @ngx_http_upstream_store(%struct.TYPE_25__* %66, %struct.TYPE_24__* %67)
  br label %69

69:                                               ; preds = %65, %56, %45, %30
  br label %70

70:                                               ; preds = %69, %25
  br label %71

71:                                               ; preds = %70, %15
  %72 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %72, i32 0, i32 3
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %86, label %76

76:                                               ; preds = %71
  %77 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %86, label %81

81:                                               ; preds = %76
  %82 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %82, i32 0, i32 5
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %133

86:                                               ; preds = %81, %76, %71
  %87 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %88 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %88, i32 0, i32 0
  %90 = load %struct.TYPE_21__*, %struct.TYPE_21__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %93, i32 0, i32 4
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @ngx_log_debug1(i32 %87, i32 %92, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %95)
  %97 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %97, i32 0, i32 3
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %111, label %101

101:                                              ; preds = %86
  %102 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %102, i32 0, i32 2
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %115

106:                                              ; preds = %101
  %107 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = icmp eq i32 %109, -1
  br i1 %110, label %111, label %115

111:                                              ; preds = %106, %86
  %112 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %113 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %114 = call i32 @ngx_http_upstream_finalize_request(%struct.TYPE_25__* %112, %struct.TYPE_24__* %113, i32 0)
  br label %168

115:                                              ; preds = %106, %101
  %116 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %117 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %116, i32 0, i32 2
  %118 = load i64, i64* %117, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %128

120:                                              ; preds = %115
  %121 = load i32, i32* @NGX_LOG_ERR, align 4
  %122 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %123 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %122, i32 0, i32 0
  %124 = load %struct.TYPE_21__*, %struct.TYPE_21__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @ngx_log_error(i32 %121, i32 %126, i32 0, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  br label %128

128:                                              ; preds = %120, %115
  %129 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %130 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %131 = load i32, i32* @NGX_HTTP_BAD_GATEWAY, align 4
  %132 = call i32 @ngx_http_upstream_finalize_request(%struct.TYPE_25__* %129, %struct.TYPE_24__* %130, i32 %131)
  br label %168

133:                                              ; preds = %81
  br label %134

134:                                              ; preds = %133, %2
  %135 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %136 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %135, i32 0, i32 1
  %137 = load i64, i64* %136, align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %168

139:                                              ; preds = %134
  %140 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %141 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %142 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %141, i32 0, i32 0
  %143 = load %struct.TYPE_21__*, %struct.TYPE_21__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @ngx_log_debug0(i32 %140, i32 %145, i32 0, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %147 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %148 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %147, i32 0, i32 2
  %149 = load i64, i64* %148, align 8
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %167, label %151

151:                                              ; preds = %139
  %152 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %153 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %152, i32 0, i32 1
  %154 = load i64, i64* %153, align 8
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %167, label %156

156:                                              ; preds = %151
  %157 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %158 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %167

162:                                              ; preds = %156
  %163 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %164 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %165 = load i32, i32* @NGX_ERROR, align 4
  %166 = call i32 @ngx_http_upstream_finalize_request(%struct.TYPE_25__* %163, %struct.TYPE_24__* %164, i32 %165)
  br label %167

167:                                              ; preds = %162, %156, %151, %139
  br label %168

168:                                              ; preds = %111, %128, %167, %134
  ret void
}

declare dso_local i32 @ngx_http_upstream_store(%struct.TYPE_25__*, %struct.TYPE_24__*) #1

declare dso_local i32 @ngx_log_debug1(i32, i32, i32, i8*, i32) #1

declare dso_local i32 @ngx_http_upstream_finalize_request(%struct.TYPE_25__*, %struct.TYPE_24__*, i32) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*) #1

declare dso_local i32 @ngx_log_debug0(i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
