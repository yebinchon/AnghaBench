; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/webvtt/extr_..substext.h_decoder_NewSubpictureText.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/webvtt/extr_..substext.h_decoder_NewSubpictureText.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { double, i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__*, i32, i32, i32 }

@SubpictureTextDestroy = common dso_local global i32 0, align 4
@SubpictureTextUpdate = common dso_local global i32 0, align 4
@SubpictureTextValidate = common dso_local global i32 0, align 4
@STYLE_NO_DEFAULTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*)* @decoder_NewSubpictureText to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @decoder_NewSubpictureText(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca %struct.TYPE_7__, align 8
  %6 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %7 = call %struct.TYPE_6__* @calloc(i32 1, i32 16)
  store %struct.TYPE_6__* %7, %struct.TYPE_6__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  store %struct.TYPE_6__* %9, %struct.TYPE_6__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 1
  %11 = load i32, i32* @SubpictureTextDestroy, align 4
  store i32 %11, i32* %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 2
  %13 = load i32, i32* @SubpictureTextUpdate, align 4
  store i32 %13, i32* %12, align 4
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 3
  %15 = load i32, i32* @SubpictureTextValidate, align 4
  store i32 %15, i32* %14, align 8
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 2
  %18 = call i32 @SubpictureUpdaterSysRegionInit(i32* %17)
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  store double 4.000000e-02, double* %20, align 8
  %21 = load i32, i32* @STYLE_NO_DEFAULTS, align 4
  %22 = call i32 @text_style_Create(i32 %21)
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 8
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  %29 = xor i1 %28, true
  %30 = zext i1 %29 to i32
  %31 = call i64 @unlikely(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %1
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %35 = call i32 @free(%struct.TYPE_6__* %34)
  store i32* null, i32** %2, align 8
  br label %50

36:                                               ; preds = %1
  %37 = load i32*, i32** %3, align 8
  %38 = call i32* @decoder_NewSubpicture(i32* %37, %struct.TYPE_7__* %5)
  store i32* %38, i32** %6, align 8
  %39 = load i32*, i32** %6, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %48, label %41

41:                                               ; preds = %36
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @text_style_Delete(i32 %44)
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %47 = call i32 @free(%struct.TYPE_6__* %46)
  br label %48

48:                                               ; preds = %41, %36
  %49 = load i32*, i32** %6, align 8
  store i32* %49, i32** %2, align 8
  br label %50

50:                                               ; preds = %48, %33
  %51 = load i32*, i32** %2, align 8
  ret i32* %51
}

declare dso_local %struct.TYPE_6__* @calloc(i32, i32) #1

declare dso_local i32 @SubpictureUpdaterSysRegionInit(i32*) #1

declare dso_local i32 @text_style_Create(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @free(%struct.TYPE_6__*) #1

declare dso_local i32* @decoder_NewSubpicture(i32*, %struct.TYPE_7__*) #1

declare dso_local i32 @text_style_Delete(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
