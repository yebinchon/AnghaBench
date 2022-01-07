; ModuleID = '/home/carl/AnghaBench/vlc/lib/extr_dialog.c_libvlc_dialog_set_callbacks.c'
source_filename = "/home/carl/AnghaBench/vlc/lib/extr_dialog.c_libvlc_dialog_set_callbacks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, %struct.TYPE_9__, i32* }
%struct.TYPE_9__ = type { i8*, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32*, i32*, i32*, i32*, i32, i32* }
%struct.TYPE_10__ = type { i32*, i32*, i32*, i32*, i32*, i32* }

@update_progress_cb = common dso_local global i32* null, align 8
@cancel_cb = common dso_local global i32* null, align 8
@display_progress_cb = common dso_local global i32* null, align 8
@display_question_cb = common dso_local global i32* null, align 8
@display_login_cb = common dso_local global i32* null, align 8
@display_error_cb = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @libvlc_dialog_set_callbacks(%struct.TYPE_11__* %0, %struct.TYPE_12__* %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_10__, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 2
  %11 = load i32*, i32** %10, align 8
  store i32* %11, i32** %7, align 8
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 0
  %14 = call i32 @vlc_mutex_lock(i32* %13)
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %16 = icmp ne %struct.TYPE_12__* %15, null
  br i1 %16, label %17, label %91

17:                                               ; preds = %3
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 0
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %17
  %24 = load i32*, i32** @update_progress_cb, align 8
  br label %26

25:                                               ; preds = %17
  br label %26

26:                                               ; preds = %25, %23
  %27 = phi i32* [ %24, %23 ], [ null, %25 ]
  store i32* %27, i32** %18, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 1
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %26
  %34 = load i32*, i32** @cancel_cb, align 8
  br label %36

35:                                               ; preds = %26
  br label %36

36:                                               ; preds = %35, %33
  %37 = phi i32* [ %34, %33 ], [ null, %35 ]
  store i32* %37, i32** %28, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 2
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 2
  %41 = load i32*, i32** %40, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %43, label %45

43:                                               ; preds = %36
  %44 = load i32*, i32** @display_progress_cb, align 8
  br label %46

45:                                               ; preds = %36
  br label %46

46:                                               ; preds = %45, %43
  %47 = phi i32* [ %44, %43 ], [ null, %45 ]
  store i32* %47, i32** %38, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 3
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 3
  %51 = load i32*, i32** %50, align 8
  %52 = icmp ne i32* %51, null
  br i1 %52, label %53, label %55

53:                                               ; preds = %46
  %54 = load i32*, i32** @display_question_cb, align 8
  br label %56

55:                                               ; preds = %46
  br label %56

56:                                               ; preds = %55, %53
  %57 = phi i32* [ %54, %53 ], [ null, %55 ]
  store i32* %57, i32** %48, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 4
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 4
  %61 = load i32, i32* %60, align 8
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %56
  %64 = load i32*, i32** @display_login_cb, align 8
  br label %66

65:                                               ; preds = %56
  br label %66

66:                                               ; preds = %65, %63
  %67 = phi i32* [ %64, %63 ], [ null, %65 ]
  store i32* %67, i32** %58, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 5
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 5
  %71 = load i32*, i32** %70, align 8
  %72 = icmp ne i32* %71, null
  br i1 %72, label %73, label %75

73:                                               ; preds = %66
  %74 = load i32*, i32** @display_error_cb, align 8
  br label %76

75:                                               ; preds = %66
  br label %76

76:                                               ; preds = %75, %73
  %77 = phi i32* [ %74, %73 ], [ null, %75 ]
  store i32* %77, i32** %68, align 8
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 1
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %82 = bitcast %struct.TYPE_12__* %80 to i8*
  %83 = bitcast %struct.TYPE_12__* %81 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %82, i8* align 8 %83, i64 48, i1 false)
  %84 = load i8*, i8** %6, align 8
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 0
  store i8* %84, i8** %87, align 8
  %88 = load i32*, i32** %7, align 8
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %90 = call i32 @vlc_dialog_provider_set_callbacks(i32* %88, %struct.TYPE_10__* %8, %struct.TYPE_11__* %89)
  br label %94

91:                                               ; preds = %3
  %92 = load i32*, i32** %7, align 8
  %93 = call i32 @vlc_dialog_provider_set_callbacks(i32* %92, %struct.TYPE_10__* null, %struct.TYPE_11__* null)
  br label %94

94:                                               ; preds = %91, %76
  %95 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 0
  %97 = call i32 @vlc_mutex_unlock(i32* %96)
  ret void
}

declare dso_local i32 @vlc_mutex_lock(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @vlc_dialog_provider_set_callbacks(i32*, %struct.TYPE_10__*, %struct.TYPE_11__*) #1

declare dso_local i32 @vlc_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
