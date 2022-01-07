; ModuleID = '/home/carl/AnghaBench/stb/tools/extr_..stb.h_stb_hash_fast.c'
source_filename = "/home/carl/AnghaBench/stb/tools/extr_..stb.h_stb_hash_fast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @stb_hash_fast(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i8*, i8** %4, align 8
  store i8* %9, i8** %6, align 8
  %10 = load i32, i32* %5, align 4
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp sle i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i8*, i8** %6, align 8
  %15 = icmp eq i8* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %13, %2
  store i32 0, i32* %3, align 4
  br label %122

17:                                               ; preds = %13
  br label %18

18:                                               ; preds = %42, %17
  %19 = load i32, i32* %5, align 4
  %20 = icmp sgt i32 %19, 3
  br i1 %20, label %21, label %45

21:                                               ; preds = %18
  %22 = load i8*, i8** %6, align 8
  %23 = call i32 @stb__get16(i8* %22)
  %24 = load i32, i32* %7, align 4
  %25 = add i32 %24, %23
  store i32 %25, i32* %7, align 4
  %26 = load i8*, i8** %6, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 2
  %28 = call i32 @stb__get16(i8* %27)
  %29 = shl i32 %28, 11
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %7, align 4
  %31 = shl i32 %30, 16
  %32 = load i32, i32* %7, align 4
  %33 = xor i32 %31, %32
  %34 = load i32, i32* %8, align 4
  %35 = xor i32 %33, %34
  store i32 %35, i32* %7, align 4
  %36 = load i8*, i8** %6, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 4
  store i8* %37, i8** %6, align 8
  %38 = load i32, i32* %7, align 4
  %39 = lshr i32 %38, 11
  %40 = load i32, i32* %7, align 4
  %41 = add i32 %40, %39
  store i32 %41, i32* %7, align 4
  br label %42

42:                                               ; preds = %21
  %43 = load i32, i32* %5, align 4
  %44 = sub nsw i32 %43, 4
  store i32 %44, i32* %5, align 4
  br label %18

45:                                               ; preds = %18
  %46 = load i32, i32* %5, align 4
  switch i32 %46, label %96 [
    i32 3, label %47
    i32 2, label %67
    i32 1, label %80
    i32 0, label %95
  ]

47:                                               ; preds = %45
  %48 = load i8*, i8** %6, align 8
  %49 = call i32 @stb__get16(i8* %48)
  %50 = load i32, i32* %7, align 4
  %51 = add i32 %50, %49
  store i32 %51, i32* %7, align 4
  %52 = load i32, i32* %7, align 4
  %53 = shl i32 %52, 16
  %54 = load i32, i32* %7, align 4
  %55 = xor i32 %54, %53
  store i32 %55, i32* %7, align 4
  %56 = load i8*, i8** %6, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 2
  %58 = load i8, i8* %57, align 1
  %59 = zext i8 %58 to i32
  %60 = shl i32 %59, 18
  %61 = load i32, i32* %7, align 4
  %62 = xor i32 %61, %60
  store i32 %62, i32* %7, align 4
  %63 = load i32, i32* %7, align 4
  %64 = lshr i32 %63, 11
  %65 = load i32, i32* %7, align 4
  %66 = add i32 %65, %64
  store i32 %66, i32* %7, align 4
  br label %96

67:                                               ; preds = %45
  %68 = load i8*, i8** %6, align 8
  %69 = call i32 @stb__get16(i8* %68)
  %70 = load i32, i32* %7, align 4
  %71 = add i32 %70, %69
  store i32 %71, i32* %7, align 4
  %72 = load i32, i32* %7, align 4
  %73 = shl i32 %72, 11
  %74 = load i32, i32* %7, align 4
  %75 = xor i32 %74, %73
  store i32 %75, i32* %7, align 4
  %76 = load i32, i32* %7, align 4
  %77 = lshr i32 %76, 17
  %78 = load i32, i32* %7, align 4
  %79 = add i32 %78, %77
  store i32 %79, i32* %7, align 4
  br label %96

80:                                               ; preds = %45
  %81 = load i8*, i8** %6, align 8
  %82 = getelementptr inbounds i8, i8* %81, i64 0
  %83 = load i8, i8* %82, align 1
  %84 = zext i8 %83 to i32
  %85 = load i32, i32* %7, align 4
  %86 = add i32 %85, %84
  store i32 %86, i32* %7, align 4
  %87 = load i32, i32* %7, align 4
  %88 = shl i32 %87, 10
  %89 = load i32, i32* %7, align 4
  %90 = xor i32 %89, %88
  store i32 %90, i32* %7, align 4
  %91 = load i32, i32* %7, align 4
  %92 = lshr i32 %91, 1
  %93 = load i32, i32* %7, align 4
  %94 = add i32 %93, %92
  store i32 %94, i32* %7, align 4
  br label %96

95:                                               ; preds = %45
  br label %96

96:                                               ; preds = %45, %95, %80, %67, %47
  %97 = load i32, i32* %7, align 4
  %98 = shl i32 %97, 3
  %99 = load i32, i32* %7, align 4
  %100 = xor i32 %99, %98
  store i32 %100, i32* %7, align 4
  %101 = load i32, i32* %7, align 4
  %102 = lshr i32 %101, 5
  %103 = load i32, i32* %7, align 4
  %104 = add i32 %103, %102
  store i32 %104, i32* %7, align 4
  %105 = load i32, i32* %7, align 4
  %106 = shl i32 %105, 4
  %107 = load i32, i32* %7, align 4
  %108 = xor i32 %107, %106
  store i32 %108, i32* %7, align 4
  %109 = load i32, i32* %7, align 4
  %110 = lshr i32 %109, 17
  %111 = load i32, i32* %7, align 4
  %112 = add i32 %111, %110
  store i32 %112, i32* %7, align 4
  %113 = load i32, i32* %7, align 4
  %114 = shl i32 %113, 25
  %115 = load i32, i32* %7, align 4
  %116 = xor i32 %115, %114
  store i32 %116, i32* %7, align 4
  %117 = load i32, i32* %7, align 4
  %118 = lshr i32 %117, 6
  %119 = load i32, i32* %7, align 4
  %120 = add i32 %119, %118
  store i32 %120, i32* %7, align 4
  %121 = load i32, i32* %7, align 4
  store i32 %121, i32* %3, align 4
  br label %122

122:                                              ; preds = %96, %16
  %123 = load i32, i32* %3, align 4
  ret i32 %123
}

declare dso_local i32 @stb__get16(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
