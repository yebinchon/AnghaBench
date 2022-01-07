; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/extr_bluray.c_getEsPair.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/extr_bluray.c_getEsPair.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32 (i32*, i8*)*, i8*)* @getEsPair to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @getEsPair(i32* %0, i32 (i32*, i8*)* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32 (i32*, i8*)*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i32 (i32*, i8*)* %1, i32 (i32*, i8*)** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 0, i64* %8, align 8
  br label %10

10:                                               ; preds = %27, %3
  %11 = load i64, i64* %8, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = call i64 @vlc_array_count(i32* %12)
  %14 = icmp ult i64 %11, %13
  br i1 %14, label %15, label %30

15:                                               ; preds = %10
  %16 = load i32*, i32** %5, align 8
  %17 = load i64, i64* %8, align 8
  %18 = call i32* @vlc_array_item_at_index(i32* %16, i64 %17)
  store i32* %18, i32** %9, align 8
  %19 = load i32 (i32*, i8*)*, i32 (i32*, i8*)** %6, align 8
  %20 = load i32*, i32** %9, align 8
  %21 = load i8*, i8** %7, align 8
  %22 = call i32 %19(i32* %20, i8* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %15
  %25 = load i32*, i32** %9, align 8
  store i32* %25, i32** %4, align 8
  br label %31

26:                                               ; preds = %15
  br label %27

27:                                               ; preds = %26
  %28 = load i64, i64* %8, align 8
  %29 = add i64 %28, 1
  store i64 %29, i64* %8, align 8
  br label %10

30:                                               ; preds = %10
  store i32* null, i32** %4, align 8
  br label %31

31:                                               ; preds = %30, %24
  %32 = load i32*, i32** %4, align 8
  ret i32* %32
}

declare dso_local i64 @vlc_array_count(i32*) #1

declare dso_local i32* @vlc_array_item_at_index(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
