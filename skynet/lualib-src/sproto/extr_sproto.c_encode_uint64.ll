; ModuleID = '/home/carl/AnghaBench/skynet/lualib-src/sproto/extr_sproto.c_encode_uint64.c'
source_filename = "/home/carl/AnghaBench/skynet/lualib-src/sproto/extr_sproto.c_encode_uint64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SIZEOF_LENGTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i32)* @encode_uint64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @encode_uint64(i32 %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  %10 = load i32, i32* @SIZEOF_LENGTH, align 4
  %11 = sext i32 %10 to i64
  %12 = add i64 %11, 4
  %13 = icmp ult i64 %9, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %57

15:                                               ; preds = %3
  %16 = load i32, i32* %5, align 4
  %17 = and i32 %16, 255
  %18 = load i32*, i32** %6, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 4
  store i32 %17, i32* %19, align 4
  %20 = load i32, i32* %5, align 4
  %21 = ashr i32 %20, 8
  %22 = and i32 %21, 255
  %23 = load i32*, i32** %6, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 5
  store i32 %22, i32* %24, align 4
  %25 = load i32, i32* %5, align 4
  %26 = ashr i32 %25, 16
  %27 = and i32 %26, 255
  %28 = load i32*, i32** %6, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 6
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* %5, align 4
  %31 = ashr i32 %30, 24
  %32 = and i32 %31, 255
  %33 = load i32*, i32** %6, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 7
  store i32 %32, i32* %34, align 4
  %35 = load i32, i32* %5, align 4
  %36 = ashr i32 %35, 32
  %37 = and i32 %36, 255
  %38 = load i32*, i32** %6, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 8
  store i32 %37, i32* %39, align 4
  %40 = load i32, i32* %5, align 4
  %41 = ashr i32 %40, 40
  %42 = and i32 %41, 255
  %43 = load i32*, i32** %6, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 9
  store i32 %42, i32* %44, align 4
  %45 = load i32, i32* %5, align 4
  %46 = ashr i32 %45, 48
  %47 = and i32 %46, 255
  %48 = load i32*, i32** %6, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 10
  store i32 %47, i32* %49, align 4
  %50 = load i32, i32* %5, align 4
  %51 = ashr i32 %50, 56
  %52 = and i32 %51, 255
  %53 = load i32*, i32** %6, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 11
  store i32 %52, i32* %54, align 4
  %55 = load i32*, i32** %6, align 8
  %56 = call i32 @fill_size(i32* %55, i32 4)
  store i32 %56, i32* %4, align 4
  br label %57

57:                                               ; preds = %15, %14
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

declare dso_local i32 @fill_size(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
