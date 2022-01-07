; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_trim_filter_module/extr_ngx_http_trim_filter_module.c_ngx_http_trim_original_bytes_variable.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_trim_filter_module/extr_ngx_http_trim_filter_module.c_ngx_http_trim_original_bytes_variable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32, i64, i32*, i32* }
%struct.TYPE_9__ = type { i32 }

@ngx_http_trim_filter_module = common dso_local global i32 0, align 4
@NGX_OK = common dso_local global i32 0, align 4
@NGX_OFF_T_LEN = common dso_local global i32 0, align 4
@NGX_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%O\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, %struct.TYPE_8__*, i64)* @ngx_http_trim_original_bytes_variable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_http_trim_original_bytes_variable(%struct.TYPE_10__* %0, %struct.TYPE_8__* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %10 = load i32, i32* @ngx_http_trim_filter_module, align 4
  %11 = call %struct.TYPE_9__* @ngx_http_get_module_ctx(%struct.TYPE_10__* %9, i32 %10)
  store %struct.TYPE_9__* %11, %struct.TYPE_9__** %8, align 8
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %13 = icmp eq %struct.TYPE_9__* %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %3
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  store i32 1, i32* %16, align 8
  %17 = load i32, i32* @NGX_OK, align 4
  store i32 %17, i32* %4, align 4
  br label %57

18:                                               ; preds = %3
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @NGX_OFF_T_LEN, align 4
  %23 = call i32* @ngx_pnalloc(i32 %21, i32 %22)
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 3
  store i32* %23, i32** %25, align 8
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 3
  %28 = load i32*, i32** %27, align 8
  %29 = icmp eq i32* %28, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %18
  %31 = load i32, i32* @NGX_ERROR, align 4
  store i32 %31, i32* %4, align 4
  br label %57

32:                                               ; preds = %18
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 3
  %35 = load i32*, i32** %34, align 8
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32* @ngx_sprintf(i32* %35, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %38)
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 3
  %42 = load i32*, i32** %41, align 8
  %43 = ptrtoint i32* %39 to i64
  %44 = ptrtoint i32* %42 to i64
  %45 = sub i64 %43, %44
  %46 = sdiv exact i64 %45, 4
  %47 = inttoptr i64 %46 to i32*
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 4
  store i32* %47, i32** %49, align 8
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 1
  store i32 1, i32* %51, align 4
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 2
  store i64 0, i64* %53, align 8
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  store i32 0, i32* %55, align 8
  %56 = load i32, i32* @NGX_OK, align 4
  store i32 %56, i32* %4, align 4
  br label %57

57:                                               ; preds = %32, %30, %14
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

declare dso_local %struct.TYPE_9__* @ngx_http_get_module_ctx(%struct.TYPE_10__*, i32) #1

declare dso_local i32* @ngx_pnalloc(i32, i32) #1

declare dso_local i32* @ngx_sprintf(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
