; ModuleID = '/home/carl/AnghaBench/tengine/src/http/modules/extr_ngx_http_userid_filter_module.c_ngx_http_userid_add_variables.c'
source_filename = "/home/carl/AnghaBench/tengine/src/http/modules/extr_ngx_http_userid_filter_module.c_ngx_http_userid_add_variables.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@ngx_http_userid_got = common dso_local global i32 0, align 4
@NGX_ERROR = common dso_local global i64 0, align 8
@ngx_http_userid_got_variable = common dso_local global i32 0, align 4
@ngx_http_userid_set = common dso_local global i32 0, align 4
@ngx_http_userid_set_variable = common dso_local global i32 0, align 4
@ngx_http_userid_reset = common dso_local global i32 0, align 4
@NGX_HTTP_VAR_CHANGEABLE = common dso_local global i32 0, align 4
@ngx_http_userid_reset_variable = common dso_local global i32 0, align 4
@ngx_http_userid_reset_index = common dso_local global i64 0, align 8
@NGX_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*)* @ngx_http_userid_add_variables to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ngx_http_userid_add_variables(i32* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  store i32* %0, i32** %3, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = call %struct.TYPE_3__* @ngx_http_add_variable(i32* %6, i32* @ngx_http_userid_got, i32 0)
  store %struct.TYPE_3__* %7, %struct.TYPE_3__** %5, align 8
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %9 = icmp eq %struct.TYPE_3__* %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i64, i64* @NGX_ERROR, align 8
  store i64 %11, i64* %2, align 8
  br label %47

12:                                               ; preds = %1
  %13 = load i32, i32* @ngx_http_userid_got_variable, align 4
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 4
  %16 = load i32*, i32** %3, align 8
  %17 = call %struct.TYPE_3__* @ngx_http_add_variable(i32* %16, i32* @ngx_http_userid_set, i32 0)
  store %struct.TYPE_3__* %17, %struct.TYPE_3__** %5, align 8
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %19 = icmp eq %struct.TYPE_3__* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %12
  %21 = load i64, i64* @NGX_ERROR, align 8
  store i64 %21, i64* %2, align 8
  br label %47

22:                                               ; preds = %12
  %23 = load i32, i32* @ngx_http_userid_set_variable, align 4
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  %26 = load i32*, i32** %3, align 8
  %27 = load i32, i32* @NGX_HTTP_VAR_CHANGEABLE, align 4
  %28 = call %struct.TYPE_3__* @ngx_http_add_variable(i32* %26, i32* @ngx_http_userid_reset, i32 %27)
  store %struct.TYPE_3__* %28, %struct.TYPE_3__** %5, align 8
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %30 = icmp eq %struct.TYPE_3__* %29, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %22
  %32 = load i64, i64* @NGX_ERROR, align 8
  store i64 %32, i64* %2, align 8
  br label %47

33:                                               ; preds = %22
  %34 = load i32, i32* @ngx_http_userid_reset_variable, align 4
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  %37 = load i32*, i32** %3, align 8
  %38 = call i64 @ngx_http_get_variable_index(i32* %37, i32* @ngx_http_userid_reset)
  store i64 %38, i64* %4, align 8
  %39 = load i64, i64* %4, align 8
  %40 = load i64, i64* @NGX_ERROR, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %33
  %43 = load i64, i64* @NGX_ERROR, align 8
  store i64 %43, i64* %2, align 8
  br label %47

44:                                               ; preds = %33
  %45 = load i64, i64* %4, align 8
  store i64 %45, i64* @ngx_http_userid_reset_index, align 8
  %46 = load i64, i64* @NGX_OK, align 8
  store i64 %46, i64* %2, align 8
  br label %47

47:                                               ; preds = %44, %42, %31, %20, %10
  %48 = load i64, i64* %2, align 8
  ret i64 %48
}

declare dso_local %struct.TYPE_3__* @ngx_http_add_variable(i32*, i32*, i32) #1

declare dso_local i64 @ngx_http_get_variable_index(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
