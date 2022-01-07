; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_upstream_check_module/extr_ngx_http_upstream_check_module.c_ngx_http_upstream_check_add_peer.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_upstream_check_module/extr_ngx_http_upstream_check_module.c_ngx_http_upstream_check_add_peer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_34__ = type { i32, i32 }
%struct.TYPE_29__ = type { i32, i32* }
%struct.TYPE_35__ = type { %struct.TYPE_27__ }
%struct.TYPE_27__ = type { i32, i32 }
%struct.TYPE_32__ = type { i64, %struct.TYPE_35__*, %struct.TYPE_35__*, i32*, %struct.TYPE_30__* }
%struct.TYPE_30__ = type { i64, i64, i64 }
%struct.TYPE_31__ = type { i32, %struct.TYPE_28__ }
%struct.TYPE_28__ = type { i64 }
%struct.TYPE_33__ = type { %struct.TYPE_31__* }

@NGX_ERROR = common dso_local global i64 0, align 8
@ngx_http_upstream_check_module = common dso_local global i32 0, align 4
@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"http upstream check add upstream process: %ui\00", align 1
@ngx_process = common dso_local global i64 0, align 8
@NGX_PROCESS_WORKER = common dso_local global i64 0, align 8
@NGX_OK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ngx_http_upstream_check_add_peer(%struct.TYPE_34__* %0, %struct.TYPE_29__* %1, %struct.TYPE_35__* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_34__*, align 8
  %6 = alloca %struct.TYPE_29__*, align 8
  %7 = alloca %struct.TYPE_35__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_32__*, align 8
  %10 = alloca %struct.TYPE_31__*, align 8
  %11 = alloca %struct.TYPE_30__*, align 8
  %12 = alloca %struct.TYPE_33__*, align 8
  store %struct.TYPE_34__* %0, %struct.TYPE_34__** %5, align 8
  store %struct.TYPE_29__* %1, %struct.TYPE_29__** %6, align 8
  store %struct.TYPE_35__* %2, %struct.TYPE_35__** %7, align 8
  %13 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i64, i64* @NGX_ERROR, align 8
  store i64 %18, i64* %4, align 8
  br label %155

19:                                               ; preds = %3
  %20 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %21 = load i32, i32* @ngx_http_upstream_check_module, align 4
  %22 = call %struct.TYPE_30__* @ngx_http_conf_upstream_srv_conf(%struct.TYPE_29__* %20, i32 %21)
  store %struct.TYPE_30__* %22, %struct.TYPE_30__** %11, align 8
  %23 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %24 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %19
  %28 = load i64, i64* @NGX_ERROR, align 8
  store i64 %28, i64* %4, align 8
  br label %155

29:                                               ; preds = %19
  %30 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %31 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i64, i64* @ngx_process, align 8
  %35 = call i32 @ngx_log_debug1(i32 %30, i32 %33, i32 0, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i64 %34)
  %36 = load i64, i64* @ngx_process, align 8
  %37 = load i64, i64* @NGX_PROCESS_WORKER, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %46

39:                                               ; preds = %29
  %40 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %44 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %45 = call i64 @ngx_http_upstream_check_add_dynamic_peer(i32 %42, %struct.TYPE_29__* %43, %struct.TYPE_35__* %44)
  store i64 %45, i64* %4, align 8
  br label %155

46:                                               ; preds = %29
  %47 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %48 = load i32, i32* @ngx_http_upstream_check_module, align 4
  %49 = call %struct.TYPE_33__* @ngx_http_conf_get_module_main_conf(%struct.TYPE_34__* %47, i32 %48)
  store %struct.TYPE_33__* %49, %struct.TYPE_33__** %12, align 8
  %50 = load %struct.TYPE_33__*, %struct.TYPE_33__** %12, align 8
  %51 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_31__*, %struct.TYPE_31__** %51, align 8
  store %struct.TYPE_31__* %52, %struct.TYPE_31__** %10, align 8
  %53 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %54 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %68

57:                                               ; preds = %46
  %58 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  %59 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %60 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %61 = call i64 @ngx_http_upstream_check_unique_peer(%struct.TYPE_31__* %58, %struct.TYPE_35__* %59, %struct.TYPE_30__* %60)
  store i64 %61, i64* %8, align 8
  %62 = load i64, i64* %8, align 8
  %63 = load i64, i64* @NGX_ERROR, align 8
  %64 = icmp ne i64 %62, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %57
  %66 = load i64, i64* %8, align 8
  store i64 %66, i64* %4, align 8
  br label %155

67:                                               ; preds = %57
  br label %68

68:                                               ; preds = %67, %46
  %69 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  %70 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %69, i32 0, i32 1
  %71 = call %struct.TYPE_32__* @ngx_array_push(%struct.TYPE_28__* %70)
  store %struct.TYPE_32__* %71, %struct.TYPE_32__** %9, align 8
  %72 = load %struct.TYPE_32__*, %struct.TYPE_32__** %9, align 8
  %73 = icmp eq %struct.TYPE_32__* %72, null
  br i1 %73, label %74, label %76

74:                                               ; preds = %68
  %75 = load i64, i64* @NGX_ERROR, align 8
  store i64 %75, i64* %4, align 8
  br label %155

76:                                               ; preds = %68
  %77 = load %struct.TYPE_32__*, %struct.TYPE_32__** %9, align 8
  %78 = call i32 @ngx_memzero(%struct.TYPE_32__* %77, i32 40)
  %79 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  %80 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = sub nsw i64 %82, 1
  %84 = load %struct.TYPE_32__*, %struct.TYPE_32__** %9, align 8
  %85 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %84, i32 0, i32 0
  store i64 %83, i64* %85, align 8
  %86 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %87 = load %struct.TYPE_32__*, %struct.TYPE_32__** %9, align 8
  %88 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %87, i32 0, i32 4
  store %struct.TYPE_30__* %86, %struct.TYPE_30__** %88, align 8
  %89 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %89, i32 0, i32 0
  %91 = load %struct.TYPE_32__*, %struct.TYPE_32__** %9, align 8
  %92 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %91, i32 0, i32 3
  store i32* %90, i32** %92, align 8
  %93 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %94 = load %struct.TYPE_32__*, %struct.TYPE_32__** %9, align 8
  %95 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %94, i32 0, i32 1
  store %struct.TYPE_35__* %93, %struct.TYPE_35__** %95, align 8
  %96 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %97 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %130

100:                                              ; preds = %76
  %101 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call %struct.TYPE_35__* @ngx_pcalloc(i32 %103, i32 8)
  %105 = load %struct.TYPE_32__*, %struct.TYPE_32__** %9, align 8
  %106 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %105, i32 0, i32 2
  store %struct.TYPE_35__* %104, %struct.TYPE_35__** %106, align 8
  %107 = load %struct.TYPE_32__*, %struct.TYPE_32__** %9, align 8
  %108 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %107, i32 0, i32 2
  %109 = load %struct.TYPE_35__*, %struct.TYPE_35__** %108, align 8
  %110 = icmp eq %struct.TYPE_35__* %109, null
  br i1 %110, label %111, label %113

111:                                              ; preds = %100
  %112 = load i64, i64* @NGX_ERROR, align 8
  store i64 %112, i64* %4, align 8
  br label %155

113:                                              ; preds = %100
  %114 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.TYPE_32__*, %struct.TYPE_32__** %9, align 8
  %118 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %117, i32 0, i32 2
  %119 = load %struct.TYPE_35__*, %struct.TYPE_35__** %118, align 8
  %120 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %121 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %122 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = call i64 @ngx_http_upstream_check_addr_change_port(i32 %116, %struct.TYPE_35__* %119, %struct.TYPE_35__* %120, i64 %123)
  %125 = load i64, i64* @NGX_OK, align 8
  %126 = icmp ne i64 %124, %125
  br i1 %126, label %127, label %129

127:                                              ; preds = %113
  %128 = load i64, i64* @NGX_ERROR, align 8
  store i64 %128, i64* %4, align 8
  br label %155

129:                                              ; preds = %113
  br label %136

130:                                              ; preds = %76
  %131 = load %struct.TYPE_32__*, %struct.TYPE_32__** %9, align 8
  %132 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %131, i32 0, i32 1
  %133 = load %struct.TYPE_35__*, %struct.TYPE_35__** %132, align 8
  %134 = load %struct.TYPE_32__*, %struct.TYPE_32__** %9, align 8
  %135 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %134, i32 0, i32 2
  store %struct.TYPE_35__* %133, %struct.TYPE_35__** %135, align 8
  br label %136

136:                                              ; preds = %130, %129
  %137 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %138 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %142 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = call i64 @ngx_murmur_hash2(i32 %140, i32 %144)
  %146 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  %147 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = sext i32 %148 to i64
  %150 = add nsw i64 %149, %145
  %151 = trunc i64 %150 to i32
  store i32 %151, i32* %147, align 8
  %152 = load %struct.TYPE_32__*, %struct.TYPE_32__** %9, align 8
  %153 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  store i64 %154, i64* %4, align 8
  br label %155

155:                                              ; preds = %136, %127, %111, %74, %65, %39, %27, %17
  %156 = load i64, i64* %4, align 8
  ret i64 %156
}

declare dso_local %struct.TYPE_30__* @ngx_http_conf_upstream_srv_conf(%struct.TYPE_29__*, i32) #1

declare dso_local i32 @ngx_log_debug1(i32, i32, i32, i8*, i64) #1

declare dso_local i64 @ngx_http_upstream_check_add_dynamic_peer(i32, %struct.TYPE_29__*, %struct.TYPE_35__*) #1

declare dso_local %struct.TYPE_33__* @ngx_http_conf_get_module_main_conf(%struct.TYPE_34__*, i32) #1

declare dso_local i64 @ngx_http_upstream_check_unique_peer(%struct.TYPE_31__*, %struct.TYPE_35__*, %struct.TYPE_30__*) #1

declare dso_local %struct.TYPE_32__* @ngx_array_push(%struct.TYPE_28__*) #1

declare dso_local i32 @ngx_memzero(%struct.TYPE_32__*, i32) #1

declare dso_local %struct.TYPE_35__* @ngx_pcalloc(i32, i32) #1

declare dso_local i64 @ngx_http_upstream_check_addr_change_port(i32, %struct.TYPE_35__*, %struct.TYPE_35__*, i64) #1

declare dso_local i64 @ngx_murmur_hash2(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
