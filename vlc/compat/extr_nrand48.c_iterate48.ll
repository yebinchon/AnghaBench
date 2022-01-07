; ModuleID = '/home/carl/AnghaBench/vlc/compat/extr_nrand48.c_iterate48.c'
source_filename = "/home/carl/AnghaBench/vlc/compat/extr_nrand48.c_iterate48.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i16*)* @iterate48 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iterate48(i16* %0) #0 {
  %2 = alloca i16*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i16* %0, i16** %2, align 8
  %7 = call i32 @UINT64_C(i32 -554899859)
  store i32 %7, i32* %3, align 4
  store i32 13, i32* %4, align 4
  %8 = call i32 @UINT64_C(i32 -1)
  store i32 %8, i32* %5, align 4
  %9 = load i16*, i16** %2, align 8
  %10 = getelementptr inbounds i16, i16* %9, i64 0
  %11 = load i16, i16* %10, align 2
  %12 = zext i16 %11 to i32
  %13 = shl i32 %12, 32
  %14 = load i16*, i16** %2, align 8
  %15 = getelementptr inbounds i16, i16* %14, i64 1
  %16 = load i16, i16* %15, align 2
  %17 = zext i16 %16 to i32
  %18 = shl i32 %17, 16
  %19 = or i32 %13, %18
  %20 = load i16*, i16** %2, align 8
  %21 = getelementptr inbounds i16, i16* %20, i64 2
  %22 = load i16, i16* %21, align 2
  %23 = zext i16 %22 to i32
  %24 = or i32 %19, %23
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* %6, align 4
  %27 = mul nsw i32 %26, %25
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = add i32 %28, 13
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* %6, align 4
  %32 = and i32 %31, %30
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = ashr i32 %33, 32
  %35 = and i32 %34, 65535
  %36 = trunc i32 %35 to i16
  %37 = load i16*, i16** %2, align 8
  %38 = getelementptr inbounds i16, i16* %37, i64 0
  store i16 %36, i16* %38, align 2
  %39 = load i32, i32* %6, align 4
  %40 = ashr i32 %39, 16
  %41 = and i32 %40, 65535
  %42 = trunc i32 %41 to i16
  %43 = load i16*, i16** %2, align 8
  %44 = getelementptr inbounds i16, i16* %43, i64 1
  store i16 %42, i16* %44, align 2
  %45 = load i32, i32* %6, align 4
  %46 = ashr i32 %45, 0
  %47 = and i32 %46, 65535
  %48 = trunc i32 %47 to i16
  %49 = load i16*, i16** %2, align 8
  %50 = getelementptr inbounds i16, i16* %49, i64 2
  store i16 %48, i16* %50, align 2
  %51 = load i32, i32* %6, align 4
  ret i32 %51
}

declare dso_local i32 @UINT64_C(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
