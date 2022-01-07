; ModuleID = '/home/carl/AnghaBench/tengine/src/http/modules/extr_ngx_http_degradation_module.c_ngx_http_degradation.c'
source_filename = "/home/carl/AnghaBench/tengine/src/http/modules/extr_ngx_http_degradation_module.c_ngx_http_degradation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64, i64 }
%struct.TYPE_11__ = type { i64 }

@.str = private unnamed_addr constant [6 x i8] c"sbrk=\00", align 1
@NGX_ERROR = common dso_local global i64 0, align 8
@NGX_LOG_EMERG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"invalid sbrk size \22%V\22\00", align 1
@NGX_CONF_ERROR = common dso_local global i8* null, align 8
@NGX_CONF_OK = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [23 x i8] c"invalid parameter \22%V\22\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_12__*, i32*, i8*)* @ngx_http_degradation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ngx_http_degradation(%struct.TYPE_12__* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca %struct.TYPE_10__, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = bitcast i8* %11 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %12, %struct.TYPE_11__** %8, align 8
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  store %struct.TYPE_10__* %17, %struct.TYPE_10__** %9, align 8
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i64 1
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = call i64 @ngx_strncmp(i64 %21, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 5)
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %54

24:                                               ; preds = %3
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i64 1
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = sub nsw i64 %28, 5
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 1
  store i64 %29, i64* %30, align 8
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i64 1
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = add nsw i64 %34, 5
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  store i64 %35, i64* %36, align 8
  %37 = call i64 @ngx_parse_size(%struct.TYPE_10__* %10)
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 0
  store i64 %37, i64* %39, align 8
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @NGX_ERROR, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %52

45:                                               ; preds = %24
  %46 = load i32, i32* @NGX_LOG_EMERG, align 4
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i64 1
  %50 = call i32 @ngx_conf_log_error(i32 %46, %struct.TYPE_12__* %47, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_10__* %49)
  %51 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %51, i8** %4, align 8
  br label %61

52:                                               ; preds = %24
  %53 = load i8*, i8** @NGX_CONF_OK, align 8
  store i8* %53, i8** %4, align 8
  br label %61

54:                                               ; preds = %3
  %55 = load i32, i32* @NGX_LOG_EMERG, align 4
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i64 1
  %59 = call i32 @ngx_conf_log_error(i32 %55, %struct.TYPE_12__* %56, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_10__* %58)
  %60 = load i8*, i8** @NGX_CONF_ERROR, align 8
  store i8* %60, i8** %4, align 8
  br label %61

61:                                               ; preds = %54, %52, %45
  %62 = load i8*, i8** %4, align 8
  ret i8* %62
}

declare dso_local i64 @ngx_strncmp(i64, i8*, i32) #1

declare dso_local i64 @ngx_parse_size(%struct.TYPE_10__*) #1

declare dso_local i32 @ngx_conf_log_error(i32, %struct.TYPE_12__*, i32, i8*, %struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
