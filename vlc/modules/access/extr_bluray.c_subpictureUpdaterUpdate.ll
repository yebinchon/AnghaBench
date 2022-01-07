; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/extr_bluray.c_subpictureUpdaterUpdate.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/extr_bluray.c_subpictureUpdaterUpdate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_11__*, %struct.TYPE_9__ }
%struct.TYPE_11__ = type { %struct.TYPE_11__* }
%struct.TYPE_9__ = type { i32* }
%struct.TYPE_12__ = type { i32, %struct.TYPE_11__* }

@Displayed = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*, i32*, i32*, i32*)* @subpictureUpdaterUpdate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @subpictureUpdaterUpdate(%struct.TYPE_10__* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca %struct.TYPE_11__*, align 8
  %12 = alloca %struct.TYPE_11__**, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = call i32 @VLC_UNUSED(i32* %13)
  %15 = load i32*, i32** %7, align 8
  %16 = call i32 @VLC_UNUSED(i32* %15)
  %17 = load i32*, i32** %8, align 8
  %18 = call i32 @VLC_UNUSED(i32* %17)
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  store i32* %22, i32** %9, align 8
  %23 = load i32*, i32** %9, align 8
  %24 = call %struct.TYPE_12__* @updater_lock_overlay(i32* %23)
  store %struct.TYPE_12__* %24, %struct.TYPE_12__** %10, align 8
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %26 = icmp ne %struct.TYPE_12__* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %4
  br label %72

28:                                               ; preds = %4
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %30, align 8
  store %struct.TYPE_11__* %31, %struct.TYPE_11__** %11, align 8
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %33 = icmp ne %struct.TYPE_11__* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %28
  %35 = load i32*, i32** %9, align 8
  %36 = call i32 @updater_unlock_overlay(i32* %35)
  br label %72

37:                                               ; preds = %28
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 0
  store %struct.TYPE_11__** %39, %struct.TYPE_11__*** %12, align 8
  br label %40

40:                                               ; preds = %51, %37
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %42 = icmp ne %struct.TYPE_11__* %41, null
  br i1 %42, label %43, label %58

43:                                               ; preds = %40
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %45 = call %struct.TYPE_11__* @subpicture_region_Copy(%struct.TYPE_11__* %44)
  %46 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %12, align 8
  store %struct.TYPE_11__* %45, %struct.TYPE_11__** %46, align 8
  %47 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %12, align 8
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %47, align 8
  %49 = icmp eq %struct.TYPE_11__* %48, null
  br i1 %49, label %50, label %51

50:                                               ; preds = %43
  br label %58

51:                                               ; preds = %43
  %52 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %12, align 8
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 0
  store %struct.TYPE_11__** %54, %struct.TYPE_11__*** %12, align 8
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %56, align 8
  store %struct.TYPE_11__* %57, %struct.TYPE_11__** %11, align 8
  br label %40

58:                                               ; preds = %50, %40
  %59 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %12, align 8
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %59, align 8
  %61 = icmp ne %struct.TYPE_11__* %60, null
  br i1 %61, label %62, label %66

62:                                               ; preds = %58
  %63 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %12, align 8
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 0
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %65, align 8
  br label %66

66:                                               ; preds = %62, %58
  %67 = load i32, i32* @Displayed, align 4
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 8
  %70 = load i32*, i32** %9, align 8
  %71 = call i32 @updater_unlock_overlay(i32* %70)
  br label %72

72:                                               ; preds = %66, %34, %27
  ret void
}

declare dso_local i32 @VLC_UNUSED(i32*) #1

declare dso_local %struct.TYPE_12__* @updater_lock_overlay(i32*) #1

declare dso_local i32 @updater_unlock_overlay(i32*) #1

declare dso_local %struct.TYPE_11__* @subpicture_region_Copy(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
