; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/usp10/extr_shape.c_find_halant_consonant.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/usp10/extr_shape.c_find_halant_consonant.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@lex_Halant = common dso_local global i64 0, align 8
@lex_Nukta = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32, i64 (i32)*)* @find_halant_consonant to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_halant_consonant(i32* %0, i32 %1, i32 %2, i64 (i32)* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64 (i32)*, align 8
  %10 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64 (i32)* %3, i64 (i32)** %9, align 8
  store i32 0, i32* %10, align 4
  br label %11

11:                                               ; preds = %82, %4
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* %10, align 4
  %14 = add nsw i32 %12, %13
  %15 = load i32, i32* %8, align 4
  %16 = sub nsw i32 %15, 1
  %17 = icmp slt i32 %14, %16
  br i1 %17, label %18, label %80

18:                                               ; preds = %11
  %19 = load i64 (i32)*, i64 (i32)** %9, align 8
  %20 = load i32*, i32** %6, align 8
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* %10, align 4
  %23 = add nsw i32 %21, %22
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %20, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = call i64 %19(i32 %26)
  %28 = load i64, i64* @lex_Halant, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %77

30:                                               ; preds = %18
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* %10, align 4
  %33 = add nsw i32 %31, %32
  %34 = load i32, i32* %8, align 4
  %35 = sub nsw i32 %34, 2
  %36 = icmp slt i32 %33, %35
  br i1 %36, label %37, label %62

37:                                               ; preds = %30
  %38 = load i64 (i32)*, i64 (i32)** %9, align 8
  %39 = load i32*, i32** %6, align 8
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* %10, align 4
  %42 = add nsw i32 %40, %41
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %39, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = call i64 %38(i32 %45)
  %47 = load i64, i64* @lex_Nukta, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %62

49:                                               ; preds = %37
  %50 = load i64 (i32)*, i64 (i32)** %9, align 8
  %51 = load i32*, i32** %6, align 8
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* %10, align 4
  %54 = add nsw i32 %52, %53
  %55 = add nsw i32 %54, 1
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %51, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = call i64 %50(i32 %58)
  %60 = call i64 @is_consonant(i64 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %75, label %62

62:                                               ; preds = %49, %37, %30
  %63 = load i64 (i32)*, i64 (i32)** %9, align 8
  %64 = load i32*, i32** %6, align 8
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* %10, align 4
  %67 = add nsw i32 %65, %66
  %68 = add nsw i32 %67, 1
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %64, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = call i64 %63(i32 %71)
  %73 = call i64 @is_consonant(i64 %72)
  %74 = icmp ne i64 %73, 0
  br label %75

75:                                               ; preds = %62, %49
  %76 = phi i1 [ true, %49 ], [ %74, %62 ]
  br label %77

77:                                               ; preds = %75, %18
  %78 = phi i1 [ false, %18 ], [ %76, %75 ]
  %79 = xor i1 %78, true
  br label %80

80:                                               ; preds = %77, %11
  %81 = phi i1 [ false, %11 ], [ %79, %77 ]
  br i1 %81, label %82, label %85

82:                                               ; preds = %80
  %83 = load i32, i32* %10, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %10, align 4
  br label %11

85:                                               ; preds = %80
  %86 = load i32, i32* %7, align 4
  %87 = load i32, i32* %10, align 4
  %88 = add nsw i32 %86, %87
  %89 = load i32, i32* %8, align 4
  %90 = sub nsw i32 %89, 1
  %91 = icmp sle i32 %88, %90
  br i1 %91, label %92, label %96

92:                                               ; preds = %85
  %93 = load i32, i32* %7, align 4
  %94 = load i32, i32* %10, align 4
  %95 = add nsw i32 %93, %94
  store i32 %95, i32* %5, align 4
  br label %97

96:                                               ; preds = %85
  store i32 -1, i32* %5, align 4
  br label %97

97:                                               ; preds = %96, %92
  %98 = load i32, i32* %5, align 4
  ret i32 %98
}

declare dso_local i64 @is_consonant(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
