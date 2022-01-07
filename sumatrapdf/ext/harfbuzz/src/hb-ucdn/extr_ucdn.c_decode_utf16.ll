; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/harfbuzz/src/hb-ucdn/extr_ucdn.c_decode_utf16.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/harfbuzz/src/hb-ucdn/extr_ucdn.c_decode_utf16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i16**)* @decode_utf16 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_utf16(i16** %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i16**, align 8
  %4 = alloca i16*, align 8
  store i16** %0, i16*** %3, align 8
  %5 = load i16**, i16*** %3, align 8
  %6 = load i16*, i16** %5, align 8
  store i16* %6, i16** %4, align 8
  %7 = load i16*, i16** %4, align 8
  %8 = getelementptr inbounds i16, i16* %7, i64 0
  %9 = load i16, i16* %8, align 2
  %10 = zext i16 %9 to i32
  %11 = icmp slt i32 %10, 55296
  br i1 %11, label %18, label %12

12:                                               ; preds = %1
  %13 = load i16*, i16** %4, align 8
  %14 = getelementptr inbounds i16, i16* %13, i64 0
  %15 = load i16, i16* %14, align 2
  %16 = zext i16 %15 to i32
  %17 = icmp sgt i32 %16, 56320
  br i1 %17, label %18, label %26

18:                                               ; preds = %12, %1
  %19 = load i16**, i16*** %3, align 8
  %20 = load i16*, i16** %19, align 8
  %21 = getelementptr inbounds i16, i16* %20, i64 1
  store i16* %21, i16** %19, align 8
  %22 = load i16*, i16** %4, align 8
  %23 = getelementptr inbounds i16, i16* %22, i64 0
  %24 = load i16, i16* %23, align 2
  %25 = zext i16 %24 to i32
  store i32 %25, i32* %2, align 4
  br label %43

26:                                               ; preds = %12
  %27 = load i16**, i16*** %3, align 8
  %28 = load i16*, i16** %27, align 8
  %29 = getelementptr inbounds i16, i16* %28, i64 2
  store i16* %29, i16** %27, align 8
  %30 = load i16*, i16** %4, align 8
  %31 = getelementptr inbounds i16, i16* %30, i64 1
  %32 = load i16, i16* %31, align 2
  %33 = zext i16 %32 to i32
  %34 = sub nsw i32 %33, 56320
  %35 = add nsw i32 65536, %34
  %36 = load i16*, i16** %4, align 8
  %37 = getelementptr inbounds i16, i16* %36, i64 0
  %38 = load i16, i16* %37, align 2
  %39 = zext i16 %38 to i32
  %40 = sub nsw i32 %39, 55296
  %41 = shl i32 %40, 10
  %42 = add nsw i32 %35, %41
  store i32 %42, i32* %2, align 4
  br label %43

43:                                               ; preds = %26, %18
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
