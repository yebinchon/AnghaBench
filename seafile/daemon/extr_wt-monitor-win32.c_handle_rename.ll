; ModuleID = '/home/carl/AnghaBench/seafile/daemon/extr_wt-monitor-win32.c_handle_rename.c'
source_filename = "/home/carl/AnghaBench/seafile/daemon/extr_wt-monitor-win32.c_handle_rename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_9__*, i32* }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_10__ = type { i64 }

@FILE_ACTION_RENAMED_OLD_NAME = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [12 x i8] c"Move %s ->\0A\00", align 1
@FILE_ACTION_RENAMED_NEW_NAME = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"Move -> %s.\0A\00", align 1
@WT_EVENT_RENAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*, %struct.TYPE_10__*, i8*, i8*, i32)* @handle_rename to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_rename(%struct.TYPE_8__* %0, %struct.TYPE_10__* %1, i8* %2, i8* %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %6, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  store i32* %15, i32** %11, align 8
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  store %struct.TYPE_9__* %18, %struct.TYPE_9__** %12, align 8
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @FILE_ACTION_RENAMED_OLD_NAME, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %5
  %25 = load i8*, i8** %9, align 8
  %26 = call i32 @seaf_debug(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %25)
  br label %37

27:                                               ; preds = %5
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @FILE_ACTION_RENAMED_NEW_NAME, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %27
  %34 = load i8*, i8** %9, align 8
  %35 = call i32 @seaf_debug(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* %34)
  br label %36

36:                                               ; preds = %33, %27
  br label %37

37:                                               ; preds = %36, %24
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %58, label %42

42:                                               ; preds = %37
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @FILE_ACTION_RENAMED_OLD_NAME, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %57

48:                                               ; preds = %42
  %49 = load i32, i32* %10, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %55, label %51

51:                                               ; preds = %48
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %53 = load i8*, i8** %9, align 8
  %54 = call i32 @set_rename_processing_state(%struct.TYPE_9__* %52, i8* %53)
  br label %56

55:                                               ; preds = %48
  br label %56

56:                                               ; preds = %55, %51
  br label %57

57:                                               ; preds = %56, %42
  br label %75

58:                                               ; preds = %37
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @FILE_ACTION_RENAMED_NEW_NAME, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %74

64:                                               ; preds = %58
  %65 = load i32*, i32** %11, align 8
  %66 = load i32, i32* @WT_EVENT_RENAME, align 4
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i8*, i8** %9, align 8
  %71 = call i32 @add_event_to_queue(i32* %65, i32 %66, i32 %69, i8* %70)
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %73 = call i32 @unset_rename_processing_state(%struct.TYPE_9__* %72)
  br label %74

74:                                               ; preds = %64, %58
  br label %75

75:                                               ; preds = %74, %57
  ret void
}

declare dso_local i32 @seaf_debug(i8*, i8*) #1

declare dso_local i32 @set_rename_processing_state(%struct.TYPE_9__*, i8*) #1

declare dso_local i32 @add_event_to_queue(i32*, i32, i32, i8*) #1

declare dso_local i32 @unset_rename_processing_state(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
