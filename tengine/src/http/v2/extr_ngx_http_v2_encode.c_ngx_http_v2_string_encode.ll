; ModuleID = '/home/carl/AnghaBench/tengine/src/http/v2/extr_ngx_http_v2_encode.c_ngx_http_v2_string_encode.c'
source_filename = "/home/carl/AnghaBench/tengine/src/http/v2/extr_ngx_http_v2_encode.c_ngx_http_v2_string_encode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NGX_HTTP_V2_ENCODE_HUFF = common dso_local global i32 0, align 4
@NGX_HTTP_V2_ENCODE_RAW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @ngx_http_v2_string_encode(i32* %0, i32* %1, i64 %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %13 = load i32*, i32** %8, align 8
  %14 = load i64, i64* %9, align 8
  %15 = load i32*, i32** %10, align 8
  %16 = load i64, i64* %11, align 8
  %17 = call i64 @ngx_http_v2_huff_encode(i32* %13, i64 %14, i32* %15, i64 %16)
  store i64 %17, i64* %12, align 8
  %18 = load i64, i64* %12, align 8
  %19 = icmp ugt i64 %18, 0
  br i1 %19, label %20, label %31

20:                                               ; preds = %5
  %21 = load i32, i32* @NGX_HTTP_V2_ENCODE_HUFF, align 4
  %22 = load i32*, i32** %7, align 8
  store i32 %21, i32* %22, align 4
  %23 = load i32*, i32** %7, align 8
  %24 = call i32 @ngx_http_v2_prefix(i32 7)
  %25 = load i64, i64* %12, align 8
  %26 = call i32* @ngx_http_v2_write_int(i32* %23, i32 %24, i64 %25)
  store i32* %26, i32** %7, align 8
  %27 = load i32*, i32** %7, align 8
  %28 = load i32*, i32** %10, align 8
  %29 = load i64, i64* %12, align 8
  %30 = call i32* @ngx_cpymem(i32* %27, i32* %28, i64 %29)
  store i32* %30, i32** %6, align 8
  br label %53

31:                                               ; preds = %5
  %32 = load i32, i32* @NGX_HTTP_V2_ENCODE_RAW, align 4
  %33 = load i32*, i32** %7, align 8
  store i32 %32, i32* %33, align 4
  %34 = load i32*, i32** %7, align 8
  %35 = call i32 @ngx_http_v2_prefix(i32 7)
  %36 = load i64, i64* %9, align 8
  %37 = call i32* @ngx_http_v2_write_int(i32* %34, i32 %35, i64 %36)
  store i32* %37, i32** %7, align 8
  %38 = load i64, i64* %11, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %31
  %41 = load i32*, i32** %7, align 8
  %42 = load i32*, i32** %8, align 8
  %43 = load i64, i64* %9, align 8
  %44 = call i32 @ngx_strlow(i32* %41, i32* %42, i64 %43)
  %45 = load i32*, i32** %7, align 8
  %46 = load i64, i64* %9, align 8
  %47 = getelementptr inbounds i32, i32* %45, i64 %46
  store i32* %47, i32** %6, align 8
  br label %53

48:                                               ; preds = %31
  %49 = load i32*, i32** %7, align 8
  %50 = load i32*, i32** %8, align 8
  %51 = load i64, i64* %9, align 8
  %52 = call i32* @ngx_cpymem(i32* %49, i32* %50, i64 %51)
  store i32* %52, i32** %6, align 8
  br label %53

53:                                               ; preds = %48, %40, %20
  %54 = load i32*, i32** %6, align 8
  ret i32* %54
}

declare dso_local i64 @ngx_http_v2_huff_encode(i32*, i64, i32*, i64) #1

declare dso_local i32* @ngx_http_v2_write_int(i32*, i32, i64) #1

declare dso_local i32 @ngx_http_v2_prefix(i32) #1

declare dso_local i32* @ngx_cpymem(i32*, i32*, i64) #1

declare dso_local i32 @ngx_strlow(i32*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
