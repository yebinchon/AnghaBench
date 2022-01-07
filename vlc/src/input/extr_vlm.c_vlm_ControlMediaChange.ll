; ModuleID = '/home/carl/AnghaBench/vlc/src/input/extr_vlm.c_vlm_ControlMediaChange.c'
source_filename = "/home/carl/AnghaBench/vlc/src/input/extr_vlm.c_vlm_ControlMediaChange.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i64 }

@VLC_EGENERIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_10__*)* @vlm_ControlMediaChange to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vlm_ControlMediaChange(i32* %0, %struct.TYPE_10__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %5, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %9 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = call %struct.TYPE_11__* @vlm_ControlMediaGetById(i32* %7, i32 %10)
  store %struct.TYPE_11__* %11, %struct.TYPE_11__** %6, align 8
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %13 = icmp ne %struct.TYPE_11__* %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %2
  %15 = load i32*, i32** %4, align 8
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %17 = call i64 @vlm_MediaDescriptionCheck(i32* %15, %struct.TYPE_10__* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %14, %2
  %20 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %20, i32* %3, align 4
  br label %56

21:                                               ; preds = %14
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %21
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %43

32:                                               ; preds = %27, %21
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %45, label %38

38:                                               ; preds = %32
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %38, %27
  %44 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %44, i32* %3, align 4
  br label %56

45:                                               ; preds = %38, %32
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 0
  %48 = call i32 @vlm_media_Clean(%struct.TYPE_12__* %47)
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %52 = call i32 @vlm_media_Copy(%struct.TYPE_12__* %50, %struct.TYPE_10__* %51)
  %53 = load i32*, i32** %4, align 8
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %55 = call i32 @vlm_OnMediaUpdate(i32* %53, %struct.TYPE_11__* %54)
  store i32 %55, i32* %3, align 4
  br label %56

56:                                               ; preds = %45, %43, %19
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local %struct.TYPE_11__* @vlm_ControlMediaGetById(i32*, i32) #1

declare dso_local i64 @vlm_MediaDescriptionCheck(i32*, %struct.TYPE_10__*) #1

declare dso_local i32 @vlm_media_Clean(%struct.TYPE_12__*) #1

declare dso_local i32 @vlm_media_Copy(%struct.TYPE_12__*, %struct.TYPE_10__*) #1

declare dso_local i32 @vlm_OnMediaUpdate(i32*, %struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
