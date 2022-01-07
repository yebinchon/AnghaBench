; ModuleID = '/home/carl/AnghaBench/tengine/modules/ngx_http_tfs_module/extr_ngx_tfs_common.c_ngx_http_tfs_murmur_hash.c'
source_filename = "/home/carl/AnghaBench/tengine/modules/ngx_http_tfs_module/extr_ngx_tfs_common.c_ngx_http_tfs_murmur_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NGX_HTTP_TFS_MUR_HASH_SEED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ngx_http_tfs_murmur_hash(i32* %0, i64 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load i64, i64* @NGX_HTTP_TFS_MUR_HASH_SEED, align 8
  %8 = load i64, i64* %4, align 8
  %9 = xor i64 %7, %8
  %10 = trunc i64 %9 to i32
  store i32 %10, i32* %5, align 4
  br label %11

11:                                               ; preds = %14, %2
  %12 = load i64, i64* %4, align 8
  %13 = icmp uge i64 %12, 4
  br i1 %13, label %14, label %53

14:                                               ; preds = %11
  %15 = load i32*, i32** %3, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %6, align 4
  %18 = load i32*, i32** %3, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 1
  %20 = load i32, i32* %19, align 4
  %21 = shl i32 %20, 8
  %22 = load i32, i32* %6, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %6, align 4
  %24 = load i32*, i32** %3, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 2
  %26 = load i32, i32* %25, align 4
  %27 = shl i32 %26, 16
  %28 = load i32, i32* %6, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %6, align 4
  %30 = load i32*, i32** %3, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 3
  %32 = load i32, i32* %31, align 4
  %33 = shl i32 %32, 24
  %34 = load i32, i32* %6, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = mul nsw i32 %36, 1540483477
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = ashr i32 %38, 24
  %40 = load i32, i32* %6, align 4
  %41 = xor i32 %40, %39
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = mul nsw i32 %42, 1540483477
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %5, align 4
  %45 = mul nsw i32 %44, 1540483477
  store i32 %45, i32* %5, align 4
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* %5, align 4
  %48 = xor i32 %47, %46
  store i32 %48, i32* %5, align 4
  %49 = load i32*, i32** %3, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 4
  store i32* %50, i32** %3, align 8
  %51 = load i64, i64* %4, align 8
  %52 = sub i64 %51, 4
  store i64 %52, i64* %4, align 8
  br label %11

53:                                               ; preds = %11
  %54 = load i64, i64* %4, align 8
  switch i64 %54, label %77 [
    i64 3, label %55
    i64 2, label %62
    i64 1, label %69
  ]

55:                                               ; preds = %53
  %56 = load i32*, i32** %3, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 2
  %58 = load i32, i32* %57, align 4
  %59 = shl i32 %58, 16
  %60 = load i32, i32* %5, align 4
  %61 = xor i32 %60, %59
  store i32 %61, i32* %5, align 4
  br label %62

62:                                               ; preds = %53, %55
  %63 = load i32*, i32** %3, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 1
  %65 = load i32, i32* %64, align 4
  %66 = shl i32 %65, 8
  %67 = load i32, i32* %5, align 4
  %68 = xor i32 %67, %66
  store i32 %68, i32* %5, align 4
  br label %69

69:                                               ; preds = %53, %62
  %70 = load i32*, i32** %3, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %5, align 4
  %74 = xor i32 %73, %72
  store i32 %74, i32* %5, align 4
  %75 = load i32, i32* %5, align 4
  %76 = mul nsw i32 %75, 1540483477
  store i32 %76, i32* %5, align 4
  br label %77

77:                                               ; preds = %69, %53
  %78 = load i32, i32* %5, align 4
  %79 = ashr i32 %78, 13
  %80 = load i32, i32* %5, align 4
  %81 = xor i32 %80, %79
  store i32 %81, i32* %5, align 4
  %82 = load i32, i32* %5, align 4
  %83 = mul nsw i32 %82, 1540483477
  store i32 %83, i32* %5, align 4
  %84 = load i32, i32* %5, align 4
  %85 = ashr i32 %84, 15
  %86 = load i32, i32* %5, align 4
  %87 = xor i32 %86, %85
  store i32 %87, i32* %5, align 4
  %88 = load i32, i32* %5, align 4
  ret i32 %88
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
