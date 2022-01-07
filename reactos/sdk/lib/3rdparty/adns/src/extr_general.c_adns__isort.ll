; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/adns/src/extr_general.c_adns__isort.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/adns/src/extr_general.c_adns__isort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @adns__isort(i8* %0, i32 %1, i32 %2, i8* %3, i32 (i8*, i8*, i8*)* %4, i8* %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32 (i8*, i8*, i8*)*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32 (i8*, i8*, i8*)* %4, i32 (i8*, i8*, i8*)** %11, align 8
  store i8* %5, i8** %12, align 8
  %16 = load i8*, i8** %7, align 8
  store i8* %16, i8** %13, align 8
  store i32 0, i32* %14, align 4
  br label %17

17:                                               ; preds = %97, %6
  %18 = load i32, i32* %14, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %100

21:                                               ; preds = %17
  %22 = load i32, i32* %14, align 4
  store i32 %22, i32* %15, align 4
  br label %23

23:                                               ; preds = %47, %21
  %24 = load i32, i32* %15, align 4
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %44

26:                                               ; preds = %23
  %27 = load i32 (i8*, i8*, i8*)*, i32 (i8*, i8*, i8*)** %11, align 8
  %28 = load i8*, i8** %12, align 8
  %29 = load i8*, i8** %13, align 8
  %30 = load i32, i32* %15, align 4
  %31 = sub nsw i32 %30, 1
  %32 = load i32, i32* %9, align 4
  %33 = mul nsw i32 %31, %32
  %34 = sext i32 %33 to i64
  %35 = getelementptr i8, i8* %29, i64 %34
  %36 = load i8*, i8** %13, align 8
  %37 = load i32, i32* %14, align 4
  %38 = load i32, i32* %9, align 4
  %39 = mul nsw i32 %37, %38
  %40 = sext i32 %39 to i64
  %41 = getelementptr i8, i8* %36, i64 %40
  %42 = call i32 %27(i8* %28, i8* %35, i8* %41)
  %43 = icmp ne i32 %42, 0
  br label %44

44:                                               ; preds = %26, %23
  %45 = phi i1 [ false, %23 ], [ %43, %26 ]
  br i1 %45, label %46, label %50

46:                                               ; preds = %44
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %15, align 4
  %49 = add nsw i32 %48, -1
  store i32 %49, i32* %15, align 4
  br label %23

50:                                               ; preds = %44
  %51 = load i32, i32* %15, align 4
  %52 = load i32, i32* %14, align 4
  %53 = icmp ne i32 %51, %52
  br i1 %53, label %54, label %96

54:                                               ; preds = %50
  %55 = load i8*, i8** %10, align 8
  %56 = load i8*, i8** %13, align 8
  %57 = load i32, i32* %14, align 4
  %58 = load i32, i32* %9, align 4
  %59 = mul nsw i32 %57, %58
  %60 = sext i32 %59 to i64
  %61 = getelementptr i8, i8* %56, i64 %60
  %62 = load i32, i32* %9, align 4
  %63 = sext i32 %62 to i64
  %64 = call i32 @memcpy(i8* %55, i8* %61, i64 %63)
  %65 = load i8*, i8** %13, align 8
  %66 = load i32, i32* %15, align 4
  %67 = add nsw i32 %66, 1
  %68 = load i32, i32* %9, align 4
  %69 = mul nsw i32 %67, %68
  %70 = sext i32 %69 to i64
  %71 = getelementptr i8, i8* %65, i64 %70
  %72 = load i8*, i8** %13, align 8
  %73 = load i32, i32* %15, align 4
  %74 = load i32, i32* %9, align 4
  %75 = mul nsw i32 %73, %74
  %76 = sext i32 %75 to i64
  %77 = getelementptr i8, i8* %72, i64 %76
  %78 = load i32, i32* %14, align 4
  %79 = load i32, i32* %15, align 4
  %80 = sub nsw i32 %78, %79
  %81 = sext i32 %80 to i64
  %82 = load i32, i32* %9, align 4
  %83 = sext i32 %82 to i64
  %84 = mul i64 %81, %83
  %85 = call i32 @memmove(i8* %71, i8* %77, i64 %84)
  %86 = load i8*, i8** %13, align 8
  %87 = load i32, i32* %15, align 4
  %88 = load i32, i32* %9, align 4
  %89 = mul nsw i32 %87, %88
  %90 = sext i32 %89 to i64
  %91 = getelementptr i8, i8* %86, i64 %90
  %92 = load i8*, i8** %10, align 8
  %93 = load i32, i32* %9, align 4
  %94 = sext i32 %93 to i64
  %95 = call i32 @memcpy(i8* %91, i8* %92, i64 %94)
  br label %96

96:                                               ; preds = %54, %50
  br label %97

97:                                               ; preds = %96
  %98 = load i32, i32* %14, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %14, align 4
  br label %17

100:                                              ; preds = %17
  ret void
}

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @memmove(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
