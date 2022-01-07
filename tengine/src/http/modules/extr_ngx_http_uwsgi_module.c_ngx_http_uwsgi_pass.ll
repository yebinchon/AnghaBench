; ModuleID = '/home/carl/AnghaBench/tengine/src/http/modules/extr_ngx_http_uwsgi_module.c_ngx_http_uwsgi_pass.c'
source_filename = "/home/carl/AnghaBench/tengine/src/http/modules/extr_ngx_http_uwsgi_module.c_ngx_http_uwsgi_pass.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { %struct.TYPE_21__* }
%struct.TYPE_21__ = type { %struct.TYPE_26__* }
%struct.TYPE_26__ = type { i64, i64 }
%struct.TYPE_27__ = type { i32, %struct.TYPE_23__, i32, i64 }
%struct.TYPE_23__ = type { i32* }
%struct.TYPE_25__ = type { i32, i32, i32, %struct.TYPE_22__, i64, i32*, i64*, %struct.TYPE_26__*, %struct.TYPE_20__* }
%struct.TYPE_22__ = type { i64, i64 }
%struct.TYPE_28__ = type { i32, %struct.TYPE_24__, i32 }
%struct.TYPE_24__ = type { i32, i8* }

@.str = private unnamed_addr constant [13 x i8] c"is duplicate\00", align 1
@ngx_http_core_module = common dso_local global i32 0, align 4
@ngx_http_uwsgi_handler = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i64 0, align 8
@NGX_CONF_ERROR = common dso_local global i8* null, align 8
@NGX_CONF_OK = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"uwsgi://\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"suwsgi://\00", align 1
@NGX_LOG_EMERG = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [37 x i8] c"suwsgi protocol requires SSL support\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_20__*, i32*, i8*)* @ngx_http_uwsgi_pass to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ngx_http_uwsgi_pass(%struct.TYPE_20__* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_27__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_25__, align 8
  %11 = alloca %struct.TYPE_26__*, align 8
  %12 = alloca %struct.TYPE_26__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_28__*, align 8
  %15 = alloca %struct.TYPE_25__, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = bitcast i8* %16 to %struct.TYPE_27__*
  store %struct.TYPE_27__* %17, %struct.TYPE_27__** %8, align 8
  %18 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %28, label %23

23:                                               ; preds = %3
  %24 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %24, i32 0, i32 3
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %23, %3
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  br label %145

29:                                               ; preds = %23
  %30 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %31 = load i32, i32* @ngx_http_core_module, align 4
  %32 = call %struct.TYPE_28__* @ngx_http_conf_get_module_loc_conf(%struct.TYPE_20__* %30, i32 %31)
  store %struct.TYPE_28__* %32, %struct.TYPE_28__** %14, align 8
  %33 = load i32, i32* @ngx_http_uwsgi_handler, align 4
  %34 = load %struct.TYPE_28__*, %struct.TYPE_28__** %14, align 8
  %35 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 8
  %36 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_21__*, %struct.TYPE_21__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_26__*, %struct.TYPE_26__** %39, align 8
  store %struct.TYPE_26__* %40, %struct.TYPE_26__** %11, align 8
  %41 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %42 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %41, i64 1
  store %struct.TYPE_26__* %42, %struct.TYPE_26__** %12, align 8
  %43 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %44 = call i64 @ngx_http_script_variables_count(%struct.TYPE_26__* %43)
  store i64 %44, i64* %13, align 8
  %45 = load i64, i64* %13, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %70

47:                                               ; preds = %29
  %48 = call i32 @ngx_memzero(%struct.TYPE_25__* %15, i32 72)
  %49 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %15, i32 0, i32 8
  store %struct.TYPE_20__* %49, %struct.TYPE_20__** %50, align 8
  %51 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %52 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %15, i32 0, i32 7
  store %struct.TYPE_26__* %51, %struct.TYPE_26__** %52, align 8
  %53 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %53, i32 0, i32 3
  %55 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %15, i32 0, i32 6
  store i64* %54, i64** %55, align 8
  %56 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %15, i32 0, i32 5
  store i32* %57, i32** %58, align 8
  %59 = load i64, i64* %13, align 8
  %60 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %15, i32 0, i32 4
  store i64 %59, i64* %60, align 8
  %61 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %15, i32 0, i32 0
  store i32 1, i32* %61, align 8
  %62 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %15, i32 0, i32 1
  store i32 1, i32* %62, align 4
  %63 = call i64 @ngx_http_script_compile(%struct.TYPE_25__* %15)
  %64 = load i64, i64* @NGX_OK, align 8
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %47
  %67 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %67, i8** %4, align 8
  br label %145

68:                                               ; preds = %47
  %69 = load i8*, i8** @NGX_CONF_OK, align 8
  store i8* %69, i8** %4, align 8
  br label %145

70:                                               ; preds = %29
  %71 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %72 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = call i64 @ngx_strncasecmp(i64 %73, i32* bitcast ([9 x i8]* @.str.1 to i32*), i32 8)
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %70
  store i64 8, i64* %9, align 8
  br label %90

77:                                               ; preds = %70
  %78 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %79 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = call i64 @ngx_strncasecmp(i64 %80, i32* bitcast ([10 x i8]* @.str.2 to i32*), i32 9)
  %82 = icmp eq i64 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %77
  %84 = load i32, i32* @NGX_LOG_EMERG, align 4
  %85 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %86 = call i32 @ngx_conf_log_error(i32 %84, %struct.TYPE_20__* %85, i32 0, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  %87 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %87, i8** %4, align 8
  br label %145

88:                                               ; preds = %77
  store i64 0, i64* %9, align 8
  br label %89

89:                                               ; preds = %88
  br label %90

90:                                               ; preds = %89, %76
  %91 = call i32 @ngx_memzero(%struct.TYPE_25__* %10, i32 72)
  %92 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %93 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* %9, align 8
  %96 = sub i64 %94, %95
  %97 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %10, i32 0, i32 3
  %98 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %97, i32 0, i32 1
  store i64 %96, i64* %98, align 8
  %99 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %100 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* %9, align 8
  %103 = add i64 %101, %102
  %104 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %10, i32 0, i32 3
  %105 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %104, i32 0, i32 0
  store i64 %103, i64* %105, align 8
  %106 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %10, i32 0, i32 2
  store i32 1, i32* %106, align 8
  %107 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %108 = call i32* @ngx_http_upstream_add(%struct.TYPE_20__* %107, %struct.TYPE_25__* %10, i32 0)
  %109 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %110 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %110, i32 0, i32 0
  store i32* %108, i32** %111, align 8
  %112 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %113 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %113, i32 0, i32 0
  %115 = load i32*, i32** %114, align 8
  %116 = icmp eq i32* %115, null
  br i1 %116, label %117, label %119

117:                                              ; preds = %90
  %118 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %118, i8** %4, align 8
  br label %145

119:                                              ; preds = %90
  %120 = load %struct.TYPE_28__*, %struct.TYPE_28__** %14, align 8
  %121 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %143

125:                                              ; preds = %119
  %126 = load %struct.TYPE_28__*, %struct.TYPE_28__** %14, align 8
  %127 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %127, i32 0, i32 1
  %129 = load i8*, i8** %128, align 8
  %130 = load %struct.TYPE_28__*, %struct.TYPE_28__** %14, align 8
  %131 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = sub nsw i32 %133, 1
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i8, i8* %129, i64 %135
  %137 = load i8, i8* %136, align 1
  %138 = sext i8 %137 to i32
  %139 = icmp eq i32 %138, 47
  br i1 %139, label %140, label %143

140:                                              ; preds = %125
  %141 = load %struct.TYPE_28__*, %struct.TYPE_28__** %14, align 8
  %142 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %141, i32 0, i32 0
  store i32 1, i32* %142, align 8
  br label %143

143:                                              ; preds = %140, %125, %119
  %144 = load i8*, i8** @NGX_CONF_OK, align 8
  store i8* %144, i8** %4, align 8
  br label %145

145:                                              ; preds = %143, %117, %83, %68, %66, %28
  %146 = load i8*, i8** %4, align 8
  ret i8* %146
}

declare dso_local %struct.TYPE_28__* @ngx_http_conf_get_module_loc_conf(%struct.TYPE_20__*, i32) #1

declare dso_local i64 @ngx_http_script_variables_count(%struct.TYPE_26__*) #1

declare dso_local i32 @ngx_memzero(%struct.TYPE_25__*, i32) #1

declare dso_local i64 @ngx_http_script_compile(%struct.TYPE_25__*) #1

declare dso_local i64 @ngx_strncasecmp(i64, i32*, i32) #1

declare dso_local i32 @ngx_conf_log_error(i32, %struct.TYPE_20__*, i32, i8*) #1

declare dso_local i32* @ngx_http_upstream_add(%struct.TYPE_20__*, %struct.TYPE_25__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
