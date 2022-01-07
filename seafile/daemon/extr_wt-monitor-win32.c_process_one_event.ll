; ModuleID = '/home/carl/AnghaBench/seafile/daemon/extr_wt-monitor-win32.c_process_one_event.c'
source_filename = "/home/carl/AnghaBench/seafile/daemon/extr_wt-monitor-win32.c_process_one_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_16__ = type { i64, i32, i32 }
%struct.TYPE_14__ = type { i32 }

@TRUE = common dso_local global i32 0, align 4
@FILE_ACTION_RENAMED_OLD_NAME = common dso_local global i64 0, align 8
@FILE_ACTION_REMOVED = common dso_local global i64 0, align 8
@FILE_ACTION_MODIFIED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [14 x i8] c"Modified %s.\0A\00", align 1
@WT_EVENT_CREATE_OR_UPDATE = common dso_local global i32 0, align 4
@FILE_ACTION_ADDED = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"Created %s.\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"Deleted %s.\0A\00", align 1
@WT_EVENT_DELETE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_15__*, i8*, %struct.TYPE_16__*, i32)* @process_one_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_one_event(%struct.TYPE_15__* %0, i8* %1, %struct.TYPE_16__* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca %struct.TYPE_14__, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.TYPE_16__* %2, %struct.TYPE_16__** %7, align 8
  store i32 %3, i32* %8, align 4
  %16 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  store %struct.TYPE_13__* %18, %struct.TYPE_13__** %9, align 8
  %19 = load i32, i32* @TRUE, align 4
  store i32 %19, i32* %11, align 4
  %20 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @FILE_ACTION_RENAMED_OLD_NAME, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %31, label %25

25:                                               ; preds = %4
  %26 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @FILE_ACTION_REMOVED, align 8
  %30 = icmp eq i64 %28, %29
  br label %31

31:                                               ; preds = %25, %4
  %32 = phi i1 [ true, %4 ], [ %30, %25 ]
  %33 = xor i1 %32, true
  %34 = zext i1 %33 to i32
  store i32 %34, i32* %12, align 4
  %35 = load i8*, i8** %6, align 8
  %36 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* %12, align 4
  %43 = call i8* @convert_to_unix_path(i8* %35, i32 %38, i32 %41, i32 %42)
  store i8* %43, i8** %10, align 8
  %44 = load i8*, i8** %10, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %47, label %46

46:                                               ; preds = %31
  br label %117

47:                                               ; preds = %31
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %49 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %50 = load i8*, i8** %6, align 8
  %51 = load i8*, i8** %10, align 8
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @handle_rename(%struct.TYPE_15__* %48, %struct.TYPE_16__* %49, i8* %50, i8* %51, i32 %52)
  %54 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @FILE_ACTION_MODIFIED, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %88

59:                                               ; preds = %47
  %60 = load i8*, i8** %10, align 8
  %61 = call i32 @seaf_debug(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %60)
  %62 = load i8*, i8** %6, align 8
  %63 = load i8*, i8** %10, align 8
  %64 = call i8* @g_build_filename(i8* %62, i8* %63, i32* null)
  store i8* %64, i8** %13, align 8
  %65 = load i8*, i8** %13, align 8
  %66 = call i32 @seaf_stat(i8* %65, %struct.TYPE_14__* %14)
  store i32 %66, i32* %15, align 4
  %67 = load i32, i32* %15, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %74, label %69

69:                                               ; preds = %59
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i64 @S_ISDIR(i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %69, %59
  %75 = load i8*, i8** %13, align 8
  %76 = call i32 @g_free(i8* %75)
  br label %117

77:                                               ; preds = %69
  %78 = load i8*, i8** %13, align 8
  %79 = call i32 @g_free(i8* %78)
  %80 = load i32, i32* %11, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %77
  %83 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %84 = load i32, i32* @WT_EVENT_CREATE_OR_UPDATE, align 4
  %85 = load i8*, i8** %10, align 8
  %86 = call i32 @add_event_to_queue(%struct.TYPE_13__* %83, i32 %84, i8* %85, i32* null)
  br label %87

87:                                               ; preds = %82, %77
  br label %116

88:                                               ; preds = %47
  %89 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %90 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @FILE_ACTION_ADDED, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %101

94:                                               ; preds = %88
  %95 = load i8*, i8** %10, align 8
  %96 = call i32 @seaf_debug(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* %95)
  %97 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %98 = load i32, i32* @WT_EVENT_CREATE_OR_UPDATE, align 4
  %99 = load i8*, i8** %10, align 8
  %100 = call i32 @add_event_to_queue(%struct.TYPE_13__* %97, i32 %98, i8* %99, i32* null)
  br label %115

101:                                              ; preds = %88
  %102 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %103 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @FILE_ACTION_REMOVED, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %114

107:                                              ; preds = %101
  %108 = load i8*, i8** %10, align 8
  %109 = call i32 @seaf_debug(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* %108)
  %110 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %111 = load i32, i32* @WT_EVENT_DELETE, align 4
  %112 = load i8*, i8** %10, align 8
  %113 = call i32 @add_event_to_queue(%struct.TYPE_13__* %110, i32 %111, i8* %112, i32* null)
  br label %114

114:                                              ; preds = %107, %101
  br label %115

115:                                              ; preds = %114, %94
  br label %116

116:                                              ; preds = %115, %87
  br label %117

117:                                              ; preds = %116, %74, %46
  %118 = load i8*, i8** %10, align 8
  %119 = call i32 @g_free(i8* %118)
  %120 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %121 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %120, i32 0, i32 0
  %122 = load %struct.TYPE_13__*, %struct.TYPE_13__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %122, i32 0, i32 0
  %124 = call i64 @time(i32* null)
  %125 = trunc i64 %124 to i32
  %126 = call i32 @g_atomic_int_set(i32* %123, i32 %125)
  ret void
}

declare dso_local i8* @convert_to_unix_path(i8*, i32, i32, i32) #1

declare dso_local i32 @handle_rename(%struct.TYPE_15__*, %struct.TYPE_16__*, i8*, i8*, i32) #1

declare dso_local i32 @seaf_debug(i8*, i8*) #1

declare dso_local i8* @g_build_filename(i8*, i8*, i32*) #1

declare dso_local i32 @seaf_stat(i8*, %struct.TYPE_14__*) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i32 @g_free(i8*) #1

declare dso_local i32 @add_event_to_queue(%struct.TYPE_13__*, i32, i8*, i32*) #1

declare dso_local i32 @g_atomic_int_set(i32*, i32) #1

declare dso_local i64 @time(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
