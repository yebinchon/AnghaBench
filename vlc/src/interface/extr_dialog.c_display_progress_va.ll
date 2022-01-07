; ModuleID = '/home/carl/AnghaBench/vlc/src/interface/extr_dialog.c_display_progress_va.c'
source_filename = "/home/carl/AnghaBench/vlc/src/interface/extr_dialog.c_display_progress_va.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 (i32, %struct.TYPE_11__*, i8*, i8*, i32, float, i8*)*, i32*, i32* }
%struct.TYPE_11__ = type { i32, i8* }

@VLC_EGENERIC = common dso_local global i32 0, align 4
@VLC_ENOMEM = common dso_local global i32 0, align 4
@VLC_DIALOG_PROGRESS = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, %struct.TYPE_11__**, i32, float, i8*, i8*, i8*, i32)* @display_progress_va to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @display_progress_va(%struct.TYPE_10__* %0, %struct.TYPE_11__** %1, i32 %2, float %3, i8* %4, i8* %5, i8* %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca %struct.TYPE_11__**, align 8
  %12 = alloca i32, align 4
  %13 = alloca float, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %10, align 8
  store %struct.TYPE_11__** %1, %struct.TYPE_11__*** %11, align 8
  store i32 %2, i32* %12, align 4
  store float %3, float* %13, align 4
  store i8* %4, i8** %14, align 8
  store i8* %5, i8** %15, align 8
  store i8* %6, i8** %16, align 8
  store i32 %7, i32* %17, align 4
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 0
  %22 = call i32 @vlc_mutex_lock(i32* %21)
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %26 = load i32 (i32, %struct.TYPE_11__*, i8*, i8*, i32, float, i8*)*, i32 (i32, %struct.TYPE_11__*, i8*, i8*, i32, float, i8*)** %25, align 8
  %27 = icmp eq i32 (i32, %struct.TYPE_11__*, i8*, i8*, i32, float, i8*)* %26, null
  br i1 %27, label %40, label %28

28:                                               ; preds = %8
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 2
  %32 = load i32*, i32** %31, align 8
  %33 = icmp eq i32* %32, null
  br i1 %33, label %40, label %34

34:                                               ; preds = %28
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = icmp eq i32* %38, null
  br i1 %39, label %40, label %45

40:                                               ; preds = %34, %28, %8
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 0
  %43 = call i32 @vlc_mutex_unlock(i32* %42)
  %44 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %44, i32* %9, align 4
  br label %95

45:                                               ; preds = %34
  %46 = load i8*, i8** %16, align 8
  %47 = load i32, i32* %17, align 4
  %48 = call i32 @vasprintf(i8** %18, i8* %46, i32 %47)
  %49 = icmp eq i32 %48, -1
  br i1 %49, label %50, label %55

50:                                               ; preds = %45
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 0
  %53 = call i32 @vlc_mutex_unlock(i32* %52)
  %54 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %54, i32* %9, align 4
  br label %95

55:                                               ; preds = %45
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %57 = load i32, i32* @VLC_DIALOG_PROGRESS, align 4
  %58 = call %struct.TYPE_11__* @dialog_add_locked(%struct.TYPE_10__* %56, i32 %57)
  store %struct.TYPE_11__* %58, %struct.TYPE_11__** %19, align 8
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %60 = icmp eq %struct.TYPE_11__* %59, null
  br i1 %60, label %61, label %68

61:                                               ; preds = %55
  %62 = load i8*, i8** %18, align 8
  %63 = call i32 @free(i8* %62)
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 0
  %66 = call i32 @vlc_mutex_unlock(i32* %65)
  %67 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %67, i32* %9, align 4
  br label %95

68:                                               ; preds = %55
  %69 = load i32, i32* %12, align 4
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 8
  %72 = load i8*, i8** %18, align 8
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 1
  store i8* %72, i8** %74, align 8
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 0
  %78 = load i32 (i32, %struct.TYPE_11__*, i8*, i8*, i32, float, i8*)*, i32 (i32, %struct.TYPE_11__*, i8*, i8*, i32, float, i8*)** %77, align 8
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %83 = load i8*, i8** %15, align 8
  %84 = load i8*, i8** %18, align 8
  %85 = load i32, i32* %12, align 4
  %86 = load float, float* %13, align 4
  %87 = load i8*, i8** %14, align 8
  %88 = call i32 %78(i32 %81, %struct.TYPE_11__* %82, i8* %83, i8* %84, i32 %85, float %86, i8* %87)
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 0
  %91 = call i32 @vlc_mutex_unlock(i32* %90)
  %92 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %93 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %11, align 8
  store %struct.TYPE_11__* %92, %struct.TYPE_11__** %93, align 8
  %94 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %94, i32* %9, align 4
  br label %95

95:                                               ; preds = %68, %61, %50, %40
  %96 = load i32, i32* %9, align 4
  ret i32 %96
}

declare dso_local i32 @vlc_mutex_lock(i32*) #1

declare dso_local i32 @vlc_mutex_unlock(i32*) #1

declare dso_local i32 @vasprintf(i8**, i8*, i32) #1

declare dso_local %struct.TYPE_11__* @dialog_add_locked(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
