; ModuleID = '/home/carl/AnghaBench/vlc/src/interface/extr_dialog.c_dialog_display_login_va.c'
source_filename = "/home/carl/AnghaBench/vlc/src/interface/extr_dialog.c_dialog_display_login_va.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 (i32, i32*, i8*, i8*, i8*, i32)*, i32* }

@VLC_EGENERIC = common dso_local global i32 0, align 4
@VLC_ENOMEM = common dso_local global i32 0, align 4
@VLC_DIALOG_LOGIN = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32**, i8*, i32, i8*, i8*, i32)* @dialog_display_login_va to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dialog_display_login_va(%struct.TYPE_6__* %0, i32** %1, i8* %2, i32 %3, i8* %4, i8* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca i32**, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %9, align 8
  store i32** %1, i32*** %10, align 8
  store i8* %2, i8** %11, align 8
  store i32 %3, i32* %12, align 4
  store i8* %4, i8** %13, align 8
  store i8* %5, i8** %14, align 8
  store i32 %6, i32* %15, align 4
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = call i32 @vlc_mutex_lock(i32* %19)
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32 (i32, i32*, i8*, i8*, i8*, i32)*, i32 (i32, i32*, i8*, i8*, i8*, i32)** %23, align 8
  %25 = icmp eq i32 (i32, i32*, i8*, i8*, i8*, i32)* %24, null
  br i1 %25, label %32, label %26

26:                                               ; preds = %7
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = icmp eq i32* %30, null
  br i1 %31, label %32, label %37

32:                                               ; preds = %26, %7
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = call i32 @vlc_mutex_unlock(i32* %34)
  %36 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %36, i32* %8, align 4
  br label %82

37:                                               ; preds = %26
  %38 = load i8*, i8** %14, align 8
  %39 = load i32, i32* %15, align 4
  %40 = call i32 @vasprintf(i8** %16, i8* %38, i32 %39)
  %41 = icmp eq i32 %40, -1
  br i1 %41, label %42, label %47

42:                                               ; preds = %37
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = call i32 @vlc_mutex_unlock(i32* %44)
  %46 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %46, i32* %8, align 4
  br label %82

47:                                               ; preds = %37
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %49 = load i32, i32* @VLC_DIALOG_LOGIN, align 4
  %50 = call i32* @dialog_add_locked(%struct.TYPE_6__* %48, i32 %49)
  store i32* %50, i32** %17, align 8
  %51 = load i32*, i32** %17, align 8
  %52 = icmp eq i32* %51, null
  br i1 %52, label %53, label %60

53:                                               ; preds = %47
  %54 = load i8*, i8** %16, align 8
  %55 = call i32 @free(i8* %54)
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = call i32 @vlc_mutex_unlock(i32* %57)
  %59 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %59, i32* %8, align 4
  br label %82

60:                                               ; preds = %47
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = load i32 (i32, i32*, i8*, i8*, i8*, i32)*, i32 (i32, i32*, i8*, i8*, i8*, i32)** %63, align 8
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load i32*, i32** %17, align 8
  %69 = load i8*, i8** %13, align 8
  %70 = load i8*, i8** %16, align 8
  %71 = load i8*, i8** %11, align 8
  %72 = load i32, i32* %12, align 4
  %73 = call i32 %64(i32 %67, i32* %68, i8* %69, i8* %70, i8* %71, i32 %72)
  %74 = load i8*, i8** %16, align 8
  %75 = call i32 @free(i8* %74)
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = call i32 @vlc_mutex_unlock(i32* %77)
  %79 = load i32*, i32** %17, align 8
  %80 = load i32**, i32*** %10, align 8
  store i32* %79, i32** %80, align 8
  %81 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %81, i32* %8, align 4
  br label %82

82:                                               ; preds = %60, %53, %42, %32
  %83 = load i32, i32* %8, align 4
  ret i32 %83
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
