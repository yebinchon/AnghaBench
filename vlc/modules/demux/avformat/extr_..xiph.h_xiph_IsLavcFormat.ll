; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/avformat/extr_..xiph.h_xiph_IsLavcFormat.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/avformat/extr_..xiph.h_xiph_IsLavcFormat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32)* @xiph_IsLavcFormat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xiph_IsLavcFormat(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %29 [
    i32 128, label %9
    i32 129, label %19
  ]

9:                                                ; preds = %3
  %10 = load i32, i32* %6, align 4
  %11 = icmp uge i32 %10, 6
  br i1 %11, label %12, label %16

12:                                               ; preds = %9
  %13 = load i8*, i8** %5, align 8
  %14 = call i32 @GetWBE(i8* %13)
  %15 = icmp eq i32 %14, 30
  br label %16

16:                                               ; preds = %12, %9
  %17 = phi i1 [ false, %9 ], [ %15, %12 ]
  %18 = zext i1 %17 to i32
  store i32 %18, i32* %4, align 4
  br label %30

19:                                               ; preds = %3
  %20 = load i32, i32* %6, align 4
  %21 = icmp uge i32 %20, 6
  br i1 %21, label %22, label %26

22:                                               ; preds = %19
  %23 = load i8*, i8** %5, align 8
  %24 = call i32 @GetWBE(i8* %23)
  %25 = icmp eq i32 %24, 42
  br label %26

26:                                               ; preds = %22, %19
  %27 = phi i1 [ false, %19 ], [ %25, %22 ]
  %28 = zext i1 %27 to i32
  store i32 %28, i32* %4, align 4
  br label %30

29:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %30

30:                                               ; preds = %29, %26, %16
  %31 = load i32, i32* %4, align 4
  ret i32 %31
}

declare dso_local i32 @GetWBE(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
