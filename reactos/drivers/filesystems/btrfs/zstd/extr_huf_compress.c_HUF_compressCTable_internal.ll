; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/btrfs/zstd/extr_huf_compress.c_HUF_compressCTable_internal.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/btrfs/zstd/extr_huf_compress.c_HUF_compressCTable_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i32*, i32*, i8*, i64, i32, i32*, i32)* @HUF_compressCTable_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @HUF_compressCTable_internal(i32* %0, i32* %1, i32* %2, i8* %3, i64 %4, i32 %5, i32* %6, i32 %7) #0 {
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  store i32* %0, i32** %10, align 8
  store i32* %1, i32** %11, align 8
  store i32* %2, i32** %12, align 8
  store i8* %3, i8** %13, align 8
  store i64 %4, i64* %14, align 8
  store i32 %5, i32* %15, align 4
  store i32* %6, i32** %16, align 8
  store i32 %7, i32* %17, align 4
  %19 = load i32, i32* %15, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %35

21:                                               ; preds = %8
  %22 = load i32*, i32** %11, align 8
  %23 = load i32*, i32** %12, align 8
  %24 = load i32*, i32** %11, align 8
  %25 = ptrtoint i32* %23 to i64
  %26 = ptrtoint i32* %24 to i64
  %27 = sub i64 %25, %26
  %28 = sdiv exact i64 %27, 4
  %29 = trunc i64 %28 to i32
  %30 = load i8*, i8** %13, align 8
  %31 = load i64, i64* %14, align 8
  %32 = load i32*, i32** %16, align 8
  %33 = load i32, i32* %17, align 4
  %34 = call i64 @HUF_compress1X_usingCTable_internal(i32* %22, i32 %29, i8* %30, i64 %31, i32* %32, i32 %33)
  br label %49

35:                                               ; preds = %8
  %36 = load i32*, i32** %11, align 8
  %37 = load i32*, i32** %12, align 8
  %38 = load i32*, i32** %11, align 8
  %39 = ptrtoint i32* %37 to i64
  %40 = ptrtoint i32* %38 to i64
  %41 = sub i64 %39, %40
  %42 = sdiv exact i64 %41, 4
  %43 = trunc i64 %42 to i32
  %44 = load i8*, i8** %13, align 8
  %45 = load i64, i64* %14, align 8
  %46 = load i32*, i32** %16, align 8
  %47 = load i32, i32* %17, align 4
  %48 = call i64 @HUF_compress4X_usingCTable_internal(i32* %36, i32 %43, i8* %44, i64 %45, i32* %46, i32 %47)
  br label %49

49:                                               ; preds = %35, %21
  %50 = phi i64 [ %34, %21 ], [ %48, %35 ]
  store i64 %50, i64* %18, align 8
  %51 = load i64, i64* %18, align 8
  %52 = call i64 @HUF_isError(i64 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %49
  %55 = load i64, i64* %18, align 8
  store i64 %55, i64* %9, align 8
  br label %81

56:                                               ; preds = %49
  %57 = load i64, i64* %18, align 8
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %56
  store i64 0, i64* %9, align 8
  br label %81

60:                                               ; preds = %56
  %61 = load i64, i64* %18, align 8
  %62 = load i32*, i32** %11, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 %61
  store i32* %63, i32** %11, align 8
  %64 = load i32*, i32** %11, align 8
  %65 = load i32*, i32** %10, align 8
  %66 = ptrtoint i32* %64 to i64
  %67 = ptrtoint i32* %65 to i64
  %68 = sub i64 %66, %67
  %69 = sdiv exact i64 %68, 4
  %70 = load i64, i64* %14, align 8
  %71 = sub i64 %70, 1
  %72 = icmp uge i64 %69, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %60
  store i64 0, i64* %9, align 8
  br label %81

74:                                               ; preds = %60
  %75 = load i32*, i32** %11, align 8
  %76 = load i32*, i32** %10, align 8
  %77 = ptrtoint i32* %75 to i64
  %78 = ptrtoint i32* %76 to i64
  %79 = sub i64 %77, %78
  %80 = sdiv exact i64 %79, 4
  store i64 %80, i64* %9, align 8
  br label %81

81:                                               ; preds = %74, %73, %59, %54
  %82 = load i64, i64* %9, align 8
  ret i64 %82
}

declare dso_local i64 @HUF_compress1X_usingCTable_internal(i32*, i32, i8*, i64, i32*, i32) #1

declare dso_local i64 @HUF_compress4X_usingCTable_internal(i32*, i32, i8*, i64, i32*, i32) #1

declare dso_local i64 @HUF_isError(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
