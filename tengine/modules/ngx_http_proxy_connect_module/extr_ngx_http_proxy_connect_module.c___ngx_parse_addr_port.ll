; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_proxy_connect_module/extr_ngx_http_proxy_connect_module.c___ngx_parse_addr_port.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_proxy_connect_module/extr_ngx_http_proxy_connect_module.c___ngx_parse_addr_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@NGX_DECLINED = common dso_local global i64 0, align 8
@NGX_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, %struct.TYPE_4__*, i8*, i64)* @__ngx_parse_addr_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @__ngx_parse_addr_port(i32* %0, %struct.TYPE_4__* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load i32*, i32** %6, align 8
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %17 = load i8*, i8** %8, align 8
  %18 = load i64, i64* %9, align 8
  %19 = call i64 @ngx_parse_addr(i32* %15, %struct.TYPE_4__* %16, i8* %17, i64 %18)
  store i64 %19, i64* %13, align 8
  %20 = load i64, i64* %13, align 8
  %21 = load i64, i64* @NGX_DECLINED, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %4
  %24 = load i64, i64* %13, align 8
  store i64 %24, i64* %5, align 8
  br label %77

25:                                               ; preds = %4
  %26 = load i8*, i8** %8, align 8
  %27 = load i64, i64* %9, align 8
  %28 = getelementptr inbounds i8, i8* %26, i64 %27
  store i8* %28, i8** %11, align 8
  %29 = load i8*, i8** %8, align 8
  %30 = load i8*, i8** %11, align 8
  %31 = call i8* @ngx_strlchr(i8* %29, i8* %30, i8 signext 58)
  store i8* %31, i8** %10, align 8
  %32 = load i8*, i8** %10, align 8
  %33 = icmp eq i8* %32, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %25
  %35 = load i64, i64* @NGX_DECLINED, align 8
  store i64 %35, i64* %5, align 8
  br label %77

36:                                               ; preds = %25
  %37 = load i8*, i8** %10, align 8
  %38 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %38, i8** %10, align 8
  %39 = load i8*, i8** %11, align 8
  %40 = load i8*, i8** %10, align 8
  %41 = ptrtoint i8* %39 to i64
  %42 = ptrtoint i8* %40 to i64
  %43 = sub i64 %41, %42
  store i64 %43, i64* %12, align 8
  %44 = load i8*, i8** %10, align 8
  %45 = load i64, i64* %12, align 8
  %46 = call i64 @ngx_atoi(i8* %44, i64 %45)
  store i64 %46, i64* %14, align 8
  %47 = load i64, i64* %14, align 8
  %48 = icmp slt i64 %47, 1
  br i1 %48, label %52, label %49

49:                                               ; preds = %36
  %50 = load i64, i64* %14, align 8
  %51 = icmp sgt i64 %50, 65535
  br i1 %51, label %52, label %54

52:                                               ; preds = %49, %36
  %53 = load i64, i64* @NGX_DECLINED, align 8
  store i64 %53, i64* %5, align 8
  br label %77

54:                                               ; preds = %49
  %55 = load i64, i64* %12, align 8
  %56 = add i64 %55, 1
  %57 = load i64, i64* %9, align 8
  %58 = sub i64 %57, %56
  store i64 %58, i64* %9, align 8
  %59 = load i32*, i32** %6, align 8
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %61 = load i8*, i8** %8, align 8
  %62 = load i64, i64* %9, align 8
  %63 = call i64 @ngx_parse_addr(i32* %59, %struct.TYPE_4__* %60, i8* %61, i64 %62)
  store i64 %63, i64* %13, align 8
  %64 = load i64, i64* %13, align 8
  %65 = load i64, i64* @NGX_OK, align 8
  %66 = icmp ne i64 %64, %65
  br i1 %66, label %67, label %69

67:                                               ; preds = %54
  %68 = load i64, i64* %13, align 8
  store i64 %68, i64* %5, align 8
  br label %77

69:                                               ; preds = %54
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i64, i64* %14, align 8
  %74 = trunc i64 %73 to i32
  %75 = call i32 @__ngx_inet_set_port(i32 %72, i32 %74)
  %76 = load i64, i64* @NGX_OK, align 8
  store i64 %76, i64* %5, align 8
  br label %77

77:                                               ; preds = %69, %67, %52, %34, %23
  %78 = load i64, i64* %5, align 8
  ret i64 %78
}

declare dso_local i64 @ngx_parse_addr(i32*, %struct.TYPE_4__*, i8*, i64) #1

declare dso_local i8* @ngx_strlchr(i8*, i8*, i8 signext) #1

declare dso_local i64 @ngx_atoi(i8*, i64) #1

declare dso_local i32 @__ngx_inet_set_port(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
