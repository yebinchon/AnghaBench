; ModuleID = '/home/carl/AnghaBench/tengine/src/http/modules/extr_ngx_http_proxy_module.c_ngx_http_proxy_rewrite_domain_handler.c'
source_filename = "/home/carl/AnghaBench/tengine/src/http/modules/extr_ngx_http_proxy_module.c_ngx_http_proxy_rewrite_domain_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i8* }
%struct.TYPE_15__ = type { i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_14__ = type { i64, i32 }

@NGX_OK = common dso_local global i64 0, align 8
@NGX_ERROR = common dso_local global i32 0, align 4
@NGX_DECLINED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_13__*, i64, i64, %struct.TYPE_15__*)* @ngx_http_proxy_rewrite_domain_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ngx_http_proxy_rewrite_domain_handler(i32* %0, %struct.TYPE_13__* %1, i64 %2, i64 %3, %struct.TYPE_15__* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_15__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.TYPE_14__, align 8
  %14 = alloca %struct.TYPE_14__, align 8
  store i32* %0, i32** %7, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store %struct.TYPE_15__* %4, %struct.TYPE_15__** %11, align 8
  %15 = load i32*, i32** %7, align 8
  %16 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %17 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 0
  %19 = call i64 @ngx_http_complex_value(i32* %15, i32* %18, %struct.TYPE_14__* %13)
  %20 = load i64, i64* @NGX_OK, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %5
  %23 = load i32, i32* @NGX_ERROR, align 4
  store i32 %23, i32* %6, align 4
  br label %72

24:                                               ; preds = %5
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = load i64, i64* %9, align 8
  %30 = getelementptr inbounds i8, i8* %28, i64 %29
  store i8* %30, i8** %12, align 8
  %31 = load i8*, i8** %12, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 0
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp eq i32 %34, 46
  br i1 %35, label %36, label %43

36:                                               ; preds = %24
  %37 = load i8*, i8** %12, align 8
  %38 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %38, i8** %12, align 8
  %39 = load i64, i64* %9, align 8
  %40 = add i64 %39, 1
  store i64 %40, i64* %9, align 8
  %41 = load i64, i64* %10, align 8
  %42 = add i64 %41, -1
  store i64 %42, i64* %10, align 8
  br label %43

43:                                               ; preds = %36, %24
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* %10, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %55, label %48

48:                                               ; preds = %43
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = load i8*, i8** %12, align 8
  %52 = load i64, i64* %10, align 8
  %53 = call i64 @ngx_rstrncasecmp(i32 %50, i8* %51, i64 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %48, %43
  %56 = load i32, i32* @NGX_DECLINED, align 4
  store i32 %56, i32* %6, align 4
  br label %72

57:                                               ; preds = %48
  %58 = load i32*, i32** %7, align 8
  %59 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %59, i32 0, i32 0
  %61 = call i64 @ngx_http_complex_value(i32* %58, i32* %60, %struct.TYPE_14__* %14)
  %62 = load i64, i64* @NGX_OK, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %57
  %65 = load i32, i32* @NGX_ERROR, align 4
  store i32 %65, i32* %6, align 4
  br label %72

66:                                               ; preds = %57
  %67 = load i32*, i32** %7, align 8
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %69 = load i64, i64* %9, align 8
  %70 = load i64, i64* %10, align 8
  %71 = call i32 @ngx_http_proxy_rewrite(i32* %67, %struct.TYPE_13__* %68, i64 %69, i64 %70, %struct.TYPE_14__* %14)
  store i32 %71, i32* %6, align 4
  br label %72

72:                                               ; preds = %66, %64, %55, %22
  %73 = load i32, i32* %6, align 4
  ret i32 %73
}

declare dso_local i64 @ngx_http_complex_value(i32*, i32*, %struct.TYPE_14__*) #1

declare dso_local i64 @ngx_rstrncasecmp(i32, i8*, i64) #1

declare dso_local i32 @ngx_http_proxy_rewrite(i32*, %struct.TYPE_13__*, i64, i64, %struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
