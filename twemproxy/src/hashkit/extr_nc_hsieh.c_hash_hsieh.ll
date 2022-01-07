; ModuleID = '/home/carl/AnghaBench/twemproxy/src/hashkit/extr_nc_hsieh.c_hash_hsieh.c'
source_filename = "/home/carl/AnghaBench/twemproxy/src/hashkit/extr_nc_hsieh.c_hash_hsieh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hash_hsieh(i8* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 0, i32* %6, align 4
  %9 = load i64, i64* %5, align 8
  %10 = icmp ule i64 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = load i8*, i8** %4, align 8
  %13 = icmp eq i8* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %11, %2
  store i32 0, i32* %3, align 4
  br label %124

15:                                               ; preds = %11
  %16 = load i64, i64* %5, align 8
  %17 = and i64 %16, 3
  %18 = trunc i64 %17 to i32
  store i32 %18, i32* %8, align 4
  %19 = load i64, i64* %5, align 8
  %20 = lshr i64 %19, 2
  store i64 %20, i64* %5, align 8
  br label %21

21:                                               ; preds = %45, %15
  %22 = load i64, i64* %5, align 8
  %23 = icmp ugt i64 %22, 0
  br i1 %23, label %24, label %48

24:                                               ; preds = %21
  %25 = load i8*, i8** %4, align 8
  %26 = call i32 @get16bits(i8* %25)
  %27 = load i32, i32* %6, align 4
  %28 = add nsw i32 %27, %26
  store i32 %28, i32* %6, align 4
  %29 = load i8*, i8** %4, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 2
  %31 = call i32 @get16bits(i8* %30)
  %32 = shl i32 %31, 11
  %33 = load i32, i32* %6, align 4
  %34 = xor i32 %32, %33
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %6, align 4
  %36 = shl i32 %35, 16
  %37 = load i32, i32* %7, align 4
  %38 = xor i32 %36, %37
  store i32 %38, i32* %6, align 4
  %39 = load i8*, i8** %4, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 8
  store i8* %40, i8** %4, align 8
  %41 = load i32, i32* %6, align 4
  %42 = ashr i32 %41, 11
  %43 = load i32, i32* %6, align 4
  %44 = add nsw i32 %43, %42
  store i32 %44, i32* %6, align 4
  br label %45

45:                                               ; preds = %24
  %46 = load i64, i64* %5, align 8
  %47 = add i64 %46, -1
  store i64 %47, i64* %5, align 8
  br label %21

48:                                               ; preds = %21
  %49 = load i32, i32* %8, align 4
  switch i32 %49, label %97 [
    i32 3, label %50
    i32 2, label %70
    i32 1, label %83
  ]

50:                                               ; preds = %48
  %51 = load i8*, i8** %4, align 8
  %52 = call i32 @get16bits(i8* %51)
  %53 = load i32, i32* %6, align 4
  %54 = add nsw i32 %53, %52
  store i32 %54, i32* %6, align 4
  %55 = load i32, i32* %6, align 4
  %56 = shl i32 %55, 16
  %57 = load i32, i32* %6, align 4
  %58 = xor i32 %57, %56
  store i32 %58, i32* %6, align 4
  %59 = load i8*, i8** %4, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 4
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  %63 = shl i32 %62, 18
  %64 = load i32, i32* %6, align 4
  %65 = xor i32 %64, %63
  store i32 %65, i32* %6, align 4
  %66 = load i32, i32* %6, align 4
  %67 = ashr i32 %66, 11
  %68 = load i32, i32* %6, align 4
  %69 = add nsw i32 %68, %67
  store i32 %69, i32* %6, align 4
  br label %98

70:                                               ; preds = %48
  %71 = load i8*, i8** %4, align 8
  %72 = call i32 @get16bits(i8* %71)
  %73 = load i32, i32* %6, align 4
  %74 = add nsw i32 %73, %72
  store i32 %74, i32* %6, align 4
  %75 = load i32, i32* %6, align 4
  %76 = shl i32 %75, 11
  %77 = load i32, i32* %6, align 4
  %78 = xor i32 %77, %76
  store i32 %78, i32* %6, align 4
  %79 = load i32, i32* %6, align 4
  %80 = ashr i32 %79, 17
  %81 = load i32, i32* %6, align 4
  %82 = add nsw i32 %81, %80
  store i32 %82, i32* %6, align 4
  br label %98

83:                                               ; preds = %48
  %84 = load i8*, i8** %4, align 8
  %85 = load i8, i8* %84, align 1
  %86 = zext i8 %85 to i32
  %87 = load i32, i32* %6, align 4
  %88 = add nsw i32 %87, %86
  store i32 %88, i32* %6, align 4
  %89 = load i32, i32* %6, align 4
  %90 = shl i32 %89, 10
  %91 = load i32, i32* %6, align 4
  %92 = xor i32 %91, %90
  store i32 %92, i32* %6, align 4
  %93 = load i32, i32* %6, align 4
  %94 = ashr i32 %93, 1
  %95 = load i32, i32* %6, align 4
  %96 = add nsw i32 %95, %94
  store i32 %96, i32* %6, align 4
  br label %97

97:                                               ; preds = %48, %83
  br label %98

98:                                               ; preds = %97, %70, %50
  %99 = load i32, i32* %6, align 4
  %100 = shl i32 %99, 3
  %101 = load i32, i32* %6, align 4
  %102 = xor i32 %101, %100
  store i32 %102, i32* %6, align 4
  %103 = load i32, i32* %6, align 4
  %104 = ashr i32 %103, 5
  %105 = load i32, i32* %6, align 4
  %106 = add nsw i32 %105, %104
  store i32 %106, i32* %6, align 4
  %107 = load i32, i32* %6, align 4
  %108 = shl i32 %107, 4
  %109 = load i32, i32* %6, align 4
  %110 = xor i32 %109, %108
  store i32 %110, i32* %6, align 4
  %111 = load i32, i32* %6, align 4
  %112 = ashr i32 %111, 17
  %113 = load i32, i32* %6, align 4
  %114 = add nsw i32 %113, %112
  store i32 %114, i32* %6, align 4
  %115 = load i32, i32* %6, align 4
  %116 = shl i32 %115, 25
  %117 = load i32, i32* %6, align 4
  %118 = xor i32 %117, %116
  store i32 %118, i32* %6, align 4
  %119 = load i32, i32* %6, align 4
  %120 = ashr i32 %119, 6
  %121 = load i32, i32* %6, align 4
  %122 = add nsw i32 %121, %120
  store i32 %122, i32* %6, align 4
  %123 = load i32, i32* %6, align 4
  store i32 %123, i32* %3, align 4
  br label %124

124:                                              ; preds = %98, %14
  %125 = load i32, i32* %3, align 4
  ret i32 %125
}

declare dso_local i32 @get16bits(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
