; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/dsp/extr_dec.c_DC8uv_C.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/dsp/extr_dec.c_DC8uv_C.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BPS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64*)* @DC8uv_C to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @DC8uv_C(i64* %0) #0 {
  %2 = alloca i64*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i64* %0, i64** %2, align 8
  store i32 8, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %29, %1
  %6 = load i32, i32* %4, align 4
  %7 = icmp slt i32 %6, 8
  br i1 %7, label %8, label %32

8:                                                ; preds = %5
  %9 = load i64*, i64** %2, align 8
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @BPS, align 4
  %12 = sub nsw i32 %10, %11
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i64, i64* %9, i64 %13
  %15 = load i64, i64* %14, align 8
  %16 = load i64*, i64** %2, align 8
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @BPS, align 4
  %19 = mul nsw i32 %17, %18
  %20 = add nsw i32 -1, %19
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i64, i64* %16, i64 %21
  %23 = load i64, i64* %22, align 8
  %24 = add nsw i64 %15, %23
  %25 = load i32, i32* %3, align 4
  %26 = sext i32 %25 to i64
  %27 = add nsw i64 %26, %24
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %3, align 4
  br label %29

29:                                               ; preds = %8
  %30 = load i32, i32* %4, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %4, align 4
  br label %5

32:                                               ; preds = %5
  %33 = load i32, i32* %3, align 4
  %34 = ashr i32 %33, 4
  %35 = load i64*, i64** %2, align 8
  %36 = call i32 @Put8x8uv(i32 %34, i64* %35)
  ret void
}

declare dso_local i32 @Put8x8uv(i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
