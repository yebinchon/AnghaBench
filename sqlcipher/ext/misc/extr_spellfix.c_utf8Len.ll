; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/misc/extr_spellfix.c_utf8Len.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/misc/extr_spellfix.c_utf8Len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8, i32)* @utf8Len to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @utf8Len(i8 zeroext %0, i32 %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8 %0, i8* %3, align 1
  store i32 %1, i32* %4, align 4
  store i32 1, i32* %5, align 4
  %6 = load i8, i8* %3, align 1
  %7 = zext i8 %6 to i32
  %8 = icmp sgt i32 %7, 127
  br i1 %8, label %9, label %24

9:                                                ; preds = %2
  %10 = load i8, i8* %3, align 1
  %11 = zext i8 %10 to i32
  %12 = and i32 %11, 224
  %13 = icmp eq i32 %12, 192
  br i1 %13, label %14, label %15

14:                                               ; preds = %9
  store i32 2, i32* %5, align 4
  br label %23

15:                                               ; preds = %9
  %16 = load i8, i8* %3, align 1
  %17 = zext i8 %16 to i32
  %18 = and i32 %17, 240
  %19 = icmp eq i32 %18, 224
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  store i32 3, i32* %5, align 4
  br label %22

21:                                               ; preds = %15
  store i32 4, i32* %5, align 4
  br label %22

22:                                               ; preds = %21, %20
  br label %23

23:                                               ; preds = %22, %14
  br label %24

24:                                               ; preds = %23, %2
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* %4, align 4
  %27 = icmp sgt i32 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = load i32, i32* %4, align 4
  store i32 %29, i32* %5, align 4
  br label %30

30:                                               ; preds = %28, %24
  %31 = load i32, i32* %5, align 4
  ret i32 %31
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
