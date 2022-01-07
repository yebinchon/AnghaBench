; ModuleID = '/home/carl/AnghaBench/vlc/src/audio_output/extr_common.c_aout_ChannelExtract.c'
source_filename = "/home/carl/AnghaBench/vlc/src/audio_output/extr_common.c_aout_ChannelExtract.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @aout_ChannelExtract(i8* %0, i32 %1, i8* %2, i32 %3, i32 %4, i32* %5, i32 %6) #0 {
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  store i32 %1, i32* %9, align 4
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  store i32 %6, i32* %14, align 4
  %15 = load i8*, i8** %8, align 8
  %16 = load i8*, i8** %10, align 8
  %17 = icmp ne i8* %15, %16
  %18 = zext i1 %17 to i32
  %19 = call i32 @assert(i32 %18)
  %20 = load i32, i32* %14, align 4
  %21 = icmp eq i32 %20, 8
  br i1 %21, label %22, label %30

22:                                               ; preds = %7
  %23 = load i8*, i8** %8, align 8
  %24 = load i32, i32* %9, align 4
  %25 = load i8*, i8** %10, align 8
  %26 = load i32, i32* %11, align 4
  %27 = load i32, i32* %12, align 4
  %28 = load i32*, i32** %13, align 8
  %29 = call i32 @ExtractChannel(i8* %23, i32 %24, i8* %25, i32 %26, i32 %27, i32* %28, i32 1)
  br label %66

30:                                               ; preds = %7
  %31 = load i32, i32* %14, align 4
  %32 = icmp eq i32 %31, 16
  br i1 %32, label %33, label %41

33:                                               ; preds = %30
  %34 = load i8*, i8** %8, align 8
  %35 = load i32, i32* %9, align 4
  %36 = load i8*, i8** %10, align 8
  %37 = load i32, i32* %11, align 4
  %38 = load i32, i32* %12, align 4
  %39 = load i32*, i32** %13, align 8
  %40 = call i32 @ExtractChannel(i8* %34, i32 %35, i8* %36, i32 %37, i32 %38, i32* %39, i32 2)
  br label %65

41:                                               ; preds = %30
  %42 = load i32, i32* %14, align 4
  %43 = icmp eq i32 %42, 32
  br i1 %43, label %44, label %52

44:                                               ; preds = %41
  %45 = load i8*, i8** %8, align 8
  %46 = load i32, i32* %9, align 4
  %47 = load i8*, i8** %10, align 8
  %48 = load i32, i32* %11, align 4
  %49 = load i32, i32* %12, align 4
  %50 = load i32*, i32** %13, align 8
  %51 = call i32 @ExtractChannel(i8* %45, i32 %46, i8* %47, i32 %48, i32 %49, i32* %50, i32 4)
  br label %64

52:                                               ; preds = %41
  %53 = load i32, i32* %14, align 4
  %54 = icmp eq i32 %53, 64
  br i1 %54, label %55, label %63

55:                                               ; preds = %52
  %56 = load i8*, i8** %8, align 8
  %57 = load i32, i32* %9, align 4
  %58 = load i8*, i8** %10, align 8
  %59 = load i32, i32* %11, align 4
  %60 = load i32, i32* %12, align 4
  %61 = load i32*, i32** %13, align 8
  %62 = call i32 @ExtractChannel(i8* %56, i32 %57, i8* %58, i32 %59, i32 %60, i32* %61, i32 8)
  br label %63

63:                                               ; preds = %55, %52
  br label %64

64:                                               ; preds = %63, %44
  br label %65

65:                                               ; preds = %64, %33
  br label %66

66:                                               ; preds = %65, %22
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @ExtractChannel(i8*, i32, i8*, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
