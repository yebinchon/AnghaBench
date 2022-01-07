; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_directive.c_ngx_http_lua_code_cache.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_lua_module/src/extr_ngx_http_lua_directive.c_ngx_http_lua_code_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@NGX_CONF_OK = common dso_local global i8* null, align 8
@NGX_LOG_ALERT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"lua_code_cache is off; this will hurt performance\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @ngx_http_lua_code_cache(i32* %0, %struct.TYPE_4__* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load i8*, i8** %7, align 8
  store i8* %11, i8** %8, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = call i8* @ngx_conf_set_flag_slot(i32* %12, %struct.TYPE_4__* %13, i8* %14)
  store i8* %15, i8** %10, align 8
  %16 = load i8*, i8** %10, align 8
  %17 = load i8*, i8** @NGX_CONF_OK, align 8
  %18 = icmp ne i8* %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load i8*, i8** %10, align 8
  store i8* %20, i8** %4, align 8
  br label %38

21:                                               ; preds = %3
  %22 = load i8*, i8** %8, align 8
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8, i8* %22, i64 %26
  %28 = bitcast i8* %27 to i32*
  store i32* %28, i32** %9, align 8
  %29 = load i32*, i32** %9, align 8
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %21
  %33 = load i32, i32* @NGX_LOG_ALERT, align 4
  %34 = load i32*, i32** %5, align 8
  %35 = call i32 @ngx_conf_log_error(i32 %33, i32* %34, i32 0, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  br label %36

36:                                               ; preds = %32, %21
  %37 = load i8*, i8** @NGX_CONF_OK, align 8
  store i8* %37, i8** %4, align 8
  br label %38

38:                                               ; preds = %36, %19
  %39 = load i8*, i8** %4, align 8
  ret i8* %39
}

declare dso_local i8* @ngx_conf_set_flag_slot(i32*, %struct.TYPE_4__*, i8*) #1

declare dso_local i32 @ngx_conf_log_error(i32, i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
