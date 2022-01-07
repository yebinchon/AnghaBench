; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/avi/extr_avi.c_AVI_ParseStreamHeader.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/avi/extr_avi.c_AVI_ParseStreamHeader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@UNKNOWN_ES = common dso_local global i32 0, align 4
@AUDIO_ES = common dso_local global i32 0, align 4
@VIDEO_ES = common dso_local global i32 0, align 4
@SPU_ES = common dso_local global i32 0, align 4
@IGNORE_ES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*, i32*)* @AVI_ParseStreamHeader to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @AVI_ParseStreamHeader(i32 %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %9 = getelementptr inbounds i32, i32* %4, i64 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %7, align 4
  %11 = getelementptr inbounds i32, i32* %4, i64 1
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp slt i32 %13, 48
  br i1 %14, label %24, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* %7, align 4
  %17 = icmp sgt i32 %16, 57
  br i1 %17, label %24, label %18

18:                                               ; preds = %15
  %19 = load i32, i32* %8, align 4
  %20 = icmp slt i32 %19, 48
  br i1 %20, label %24, label %21

21:                                               ; preds = %18
  %22 = load i32, i32* %8, align 4
  %23 = icmp sgt i32 %22, 57
  br i1 %23, label %24, label %28

24:                                               ; preds = %21, %18, %15, %3
  %25 = load i32*, i32** %5, align 8
  store i32 100, i32* %25, align 4
  %26 = load i32, i32* @UNKNOWN_ES, align 4
  %27 = load i32*, i32** %6, align 8
  store i32 %26, i32* %27, align 4
  br label %57

28:                                               ; preds = %21
  %29 = load i32, i32* %7, align 4
  %30 = sub nsw i32 %29, 48
  %31 = mul nsw i32 %30, 10
  %32 = load i32, i32* %8, align 4
  %33 = sub nsw i32 %32, 48
  %34 = add nsw i32 %31, %33
  %35 = load i32*, i32** %5, align 8
  store i32 %34, i32* %35, align 4
  %36 = getelementptr inbounds i32, i32* %4, i64 2
  %37 = load i32, i32* %36, align 4
  %38 = getelementptr inbounds i32, i32* %4, i64 3
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @VLC_TWOCC(i32 %37, i32 %39)
  switch i32 %40, label %53 [
    i32 128, label %41
    i32 132, label %44
    i32 133, label %44
    i32 134, label %44
    i32 129, label %47
    i32 130, label %47
    i32 131, label %50
  ]

41:                                               ; preds = %28
  %42 = load i32, i32* @AUDIO_ES, align 4
  %43 = load i32*, i32** %6, align 8
  store i32 %42, i32* %43, align 4
  br label %56

44:                                               ; preds = %28, %28, %28
  %45 = load i32, i32* @VIDEO_ES, align 4
  %46 = load i32*, i32** %6, align 8
  store i32 %45, i32* %46, align 4
  br label %56

47:                                               ; preds = %28, %28
  %48 = load i32, i32* @SPU_ES, align 4
  %49 = load i32*, i32** %6, align 8
  store i32 %48, i32* %49, align 4
  br label %56

50:                                               ; preds = %28
  %51 = load i32, i32* @IGNORE_ES, align 4
  %52 = load i32*, i32** %6, align 8
  store i32 %51, i32* %52, align 4
  br label %56

53:                                               ; preds = %28
  %54 = load i32, i32* @UNKNOWN_ES, align 4
  %55 = load i32*, i32** %6, align 8
  store i32 %54, i32* %55, align 4
  br label %56

56:                                               ; preds = %53, %50, %47, %44, %41
  br label %57

57:                                               ; preds = %56, %24
  ret void
}

declare dso_local i32 @VLC_TWOCC(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
