; ModuleID = '/home/carl/AnghaBench/tengine/src/http/modules/extr_ngx_http_rewrite_module.c_ngx_http_rewrite_set.c'
source_filename = "/home/carl/AnghaBench/tengine/src/http/modules/extr_ngx_http_rewrite_module.c_ngx_http_rewrite_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i32, %struct.TYPE_19__* }
%struct.TYPE_19__ = type { %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i8*, i32 }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_21__ = type { i64, i64, i32* }
%struct.TYPE_23__ = type { i64, i32 }
%struct.TYPE_22__ = type { i64, i64, i32 }

@NGX_LOG_EMERG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"invalid variable name \22%V\22\00", align 1
@NGX_CONF_ERROR = common dso_local global i8* null, align 8
@NGX_HTTP_VAR_CHANGEABLE = common dso_local global i32 0, align 4
@NGX_HTTP_VAR_WEAK = common dso_local global i32 0, align 4
@NGX_ERROR = common dso_local global i64 0, align 8
@ngx_http_rewrite_var = common dso_local global i32* null, align 8
@NGX_CONF_OK = common dso_local global i64 0, align 8
@ngx_http_script_var_set_handler_code = common dso_local global i32 0, align 4
@ngx_http_script_set_var_code = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_25__*, i32*, i8*)* @ngx_http_rewrite_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ngx_http_rewrite_set(%struct.TYPE_25__* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_25__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_24__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_20__*, align 8
  %11 = alloca %struct.TYPE_21__*, align 8
  %12 = alloca %struct.TYPE_23__*, align 8
  %13 = alloca %struct.TYPE_22__*, align 8
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = bitcast i8* %14 to %struct.TYPE_24__*
  store %struct.TYPE_24__* %15, %struct.TYPE_24__** %8, align 8
  %16 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_20__*, %struct.TYPE_20__** %19, align 8
  store %struct.TYPE_20__* %20, %struct.TYPE_20__** %10, align 8
  %21 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %22 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %21, i64 1
  %23 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 0
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp ne i32 %27, 36
  br i1 %28, label %29, label %36

29:                                               ; preds = %3
  %30 = load i32, i32* @NGX_LOG_EMERG, align 4
  %31 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %32 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %33 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %32, i64 1
  %34 = call i32 @ngx_conf_log_error(i32 %30, %struct.TYPE_25__* %31, i32 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), %struct.TYPE_20__* %33)
  %35 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %35, i8** %4, align 8
  br label %144

36:                                               ; preds = %3
  %37 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %38 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %37, i64 1
  %39 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = add nsw i32 %40, -1
  store i32 %41, i32* %39, align 8
  %42 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %43 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %42, i64 1
  %44 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  %46 = getelementptr inbounds i8, i8* %45, i32 1
  store i8* %46, i8** %44, align 8
  %47 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %48 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %49 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %48, i64 1
  %50 = load i32, i32* @NGX_HTTP_VAR_CHANGEABLE, align 4
  %51 = load i32, i32* @NGX_HTTP_VAR_WEAK, align 4
  %52 = or i32 %50, %51
  %53 = call %struct.TYPE_21__* @ngx_http_add_variable(%struct.TYPE_25__* %47, %struct.TYPE_20__* %49, i32 %52)
  store %struct.TYPE_21__* %53, %struct.TYPE_21__** %11, align 8
  %54 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %55 = icmp eq %struct.TYPE_21__* %54, null
  br i1 %55, label %56, label %58

56:                                               ; preds = %36
  %57 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %57, i8** %4, align 8
  br label %144

58:                                               ; preds = %36
  %59 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %60 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %61 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %60, i64 1
  %62 = call i64 @ngx_http_get_variable_index(%struct.TYPE_25__* %59, %struct.TYPE_20__* %61)
  store i64 %62, i64* %9, align 8
  %63 = load i64, i64* %9, align 8
  %64 = load i64, i64* @NGX_ERROR, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %58
  %67 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %67, i8** %4, align 8
  br label %144

68:                                               ; preds = %58
  %69 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %70 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %69, i32 0, i32 2
  %71 = load i32*, i32** %70, align 8
  %72 = icmp eq i32* %71, null
  br i1 %72, label %73, label %80

73:                                               ; preds = %68
  %74 = load i32*, i32** @ngx_http_rewrite_var, align 8
  %75 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %76 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %75, i32 0, i32 2
  store i32* %74, i32** %76, align 8
  %77 = load i64, i64* %9, align 8
  %78 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %79 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %78, i32 0, i32 0
  store i64 %77, i64* %79, align 8
  br label %80

80:                                               ; preds = %73, %68
  %81 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %82 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %83 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %84 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %83, i64 2
  %85 = call i64 @ngx_http_rewrite_value(%struct.TYPE_25__* %81, %struct.TYPE_24__* %82, %struct.TYPE_20__* %84)
  %86 = load i64, i64* @NGX_CONF_OK, align 8
  %87 = icmp ne i64 %85, %86
  br i1 %87, label %88, label %90

88:                                               ; preds = %80
  %89 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %89, i8** %4, align 8
  br label %144

90:                                               ; preds = %80
  %91 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %92 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %123

95:                                               ; preds = %90
  %96 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %100 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %99, i32 0, i32 0
  %101 = call i8* @ngx_http_script_start_code(i32 %98, i32* %100, i32 24)
  %102 = bitcast i8* %101 to %struct.TYPE_22__*
  store %struct.TYPE_22__* %102, %struct.TYPE_22__** %13, align 8
  %103 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %104 = icmp eq %struct.TYPE_22__* %103, null
  br i1 %104, label %105, label %107

105:                                              ; preds = %95
  %106 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %106, i8** %4, align 8
  br label %144

107:                                              ; preds = %95
  %108 = load i32, i32* @ngx_http_script_var_set_handler_code, align 4
  %109 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %110 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %109, i32 0, i32 2
  store i32 %108, i32* %110, align 8
  %111 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %112 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %115 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %114, i32 0, i32 1
  store i64 %113, i64* %115, align 8
  %116 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %117 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %120 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %119, i32 0, i32 0
  store i64 %118, i64* %120, align 8
  %121 = load i64, i64* @NGX_CONF_OK, align 8
  %122 = inttoptr i64 %121 to i8*
  store i8* %122, i8** %4, align 8
  br label %144

123:                                              ; preds = %90
  %124 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %128 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %127, i32 0, i32 0
  %129 = call i8* @ngx_http_script_start_code(i32 %126, i32* %128, i32 16)
  %130 = bitcast i8* %129 to %struct.TYPE_23__*
  store %struct.TYPE_23__* %130, %struct.TYPE_23__** %12, align 8
  %131 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %132 = icmp eq %struct.TYPE_23__* %131, null
  br i1 %132, label %133, label %135

133:                                              ; preds = %123
  %134 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %134, i8** %4, align 8
  br label %144

135:                                              ; preds = %123
  %136 = load i32, i32* @ngx_http_script_set_var_code, align 4
  %137 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %138 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %137, i32 0, i32 1
  store i32 %136, i32* %138, align 8
  %139 = load i64, i64* %9, align 8
  %140 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %141 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %140, i32 0, i32 0
  store i64 %139, i64* %141, align 8
  %142 = load i64, i64* @NGX_CONF_OK, align 8
  %143 = inttoptr i64 %142 to i8*
  store i8* %143, i8** %4, align 8
  br label %144

144:                                              ; preds = %135, %133, %107, %105, %88, %66, %56, %29
  %145 = load i8*, i8** %4, align 8
  ret i8* %145
}

declare dso_local i32 @ngx_conf_log_error(i32, %struct.TYPE_25__*, i32, i8*, %struct.TYPE_20__*) #1

declare dso_local %struct.TYPE_21__* @ngx_http_add_variable(%struct.TYPE_25__*, %struct.TYPE_20__*, i32) #1

declare dso_local i64 @ngx_http_get_variable_index(%struct.TYPE_25__*, %struct.TYPE_20__*) #1

declare dso_local i64 @ngx_http_rewrite_value(%struct.TYPE_25__*, %struct.TYPE_24__*, %struct.TYPE_20__*) #1

declare dso_local i8* @ngx_http_script_start_code(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
