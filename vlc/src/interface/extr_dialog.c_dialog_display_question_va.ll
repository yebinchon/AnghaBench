; ModuleID = '/home/carl/AnghaBench/vlc/src/interface/extr_dialog.c_dialog_display_question_va.c'
source_filename = "/home/carl/AnghaBench/vlc/src/interface/extr_dialog.c_dialog_display_question_va.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 (i32, i32*, i8*, i8*, i32, i8*, i8*, i8*)*, i32* }

@VLC_EGENERIC = common dso_local global i32 0, align 4
@VLC_ENOMEM = common dso_local global i32 0, align 4
@VLC_DIALOG_QUESTION = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32**, i32, i8*, i8*, i8*, i8*, i8*, i32)* @dialog_display_question_va to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dialog_display_question_va(%struct.TYPE_6__* %0, i32** %1, i32 %2, i8* %3, i8* %4, i8* %5, i8* %6, i8* %7, i32 %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_6__*, align 8
  %12 = alloca i32**, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i32*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %11, align 8
  store i32** %1, i32*** %12, align 8
  store i32 %2, i32* %13, align 4
  store i8* %3, i8** %14, align 8
  store i8* %4, i8** %15, align 8
  store i8* %5, i8** %16, align 8
  store i8* %6, i8** %17, align 8
  store i8* %7, i8** %18, align 8
  store i32 %8, i32* %19, align 4
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = call i32 @vlc_mutex_lock(i32* %23)
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i32 (i32, i32*, i8*, i8*, i32, i8*, i8*, i8*)*, i32 (i32, i32*, i8*, i8*, i32, i8*, i8*, i8*)** %27, align 8
  %29 = icmp eq i32 (i32, i32*, i8*, i8*, i32, i8*, i8*, i8*)* %28, null
  br i1 %29, label %36, label %30

30:                                               ; preds = %9
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = icmp eq i32* %34, null
  br i1 %35, label %36, label %41

36:                                               ; preds = %30, %9
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = call i32 @vlc_mutex_unlock(i32* %38)
  %40 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %40, i32* %10, align 4
  br label %88

41:                                               ; preds = %30
  %42 = load i8*, i8** %18, align 8
  %43 = load i32, i32* %19, align 4
  %44 = call i32 @vasprintf(i8** %20, i8* %42, i32 %43)
  %45 = icmp eq i32 %44, -1
  br i1 %45, label %46, label %51

46:                                               ; preds = %41
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = call i32 @vlc_mutex_unlock(i32* %48)
  %50 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %50, i32* %10, align 4
  br label %88

51:                                               ; preds = %41
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %53 = load i32, i32* @VLC_DIALOG_QUESTION, align 4
  %54 = call i32* @dialog_add_locked(%struct.TYPE_6__* %52, i32 %53)
  store i32* %54, i32** %21, align 8
  %55 = load i32*, i32** %21, align 8
  %56 = icmp eq i32* %55, null
  br i1 %56, label %57, label %64

57:                                               ; preds = %51
  %58 = load i8*, i8** %20, align 8
  %59 = call i32 @free(i8* %58)
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = call i32 @vlc_mutex_unlock(i32* %61)
  %63 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %63, i32* %10, align 4
  br label %88

64:                                               ; preds = %51
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = load i32 (i32, i32*, i8*, i8*, i32, i8*, i8*, i8*)*, i32 (i32, i32*, i8*, i8*, i32, i8*, i8*, i8*)** %67, align 8
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load i32*, i32** %21, align 8
  %73 = load i8*, i8** %17, align 8
  %74 = load i8*, i8** %20, align 8
  %75 = load i32, i32* %13, align 4
  %76 = load i8*, i8** %14, align 8
  %77 = load i8*, i8** %15, align 8
  %78 = load i8*, i8** %16, align 8
  %79 = call i32 %68(i32 %71, i32* %72, i8* %73, i8* %74, i32 %75, i8* %76, i8* %77, i8* %78)
  %80 = load i8*, i8** %20, align 8
  %81 = call i32 @free(i8* %80)
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  %84 = call i32 @vlc_mutex_unlock(i32* %83)
  %85 = load i32*, i32** %21, align 8
  %86 = load i32**, i32*** %12, align 8
  store i32* %85, i32** %86, align 8
  %87 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %87, i32* %10, align 4
  br label %88

88:                                               ; preds = %64, %57, %46, %36
  %89 = load i32, i32* %10, align 4
  ret i32 %89
}

declare dso_local i32 @vlc_mutex_lock(i32*) #1

declare dso_local i32 @vlc_mutex_unlock(i32*) #1

declare dso_local i32 @vasprintf(i8**, i8*, i32) #1

declare dso_local i32* @dialog_add_locked(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
