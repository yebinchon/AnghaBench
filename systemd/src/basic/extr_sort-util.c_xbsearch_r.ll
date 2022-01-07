; ModuleID = '/home/carl/AnghaBench/systemd/src/basic/extr_sort-util.c_xbsearch_r.c'
source_filename = "/home/carl/AnghaBench/systemd/src/basic/extr_sort-util.c_xbsearch_r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xbsearch_r(i8* %0, i8* %1, i64 %2, i64 %3, i32 (i8*, i8*, i8*)* %4, i8* %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32 (i8*, i8*, i8*)*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  store i8* %1, i8** %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i32 (i8*, i8*, i8*)* %4, i32 (i8*, i8*, i8*)** %12, align 8
  store i8* %5, i8** %13, align 8
  %19 = load i64, i64* %10, align 8
  %20 = load i64, i64* %11, align 8
  %21 = call i32 @size_multiply_overflow(i64 %19, i64 %20)
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  %25 = call i32 @assert(i32 %24)
  store i64 0, i64* %14, align 8
  %26 = load i64, i64* %10, align 8
  store i64 %26, i64* %15, align 8
  br label %27

27:                                               ; preds = %61, %6
  %28 = load i64, i64* %14, align 8
  %29 = load i64, i64* %15, align 8
  %30 = icmp ult i64 %28, %29
  br i1 %30, label %31, label %62

31:                                               ; preds = %27
  %32 = load i64, i64* %14, align 8
  %33 = load i64, i64* %15, align 8
  %34 = add i64 %32, %33
  %35 = udiv i64 %34, 2
  store i64 %35, i64* %16, align 8
  %36 = load i8*, i8** %9, align 8
  %37 = bitcast i8* %36 to i32*
  %38 = load i64, i64* %16, align 8
  %39 = load i64, i64* %11, align 8
  %40 = mul i64 %38, %39
  %41 = getelementptr inbounds i32, i32* %37, i64 %40
  %42 = bitcast i32* %41 to i8*
  store i8* %42, i8** %17, align 8
  %43 = load i32 (i8*, i8*, i8*)*, i32 (i8*, i8*, i8*)** %12, align 8
  %44 = load i8*, i8** %8, align 8
  %45 = load i8*, i8** %17, align 8
  %46 = load i8*, i8** %13, align 8
  %47 = call i32 %43(i8* %44, i8* %45, i8* %46)
  store i32 %47, i32* %18, align 4
  %48 = load i32, i32* %18, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %31
  %51 = load i64, i64* %16, align 8
  store i64 %51, i64* %15, align 8
  br label %61

52:                                               ; preds = %31
  %53 = load i32, i32* %18, align 4
  %54 = icmp sgt i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %52
  %56 = load i64, i64* %16, align 8
  %57 = add i64 %56, 1
  store i64 %57, i64* %14, align 8
  br label %60

58:                                               ; preds = %52
  %59 = load i8*, i8** %17, align 8
  store i8* %59, i8** %7, align 8
  br label %63

60:                                               ; preds = %55
  br label %61

61:                                               ; preds = %60, %50
  br label %27

62:                                               ; preds = %27
  store i8* null, i8** %7, align 8
  br label %63

63:                                               ; preds = %62, %58
  %64 = load i8*, i8** %7, align 8
  ret i8* %64
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @size_multiply_overflow(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
