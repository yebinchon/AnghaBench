; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/unarr/common/extr_conv.c_ar_conv_rune_to_utf8.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/unarr/common/extr_conv.c_ar_conv_rune_to_utf8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ar_conv_rune_to_utf8(i32 %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %8 = load i64, i64* %7, align 8
  %9 = icmp ult i64 %8, 1
  br i1 %9, label %10, label %11

10:                                               ; preds = %3
  store i64 0, i64* %4, align 8
  br label %77

11:                                               ; preds = %3
  %12 = load i32, i32* %5, align 4
  %13 = icmp slt i32 %12, 128
  br i1 %13, label %14, label %20

14:                                               ; preds = %11
  %15 = load i32, i32* %5, align 4
  %16 = and i32 %15, 127
  %17 = trunc i32 %16 to i8
  %18 = load i8*, i8** %6, align 8
  %19 = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %19, i8** %6, align 8
  store i8 %17, i8* %18, align 1
  store i64 1, i64* %4, align 8
  br label %77

20:                                               ; preds = %11
  %21 = load i32, i32* %5, align 4
  %22 = icmp slt i32 %21, 2048
  br i1 %22, label %23, label %40

23:                                               ; preds = %20
  %24 = load i64, i64* %7, align 8
  %25 = icmp uge i64 %24, 2
  br i1 %25, label %26, label %40

26:                                               ; preds = %23
  %27 = load i32, i32* %5, align 4
  %28 = ashr i32 %27, 6
  %29 = and i32 %28, 31
  %30 = or i32 192, %29
  %31 = trunc i32 %30 to i8
  %32 = load i8*, i8** %6, align 8
  %33 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %33, i8** %6, align 8
  store i8 %31, i8* %32, align 1
  %34 = load i32, i32* %5, align 4
  %35 = and i32 %34, 63
  %36 = or i32 128, %35
  %37 = trunc i32 %36 to i8
  %38 = load i8*, i8** %6, align 8
  %39 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %39, i8** %6, align 8
  store i8 %37, i8* %38, align 1
  store i64 2, i64* %4, align 8
  br label %77

40:                                               ; preds = %23, %20
  %41 = load i64, i64* %7, align 8
  %42 = icmp uge i64 %41, 3
  br i1 %42, label %43, label %74

43:                                               ; preds = %40
  %44 = load i32, i32* %5, align 4
  %45 = icmp sle i32 55296, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %43
  %47 = load i32, i32* %5, align 4
  %48 = icmp sle i32 %47, 57343
  br i1 %48, label %52, label %49

49:                                               ; preds = %46, %43
  %50 = load i32, i32* %5, align 4
  %51 = icmp sge i32 %50, 65536
  br i1 %51, label %52, label %53

52:                                               ; preds = %49, %46
  store i32 65533, i32* %5, align 4
  br label %53

53:                                               ; preds = %52, %49
  %54 = load i32, i32* %5, align 4
  %55 = ashr i32 %54, 12
  %56 = and i32 %55, 15
  %57 = or i32 224, %56
  %58 = trunc i32 %57 to i8
  %59 = load i8*, i8** %6, align 8
  %60 = getelementptr inbounds i8, i8* %59, i32 1
  store i8* %60, i8** %6, align 8
  store i8 %58, i8* %59, align 1
  %61 = load i32, i32* %5, align 4
  %62 = ashr i32 %61, 6
  %63 = and i32 %62, 63
  %64 = or i32 128, %63
  %65 = trunc i32 %64 to i8
  %66 = load i8*, i8** %6, align 8
  %67 = getelementptr inbounds i8, i8* %66, i32 1
  store i8* %67, i8** %6, align 8
  store i8 %65, i8* %66, align 1
  %68 = load i32, i32* %5, align 4
  %69 = and i32 %68, 63
  %70 = or i32 128, %69
  %71 = trunc i32 %70 to i8
  %72 = load i8*, i8** %6, align 8
  %73 = getelementptr inbounds i8, i8* %72, i32 1
  store i8* %73, i8** %6, align 8
  store i8 %71, i8* %72, align 1
  store i64 3, i64* %4, align 8
  br label %77

74:                                               ; preds = %40
  %75 = load i8*, i8** %6, align 8
  %76 = getelementptr inbounds i8, i8* %75, i32 1
  store i8* %76, i8** %6, align 8
  store i8 63, i8* %75, align 1
  store i64 1, i64* %4, align 8
  br label %77

77:                                               ; preds = %74, %53, %26, %14, %10
  %78 = load i64, i64* %4, align 8
  ret i64 %78
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
