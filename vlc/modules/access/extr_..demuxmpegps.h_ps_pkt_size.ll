; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/extr_..demuxmpegps.h_ps_pkt_size.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/extr_..demuxmpegps.h_ps_pkt_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @ps_pkt_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ps_pkt_size(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = icmp slt i32 %6, 4
  %8 = zext i1 %7 to i32
  %9 = call i64 @unlikely(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %64

12:                                               ; preds = %2
  %13 = load i32*, i32** %4, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 3
  %15 = load i32, i32* %14, align 4
  switch i32 %15, label %49 [
    i32 131, label %16
    i32 129, label %17
    i32 128, label %48
    i32 130, label %48
    i32 132, label %48
  ]

16:                                               ; preds = %12
  store i32 4, i32* %3, align 4
  br label %64

17:                                               ; preds = %12
  %18 = load i32, i32* %5, align 4
  %19 = icmp sgt i32 %18, 4
  br i1 %19, label %20, label %47

20:                                               ; preds = %17
  %21 = load i32, i32* %5, align 4
  %22 = icmp sge i32 %21, 14
  br i1 %22, label %23, label %35

23:                                               ; preds = %20
  %24 = load i32*, i32** %4, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 4
  %26 = load i32, i32* %25, align 4
  %27 = ashr i32 %26, 6
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %29, label %35

29:                                               ; preds = %23
  %30 = load i32*, i32** %4, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 13
  %32 = load i32, i32* %31, align 4
  %33 = and i32 %32, 7
  %34 = add nsw i32 14, %33
  store i32 %34, i32* %3, align 4
  br label %64

35:                                               ; preds = %23, %20
  %36 = load i32, i32* %5, align 4
  %37 = icmp sge i32 %36, 12
  br i1 %37, label %38, label %45

38:                                               ; preds = %35
  %39 = load i32*, i32** %4, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 4
  %41 = load i32, i32* %40, align 4
  %42 = ashr i32 %41, 4
  %43 = icmp eq i32 %42, 2
  br i1 %43, label %44, label %45

44:                                               ; preds = %38
  store i32 12, i32* %3, align 4
  br label %64

45:                                               ; preds = %38, %35
  br label %46

46:                                               ; preds = %45
  br label %47

47:                                               ; preds = %46, %17
  br label %63

48:                                               ; preds = %12, %12, %12
  br label %49

49:                                               ; preds = %12, %48
  %50 = load i32, i32* %5, align 4
  %51 = icmp sge i32 %50, 6
  br i1 %51, label %52, label %62

52:                                               ; preds = %49
  %53 = load i32*, i32** %4, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 4
  %55 = load i32, i32* %54, align 4
  %56 = shl i32 %55, 8
  %57 = load i32*, i32** %4, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 5
  %59 = load i32, i32* %58, align 4
  %60 = or i32 %56, %59
  %61 = add nsw i32 6, %60
  store i32 %61, i32* %3, align 4
  br label %64

62:                                               ; preds = %49
  br label %63

63:                                               ; preds = %62, %47
  store i32 -1, i32* %3, align 4
  br label %64

64:                                               ; preds = %63, %52, %44, %29, %16, %11
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
