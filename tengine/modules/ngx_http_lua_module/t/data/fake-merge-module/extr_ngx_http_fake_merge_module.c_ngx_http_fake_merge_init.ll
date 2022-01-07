; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/t/data/fake-merge-module/extr_ngx_http_fake_merge_module.c_ngx_http_fake_merge_init.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/t/data/fake-merge-module/extr_ngx_http_fake_merge_module.c_ngx_http_fake_merge_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@ngx_http_fake_merge_module = common dso_local global i32 0, align 4
@NGX_ERROR = common dso_local global i64 0, align 8
@NGX_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*)* @ngx_http_fake_merge_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ngx_http_fake_merge_init(i32* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  store i32* %0, i32** %3, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = load i32, i32* @ngx_http_fake_merge_module, align 4
  %7 = call %struct.TYPE_3__* @ngx_http_conf_get_module_loc_conf(i32* %5, i32 %6)
  store %struct.TYPE_3__* %7, %struct.TYPE_3__** %4, align 8
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %9 = icmp eq %struct.TYPE_3__* %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i64, i64* @NGX_ERROR, align 8
  store i64 %11, i64* %2, align 8
  br label %23

12:                                               ; preds = %1
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  store i32 1, i32* %14, align 4
  %15 = load i32*, i32** %3, align 8
  %16 = call i64 @ngx_http_fake_merge_add_variable(i32* %15)
  %17 = load i64, i64* @NGX_OK, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %12
  %20 = load i64, i64* @NGX_ERROR, align 8
  store i64 %20, i64* %2, align 8
  br label %23

21:                                               ; preds = %12
  %22 = load i64, i64* @NGX_OK, align 8
  store i64 %22, i64* %2, align 8
  br label %23

23:                                               ; preds = %21, %19, %10
  %24 = load i64, i64* %2, align 8
  ret i64 %24
}

declare dso_local %struct.TYPE_3__* @ngx_http_conf_get_module_loc_conf(i32*, i32) #1

declare dso_local i64 @ngx_http_fake_merge_add_variable(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
