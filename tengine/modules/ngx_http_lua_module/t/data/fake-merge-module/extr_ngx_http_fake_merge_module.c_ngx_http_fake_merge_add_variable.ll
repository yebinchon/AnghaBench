; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/t/data/fake-merge-module/extr_ngx_http_fake_merge_module.c_ngx_http_fake_merge_add_variable.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/t/data/fake-merge-module/extr_ngx_http_fake_merge_module.c_ngx_http_fake_merge_add_variable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, %struct.TYPE_7__, i32, i32, i32 }
%struct.TYPE_7__ = type { i64 }

@ngx_http_fake_merge_variables = common dso_local global %struct.TYPE_6__* null, align 8
@NGX_ERROR = common dso_local global i64 0, align 8
@NGX_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*)* @ngx_http_fake_merge_add_variable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ngx_http_fake_merge_add_variable(i32* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  store i32* %0, i32** %3, align 8
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ngx_http_fake_merge_variables, align 8
  store %struct.TYPE_6__* %6, %struct.TYPE_6__** %5, align 8
  br label %7

7:                                                ; preds = %50, %1
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %53

13:                                               ; preds = %7
  %14 = load i32*, i32** %3, align 8
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 8
  %20 = call %struct.TYPE_6__* @ngx_http_add_variable(i32* %14, %struct.TYPE_7__* %16, i32 %19)
  store %struct.TYPE_6__* %20, %struct.TYPE_6__** %4, align 8
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %22 = icmp eq %struct.TYPE_6__* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %13
  %24 = load i64, i64* @NGX_ERROR, align 8
  store i64 %24, i64* %2, align 8
  br label %55

25:                                               ; preds = %13
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 3
  store i32 %28, i32* %30, align 4
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 8
  %36 = load i32*, i32** %3, align 8
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 1
  %39 = call i64 @ngx_http_get_variable_index(i32* %36, %struct.TYPE_7__* %38)
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  store i64 %39, i64* %41, align 8
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @NGX_ERROR, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %25
  %48 = load i64, i64* @NGX_ERROR, align 8
  store i64 %48, i64* %2, align 8
  br label %55

49:                                               ; preds = %25
  br label %50

50:                                               ; preds = %49
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 1
  store %struct.TYPE_6__* %52, %struct.TYPE_6__** %5, align 8
  br label %7

53:                                               ; preds = %7
  %54 = load i64, i64* @NGX_OK, align 8
  store i64 %54, i64* %2, align 8
  br label %55

55:                                               ; preds = %53, %47, %23
  %56 = load i64, i64* %2, align 8
  ret i64 %56
}

declare dso_local %struct.TYPE_6__* @ngx_http_add_variable(i32*, %struct.TYPE_7__*, i32) #1

declare dso_local i64 @ngx_http_get_variable_index(i32*, %struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
