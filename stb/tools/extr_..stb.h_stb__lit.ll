; ModuleID = '/home/carl/AnghaBench/stb/tools/extr_..stb.h_stb__lit.c'
source_filename = "/home/carl/AnghaBench/stb/tools/extr_..stb.h_stb__lit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stb__dout = common dso_local global i64 0, align 8
@stb__barrier = common dso_local global i64 0, align 8
@stb__barrier2 = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i64)* @stb__lit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stb__lit(i32* %0, i64 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* @stb__dout, align 8
  %6 = load i64, i64* %4, align 8
  %7 = add nsw i64 %5, %6
  %8 = load i64, i64* @stb__barrier, align 8
  %9 = icmp sle i64 %7, %8
  %10 = zext i1 %9 to i32
  %11 = call i32 @assert(i32 %10)
  %12 = load i64, i64* @stb__dout, align 8
  %13 = load i64, i64* %4, align 8
  %14 = add nsw i64 %12, %13
  %15 = load i64, i64* @stb__barrier, align 8
  %16 = icmp sgt i64 %14, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = load i64, i64* %4, align 8
  %19 = load i64, i64* @stb__dout, align 8
  %20 = add nsw i64 %19, %18
  store i64 %20, i64* @stb__dout, align 8
  br label %36

21:                                               ; preds = %2
  %22 = load i32*, i32** %3, align 8
  %23 = load i32*, i32** @stb__barrier2, align 8
  %24 = icmp ult i32* %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = load i64, i64* @stb__barrier, align 8
  %27 = add nsw i64 %26, 1
  store i64 %27, i64* @stb__dout, align 8
  br label %36

28:                                               ; preds = %21
  %29 = load i64, i64* @stb__dout, align 8
  %30 = load i32*, i32** %3, align 8
  %31 = load i64, i64* %4, align 8
  %32 = call i32 @memcpy(i64 %29, i32* %30, i64 %31)
  %33 = load i64, i64* %4, align 8
  %34 = load i64, i64* @stb__dout, align 8
  %35 = add nsw i64 %34, %33
  store i64 %35, i64* @stb__dout, align 8
  br label %36

36:                                               ; preds = %28, %25, %17
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @memcpy(i64, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
