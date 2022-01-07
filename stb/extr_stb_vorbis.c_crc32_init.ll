; ModuleID = '/home/carl/AnghaBench/stb/extr_stb_vorbis.c_crc32_init.c'
source_filename = "/home/carl/AnghaBench/stb/extr_stb_vorbis.c_crc32_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CRC32_POLY = common dso_local global i32 0, align 4
@crc_table = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @crc32_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @crc32_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  br label %4

4:                                                ; preds = %33, %0
  %5 = load i32, i32* %1, align 4
  %6 = icmp slt i32 %5, 256
  br i1 %6, label %7, label %36

7:                                                ; preds = %4
  %8 = load i32, i32* %1, align 4
  %9 = shl i32 %8, 24
  store i32 %9, i32* %3, align 4
  store i32 0, i32* %2, align 4
  br label %10

10:                                               ; preds = %24, %7
  %11 = load i32, i32* %2, align 4
  %12 = icmp slt i32 %11, 8
  br i1 %12, label %13, label %27

13:                                               ; preds = %10
  %14 = load i32, i32* %3, align 4
  %15 = shl i32 %14, 1
  %16 = load i32, i32* %3, align 4
  %17 = icmp uge i32 %16, -2147483648
  br i1 %17, label %18, label %20

18:                                               ; preds = %13
  %19 = load i32, i32* @CRC32_POLY, align 4
  br label %21

20:                                               ; preds = %13
  br label %21

21:                                               ; preds = %20, %18
  %22 = phi i32 [ %19, %18 ], [ 0, %20 ]
  %23 = xor i32 %15, %22
  store i32 %23, i32* %3, align 4
  br label %24

24:                                               ; preds = %21
  %25 = load i32, i32* %2, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %2, align 4
  br label %10

27:                                               ; preds = %10
  %28 = load i32, i32* %3, align 4
  %29 = load i32*, i32** @crc_table, align 8
  %30 = load i32, i32* %1, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  store i32 %28, i32* %32, align 4
  br label %33

33:                                               ; preds = %27
  %34 = load i32, i32* %1, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %1, align 4
  br label %4

36:                                               ; preds = %4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
