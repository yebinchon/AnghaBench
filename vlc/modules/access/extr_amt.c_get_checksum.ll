; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/extr_amt.c_get_checksum.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/extr_amt.c_get_checksum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i16 (i16*, i32)* @get_checksum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i16 @get_checksum(i16* %0, i32 %1) #0 {
  %3 = alloca i16*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i16*, align 8
  %8 = alloca i16, align 2
  store i16* %0, i16** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  store i32 %9, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %10 = load i16*, i16** %3, align 8
  store i16* %10, i16** %7, align 8
  store i16 0, i16* %8, align 2
  br label %11

11:                                               ; preds = %14, %2
  %12 = load i32, i32* %5, align 4
  %13 = icmp sgt i32 %12, 1
  br i1 %13, label %14, label %23

14:                                               ; preds = %11
  %15 = load i16*, i16** %7, align 8
  %16 = getelementptr inbounds i16, i16* %15, i32 1
  store i16* %16, i16** %7, align 8
  %17 = load i16, i16* %15, align 2
  %18 = zext i16 %17 to i32
  %19 = load i32, i32* %6, align 4
  %20 = add nsw i32 %19, %18
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %5, align 4
  %22 = sub nsw i32 %21, 2
  store i32 %22, i32* %5, align 4
  br label %11

23:                                               ; preds = %11
  %24 = load i32, i32* %5, align 4
  %25 = icmp eq i32 %24, 1
  br i1 %25, label %26, label %35

26:                                               ; preds = %23
  %27 = load i16*, i16** %7, align 8
  %28 = bitcast i16* %27 to i8*
  %29 = load i8, i8* %28, align 1
  %30 = bitcast i16* %8 to i8*
  store i8 %29, i8* %30, align 2
  %31 = load i16, i16* %8, align 2
  %32 = zext i16 %31 to i32
  %33 = load i32, i32* %6, align 4
  %34 = add nsw i32 %33, %32
  store i32 %34, i32* %6, align 4
  br label %35

35:                                               ; preds = %26, %23
  %36 = load i32, i32* %6, align 4
  %37 = ashr i32 %36, 16
  %38 = load i32, i32* %6, align 4
  %39 = and i32 %38, 65535
  %40 = add nsw i32 %37, %39
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = xor i32 %41, -1
  %43 = trunc i32 %42 to i16
  store i16 %43, i16* %8, align 2
  %44 = load i16, i16* %8, align 2
  ret i16 %44
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
