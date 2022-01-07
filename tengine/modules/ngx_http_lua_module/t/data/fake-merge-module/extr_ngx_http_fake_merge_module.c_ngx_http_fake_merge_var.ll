; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/t/data/fake-merge-module/extr_ngx_http_fake_merge_module.c_ngx_http_fake_merge_var.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/t/data/fake-merge-module/extr_ngx_http_fake_merge_module.c_ngx_http_fake_merge_var.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32, i64, i64, i32* }
%struct.TYPE_12__ = type { i64 }

@ngx_http_fake_merge_var.str = internal global [2 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@ngx_http_fake_merge_module = common dso_local global i32 0, align 4
@NGX_LOG_ERR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"get module main conf failed if fake_var\00", align 1
@NGX_ERROR = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, %struct.TYPE_10__*, i64)* @ngx_http_fake_merge_var to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_http_fake_merge_var(%struct.TYPE_11__* %0, %struct.TYPE_10__* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %10 = load i32, i32* @ngx_http_fake_merge_module, align 4
  %11 = call %struct.TYPE_12__* @ngx_http_get_module_main_conf(%struct.TYPE_11__* %9, i32 %10)
  store %struct.TYPE_12__* %11, %struct.TYPE_12__** %8, align 8
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %13 = icmp eq %struct.TYPE_12__* %12, null
  br i1 %13, label %14, label %23

14:                                               ; preds = %3
  %15 = load i32, i32* @NGX_LOG_ERR, align 4
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @ngx_log_error(i32 %15, i32 %20, i32 0, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  %22 = load i32, i32* @NGX_ERROR, align 4
  store i32 %22, i32* %4, align 4
  br label %41

23:                                               ; preds = %3
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 0
  store i32 1, i32* %25, align 8
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds [2 x i8*], [2 x i8*]* @ngx_http_fake_merge_var.str, i64 0, i64 %28
  %30 = load i8*, i8** %29, align 8
  %31 = bitcast i8* %30 to i32*
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 4
  store i32* %31, i32** %33, align 8
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 1
  store i32 1, i32* %35, align 4
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 3
  store i64 0, i64* %37, align 8
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 2
  store i64 0, i64* %39, align 8
  %40 = load i32, i32* @NGX_OK, align 4
  store i32 %40, i32* %4, align 4
  br label %41

41:                                               ; preds = %23, %14
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local %struct.TYPE_12__* @ngx_http_get_module_main_conf(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
