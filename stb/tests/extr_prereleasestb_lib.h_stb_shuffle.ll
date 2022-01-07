; ModuleID = '/home/carl/AnghaBench/stb/tests/extr_prereleasestb_lib.h_stb_shuffle.c'
source_filename = "/home/carl/AnghaBench/stb/tests/extr_prereleasestb_lib.h_stb_shuffle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @stb_shuffle(i8* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %13 = load i64, i64* %8, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %4
  %16 = load i64, i64* %8, align 8
  %17 = call i64 @stb_srandLCG(i64 %16)
  store i64 %17, i64* %10, align 8
  br label %18

18:                                               ; preds = %15, %4
  %19 = load i8*, i8** %5, align 8
  %20 = load i64, i64* %6, align 8
  %21 = sub i64 %20, 1
  %22 = load i64, i64* %7, align 8
  %23 = mul i64 %21, %22
  %24 = getelementptr inbounds i8, i8* %19, i64 %23
  store i8* %24, i8** %9, align 8
  %25 = load i64, i64* %6, align 8
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %11, align 4
  br label %27

27:                                               ; preds = %47, %18
  %28 = load i32, i32* %11, align 4
  %29 = icmp sgt i32 %28, 1
  br i1 %29, label %30, label %50

30:                                               ; preds = %27
  %31 = call i32 (...) @stb_randLCG()
  %32 = load i32, i32* %11, align 4
  %33 = srem i32 %31, %32
  store i32 %33, i32* %12, align 4
  %34 = load i8*, i8** %9, align 8
  %35 = load i8*, i8** %5, align 8
  %36 = load i32, i32* %12, align 4
  %37 = sext i32 %36 to i64
  %38 = load i64, i64* %7, align 8
  %39 = mul i64 %37, %38
  %40 = getelementptr inbounds i8, i8* %35, i64 %39
  %41 = load i64, i64* %7, align 8
  %42 = call i32 @stb_swap(i8* %34, i8* %40, i64 %41)
  %43 = load i64, i64* %7, align 8
  %44 = load i8*, i8** %9, align 8
  %45 = sub i64 0, %43
  %46 = getelementptr inbounds i8, i8* %44, i64 %45
  store i8* %46, i8** %9, align 8
  br label %47

47:                                               ; preds = %30
  %48 = load i32, i32* %11, align 4
  %49 = add nsw i32 %48, -1
  store i32 %49, i32* %11, align 4
  br label %27

50:                                               ; preds = %27
  %51 = load i64, i64* %8, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %50
  %54 = load i64, i64* %10, align 8
  %55 = call i64 @stb_srandLCG(i64 %54)
  br label %56

56:                                               ; preds = %53, %50
  ret void
}

declare dso_local i64 @stb_srandLCG(i64) #1

declare dso_local i32 @stb_randLCG(...) #1

declare dso_local i32 @stb_swap(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
