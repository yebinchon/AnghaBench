; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_upstream_dyups_module/extr_ngx_http_dyups_module.c_ngx_http_dyups_init.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_upstream_dyups_module/extr_ngx_http_dyups_module.c_ngx_http_dyups_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i64 }
%struct.TYPE_26__ = type { i32, i64, i32, i32, i32*, i32, i32, i32, i64, i32, i32*, i32, i32*, %struct.TYPE_27__*, i64, i32* }
%struct.TYPE_27__ = type { i64, i32, %struct.TYPE_29__**, i64 }
%struct.TYPE_29__ = type { i32 }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_22__ = type { i32, i64 }
%struct.TYPE_30__ = type { i32, i32 }
%struct.TYPE_28__ = type { %struct.TYPE_24__ }
%struct.TYPE_24__ = type { i64, %struct.TYPE_27__** }
%struct.TYPE_31__ = type { i32 }

@ngx_http_dyups_module = common dso_local global %struct.TYPE_23__ zeroinitializer, align 8
@ngx_http_upstream_module = common dso_local global %struct.TYPE_23__ zeroinitializer, align 8
@NGX_OK = common dso_local global i64 0, align 8
@NGX_ERROR = common dso_local global i64 0, align 8
@NGX_HTTP_UPSTREAM_CREATE = common dso_local global i32 0, align 4
@ngx_http_dyups_deleted_upstream = common dso_local global %struct.TYPE_26__ zeroinitializer, align 8
@.str = private unnamed_addr constant [8 x i8] c"0.0.0.0\00", align 1
@NGX_LOG_ALERT = common dso_local global i32 0, align 4
@ngx_cycle = common dso_local global %struct.TYPE_25__* null, align 8
@.str.1 = private unnamed_addr constant [19 x i8] c"[dyups] %s in init\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"_dyups_upstream_down_host_\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"dyups_upstream\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_22__*)* @ngx_http_dyups_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ngx_http_dyups_init(%struct.TYPE_22__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_22__*, align 8
  %4 = alloca %struct.TYPE_26__, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_26__*, align 8
  %7 = alloca %struct.TYPE_26__*, align 8
  %8 = alloca %struct.TYPE_30__*, align 8
  %9 = alloca %struct.TYPE_27__**, align 8
  %10 = alloca %struct.TYPE_28__*, align 8
  %11 = alloca %struct.TYPE_29__*, align 8
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %3, align 8
  %12 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %13 = load i64, i64* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @ngx_http_dyups_module, i32 0, i32 0), align 8
  %14 = call i8* @ngx_http_conf_get_module_main_conf(%struct.TYPE_22__* %12, i64 %13)
  %15 = bitcast i8* %14 to %struct.TYPE_30__*
  store %struct.TYPE_30__* %15, %struct.TYPE_30__** %8, align 8
  %16 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %17 = load i64, i64* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @ngx_http_upstream_module, i32 0, i32 0), align 8
  %18 = call i8* @ngx_http_conf_get_module_main_conf(%struct.TYPE_22__* %16, i64 %17)
  %19 = bitcast i8* %18 to %struct.TYPE_28__*
  store %struct.TYPE_28__* %19, %struct.TYPE_28__** %10, align 8
  %20 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %1
  %25 = load i64, i64* @NGX_OK, align 8
  store i64 %25, i64* %2, align 8
  br label %179

26:                                               ; preds = %1
  %27 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %28 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_27__**, %struct.TYPE_27__*** %29, align 8
  store %struct.TYPE_27__** %30, %struct.TYPE_27__*** %9, align 8
  store i64 0, i64* %5, align 8
  br label %31

31:                                               ; preds = %118, %26
  %32 = load i64, i64* %5, align 8
  %33 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %34 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ult i64 %32, %36
  br i1 %37, label %38, label %121

38:                                               ; preds = %31
  %39 = load %struct.TYPE_30__*, %struct.TYPE_30__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %39, i32 0, i32 0
  %41 = call %struct.TYPE_26__* @ngx_array_push(i32* %40)
  store %struct.TYPE_26__* %41, %struct.TYPE_26__** %6, align 8
  %42 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %43 = icmp eq %struct.TYPE_26__* %42, null
  br i1 %43, label %44, label %46

44:                                               ; preds = %38
  %45 = load i64, i64* @NGX_ERROR, align 8
  store i64 %45, i64* %2, align 8
  br label %179

46:                                               ; preds = %38
  %47 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %48 = call i32 @ngx_memzero(%struct.TYPE_26__* %47, i32 112)
  %49 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %49, i32 0, i32 15
  store i32* null, i32** %50, align 8
  %51 = load %struct.TYPE_27__**, %struct.TYPE_27__*** %9, align 8
  %52 = load i64, i64* %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_27__*, %struct.TYPE_27__** %51, i64 %52
  %54 = load %struct.TYPE_27__*, %struct.TYPE_27__** %53, align 8
  %55 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %55, i32 0, i32 13
  store %struct.TYPE_27__* %54, %struct.TYPE_27__** %56, align 8
  %57 = load %struct.TYPE_27__**, %struct.TYPE_27__*** %9, align 8
  %58 = load i64, i64* %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_27__*, %struct.TYPE_27__** %57, i64 %58
  %60 = load %struct.TYPE_27__*, %struct.TYPE_27__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %90

64:                                               ; preds = %46
  %65 = load %struct.TYPE_27__**, %struct.TYPE_27__*** %9, align 8
  %66 = load i64, i64* %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_27__*, %struct.TYPE_27__** %65, i64 %66
  %68 = load %struct.TYPE_27__*, %struct.TYPE_27__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %68, i32 0, i32 2
  %70 = load %struct.TYPE_29__**, %struct.TYPE_29__*** %69, align 8
  %71 = icmp ne %struct.TYPE_29__** %70, null
  br i1 %71, label %72, label %90

72:                                               ; preds = %64
  %73 = load %struct.TYPE_27__**, %struct.TYPE_27__*** %9, align 8
  %74 = load i64, i64* %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_27__*, %struct.TYPE_27__** %73, i64 %74
  %76 = load %struct.TYPE_27__*, %struct.TYPE_27__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %76, i32 0, i32 3
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %90

80:                                               ; preds = %72
  %81 = load %struct.TYPE_27__**, %struct.TYPE_27__*** %9, align 8
  %82 = load i64, i64* %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_27__*, %struct.TYPE_27__** %81, i64 %82
  %84 = load %struct.TYPE_27__*, %struct.TYPE_27__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @NGX_HTTP_UPSTREAM_CREATE, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br label %90

90:                                               ; preds = %80, %72, %64, %46
  %91 = phi i1 [ false, %72 ], [ false, %64 ], [ false, %46 ], [ %89, %80 ]
  %92 = zext i1 %91 to i32
  %93 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %93, i32 0, i32 0
  store i32 %92, i32* %94, align 8
  %95 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %95, i32 0, i32 14
  store i64 0, i64* %96, align 8
  %97 = load i64, i64* %5, align 8
  %98 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %98, i32 0, i32 1
  store i64 %97, i64* %99, align 8
  %100 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %117

104:                                              ; preds = %90
  %105 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %105, i32 0, i32 13
  %107 = load %struct.TYPE_27__*, %struct.TYPE_27__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %107, i32 0, i32 2
  %109 = load %struct.TYPE_29__**, %struct.TYPE_29__*** %108, align 8
  %110 = load i64, i64* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @ngx_http_dyups_module, i32 0, i32 0), align 8
  %111 = getelementptr inbounds %struct.TYPE_29__*, %struct.TYPE_29__** %109, i64 %110
  %112 = load %struct.TYPE_29__*, %struct.TYPE_29__** %111, align 8
  store %struct.TYPE_29__* %112, %struct.TYPE_29__** %11, align 8
  %113 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %114 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %113, i32 0, i32 0
  %115 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %116 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %115, i32 0, i32 12
  store i32* %114, i32** %116, align 8
  br label %117

117:                                              ; preds = %104, %90
  br label %118

118:                                              ; preds = %117
  %119 = load i64, i64* %5, align 8
  %120 = add i64 %119, 1
  store i64 %120, i64* %5, align 8
  br label %31

121:                                              ; preds = %31
  %122 = call i32 @ngx_memzero(%struct.TYPE_26__* @ngx_http_dyups_deleted_upstream, i32 32)
  %123 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %124 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %123, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = inttoptr i64 %125 to %struct.TYPE_31__*
  %127 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  store i32 %128, i32* getelementptr inbounds (%struct.TYPE_26__, %struct.TYPE_26__* @ngx_http_dyups_deleted_upstream, i32 0, i32 11), align 8
  %129 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %130 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = call i32* @ngx_array_create(i32 %131, i32 1, i32 112)
  store i32* %132, i32** getelementptr inbounds (%struct.TYPE_26__, %struct.TYPE_26__* @ngx_http_dyups_deleted_upstream, i32 0, i32 10), align 8
  %133 = load i32*, i32** getelementptr inbounds (%struct.TYPE_26__, %struct.TYPE_26__* @ngx_http_dyups_deleted_upstream, i32 0, i32 10), align 8
  %134 = call %struct.TYPE_26__* @ngx_array_push(i32* %133)
  store %struct.TYPE_26__* %134, %struct.TYPE_26__** %7, align 8
  %135 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %136 = icmp eq %struct.TYPE_26__* %135, null
  br i1 %136, label %137, label %139

137:                                              ; preds = %121
  %138 = load i64, i64* @NGX_ERROR, align 8
  store i64 %138, i64* %2, align 8
  br label %179

139:                                              ; preds = %121
  %140 = call i32 @ngx_memzero(%struct.TYPE_26__* %4, i32 112)
  %141 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %142 = call i32 @ngx_memzero(%struct.TYPE_26__* %141, i32 112)
  %143 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %4, i32 0, i32 2
  store i32 80, i32* %143, align 8
  %144 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %4, i32 0, i32 9
  %145 = call i32 @ngx_str_set(i32* %144, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %146 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %147 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = call i64 @ngx_parse_url(i32 %148, %struct.TYPE_26__* %4)
  %150 = load i64, i64* @NGX_OK, align 8
  %151 = icmp ne i64 %149, %150
  br i1 %151, label %152, label %166

152:                                              ; preds = %139
  %153 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %4, i32 0, i32 8
  %154 = load i64, i64* %153, align 8
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %164

156:                                              ; preds = %152
  %157 = load i32, i32* @NGX_LOG_ALERT, align 4
  %158 = load %struct.TYPE_25__*, %struct.TYPE_25__** @ngx_cycle, align 8
  %159 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %4, i32 0, i32 8
  %162 = load i64, i64* %161, align 8
  %163 = call i32 @ngx_log_error(i32 %157, i32 %160, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i64 %162)
  br label %164

164:                                              ; preds = %156, %152
  %165 = load i64, i64* @NGX_ERROR, align 8
  store i64 %165, i64* %2, align 8
  br label %179

166:                                              ; preds = %139
  %167 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %4, i32 0, i32 7
  %168 = load i32, i32* %167, align 8
  %169 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %170 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %169, i32 0, i32 7
  store i32 %168, i32* %170, align 8
  %171 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %4, i32 0, i32 6
  %172 = load i32, i32* %171, align 4
  %173 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %174 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %173, i32 0, i32 6
  store i32 %172, i32* %174, align 4
  %175 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %176 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %175, i32 0, i32 3
  store i32 1, i32* %176, align 4
  %177 = call i32 @ngx_str_set(i32* getelementptr inbounds (%struct.TYPE_26__, %struct.TYPE_26__* @ngx_http_dyups_deleted_upstream, i32 0, i32 5), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  store i32* bitcast ([15 x i8]* @.str.3 to i32*), i32** getelementptr inbounds (%struct.TYPE_26__, %struct.TYPE_26__* @ngx_http_dyups_deleted_upstream, i32 0, i32 4), align 8
  %178 = load i64, i64* @NGX_OK, align 8
  store i64 %178, i64* %2, align 8
  br label %179

179:                                              ; preds = %166, %164, %137, %44, %24
  %180 = load i64, i64* %2, align 8
  ret i64 %180
}

declare dso_local i8* @ngx_http_conf_get_module_main_conf(%struct.TYPE_22__*, i64) #1

declare dso_local %struct.TYPE_26__* @ngx_array_push(i32*) #1

declare dso_local i32 @ngx_memzero(%struct.TYPE_26__*, i32) #1

declare dso_local i32* @ngx_array_create(i32, i32, i32) #1

declare dso_local i32 @ngx_str_set(i32*, i8*) #1

declare dso_local i64 @ngx_parse_url(i32, %struct.TYPE_26__*) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
