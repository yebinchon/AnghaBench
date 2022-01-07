; ModuleID = '/home/carl/AnghaBench/stb/tools/extr_..stb.h_stb_fget_varlenu.c'
source_filename = "/home/carl/AnghaBench/stb/tools/extr_..stb.h_stb_fget_varlenu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @stb_fget_varlenu(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  store i32* %0, i32** %2, align 8
  %5 = load i32*, i32** %2, align 8
  %6 = call i32 @stb_fgetc(i32* %5)
  %7 = trunc i32 %6 to i8
  store i8 %7, i8* %4, align 1
  %8 = load i8, i8* %4, align 1
  %9 = zext i8 %8 to i32
  %10 = icmp sge i32 %9, 128
  br i1 %10, label %11, label %59

11:                                               ; preds = %1
  %12 = load i8, i8* %4, align 1
  %13 = zext i8 %12 to i32
  %14 = icmp sge i32 %13, 192
  br i1 %14, label %15, label %49

15:                                               ; preds = %11
  %16 = load i8, i8* %4, align 1
  %17 = zext i8 %16 to i32
  %18 = icmp sge i32 %17, 224
  br i1 %18, label %19, label %38

19:                                               ; preds = %15
  %20 = load i8, i8* %4, align 1
  %21 = zext i8 %20 to i32
  %22 = icmp eq i32 %21, 240
  br i1 %22, label %23, label %27

23:                                               ; preds = %19
  %24 = load i32*, i32** %2, align 8
  %25 = call i32 @stb_fgetc(i32* %24)
  %26 = shl i32 %25, 24
  store i32 %26, i32* %3, align 4
  br label %32

27:                                               ; preds = %19
  %28 = load i8, i8* %4, align 1
  %29 = zext i8 %28 to i32
  %30 = sub nsw i32 %29, 224
  %31 = shl i32 %30, 24
  store i32 %31, i32* %3, align 4
  br label %32

32:                                               ; preds = %27, %23
  %33 = load i32*, i32** %2, align 8
  %34 = call i32 @stb_fgetc(i32* %33)
  %35 = shl i32 %34, 16
  %36 = load i32, i32* %3, align 4
  %37 = add i32 %36, %35
  store i32 %37, i32* %3, align 4
  br label %43

38:                                               ; preds = %15
  %39 = load i8, i8* %4, align 1
  %40 = zext i8 %39 to i32
  %41 = sub nsw i32 %40, 192
  %42 = shl i32 %41, 16
  store i32 %42, i32* %3, align 4
  br label %43

43:                                               ; preds = %38, %32
  %44 = load i32*, i32** %2, align 8
  %45 = call i32 @stb_fgetc(i32* %44)
  %46 = shl i32 %45, 8
  %47 = load i32, i32* %3, align 4
  %48 = add i32 %47, %46
  store i32 %48, i32* %3, align 4
  br label %54

49:                                               ; preds = %11
  %50 = load i8, i8* %4, align 1
  %51 = zext i8 %50 to i32
  %52 = sub nsw i32 %51, 128
  %53 = shl i32 %52, 8
  store i32 %53, i32* %3, align 4
  br label %54

54:                                               ; preds = %49, %43
  %55 = load i32*, i32** %2, align 8
  %56 = call i32 @stb_fgetc(i32* %55)
  %57 = load i32, i32* %3, align 4
  %58 = add i32 %57, %56
  store i32 %58, i32* %3, align 4
  br label %62

59:                                               ; preds = %1
  %60 = load i8, i8* %4, align 1
  %61 = zext i8 %60 to i32
  store i32 %61, i32* %3, align 4
  br label %62

62:                                               ; preds = %59, %54
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i32 @stb_fgetc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
