; ModuleID = '/home/carl/AnghaBench/vlc/src/interface/extr_dialog.c_dialog_update_progress.c'
source_filename = "/home/carl/AnghaBench/vlc/src/interface/extr_dialog.c_dialog_update_progress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i8*, i64 }
%struct.TYPE_9__ = type { i32, i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 (i32, %struct.TYPE_10__*, float, i8*)* }

@VLC_EGENERIC = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_10__*, float, i8*)* @dialog_update_progress to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dialog_update_progress(i32* %0, %struct.TYPE_10__* %1, float %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca float, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_9__*, align 8
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %7, align 8
  store float %2, float* %8, align 4
  store i8* %3, i8** %9, align 8
  %11 = load i32*, i32** %6, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %4
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %15 = icmp ne %struct.TYPE_10__* %14, null
  br label %16

16:                                               ; preds = %13, %4
  %17 = phi i1 [ false, %4 ], [ %15, %13 ]
  %18 = zext i1 %17 to i32
  %19 = call i32 @assert(i32 %18)
  %20 = load i32*, i32** %6, align 8
  %21 = call %struct.TYPE_9__* @get_dialog_provider(i32* %20, i32 0)
  store %struct.TYPE_9__* %21, %struct.TYPE_9__** %10, align 8
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = call i32 @vlc_mutex_lock(i32* %23)
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load i32 (i32, %struct.TYPE_10__*, float, i8*)*, i32 (i32, %struct.TYPE_10__*, float, i8*)** %27, align 8
  %29 = icmp eq i32 (i32, %struct.TYPE_10__*, float, i8*)* %28, null
  br i1 %29, label %35, label %30

30:                                               ; preds = %16
  %31 = load i32*, i32** %6, align 8
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %33 = call i64 @vlc_dialog_is_cancelled(i32* %31, %struct.TYPE_10__* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %30, %16
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  %38 = call i32 @vlc_mutex_unlock(i32* %37)
  %39 = load i8*, i8** %9, align 8
  %40 = call i32 @free(i8* %39)
  %41 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %41, i32* %5, align 4
  br label %77

42:                                               ; preds = %30
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  store float 0.000000e+00, float* %8, align 4
  br label %48

48:                                               ; preds = %47, %42
  %49 = load i8*, i8** %9, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %51, label %59

51:                                               ; preds = %48
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  %55 = call i32 @free(i8* %54)
  %56 = load i8*, i8** %9, align 8
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 0
  store i8* %56, i8** %58, align 8
  br label %59

59:                                               ; preds = %51, %48
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  %63 = load i32 (i32, %struct.TYPE_10__*, float, i8*)*, i32 (i32, %struct.TYPE_10__*, float, i8*)** %62, align 8
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %68 = load float, float* %8, align 4
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 0
  %71 = load i8*, i8** %70, align 8
  %72 = call i32 %63(i32 %66, %struct.TYPE_10__* %67, float %68, i8* %71)
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 0
  %75 = call i32 @vlc_mutex_unlock(i32* %74)
  %76 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %76, i32* %5, align 4
  br label %77

77:                                               ; preds = %59, %35
  %78 = load i32, i32* %5, align 4
  ret i32 %78
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.TYPE_9__* @get_dialog_provider(i32*, i32) #1

declare dso_local i32 @vlc_mutex_lock(i32*) #1

declare dso_local i64 @vlc_dialog_is_cancelled(i32*, %struct.TYPE_10__*) #1

declare dso_local i32 @vlc_mutex_unlock(i32*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
