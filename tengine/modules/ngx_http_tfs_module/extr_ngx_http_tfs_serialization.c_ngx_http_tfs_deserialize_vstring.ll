; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_tfs_module/extr_ngx_http_tfs_serialization.c_ngx_http_tfs_deserialize_vstring.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_tfs_module/extr_ngx_http_tfs_serialization.c_ngx_http_tfs_deserialize_vstring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NGX_ERROR = common dso_local global i64 0, align 8
@NGX_OK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ngx_http_tfs_deserialize_vstring(i32** %0, i32* %1, i32* %2, i32** %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store i32** %0, i32*** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32** %3, i32*** %9, align 8
  %13 = load i32**, i32*** %6, align 8
  %14 = load i32*, i32** %13, align 8
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %10, align 4
  %16 = load i32**, i32*** %6, align 8
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 4
  store i32* %18, i32** %16, align 8
  %19 = load i32, i32* %10, align 4
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %97

21:                                               ; preds = %4
  %22 = load i32**, i32*** %9, align 8
  %23 = load i32*, i32** %22, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %39

25:                                               ; preds = %21
  %26 = load i32*, i32** %7, align 8
  %27 = load i32, i32* %10, align 4
  %28 = sext i32 %27 to i64
  %29 = mul i64 4, %28
  %30 = trunc i64 %29 to i32
  %31 = call i32* @ngx_pcalloc(i32* %26, i32 %30)
  %32 = load i32**, i32*** %9, align 8
  store i32* %31, i32** %32, align 8
  %33 = load i32**, i32*** %9, align 8
  %34 = load i32*, i32** %33, align 8
  %35 = icmp eq i32* %34, null
  br i1 %35, label %36, label %38

36:                                               ; preds = %25
  %37 = load i64, i64* @NGX_ERROR, align 8
  store i64 %37, i64* %5, align 8
  br label %101

38:                                               ; preds = %25
  br label %73

39:                                               ; preds = %21
  %40 = load i32, i32* %10, align 4
  %41 = load i32*, i32** %8, align 8
  %42 = load i32, i32* %41, align 4
  %43 = icmp sgt i32 %40, %42
  br i1 %43, label %44, label %72

44:                                               ; preds = %39
  %45 = load i32*, i32** %7, align 8
  %46 = load i32**, i32*** %9, align 8
  %47 = load i32*, i32** %46, align 8
  %48 = load i32*, i32** %8, align 8
  %49 = load i32, i32* %48, align 4
  %50 = sext i32 %49 to i64
  %51 = mul i64 4, %50
  %52 = trunc i64 %51 to i32
  %53 = load i32, i32* %10, align 4
  %54 = sext i32 %53 to i64
  %55 = mul i64 4, %54
  %56 = trunc i64 %55 to i32
  %57 = call i32* @ngx_prealloc(i32* %45, i32* %47, i32 %52, i32 %56)
  %58 = load i32**, i32*** %9, align 8
  store i32* %57, i32** %58, align 8
  %59 = load i32**, i32*** %9, align 8
  %60 = load i32*, i32** %59, align 8
  %61 = icmp eq i32* %60, null
  br i1 %61, label %62, label %64

62:                                               ; preds = %44
  %63 = load i64, i64* @NGX_ERROR, align 8
  store i64 %63, i64* %5, align 8
  br label %101

64:                                               ; preds = %44
  %65 = load i32**, i32*** %9, align 8
  %66 = load i32*, i32** %65, align 8
  %67 = load i32, i32* %10, align 4
  %68 = sext i32 %67 to i64
  %69 = mul i64 4, %68
  %70 = trunc i64 %69 to i32
  %71 = call i32 @ngx_memzero(i32* %66, i32 %70)
  br label %72

72:                                               ; preds = %64, %39
  br label %73

73:                                               ; preds = %72, %38
  store i32 0, i32* %11, align 4
  br label %74

74:                                               ; preds = %93, %73
  %75 = load i32, i32* %11, align 4
  %76 = load i32, i32* %10, align 4
  %77 = icmp slt i32 %75, %76
  br i1 %77, label %78, label %96

78:                                               ; preds = %74
  %79 = load i32**, i32*** %6, align 8
  %80 = load i32*, i32** %7, align 8
  %81 = load i32**, i32*** %9, align 8
  %82 = load i32*, i32** %81, align 8
  %83 = load i32, i32* %11, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  %86 = call i64 @ngx_http_tfs_deserialize_string(i32** %79, i32* %80, i32* %85)
  store i64 %86, i64* %12, align 8
  %87 = load i64, i64* %12, align 8
  %88 = load i64, i64* @NGX_ERROR, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %92

90:                                               ; preds = %78
  %91 = load i64, i64* @NGX_ERROR, align 8
  store i64 %91, i64* %5, align 8
  br label %101

92:                                               ; preds = %78
  br label %93

93:                                               ; preds = %92
  %94 = load i32, i32* %11, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %11, align 4
  br label %74

96:                                               ; preds = %74
  br label %97

97:                                               ; preds = %96, %4
  %98 = load i32, i32* %10, align 4
  %99 = load i32*, i32** %8, align 8
  store i32 %98, i32* %99, align 4
  %100 = load i64, i64* @NGX_OK, align 8
  store i64 %100, i64* %5, align 8
  br label %101

101:                                              ; preds = %97, %90, %62, %36
  %102 = load i64, i64* %5, align 8
  ret i64 %102
}

declare dso_local i32* @ngx_pcalloc(i32*, i32) #1

declare dso_local i32* @ngx_prealloc(i32*, i32*, i32, i32) #1

declare dso_local i32 @ngx_memzero(i32*, i32) #1

declare dso_local i64 @ngx_http_tfs_deserialize_string(i32**, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
