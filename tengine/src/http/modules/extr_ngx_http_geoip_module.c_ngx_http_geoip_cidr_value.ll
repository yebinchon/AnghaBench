; ModuleID = '/home/carl/AnghaBench/tengine/src/http/modules/extr_ngx_http_geoip_module.c_ngx_http_geoip_cidr_value.c'
source_filename = "/home/carl/AnghaBench/tengine/src/http/modules/extr_ngx_http_geoip_module.c_ngx_http_geoip_cidr_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.TYPE_13__ = type { %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32 }

@.str = private unnamed_addr constant [16 x i8] c"255.255.255.255\00", align 1
@AF_INET = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i64 0, align 8
@NGX_ERROR = common dso_local global i64 0, align 8
@NGX_LOG_EMERG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"invalid network \22%V\22\00", align 1
@NGX_DONE = common dso_local global i64 0, align 8
@NGX_LOG_WARN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"low address bits of %V are meaningless\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, %struct.TYPE_12__*, %struct.TYPE_13__*)* @ngx_http_geoip_cidr_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ngx_http_geoip_cidr_value(i32* %0, %struct.TYPE_12__* %1, %struct.TYPE_13__* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %6, align 8
  store %struct.TYPE_13__* %2, %struct.TYPE_13__** %7, align 8
  %9 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %10 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i64 @ngx_strcmp(i32 %11, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %27

14:                                               ; preds = %3
  %15 = load i32, i32* @AF_INET, align 4
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 1
  store i32 %15, i32* %17, align 4
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 0
  store i32 -1, i32* %21, align 4
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 1
  store i32 -1, i32* %25, align 4
  %26 = load i64, i64* @NGX_OK, align 8
  store i64 %26, i64* %4, align 8
  br label %51

27:                                               ; preds = %3
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %30 = call i64 @ngx_ptocidr(%struct.TYPE_12__* %28, %struct.TYPE_13__* %29)
  store i64 %30, i64* %8, align 8
  %31 = load i64, i64* %8, align 8
  %32 = load i64, i64* @NGX_ERROR, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %40

34:                                               ; preds = %27
  %35 = load i32, i32* @NGX_LOG_EMERG, align 4
  %36 = load i32*, i32** %5, align 8
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %38 = call i32 @ngx_conf_log_error(i32 %35, i32* %36, i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_12__* %37)
  %39 = load i64, i64* @NGX_ERROR, align 8
  store i64 %39, i64* %4, align 8
  br label %51

40:                                               ; preds = %27
  %41 = load i64, i64* %8, align 8
  %42 = load i64, i64* @NGX_DONE, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %49

44:                                               ; preds = %40
  %45 = load i32, i32* @NGX_LOG_WARN, align 4
  %46 = load i32*, i32** %5, align 8
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %48 = call i32 @ngx_conf_log_error(i32 %45, i32* %46, i32 0, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_12__* %47)
  br label %49

49:                                               ; preds = %44, %40
  %50 = load i64, i64* @NGX_OK, align 8
  store i64 %50, i64* %4, align 8
  br label %51

51:                                               ; preds = %49, %34, %14
  %52 = load i64, i64* %4, align 8
  ret i64 %52
}

declare dso_local i64 @ngx_strcmp(i32, i8*) #1

declare dso_local i64 @ngx_ptocidr(%struct.TYPE_12__*, %struct.TYPE_13__*) #1

declare dso_local i32 @ngx_conf_log_error(i32, i32*, i32, i8*, %struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
