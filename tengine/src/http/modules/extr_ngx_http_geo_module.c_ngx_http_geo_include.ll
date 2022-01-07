; ModuleID = '/home/carl/AnghaBench/tengine/src/http/modules/extr_ngx_http_geo_module.c_ngx_http_geo_include.c'
source_filename = "/home/carl/AnghaBench/tengine/src/http/modules/extr_ngx_http_geo_module.c_ngx_http_geo_include.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_15__ = type { i64, i32, i64, %struct.TYPE_14__, i64, i32 }
%struct.TYPE_14__ = type { i32, i8* }

@NGX_CONF_ERROR = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [9 x i8] c"%V.bin%Z\00", align 1
@NGX_LOG_DEBUG_CORE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"include %s\00", align 1
@NGX_CONF_OK = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_16__*, %struct.TYPE_15__*, %struct.TYPE_14__*)* @ngx_http_geo_include to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ngx_http_geo_include(%struct.TYPE_16__* %0, %struct.TYPE_15__* %1, %struct.TYPE_14__* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_14__, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %5, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %6, align 8
  store %struct.TYPE_14__* %2, %struct.TYPE_14__** %7, align 8
  %10 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %11 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = add nsw i32 %12, 4
  %14 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 0
  store i32 %13, i32* %14, align 8
  %15 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 5
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = add nsw i32 %20, 5
  %22 = call i8* @ngx_pnalloc(i32 %17, i32 %21)
  %23 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 1
  store i8* %22, i8** %23, align 8
  %24 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 1
  %25 = load i8*, i8** %24, align 8
  %26 = icmp eq i8* %25, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %3
  %28 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %28, i8** %4, align 8
  br label %101

29:                                               ; preds = %3
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 1
  %31 = load i8*, i8** %30, align 8
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %33 = call i32 @ngx_sprintf(i8* %31, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), %struct.TYPE_14__* %32)
  %34 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @ngx_conf_full_name(i32 %36, %struct.TYPE_14__* %9, i32 1)
  %38 = icmp ne i64 %37, 128
  br i1 %38, label %39, label %41

39:                                               ; preds = %29
  %40 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %40, i8** %4, align 8
  br label %101

41:                                               ; preds = %29
  %42 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %42, i32 0, i32 4
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %63

46:                                               ; preds = %41
  %47 = load i32, i32* @NGX_LOG_DEBUG_CORE, align 4
  %48 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 1
  %52 = load i8*, i8** %51, align 8
  %53 = call i32 @ngx_log_debug1(i32 %47, i32 %50, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* %52)
  %54 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %55 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %56 = call i32 @ngx_http_geo_include_binary_base(%struct.TYPE_16__* %54, %struct.TYPE_15__* %55, %struct.TYPE_14__* %9)
  switch i32 %56, label %61 [
    i32 128, label %57
    i32 129, label %59
  ]

57:                                               ; preds = %46
  %58 = load i8*, i8** @NGX_CONF_OK, align 8
  store i8* %58, i8** %4, align 8
  br label %101

59:                                               ; preds = %46
  %60 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %60, i8** %4, align 8
  br label %101

61:                                               ; preds = %46
  br label %62

62:                                               ; preds = %61
  br label %63

63:                                               ; preds = %62, %41
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = sub nsw i32 %65, 4
  store i32 %66, i32* %64, align 8
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 1
  %68 = load i8*, i8** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i8, i8* %68, i64 %71
  store i8 0, i8* %72, align 1
  %73 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %73, i32 0, i32 3
  %75 = bitcast %struct.TYPE_14__* %74 to i8*
  %76 = bitcast %struct.TYPE_14__* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %75, i8* align 8 %76, i64 16, i1 false)
  %77 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %63
  %82 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %82, i32 0, i32 2
  store i64 0, i64* %83, align 8
  br label %84

84:                                               ; preds = %81, %63
  %85 = load i32, i32* @NGX_LOG_DEBUG_CORE, align 4
  %86 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 1
  %90 = load i8*, i8** %89, align 8
  %91 = call i32 @ngx_log_debug1(i32 %85, i32 %88, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* %90)
  %92 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %93 = call i8* @ngx_conf_parse(%struct.TYPE_16__* %92, %struct.TYPE_14__* %9)
  store i8* %93, i8** %8, align 8
  %94 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %95, align 8
  %98 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %98, i32 0, i32 0
  store i64 0, i64* %99, align 8
  %100 = load i8*, i8** %8, align 8
  store i8* %100, i8** %4, align 8
  br label %101

101:                                              ; preds = %84, %59, %57, %39, %27
  %102 = load i8*, i8** %4, align 8
  ret i8* %102
}

declare dso_local i8* @ngx_pnalloc(i32, i32) #1

declare dso_local i32 @ngx_sprintf(i8*, i8*, %struct.TYPE_14__*) #1

declare dso_local i64 @ngx_conf_full_name(i32, %struct.TYPE_14__*, i32) #1

declare dso_local i32 @ngx_log_debug1(i32, i32, i32, i8*, i8*) #1

declare dso_local i32 @ngx_http_geo_include_binary_base(%struct.TYPE_16__*, %struct.TYPE_15__*, %struct.TYPE_14__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i8* @ngx_conf_parse(%struct.TYPE_16__*, %struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
