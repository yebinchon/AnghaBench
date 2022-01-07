; ModuleID = '/home/carl/AnghaBench/vlc/modules/video_output/extr_splitter.c_vlc_vidsplit_Prepare.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/video_output/extr_splitter.c_vlc_vidsplit_Prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32**, %struct.vlc_vidsplit_part*, %struct.TYPE_7__, i32 }
%struct.vlc_vidsplit_part = type { i32, i32 }
%struct.TYPE_7__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i32*, i32*, i32)* @vlc_vidsplit_Prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vlc_vidsplit_Prepare(%struct.TYPE_5__* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.vlc_vidsplit_part*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  store %struct.TYPE_6__* %15, %struct.TYPE_6__** %9, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = call i32 @picture_Hold(i32* %16)
  %18 = load i32*, i32** %7, align 8
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 3
  %21 = call i32 @vlc_mutex_lock(i32* %20)
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 2
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i32**, i32*** %25, align 8
  %27 = load i32*, i32** %6, align 8
  %28 = call i64 @video_splitter_Filter(%struct.TYPE_7__* %23, i32** %26, i32* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %52

30:                                               ; preds = %4
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 3
  %33 = call i32 @vlc_mutex_unlock(i32* %32)
  store i32 0, i32* %10, align 4
  br label %34

34:                                               ; preds = %48, %30
  %35 = load i32, i32* %10, align 4
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp slt i32 %35, %39
  br i1 %40, label %41, label %51

41:                                               ; preds = %34
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i32**, i32*** %43, align 8
  %45 = load i32, i32* %10, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32*, i32** %44, i64 %46
  store i32* null, i32** %47, align 8
  br label %48

48:                                               ; preds = %41
  %49 = load i32, i32* %10, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %10, align 4
  br label %34

51:                                               ; preds = %34
  br label %94

52:                                               ; preds = %4
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 3
  %55 = call i32 @vlc_mutex_unlock(i32* %54)
  store i32 0, i32* %11, align 4
  br label %56

56:                                               ; preds = %91, %52
  %57 = load i32, i32* %11, align 4
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp slt i32 %57, %61
  br i1 %62, label %63, label %94

63:                                               ; preds = %56
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 1
  %66 = load %struct.vlc_vidsplit_part*, %struct.vlc_vidsplit_part** %65, align 8
  %67 = load i32, i32* %11, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.vlc_vidsplit_part, %struct.vlc_vidsplit_part* %66, i64 %68
  store %struct.vlc_vidsplit_part* %69, %struct.vlc_vidsplit_part** %12, align 8
  %70 = load %struct.vlc_vidsplit_part*, %struct.vlc_vidsplit_part** %12, align 8
  %71 = getelementptr inbounds %struct.vlc_vidsplit_part, %struct.vlc_vidsplit_part* %70, i32 0, i32 1
  %72 = call i32 @vlc_sem_wait(i32* %71)
  %73 = load %struct.vlc_vidsplit_part*, %struct.vlc_vidsplit_part** %12, align 8
  %74 = getelementptr inbounds %struct.vlc_vidsplit_part, %struct.vlc_vidsplit_part* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = load i32**, i32*** %77, align 8
  %79 = load i32, i32* %11, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32*, i32** %78, i64 %80
  %82 = load i32*, i32** %81, align 8
  %83 = load i32, i32* %8, align 4
  %84 = call i32* @vout_display_Prepare(i32 %75, i32* %82, i32* null, i32 %83)
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  %87 = load i32**, i32*** %86, align 8
  %88 = load i32, i32* %11, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32*, i32** %87, i64 %89
  store i32* %84, i32** %90, align 8
  br label %91

91:                                               ; preds = %63
  %92 = load i32, i32* %11, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %11, align 4
  br label %56

94:                                               ; preds = %51, %56
  ret void
}

declare dso_local i32 @picture_Hold(i32*) #1

declare dso_local i32 @vlc_mutex_lock(i32*) #1

declare dso_local i64 @video_splitter_Filter(%struct.TYPE_7__*, i32**, i32*) #1

declare dso_local i32 @vlc_mutex_unlock(i32*) #1

declare dso_local i32 @vlc_sem_wait(i32*) #1

declare dso_local i32* @vout_display_Prepare(i32, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
