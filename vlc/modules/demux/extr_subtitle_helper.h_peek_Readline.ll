; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/extr_subtitle_helper.h_peek_Readline.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/extr_subtitle_helper.h_peek_Readline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*, i32*)* @peek_Readline to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @peek_Readline(i32* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = load i32, i32* %12, align 4
  %14 = add nsw i32 %13, 2048
  %15 = call i64 @vlc_stream_Peek(i32* %11, i32** %6, i32 %14)
  store i64 %15, i64* %7, align 8
  %16 = load i64, i64* %7, align 8
  %17 = icmp slt i64 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %2
  %19 = load i64, i64* %7, align 8
  %20 = trunc i64 %19 to i32
  %21 = load i32*, i32** %5, align 8
  %22 = load i32, i32* %21, align 4
  %23 = icmp slt i32 %20, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %18, %2
  store i8* null, i8** %3, align 8
  br label %55

25:                                               ; preds = %18
  %26 = load i64, i64* %7, align 8
  %27 = trunc i64 %26 to i32
  %28 = load i32*, i32** %5, align 8
  %29 = load i32, i32* %28, align 4
  %30 = sub nsw i32 %27, %29
  store i32 %30, i32* %8, align 4
  store i8* null, i8** %9, align 8
  %31 = load i32*, i32** %4, align 8
  %32 = load i32*, i32** %6, align 8
  %33 = load i32*, i32** %5, align 8
  %34 = load i32, i32* %33, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %32, i64 %35
  %37 = load i32, i32* %8, align 4
  %38 = call i32* @vlc_stream_MemoryNew(i32* %31, i32* %36, i32 %37, i32 1)
  store i32* %38, i32** %10, align 8
  %39 = load i32*, i32** %10, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %53

41:                                               ; preds = %25
  %42 = load i32*, i32** %10, align 8
  %43 = call i8* @vlc_stream_ReadLine(i32* %42)
  store i8* %43, i8** %9, align 8
  %44 = load i32*, i32** %10, align 8
  %45 = call i64 @vlc_stream_Tell(i32* %44)
  %46 = load i32*, i32** %5, align 8
  %47 = load i32, i32* %46, align 4
  %48 = sext i32 %47 to i64
  %49 = add nsw i64 %48, %45
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %46, align 4
  %51 = load i32*, i32** %10, align 8
  %52 = call i32 @vlc_stream_Delete(i32* %51)
  br label %53

53:                                               ; preds = %41, %25
  %54 = load i8*, i8** %9, align 8
  store i8* %54, i8** %3, align 8
  br label %55

55:                                               ; preds = %53, %24
  %56 = load i8*, i8** %3, align 8
  ret i8* %56
}

declare dso_local i64 @vlc_stream_Peek(i32*, i32**, i32) #1

declare dso_local i32* @vlc_stream_MemoryNew(i32*, i32*, i32, i32) #1

declare dso_local i8* @vlc_stream_ReadLine(i32*) #1

declare dso_local i64 @vlc_stream_Tell(i32*) #1

declare dso_local i32 @vlc_stream_Delete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
