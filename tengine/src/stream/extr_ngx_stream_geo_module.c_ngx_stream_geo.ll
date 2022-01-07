; ModuleID = '/home/carl/AnghaBench/tengine/src/stream/extr_ngx_stream_geo_module.c_ngx_stream_geo.c'
source_filename = "/home/carl/AnghaBench/tengine/src/stream/extr_ngx_stream_geo_module.c_ngx_stream_geo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32, %struct.TYPE_16__*, %struct.TYPE_17__* }
%struct.TYPE_16__ = type { i32, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_17__ = type { i32, i64, i64 }

@.str = private unnamed_addr constant [7 x i8] c"ranges\00", align 1
@NGX_LOG_EMERG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [70 x i8] c"the \22ranges\22 directive must be the first directive inside \22geo\22 block\00", align 1
@NGX_CONF_OK = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [37 x i8] c"invalid number of the geo parameters\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"include\00", align 1
@NGX_CONF_ERROR = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_19__*, i32*, i8*)* @ngx_stream_geo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ngx_stream_geo(%struct.TYPE_19__* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_18__*, align 8
  %10 = alloca %struct.TYPE_17__*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %11, i32 0, i32 2
  %13 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  store %struct.TYPE_17__* %13, %struct.TYPE_17__** %10, align 8
  %14 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  store %struct.TYPE_18__* %18, %struct.TYPE_18__** %9, align 8
  %19 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_16__*, %struct.TYPE_16__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp eq i32 %23, 1
  br i1 %24, label %25, label %46

25:                                               ; preds = %3
  %26 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %26, i64 0
  %28 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @ngx_strcmp(i32 %29, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %45

32:                                               ; preds = %25
  %33 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %34 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %32
  %38 = load i32, i32* @NGX_LOG_EMERG, align 4
  %39 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %40 = call i32 @ngx_conf_log_error(i32 %38, %struct.TYPE_19__* %39, i32 0, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.1, i64 0, i64 0))
  br label %92

41:                                               ; preds = %32
  %42 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %43 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %42, i32 0, i32 0
  store i32 1, i32* %43, align 8
  %44 = load i8*, i8** @NGX_CONF_OK, align 8
  store i8* %44, i8** %8, align 8
  br label %86

45:                                               ; preds = %25
  br label %46

46:                                               ; preds = %45, %3
  %47 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %47, i32 0, i32 1
  %49 = load %struct.TYPE_16__*, %struct.TYPE_16__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp ne i32 %51, 2
  br i1 %52, label %53, label %57

53:                                               ; preds = %46
  %54 = load i32, i32* @NGX_LOG_EMERG, align 4
  %55 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %56 = call i32 @ngx_conf_log_error(i32 %54, %struct.TYPE_19__* %55, i32 0, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  br label %92

57:                                               ; preds = %46
  %58 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %59 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %58, i64 0
  %60 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i64 @ngx_strcmp(i32 %61, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %57
  %65 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %66 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %67 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %68 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %67, i64 1
  %69 = call i8* @ngx_stream_geo_include(%struct.TYPE_19__* %65, %struct.TYPE_17__* %66, %struct.TYPE_18__* %68)
  store i8* %69, i8** %8, align 8
  br label %86

70:                                               ; preds = %57
  %71 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %72 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %70
  %76 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %77 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %78 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %79 = call i8* @ngx_stream_geo_range(%struct.TYPE_19__* %76, %struct.TYPE_17__* %77, %struct.TYPE_18__* %78)
  store i8* %79, i8** %8, align 8
  br label %85

80:                                               ; preds = %70
  %81 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %82 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %83 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %84 = call i8* @ngx_stream_geo_cidr(%struct.TYPE_19__* %81, %struct.TYPE_17__* %82, %struct.TYPE_18__* %83)
  store i8* %84, i8** %8, align 8
  br label %85

85:                                               ; preds = %80, %75
  br label %86

86:                                               ; preds = %85, %64, %41
  %87 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @ngx_reset_pool(i32 %89)
  %91 = load i8*, i8** %8, align 8
  store i8* %91, i8** %4, align 8
  br label %98

92:                                               ; preds = %53, %37
  %93 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @ngx_reset_pool(i32 %95)
  %97 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %97, i8** %4, align 8
  br label %98

98:                                               ; preds = %92, %86
  %99 = load i8*, i8** %4, align 8
  ret i8* %99
}

declare dso_local i64 @ngx_strcmp(i32, i8*) #1

declare dso_local i32 @ngx_conf_log_error(i32, %struct.TYPE_19__*, i32, i8*) #1

declare dso_local i8* @ngx_stream_geo_include(%struct.TYPE_19__*, %struct.TYPE_17__*, %struct.TYPE_18__*) #1

declare dso_local i8* @ngx_stream_geo_range(%struct.TYPE_19__*, %struct.TYPE_17__*, %struct.TYPE_18__*) #1

declare dso_local i8* @ngx_stream_geo_cidr(%struct.TYPE_19__*, %struct.TYPE_17__*, %struct.TYPE_18__*) #1

declare dso_local i32 @ngx_reset_pool(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
