; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_upstream_dynamic_module/extr_ngx_http_upstream_dynamic_module.c_ngx_http_upstream_dynamic.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_upstream_dynamic_module/extr_ngx_http_upstream_dynamic_module.c_ngx_http_upstream_dynamic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i64, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32*, i64 }
%struct.TYPE_16__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_17__ = type { i32, i64, i64 }

@ngx_http_upstream_module = common dso_local global i32 0, align 4
@ngx_http_upstream_dynamic_module = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"is duplicate\00", align 1
@ngx_http_upstream_init_round_robin = common dso_local global i64 0, align 8
@ngx_http_upstream_init_dynamic = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [14 x i8] c"fail_timeout=\00", align 1
@NGX_ERROR = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [21 x i8] c"invalid fail_timeout\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"fallback=\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"next\00", align 1
@NGX_HTTP_UPSTREAM_DYN_RESOLVE_NEXT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [6 x i8] c"stale\00", align 1
@NGX_HTTP_UPSTREAM_DYN_RESOLVE_STALE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [9 x i8] c"shutdown\00", align 1
@NGX_HTTP_UPSTREAM_DYN_RESOLVE_SHUTDOWN = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [24 x i8] c"invalid fallback action\00", align 1
@NGX_CONF_OK = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_18__*, i32*, i8*)* @ngx_http_upstream_dynamic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ngx_http_upstream_dynamic(%struct.TYPE_18__* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_16__*, align 8
  %9 = alloca %struct.TYPE_17__*, align 8
  %10 = alloca %struct.TYPE_15__*, align 8
  %11 = alloca %struct.TYPE_15__, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %15 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %16 = load i32, i32* @ngx_http_upstream_module, align 4
  %17 = call %struct.TYPE_16__* @ngx_http_conf_get_module_srv_conf(%struct.TYPE_18__* %15, i32 %16)
  store %struct.TYPE_16__* %17, %struct.TYPE_16__** %8, align 8
  %18 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %19 = load i32, i32* @ngx_http_upstream_dynamic_module, align 4
  %20 = call %struct.TYPE_17__* @ngx_http_conf_upstream_srv_conf(%struct.TYPE_16__* %18, i32 %19)
  store %struct.TYPE_17__* %20, %struct.TYPE_17__** %9, align 8
  %21 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %22 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %3
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  br label %148

26:                                               ; preds = %3
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %26
  %33 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  br label %39

37:                                               ; preds = %26
  %38 = load i64, i64* @ngx_http_upstream_init_round_robin, align 8
  br label %39

39:                                               ; preds = %37, %32
  %40 = phi i64 [ %36, %32 ], [ %38, %37 ]
  %41 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %41, i32 0, i32 2
  store i64 %40, i64* %42, align 8
  %43 = load i64, i64* @ngx_http_upstream_init_dynamic, align 8
  %44 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %45, i32 0, i32 0
  store i64 %43, i64* %46, align 8
  %47 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i32 0, i32 1
  %51 = load %struct.TYPE_15__*, %struct.TYPE_15__** %50, align 8
  store %struct.TYPE_15__* %51, %struct.TYPE_15__** %10, align 8
  store i64 1, i64* %12, align 8
  br label %52

52:                                               ; preds = %143, %39
  %53 = load i64, i64* %12, align 8
  %54 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp ult i64 %53, %58
  br i1 %59, label %60, label %146

60:                                               ; preds = %52
  %61 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %62 = load i64, i64* %12, align 8
  %63 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %61, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = call i64 @ngx_strncmp(i32* %65, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 13)
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %68, label %92

68:                                               ; preds = %60
  %69 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %70 = load i64, i64* %12, align 8
  %71 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %69, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = sub nsw i64 %73, 13
  %75 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 1
  store i64 %74, i64* %75, align 8
  %76 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %77 = load i64, i64* %12, align 8
  %78 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %76, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 13
  %82 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 0
  store i32* %81, i32** %82, align 8
  %83 = call i64 @ngx_parse_time(%struct.TYPE_15__* %11, i32 1)
  store i64 %83, i64* %13, align 8
  %84 = load i64, i64* %13, align 8
  %85 = load i64, i64* @NGX_ERROR, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %88

87:                                               ; preds = %68
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i8** %4, align 8
  br label %148

88:                                               ; preds = %68
  %89 = load i64, i64* %13, align 8
  %90 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %91 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %90, i32 0, i32 1
  store i64 %89, i64* %91, align 8
  br label %143

92:                                               ; preds = %60
  %93 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %94 = load i64, i64* %12, align 8
  %95 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %93, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %95, i32 0, i32 0
  %97 = load i32*, i32** %96, align 8
  %98 = call i64 @ngx_strncmp(i32* %97, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 9)
  %99 = icmp eq i64 %98, 0
  br i1 %99, label %100, label %142

100:                                              ; preds = %92
  %101 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %102 = load i64, i64* %12, align 8
  %103 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %101, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = sub nsw i64 %105, 9
  %107 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 1
  store i64 %106, i64* %107, align 8
  %108 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %109 = load i64, i64* %12, align 8
  %110 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %108, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %110, i32 0, i32 0
  %112 = load i32*, i32** %111, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 9
  %114 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 0
  store i32* %113, i32** %114, align 8
  %115 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 0
  %116 = load i32*, i32** %115, align 8
  %117 = call i64 @ngx_strncmp(i32* %116, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 4)
  %118 = icmp eq i64 %117, 0
  br i1 %118, label %119, label %121

119:                                              ; preds = %100
  %120 = load i32, i32* @NGX_HTTP_UPSTREAM_DYN_RESOLVE_NEXT, align 4
  store i32 %120, i32* %14, align 4
  br label %138

121:                                              ; preds = %100
  %122 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 0
  %123 = load i32*, i32** %122, align 8
  %124 = call i64 @ngx_strncmp(i32* %123, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 5)
  %125 = icmp eq i64 %124, 0
  br i1 %125, label %126, label %128

126:                                              ; preds = %121
  %127 = load i32, i32* @NGX_HTTP_UPSTREAM_DYN_RESOLVE_STALE, align 4
  store i32 %127, i32* %14, align 4
  br label %137

128:                                              ; preds = %121
  %129 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 0
  %130 = load i32*, i32** %129, align 8
  %131 = call i64 @ngx_strncmp(i32* %130, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i32 8)
  %132 = icmp eq i64 %131, 0
  br i1 %132, label %133, label %135

133:                                              ; preds = %128
  %134 = load i32, i32* @NGX_HTTP_UPSTREAM_DYN_RESOLVE_SHUTDOWN, align 4
  store i32 %134, i32* %14, align 4
  br label %136

135:                                              ; preds = %128
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i8** %4, align 8
  br label %148

136:                                              ; preds = %133
  br label %137

137:                                              ; preds = %136, %126
  br label %138

138:                                              ; preds = %137, %119
  %139 = load i32, i32* %14, align 4
  %140 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %141 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %140, i32 0, i32 0
  store i32 %139, i32* %141, align 8
  br label %143

142:                                              ; preds = %92
  br label %143

143:                                              ; preds = %142, %138, %88
  %144 = load i64, i64* %12, align 8
  %145 = add i64 %144, 1
  store i64 %145, i64* %12, align 8
  br label %52

146:                                              ; preds = %52
  %147 = load i8*, i8** @NGX_CONF_OK, align 8
  store i8* %147, i8** %4, align 8
  br label %148

148:                                              ; preds = %146, %135, %87, %25
  %149 = load i8*, i8** %4, align 8
  ret i8* %149
}

declare dso_local %struct.TYPE_16__* @ngx_http_conf_get_module_srv_conf(%struct.TYPE_18__*, i32) #1

declare dso_local %struct.TYPE_17__* @ngx_http_conf_upstream_srv_conf(%struct.TYPE_16__*, i32) #1

declare dso_local i64 @ngx_strncmp(i32*, i8*, i32) #1

declare dso_local i64 @ngx_parse_time(%struct.TYPE_15__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
