; ModuleID = '/home/carl/AnghaBench/vlc/modules/video_output/extr_splitter.c_vlc_vidsplit_Close.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/video_output/extr_splitter.c_vlc_vidsplit_Close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_9__, i32, %struct.vlc_vidsplit_part* }
%struct.TYPE_9__ = type { i32, i32, i32 }
%struct.vlc_vidsplit_part = type { i32, i32, %struct.TYPE_7__* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*)* @vlc_vidsplit_Close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vlc_vidsplit_Close(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.vlc_vidsplit_part*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  store %struct.TYPE_8__* %10, %struct.TYPE_8__** %3, align 8
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %15

15:                                               ; preds = %54, %1
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %57

19:                                               ; preds = %15
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 2
  %22 = load %struct.vlc_vidsplit_part*, %struct.vlc_vidsplit_part** %21, align 8
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.vlc_vidsplit_part, %struct.vlc_vidsplit_part* %22, i64 %24
  store %struct.vlc_vidsplit_part* %25, %struct.vlc_vidsplit_part** %6, align 8
  %26 = load %struct.vlc_vidsplit_part*, %struct.vlc_vidsplit_part** %6, align 8
  %27 = getelementptr inbounds %struct.vlc_vidsplit_part, %struct.vlc_vidsplit_part* %26, i32 0, i32 0
  %28 = call i32 @vlc_sem_wait(i32* %27)
  %29 = load %struct.vlc_vidsplit_part*, %struct.vlc_vidsplit_part** %6, align 8
  %30 = getelementptr inbounds %struct.vlc_vidsplit_part, %struct.vlc_vidsplit_part* %29, i32 0, i32 2
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %30, align 8
  store %struct.TYPE_7__* %31, %struct.TYPE_7__** %7, align 8
  %32 = load %struct.vlc_vidsplit_part*, %struct.vlc_vidsplit_part** %6, align 8
  %33 = getelementptr inbounds %struct.vlc_vidsplit_part, %struct.vlc_vidsplit_part* %32, i32 0, i32 2
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %33, align 8
  %34 = load %struct.vlc_vidsplit_part*, %struct.vlc_vidsplit_part** %6, align 8
  %35 = getelementptr inbounds %struct.vlc_vidsplit_part, %struct.vlc_vidsplit_part* %34, i32 0, i32 0
  %36 = call i32 @vlc_sem_post(i32* %35)
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %38 = icmp ne %struct.TYPE_7__* %37, null
  br i1 %38, label %39, label %42

39:                                               ; preds = %19
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %41 = call i32 @vout_display_Delete(%struct.TYPE_7__* %40)
  br label %42

42:                                               ; preds = %39, %19
  %43 = load %struct.vlc_vidsplit_part*, %struct.vlc_vidsplit_part** %6, align 8
  %44 = getelementptr inbounds %struct.vlc_vidsplit_part, %struct.vlc_vidsplit_part* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @vout_window_Disable(i32 %45)
  %47 = load %struct.vlc_vidsplit_part*, %struct.vlc_vidsplit_part** %6, align 8
  %48 = getelementptr inbounds %struct.vlc_vidsplit_part, %struct.vlc_vidsplit_part* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @vout_window_Delete(i32 %49)
  %51 = load %struct.vlc_vidsplit_part*, %struct.vlc_vidsplit_part** %6, align 8
  %52 = getelementptr inbounds %struct.vlc_vidsplit_part, %struct.vlc_vidsplit_part* %51, i32 0, i32 0
  %53 = call i32 @vlc_sem_destroy(i32* %52)
  br label %54

54:                                               ; preds = %42
  %55 = load i32, i32* %5, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %5, align 4
  br label %15

57:                                               ; preds = %15
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @module_unneed(%struct.TYPE_9__* %59, i32 %63)
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 1
  %68 = call i32 @video_format_Clean(i32* %67)
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 1
  %71 = call i32 @vlc_mutex_destroy(i32* %70)
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  %74 = call i32 @vlc_object_delete(%struct.TYPE_9__* %73)
  ret void
}

declare dso_local i32 @vlc_sem_wait(i32*) #1

declare dso_local i32 @vlc_sem_post(i32*) #1

declare dso_local i32 @vout_display_Delete(%struct.TYPE_7__*) #1

declare dso_local i32 @vout_window_Disable(i32) #1

declare dso_local i32 @vout_window_Delete(i32) #1

declare dso_local i32 @vlc_sem_destroy(i32*) #1

declare dso_local i32 @module_unneed(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @video_format_Clean(i32*) #1

declare dso_local i32 @vlc_mutex_destroy(i32*) #1

declare dso_local i32 @vlc_object_delete(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
