; ModuleID = '/home/carl/AnghaBench/zstd/contrib/linux-kernel/lib/zstd/extr_huf_compress.c_HUF_compressCTable_internal.c'
source_filename = "/home/carl/AnghaBench/zstd/contrib/linux-kernel/lib/zstd/extr_huf_compress.c_HUF_compressCTable_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i32*, i32*, i8*, i64, i32, i32*)* @HUF_compressCTable_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @HUF_compressCTable_internal(i32* %0, i32* %1, i32* %2, i8* %3, i64 %4, i32 %5, i32* %6) #0 {
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i64, align 8
  store i32* %0, i32** %9, align 8
  store i32* %1, i32** %10, align 8
  store i32* %2, i32** %11, align 8
  store i8* %3, i8** %12, align 8
  store i64 %4, i64* %13, align 8
  store i32 %5, i32* %14, align 4
  store i32* %6, i32** %15, align 8
  %17 = load i32, i32* %14, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %32

19:                                               ; preds = %7
  %20 = load i32*, i32** %10, align 8
  %21 = load i32*, i32** %11, align 8
  %22 = load i32*, i32** %10, align 8
  %23 = ptrtoint i32* %21 to i64
  %24 = ptrtoint i32* %22 to i64
  %25 = sub i64 %23, %24
  %26 = sdiv exact i64 %25, 4
  %27 = trunc i64 %26 to i32
  %28 = load i8*, i8** %12, align 8
  %29 = load i64, i64* %13, align 8
  %30 = load i32*, i32** %15, align 8
  %31 = call i64 @HUF_compress1X_usingCTable(i32* %20, i32 %27, i8* %28, i64 %29, i32* %30)
  br label %45

32:                                               ; preds = %7
  %33 = load i32*, i32** %10, align 8
  %34 = load i32*, i32** %11, align 8
  %35 = load i32*, i32** %10, align 8
  %36 = ptrtoint i32* %34 to i64
  %37 = ptrtoint i32* %35 to i64
  %38 = sub i64 %36, %37
  %39 = sdiv exact i64 %38, 4
  %40 = trunc i64 %39 to i32
  %41 = load i8*, i8** %12, align 8
  %42 = load i64, i64* %13, align 8
  %43 = load i32*, i32** %15, align 8
  %44 = call i64 @HUF_compress4X_usingCTable(i32* %33, i32 %40, i8* %41, i64 %42, i32* %43)
  br label %45

45:                                               ; preds = %32, %19
  %46 = phi i64 [ %31, %19 ], [ %44, %32 ]
  store i64 %46, i64* %16, align 8
  %47 = load i64, i64* %16, align 8
  %48 = call i64 @HUF_isError(i64 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %45
  %51 = load i64, i64* %16, align 8
  store i64 %51, i64* %8, align 8
  br label %77

52:                                               ; preds = %45
  %53 = load i64, i64* %16, align 8
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %52
  store i64 0, i64* %8, align 8
  br label %77

56:                                               ; preds = %52
  %57 = load i64, i64* %16, align 8
  %58 = load i32*, i32** %10, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 %57
  store i32* %59, i32** %10, align 8
  %60 = load i32*, i32** %10, align 8
  %61 = load i32*, i32** %9, align 8
  %62 = ptrtoint i32* %60 to i64
  %63 = ptrtoint i32* %61 to i64
  %64 = sub i64 %62, %63
  %65 = sdiv exact i64 %64, 4
  %66 = load i64, i64* %13, align 8
  %67 = sub i64 %66, 1
  %68 = icmp uge i64 %65, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %56
  store i64 0, i64* %8, align 8
  br label %77

70:                                               ; preds = %56
  %71 = load i32*, i32** %10, align 8
  %72 = load i32*, i32** %9, align 8
  %73 = ptrtoint i32* %71 to i64
  %74 = ptrtoint i32* %72 to i64
  %75 = sub i64 %73, %74
  %76 = sdiv exact i64 %75, 4
  store i64 %76, i64* %8, align 8
  br label %77

77:                                               ; preds = %70, %69, %55, %50
  %78 = load i64, i64* %8, align 8
  ret i64 %78
}

declare dso_local i64 @HUF_compress1X_usingCTable(i32*, i32, i8*, i64, i32*) #1

declare dso_local i64 @HUF_compress4X_usingCTable(i32*, i32, i8*, i64, i32*) #1

declare dso_local i64 @HUF_isError(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
