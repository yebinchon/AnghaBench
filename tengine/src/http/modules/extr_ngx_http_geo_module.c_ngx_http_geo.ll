; ModuleID = '/home/carl/AnghaBench/tengine/src/http/modules/extr_ngx_http_geo_module.c_ngx_http_geo.c'
source_filename = "/home/carl/AnghaBench/tengine/src/http/modules/extr_ngx_http_geo_module.c_ngx_http_geo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i32, %struct.TYPE_20__*, %struct.TYPE_22__* }
%struct.TYPE_20__ = type { i32, %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_22__ = type { i32, i32, i64, i64 }

@.str = private unnamed_addr constant [7 x i8] c"ranges\00", align 1
@NGX_LOG_EMERG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [70 x i8] c"the \22ranges\22 directive must be the first directive inside \22geo\22 block\00", align 1
@NGX_CONF_OK = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [16 x i8] c"proxy_recursive\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"invalid number of the geo parameters\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"include\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"proxy\00", align 1
@NGX_OK = common dso_local global i64 0, align 8
@NGX_CONF_ERROR = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_23__*, i32*, i8*)* @ngx_http_geo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ngx_http_geo(%struct.TYPE_23__* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_23__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_21__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_22__*, align 8
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %12, i32 0, i32 2
  %14 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  store %struct.TYPE_22__* %14, %struct.TYPE_22__** %11, align 8
  %15 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_21__*, %struct.TYPE_21__** %18, align 8
  store %struct.TYPE_21__* %19, %struct.TYPE_21__** %9, align 8
  %20 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_20__*, %struct.TYPE_20__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp eq i32 %24, 1
  br i1 %25, label %26, label %59

26:                                               ; preds = %3
  %27 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %28 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %27, i64 0
  %29 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @ngx_strcmp(i32 %30, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %46

33:                                               ; preds = %26
  %34 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %35 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %34, i32 0, i32 3
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %33
  %39 = load i32, i32* @NGX_LOG_EMERG, align 4
  %40 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %41 = call i32 @ngx_conf_log_error(i32 %39, %struct.TYPE_23__* %40, i32 0, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.1, i64 0, i64 0))
  br label %125

42:                                               ; preds = %33
  %43 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %44 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %43, i32 0, i32 0
  store i32 1, i32* %44, align 8
  %45 = load i8*, i8** @NGX_CONF_OK, align 8
  store i8* %45, i8** %8, align 8
  br label %119

46:                                               ; preds = %26
  %47 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %48 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %47, i64 0
  %49 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i64 @ngx_strcmp(i32 %50, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %46
  %54 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %55 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %54, i32 0, i32 1
  store i32 1, i32* %55, align 4
  %56 = load i8*, i8** @NGX_CONF_OK, align 8
  store i8* %56, i8** %8, align 8
  br label %119

57:                                               ; preds = %46
  br label %58

58:                                               ; preds = %57
  br label %59

59:                                               ; preds = %58, %3
  %60 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %60, i32 0, i32 1
  %62 = load %struct.TYPE_20__*, %struct.TYPE_20__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp ne i32 %64, 2
  br i1 %65, label %66, label %70

66:                                               ; preds = %59
  %67 = load i32, i32* @NGX_LOG_EMERG, align 4
  %68 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %69 = call i32 @ngx_conf_log_error(i32 %67, %struct.TYPE_23__* %68, i32 0, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  br label %125

70:                                               ; preds = %59
  %71 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %72 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %71, i64 0
  %73 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i64 @ngx_strcmp(i32 %74, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %70
  %78 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %79 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %80 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %81 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %80, i64 1
  %82 = call i8* @ngx_http_geo_include(%struct.TYPE_23__* %78, %struct.TYPE_22__* %79, %struct.TYPE_21__* %81)
  store i8* %82, i8** %8, align 8
  br label %119

83:                                               ; preds = %70
  %84 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %85 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %84, i64 0
  %86 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i64 @ngx_strcmp(i32 %87, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %89 = icmp eq i64 %88, 0
  br i1 %89, label %90, label %102

90:                                               ; preds = %83
  %91 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %92 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %93 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %92, i64 1
  %94 = call i64 @ngx_http_geo_cidr_value(%struct.TYPE_23__* %91, %struct.TYPE_21__* %93, i32* %10)
  %95 = load i64, i64* @NGX_OK, align 8
  %96 = icmp ne i64 %94, %95
  br i1 %96, label %97, label %98

97:                                               ; preds = %90
  br label %125

98:                                               ; preds = %90
  %99 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %100 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %101 = call i8* @ngx_http_geo_add_proxy(%struct.TYPE_23__* %99, %struct.TYPE_22__* %100, i32* %10)
  store i8* %101, i8** %8, align 8
  br label %119

102:                                              ; preds = %83
  br label %103

103:                                              ; preds = %102
  %104 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %105 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %113

108:                                              ; preds = %103
  %109 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %110 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %111 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %112 = call i8* @ngx_http_geo_range(%struct.TYPE_23__* %109, %struct.TYPE_22__* %110, %struct.TYPE_21__* %111)
  store i8* %112, i8** %8, align 8
  br label %118

113:                                              ; preds = %103
  %114 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %115 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %116 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %117 = call i8* @ngx_http_geo_cidr(%struct.TYPE_23__* %114, %struct.TYPE_22__* %115, %struct.TYPE_21__* %116)
  store i8* %117, i8** %8, align 8
  br label %118

118:                                              ; preds = %113, %108
  br label %119

119:                                              ; preds = %118, %98, %77, %53, %42
  %120 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %121 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = call i32 @ngx_reset_pool(i32 %122)
  %124 = load i8*, i8** %8, align 8
  store i8* %124, i8** %4, align 8
  br label %131

125:                                              ; preds = %97, %66, %38
  %126 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = call i32 @ngx_reset_pool(i32 %128)
  %130 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %130, i8** %4, align 8
  br label %131

131:                                              ; preds = %125, %119
  %132 = load i8*, i8** %4, align 8
  ret i8* %132
}

declare dso_local i64 @ngx_strcmp(i32, i8*) #1

declare dso_local i32 @ngx_conf_log_error(i32, %struct.TYPE_23__*, i32, i8*) #1

declare dso_local i8* @ngx_http_geo_include(%struct.TYPE_23__*, %struct.TYPE_22__*, %struct.TYPE_21__*) #1

declare dso_local i64 @ngx_http_geo_cidr_value(%struct.TYPE_23__*, %struct.TYPE_21__*, i32*) #1

declare dso_local i8* @ngx_http_geo_add_proxy(%struct.TYPE_23__*, %struct.TYPE_22__*, i32*) #1

declare dso_local i8* @ngx_http_geo_range(%struct.TYPE_23__*, %struct.TYPE_22__*, %struct.TYPE_21__*) #1

declare dso_local i8* @ngx_http_geo_cidr(%struct.TYPE_23__*, %struct.TYPE_22__*, %struct.TYPE_21__*) #1

declare dso_local i32 @ngx_reset_pool(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
