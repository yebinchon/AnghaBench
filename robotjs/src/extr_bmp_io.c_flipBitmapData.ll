; ModuleID = '/home/carl/AnghaBench/robotjs/src/extr_bmp_io.c_flipBitmapData.c'
source_filename = "/home/carl/AnghaBench/robotjs/src/extr_bmp_io.c_flipBitmapData.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @flipBitmapData(i8* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %14 = load i64, i64* %7, align 8
  %15 = icmp ule i64 %14, 1
  br i1 %15, label %16, label %17

16:                                               ; preds = %4
  br label %64

17:                                               ; preds = %4
  store i64 0, i64* %9, align 8
  %18 = load i64, i64* %7, align 8
  %19 = sub i64 %18, 1
  store i64 %19, i64* %10, align 8
  %20 = load i64, i64* %8, align 8
  %21 = call i8* @malloc(i64 %20)
  store i8* %21, i8** %13, align 8
  %22 = load i8*, i8** %13, align 8
  %23 = icmp eq i8* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %17
  br label %64

25:                                               ; preds = %17
  br label %26

26:                                               ; preds = %30, %25
  %27 = load i64, i64* %9, align 8
  %28 = load i64, i64* %10, align 8
  %29 = icmp ult i64 %27, %28
  br i1 %29, label %30, label %61

30:                                               ; preds = %26
  %31 = load i64, i64* %9, align 8
  %32 = load i64, i64* %8, align 8
  %33 = mul i64 %31, %32
  %34 = load i8*, i8** %5, align 8
  %35 = ptrtoint i8* %34 to i64
  %36 = add i64 %33, %35
  %37 = inttoptr i64 %36 to i8*
  store i8* %37, i8** %11, align 8
  %38 = load i64, i64* %10, align 8
  %39 = load i64, i64* %8, align 8
  %40 = mul i64 %38, %39
  %41 = load i8*, i8** %5, align 8
  %42 = ptrtoint i8* %41 to i64
  %43 = add i64 %40, %42
  %44 = inttoptr i64 %43 to i8*
  store i8* %44, i8** %12, align 8
  %45 = load i8*, i8** %13, align 8
  %46 = load i8*, i8** %11, align 8
  %47 = load i64, i64* %8, align 8
  %48 = call i32 @memcpy(i8* %45, i8* %46, i64 %47)
  %49 = load i8*, i8** %11, align 8
  %50 = load i8*, i8** %12, align 8
  %51 = load i64, i64* %8, align 8
  %52 = call i32 @memcpy(i8* %49, i8* %50, i64 %51)
  %53 = load i8*, i8** %12, align 8
  %54 = load i8*, i8** %13, align 8
  %55 = load i64, i64* %8, align 8
  %56 = call i32 @memcpy(i8* %53, i8* %54, i64 %55)
  %57 = load i64, i64* %9, align 8
  %58 = add i64 %57, 1
  store i64 %58, i64* %9, align 8
  %59 = load i64, i64* %10, align 8
  %60 = add i64 %59, -1
  store i64 %60, i64* %10, align 8
  br label %26

61:                                               ; preds = %26
  %62 = load i8*, i8** %13, align 8
  %63 = call i32 @free(i8* %62)
  br label %64

64:                                               ; preds = %61, %24, %16
  ret void
}

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
