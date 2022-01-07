; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lzma/C/extr_LzmaEnc.c_LitEnc_GetPriceMatched.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lzma/C/extr_LzmaEnc.c_LitEnc_GetPriceMatched.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32, i32*)* @LitEnc_GetPriceMatched to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @LitEnc_GetPriceMatched(i32* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 256, i32* %10, align 4
  %11 = load i32, i32* %6, align 4
  %12 = or i32 %11, 256
  store i32 %12, i32* %6, align 4
  br label %13

13:                                               ; preds = %44, %4
  %14 = load i32, i32* %7, align 4
  %15 = shl i32 %14, 1
  store i32 %15, i32* %7, align 4
  %16 = load i32*, i32** %5, align 8
  %17 = load i32, i32* %10, align 4
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* %10, align 4
  %20 = and i32 %18, %19
  %21 = add nsw i32 %17, %20
  %22 = load i32, i32* %6, align 4
  %23 = ashr i32 %22, 8
  %24 = add nsw i32 %21, %23
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %16, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %6, align 4
  %29 = ashr i32 %28, 7
  %30 = and i32 %29, 1
  %31 = call i64 @GET_PRICEa(i32 %27, i32 %30)
  %32 = load i32, i32* %9, align 4
  %33 = sext i32 %32 to i64
  %34 = add nsw i64 %33, %31
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %6, align 4
  %37 = shl i32 %36, 1
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* %6, align 4
  %40 = xor i32 %38, %39
  %41 = xor i32 %40, -1
  %42 = load i32, i32* %10, align 4
  %43 = and i32 %42, %41
  store i32 %43, i32* %10, align 4
  br label %44

44:                                               ; preds = %13
  %45 = load i32, i32* %6, align 4
  %46 = icmp slt i32 %45, 65536
  br i1 %46, label %13, label %47

47:                                               ; preds = %44
  %48 = load i32, i32* %9, align 4
  ret i32 %48
}

declare dso_local i64 @GET_PRICEa(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
