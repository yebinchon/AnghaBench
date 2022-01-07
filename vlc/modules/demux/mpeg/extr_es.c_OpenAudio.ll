; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/mpeg/extr_es.c_OpenAudio.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/mpeg/extr_es.c_OpenAudio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32 (i32*, i32*)* }

@p_codecs = common dso_local global %struct.TYPE_3__* null, align 8
@AUDIO_ES = common dso_local global i32 0, align 4
@VLC_EGENERIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @OpenAudio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @OpenAudio(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %7 = load i32*, i32** %3, align 8
  store i32* %7, i32** %4, align 8
  store i32 0, i32* %5, align 4
  br label %8

8:                                                ; preds = %36, %1
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** @p_codecs, align 8
  %10 = load i32, i32* %5, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i64 %11
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %39

16:                                               ; preds = %8
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** @p_codecs, align 8
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  %22 = load i32 (i32*, i32*)*, i32 (i32*, i32*)** %21, align 8
  %23 = load i32*, i32** %4, align 8
  %24 = call i32 %22(i32* %23, i32* %6)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %35, label %26

26:                                               ; preds = %16
  %27 = load i32*, i32** %4, align 8
  %28 = load i32, i32* @AUDIO_ES, align 4
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** @p_codecs, align 8
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i64 %31
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @OpenCommon(i32* %27, i32 %28, %struct.TYPE_3__* %32, i32 %33)
  store i32 %34, i32* %2, align 4
  br label %41

35:                                               ; preds = %16
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* %5, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %5, align 4
  br label %8

39:                                               ; preds = %8
  %40 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %40, i32* %2, align 4
  br label %41

41:                                               ; preds = %39, %26
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local i32 @OpenCommon(i32*, i32, %struct.TYPE_3__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
