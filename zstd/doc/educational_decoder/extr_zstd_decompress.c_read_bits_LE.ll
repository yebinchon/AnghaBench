; ModuleID = '/home/carl/AnghaBench/zstd/doc/educational_decoder/extr_zstd_decompress.c_read_bits_LE.c'
source_filename = "/home/carl/AnghaBench/zstd/doc/educational_decoder/extr_zstd_decompress.c_read_bits_LE.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [42 x i8] c"Attempt to read an invalid number of bits\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i64)* @read_bits_LE to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_bits_LE(i32* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %12 = load i32, i32* %5, align 4
  %13 = icmp sgt i32 %12, 64
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = call i32 @ERROR(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  br label %16

16:                                               ; preds = %14, %3
  %17 = load i64, i64* %6, align 8
  %18 = udiv i64 %17, 8
  %19 = load i32*, i32** %4, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 %18
  store i32* %20, i32** %4, align 8
  %21 = load i64, i64* %6, align 8
  %22 = urem i64 %21, 8
  store i64 %22, i64* %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %23 = load i32, i32* %5, align 4
  store i32 %23, i32* %10, align 4
  br label %24

24:                                               ; preds = %35, %16
  %25 = load i32, i32* %10, align 4
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %61

27:                                               ; preds = %24
  %28 = load i32, i32* %10, align 4
  %29 = icmp sge i32 %28, 8
  br i1 %29, label %30, label %31

30:                                               ; preds = %27
  br label %35

31:                                               ; preds = %27
  %32 = load i32, i32* %10, align 4
  %33 = shl i32 1, %32
  %34 = sub nsw i32 %33, 1
  br label %35

35:                                               ; preds = %31, %30
  %36 = phi i32 [ 255, %30 ], [ %34, %31 ]
  store i32 %36, i32* %11, align 4
  %37 = load i32*, i32** %4, align 8
  %38 = getelementptr inbounds i32, i32* %37, i32 1
  store i32* %38, i32** %4, align 8
  %39 = load i32, i32* %37, align 4
  %40 = load i64, i64* %7, align 8
  %41 = trunc i64 %40 to i32
  %42 = ashr i32 %39, %41
  %43 = load i32, i32* %11, align 4
  %44 = and i32 %42, %43
  %45 = load i32, i32* %9, align 4
  %46 = shl i32 %44, %45
  %47 = load i32, i32* %8, align 4
  %48 = add nsw i32 %47, %46
  store i32 %48, i32* %8, align 4
  %49 = load i64, i64* %7, align 8
  %50 = sub i64 8, %49
  %51 = load i32, i32* %9, align 4
  %52 = sext i32 %51 to i64
  %53 = add i64 %52, %50
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %9, align 4
  %55 = load i64, i64* %7, align 8
  %56 = sub i64 8, %55
  %57 = load i32, i32* %10, align 4
  %58 = sext i32 %57 to i64
  %59 = sub i64 %58, %56
  %60 = trunc i64 %59 to i32
  store i32 %60, i32* %10, align 4
  store i64 0, i64* %7, align 8
  br label %24

61:                                               ; preds = %24
  %62 = load i32, i32* %8, align 4
  ret i32 %62
}

declare dso_local i32 @ERROR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
