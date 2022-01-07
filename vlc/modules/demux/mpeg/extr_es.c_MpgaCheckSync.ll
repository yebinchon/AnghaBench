; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/mpeg/extr_es.c_MpgaCheckSync.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/mpeg/extr_es.c_MpgaCheckSync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @MpgaCheckSync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @MpgaCheckSync(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = call i32 @GetDWBE(i32* %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = ashr i32 %7, 21
  %9 = and i32 %8, 2047
  %10 = icmp ne i32 %9, 2047
  br i1 %10, label %35, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* %4, align 4
  %13 = ashr i32 %12, 19
  %14 = and i32 %13, 3
  %15 = icmp eq i32 %14, 1
  br i1 %15, label %35, label %16

16:                                               ; preds = %11
  %17 = load i32, i32* %4, align 4
  %18 = ashr i32 %17, 17
  %19 = and i32 %18, 3
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %35, label %21

21:                                               ; preds = %16
  %22 = load i32, i32* %4, align 4
  %23 = ashr i32 %22, 12
  %24 = and i32 %23, 15
  %25 = icmp eq i32 %24, 15
  br i1 %25, label %35, label %26

26:                                               ; preds = %21
  %27 = load i32, i32* %4, align 4
  %28 = ashr i32 %27, 10
  %29 = and i32 %28, 3
  %30 = icmp eq i32 %29, 3
  br i1 %30, label %35, label %31

31:                                               ; preds = %26
  %32 = load i32, i32* %4, align 4
  %33 = and i32 %32, 3
  %34 = icmp eq i32 %33, 2
  br i1 %34, label %35, label %36

35:                                               ; preds = %31, %26, %21, %16, %11, %1
  store i32 0, i32* %2, align 4
  br label %37

36:                                               ; preds = %31
  store i32 1, i32* %2, align 4
  br label %37

37:                                               ; preds = %36, %35
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local i32 @GetDWBE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
