; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/bin/jp3d/extr_convert.c_readuint.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/bin/jp3d/extr_convert.c_readuint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @readuint(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i32*, i32** %4, align 8
  %11 = call i32 @fread(i8* %6, i32 1, i32 1, i32* %10)
  %12 = load i32*, i32** %4, align 8
  %13 = call i32 @fread(i8* %7, i32 1, i32 1, i32* %12)
  %14 = load i32*, i32** %4, align 8
  %15 = call i32 @fread(i8* %8, i32 1, i32 1, i32* %14)
  %16 = load i32*, i32** %4, align 8
  %17 = call i32 @fread(i8* %9, i32 1, i32 1, i32* %16)
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %35

20:                                               ; preds = %2
  %21 = load i8, i8* %6, align 1
  %22 = zext i8 %21 to i32
  %23 = shl i32 %22, 24
  %24 = load i8, i8* %7, align 1
  %25 = zext i8 %24 to i32
  %26 = shl i32 %25, 16
  %27 = add nsw i32 %23, %26
  %28 = load i8, i8* %8, align 1
  %29 = zext i8 %28 to i32
  %30 = shl i32 %29, 8
  %31 = add nsw i32 %27, %30
  %32 = load i8, i8* %9, align 1
  %33 = zext i8 %32 to i32
  %34 = add nsw i32 %31, %33
  store i32 %34, i32* %3, align 4
  br label %50

35:                                               ; preds = %2
  %36 = load i8, i8* %9, align 1
  %37 = zext i8 %36 to i32
  %38 = shl i32 %37, 24
  %39 = load i8, i8* %8, align 1
  %40 = zext i8 %39 to i32
  %41 = shl i32 %40, 16
  %42 = add nsw i32 %38, %41
  %43 = load i8, i8* %7, align 1
  %44 = zext i8 %43 to i32
  %45 = shl i32 %44, 8
  %46 = add nsw i32 %42, %45
  %47 = load i8, i8* %6, align 1
  %48 = zext i8 %47 to i32
  %49 = add nsw i32 %46, %48
  store i32 %49, i32* %3, align 4
  br label %50

50:                                               ; preds = %35, %20
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i32 @fread(i8*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
