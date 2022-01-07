; ModuleID = '/home/carl/AnghaBench/stb/tests/extr_prereleasestb_lib.h_stb_crc32_block.c'
source_filename = "/home/carl/AnghaBench/stb/tests/extr_prereleasestb_lib.h_stb_crc32_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stb_crc32_block.crc_table = internal global [256 x i32] zeroinitializer, align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @stb_crc32_block(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* %4, align 4
  %11 = xor i32 %10, -1
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* getelementptr inbounds ([256 x i32], [256 x i32]* @stb_crc32_block.crc_table, i64 0, i64 1), align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %44

14:                                               ; preds = %3
  store i32 0, i32* %7, align 4
  br label %15

15:                                               ; preds = %40, %14
  %16 = load i32, i32* %7, align 4
  %17 = icmp slt i32 %16, 256
  br i1 %17, label %18, label %43

18:                                               ; preds = %15
  %19 = load i32, i32* %7, align 4
  store i32 %19, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %20

20:                                               ; preds = %32, %18
  %21 = load i32, i32* %8, align 4
  %22 = icmp slt i32 %21, 8
  br i1 %22, label %23, label %35

23:                                               ; preds = %20
  %24 = load i32, i32* %9, align 4
  %25 = ashr i32 %24, 1
  %26 = load i32, i32* %9, align 4
  %27 = and i32 %26, 1
  %28 = icmp ne i32 %27, 0
  %29 = zext i1 %28 to i64
  %30 = select i1 %28, i32 -306674912, i32 0
  %31 = xor i32 %25, %30
  store i32 %31, i32* %9, align 4
  br label %32

32:                                               ; preds = %23
  %33 = load i32, i32* %8, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %8, align 4
  br label %20

35:                                               ; preds = %20
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* %7, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [256 x i32], [256 x i32]* @stb_crc32_block.crc_table, i64 0, i64 %38
  store i32 %36, i32* %39, align 4
  br label %40

40:                                               ; preds = %35
  %41 = load i32, i32* %7, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %7, align 4
  br label %15

43:                                               ; preds = %15
  br label %44

44:                                               ; preds = %43, %3
  store i32 0, i32* %7, align 4
  br label %45

45:                                               ; preds = %65, %44
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* %6, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %68

49:                                               ; preds = %45
  %50 = load i32, i32* %4, align 4
  %51 = ashr i32 %50, 8
  %52 = load i8*, i8** %5, align 8
  %53 = load i32, i32* %7, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8, i8* %52, i64 %54
  %56 = load i8, i8* %55, align 1
  %57 = zext i8 %56 to i32
  %58 = load i32, i32* %4, align 4
  %59 = and i32 %58, 255
  %60 = xor i32 %57, %59
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds [256 x i32], [256 x i32]* @stb_crc32_block.crc_table, i64 0, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = xor i32 %51, %63
  store i32 %64, i32* %4, align 4
  br label %65

65:                                               ; preds = %49
  %66 = load i32, i32* %7, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %7, align 4
  br label %45

68:                                               ; preds = %45
  %69 = load i32, i32* %4, align 4
  %70 = xor i32 %69, -1
  ret i32 %70
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
