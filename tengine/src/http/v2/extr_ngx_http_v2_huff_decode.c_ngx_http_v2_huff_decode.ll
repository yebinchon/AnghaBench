; ModuleID = '/home/carl/AnghaBench/tengine/src/http/v2/extr_ngx_http_v2_huff_decode.c_ngx_http_v2_huff_decode.c'
source_filename = "/home/carl/AnghaBench/tengine/src/http/v2/extr_ngx_http_v2_huff_decode.c_ngx_http_v2_huff_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NGX_OK = common dso_local global i64 0, align 8
@NGX_LOG_DEBUG_HTTP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"http2 huffman decoding error at state %d: bad code 0x%Xd\00", align 1
@NGX_ERROR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [52 x i8] c"http2 huffman decoding error: incomplete code 0x%Xd\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ngx_http_v2_huff_decode(i32* %0, i32* %1, i64 %2, i32** %3, i64 %4, i32* %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32**, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i64 %2, i64* %10, align 8
  store i32** %3, i32*** %11, align 8
  store i64 %4, i64* %12, align 8
  store i32* %5, i32** %13, align 8
  store i32 0, i32* %15, align 4
  store i32 1, i32* %16, align 4
  %17 = load i32*, i32** %9, align 8
  %18 = load i64, i64* %10, align 8
  %19 = getelementptr inbounds i32, i32* %17, i64 %18
  store i32* %19, i32** %14, align 8
  br label %20

20:                                               ; preds = %61, %6
  %21 = load i32*, i32** %9, align 8
  %22 = load i32*, i32** %14, align 8
  %23 = icmp ne i32* %21, %22
  br i1 %23, label %24, label %62

24:                                               ; preds = %20
  %25 = load i32*, i32** %9, align 8
  %26 = getelementptr inbounds i32, i32* %25, i32 1
  store i32* %26, i32** %9, align 8
  %27 = load i32, i32* %25, align 4
  store i32 %27, i32* %15, align 4
  %28 = load i32*, i32** %8, align 8
  %29 = load i32, i32* %15, align 4
  %30 = ashr i32 %29, 4
  %31 = load i32**, i32*** %11, align 8
  %32 = call i64 @ngx_http_v2_huff_decode_bits(i32* %28, i32* %16, i32 %30, i32** %31)
  %33 = load i64, i64* @NGX_OK, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %44

35:                                               ; preds = %24
  %36 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %37 = load i32*, i32** %13, align 8
  %38 = load i32*, i32** %8, align 8
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %15, align 4
  %41 = ashr i32 %40, 4
  %42 = call i32 @ngx_log_debug2(i32 %36, i32* %37, i32 0, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %39, i32 %41)
  %43 = load i64, i64* @NGX_ERROR, align 8
  store i64 %43, i64* %7, align 8
  br label %78

44:                                               ; preds = %24
  %45 = load i32*, i32** %8, align 8
  %46 = load i32, i32* %15, align 4
  %47 = and i32 %46, 15
  %48 = load i32**, i32*** %11, align 8
  %49 = call i64 @ngx_http_v2_huff_decode_bits(i32* %45, i32* %16, i32 %47, i32** %48)
  %50 = load i64, i64* @NGX_OK, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %61

52:                                               ; preds = %44
  %53 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %54 = load i32*, i32** %13, align 8
  %55 = load i32*, i32** %8, align 8
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %15, align 4
  %58 = and i32 %57, 15
  %59 = call i32 @ngx_log_debug2(i32 %53, i32* %54, i32 0, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %56, i32 %58)
  %60 = load i64, i64* @NGX_ERROR, align 8
  store i64 %60, i64* %7, align 8
  br label %78

61:                                               ; preds = %44
  br label %20

62:                                               ; preds = %20
  %63 = load i64, i64* %12, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %76

65:                                               ; preds = %62
  %66 = load i32, i32* %16, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %74, label %68

68:                                               ; preds = %65
  %69 = load i32, i32* @NGX_LOG_DEBUG_HTTP, align 4
  %70 = load i32*, i32** %13, align 8
  %71 = load i32, i32* %15, align 4
  %72 = call i32 @ngx_log_debug1(i32 %69, i32* %70, i32 0, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i32 %71)
  %73 = load i64, i64* @NGX_ERROR, align 8
  store i64 %73, i64* %7, align 8
  br label %78

74:                                               ; preds = %65
  %75 = load i32*, i32** %8, align 8
  store i32 0, i32* %75, align 4
  br label %76

76:                                               ; preds = %74, %62
  %77 = load i64, i64* @NGX_OK, align 8
  store i64 %77, i64* %7, align 8
  br label %78

78:                                               ; preds = %76, %68, %52, %35
  %79 = load i64, i64* %7, align 8
  ret i64 %79
}

declare dso_local i64 @ngx_http_v2_huff_decode_bits(i32*, i32*, i32, i32**) #1

declare dso_local i32 @ngx_log_debug2(i32, i32*, i32, i8*, i32, i32) #1

declare dso_local i32 @ngx_log_debug1(i32, i32*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
