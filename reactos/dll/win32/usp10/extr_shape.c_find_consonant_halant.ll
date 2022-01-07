; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/usp10/extr_shape.c_find_consonant_halant.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/usp10/extr_shape.c_find_consonant_halant.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@lex_Halant = common dso_local global i64 0, align 8
@lex_Nukta = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64*, i32, i32, i64 (i32)*)* @find_consonant_halant to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_consonant_halant(i64* %0, i32 %1, i32 %2, i64 (i32)* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64 (i32)*, align 8
  %10 = alloca i32, align 4
  store i64* %0, i64** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64 (i32)* %3, i64 (i32)** %9, align 8
  store i32 0, i32* %10, align 4
  br label %11

11:                                               ; preds = %90, %4
  %12 = load i32, i32* %10, align 4
  %13 = load i32, i32* %7, align 4
  %14 = add nsw i32 %12, %13
  %15 = load i32, i32* %8, align 4
  %16 = sub nsw i32 %15, 1
  %17 = icmp slt i32 %14, %16
  br i1 %17, label %18, label %88

18:                                               ; preds = %11
  %19 = load i64 (i32)*, i64 (i32)** %9, align 8
  %20 = load i64*, i64** %6, align 8
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* %10, align 4
  %23 = add nsw i32 %21, %22
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i64, i64* %20, i64 %24
  %26 = load i64, i64* %25, align 8
  %27 = trunc i64 %26 to i32
  %28 = call i64 %19(i32 %27)
  %29 = call i64 @is_consonant(i64 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %85

31:                                               ; preds = %18
  %32 = load i64 (i32)*, i64 (i32)** %9, align 8
  %33 = load i64*, i64** %6, align 8
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* %10, align 4
  %36 = add nsw i32 %34, %35
  %37 = add nsw i32 %36, 1
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i64, i64* %33, i64 %38
  %40 = load i64, i64* %39, align 8
  %41 = trunc i64 %40 to i32
  %42 = call i64 %32(i32 %41)
  %43 = load i64, i64* @lex_Halant, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %83, label %45

45:                                               ; preds = %31
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* %10, align 4
  %48 = add nsw i32 %46, %47
  %49 = load i32, i32* %8, align 4
  %50 = sub nsw i32 %49, 2
  %51 = icmp slt i32 %48, %50
  br i1 %51, label %52, label %81

52:                                               ; preds = %45
  %53 = load i64 (i32)*, i64 (i32)** %9, align 8
  %54 = load i64*, i64** %6, align 8
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* %10, align 4
  %57 = add nsw i32 %55, %56
  %58 = add nsw i32 %57, 1
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i64, i64* %54, i64 %59
  %61 = load i64, i64* %60, align 8
  %62 = trunc i64 %61 to i32
  %63 = call i64 %53(i32 %62)
  %64 = load i64, i64* @lex_Nukta, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %81

66:                                               ; preds = %52
  %67 = load i64 (i32)*, i64 (i32)** %9, align 8
  %68 = load i64*, i64** %6, align 8
  %69 = load i32, i32* %7, align 4
  %70 = load i32, i32* %10, align 4
  %71 = add nsw i32 %69, %70
  %72 = add nsw i32 %71, 2
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i64, i64* %68, i64 %73
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @lex_Halant, align 8
  %77 = icmp eq i64 %75, %76
  %78 = zext i1 %77 to i32
  %79 = call i64 %67(i32 %78)
  %80 = icmp ne i64 %79, 0
  br label %81

81:                                               ; preds = %66, %52, %45
  %82 = phi i1 [ false, %52 ], [ false, %45 ], [ %80, %66 ]
  br label %83

83:                                               ; preds = %81, %31
  %84 = phi i1 [ true, %31 ], [ %82, %81 ]
  br label %85

85:                                               ; preds = %83, %18
  %86 = phi i1 [ false, %18 ], [ %84, %83 ]
  %87 = xor i1 %86, true
  br label %88

88:                                               ; preds = %85, %11
  %89 = phi i1 [ false, %11 ], [ %87, %85 ]
  br i1 %89, label %90, label %93

90:                                               ; preds = %88
  %91 = load i32, i32* %10, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %10, align 4
  br label %11

93:                                               ; preds = %88
  %94 = load i32, i32* %7, align 4
  %95 = load i32, i32* %10, align 4
  %96 = add nsw i32 %94, %95
  %97 = load i32, i32* %8, align 4
  %98 = sub nsw i32 %97, 1
  %99 = icmp sle i32 %96, %98
  br i1 %99, label %100, label %104

100:                                              ; preds = %93
  %101 = load i32, i32* %7, align 4
  %102 = load i32, i32* %10, align 4
  %103 = add nsw i32 %101, %102
  store i32 %103, i32* %5, align 4
  br label %105

104:                                              ; preds = %93
  store i32 -1, i32* %5, align 4
  br label %105

105:                                              ; preds = %104, %100
  %106 = load i32, i32* %5, align 4
  ret i32 %106
}

declare dso_local i64 @is_consonant(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
