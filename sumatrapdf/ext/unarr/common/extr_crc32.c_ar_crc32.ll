; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/unarr/common/extr_crc32.c_ar_crc32.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/unarr/common/extr_crc32.c_ar_crc32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@crc_table_ready = common dso_local global i32 0, align 4
@crc_table = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ar_crc32(i32 %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load i32, i32* @crc_table_ready, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %54, label %12

12:                                               ; preds = %3
  store i32 1, i32* %9, align 4
  %13 = load i32*, i32** @crc_table, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 0
  store i32 0, i32* %14, align 4
  store i32 128, i32* %7, align 4
  br label %15

15:                                               ; preds = %50, %12
  %16 = load i32, i32* %7, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %53

18:                                               ; preds = %15
  %19 = load i32, i32* %9, align 4
  %20 = ashr i32 %19, 1
  %21 = load i32, i32* %9, align 4
  %22 = and i32 %21, 1
  %23 = icmp ne i32 %22, 0
  %24 = zext i1 %23 to i64
  %25 = select i1 %23, i32 -306674912, i32 0
  %26 = xor i32 %20, %25
  store i32 %26, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %27

27:                                               ; preds = %44, %18
  %28 = load i32, i32* %8, align 4
  %29 = icmp slt i32 %28, 256
  br i1 %29, label %30, label %49

30:                                               ; preds = %27
  %31 = load i32*, i32** @crc_table, align 8
  %32 = load i32, i32* %8, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %9, align 4
  %37 = xor i32 %35, %36
  %38 = load i32*, i32** @crc_table, align 8
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* %8, align 4
  %41 = add nsw i32 %39, %40
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %38, i64 %42
  store i32 %37, i32* %43, align 4
  br label %44

44:                                               ; preds = %30
  %45 = load i32, i32* %7, align 4
  %46 = mul nsw i32 2, %45
  %47 = load i32, i32* %8, align 4
  %48 = add nsw i32 %47, %46
  store i32 %48, i32* %8, align 4
  br label %27

49:                                               ; preds = %27
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %7, align 4
  %52 = ashr i32 %51, 1
  store i32 %52, i32* %7, align 4
  br label %15

53:                                               ; preds = %15
  store i32 1, i32* @crc_table_ready, align 4
  br label %54

54:                                               ; preds = %53, %3
  %55 = load i32, i32* %4, align 4
  %56 = xor i32 %55, -1
  store i32 %56, i32* %4, align 4
  br label %57

57:                                               ; preds = %61, %54
  %58 = load i64, i64* %6, align 8
  %59 = add i64 %58, -1
  store i64 %59, i64* %6, align 8
  %60 = icmp ugt i64 %58, 0
  br i1 %60, label %61, label %76

61:                                               ; preds = %57
  %62 = load i32, i32* %4, align 4
  %63 = ashr i32 %62, 8
  %64 = load i32*, i32** @crc_table, align 8
  %65 = load i32, i32* %4, align 4
  %66 = load i8*, i8** %5, align 8
  %67 = getelementptr inbounds i8, i8* %66, i32 1
  store i8* %67, i8** %5, align 8
  %68 = load i8, i8* %66, align 1
  %69 = zext i8 %68 to i32
  %70 = xor i32 %65, %69
  %71 = and i32 %70, 255
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %64, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = xor i32 %63, %74
  store i32 %75, i32* %4, align 4
  br label %57

76:                                               ; preds = %57
  %77 = load i32, i32* %4, align 4
  %78 = xor i32 %77, -1
  ret i32 %78
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
