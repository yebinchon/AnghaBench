; ModuleID = '/home/carl/AnghaBench/seafile/daemon/extr_wt-monitor-macos.c_process_one_event.c'
source_filename = "/home/carl/AnghaBench/seafile/daemon/extr_wt-monitor-macos.c_process_one_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.stat = type { i32 }

@G_NORMALIZE_NFC = common dso_local global i32 0, align 4
@kFSEventStreamEventFlagItemRenamed = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Rename flag set for %s \0A\00", align 1
@WT_EVENT_DELETE = common dso_local global i32 0, align 4
@WT_EVENT_CREATE_OR_UPDATE = common dso_local global i32 0, align 4
@kFSEventStreamEventFlagItemRemoved = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Deleted flag set for %s.\0A\00", align 1
@kFSEventStreamEventFlagItemModified = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"Modified flag set for %s.\0A\00", align 1
@kFSEventStreamEventFlagItemCreated = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"Created flag set for %s.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.TYPE_6__*, i8*, i32, i32)* @process_one_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_one_event(i8* %0, %struct.TYPE_6__* %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_5__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.stat, align 4
  %16 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  store %struct.TYPE_5__* %19, %struct.TYPE_5__** %11, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = load i32, i32* @G_NORMALIZE_NFC, align 4
  %22 = call i8* @g_utf8_normalize(i8* %20, i32 -1, i32 %21)
  store i8* %22, i8** %13, align 8
  %23 = load i8*, i8** %13, align 8
  %24 = load i8*, i8** %8, align 8
  %25 = call i32 @strlen(i8* %24)
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8, i8* %23, i64 %26
  store i8* %27, i8** %14, align 8
  %28 = load i8*, i8** %14, align 8
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp eq i32 %30, 47
  br i1 %31, label %32, label %35

32:                                               ; preds = %5
  %33 = load i8*, i8** %14, align 8
  %34 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %34, i8** %14, align 8
  br label %35

35:                                               ; preds = %32, %5
  %36 = load i8*, i8** %14, align 8
  %37 = call i8* @g_strdup(i8* %36)
  store i8* %37, i8** %12, align 8
  %38 = load i8*, i8** %13, align 8
  %39 = call i32 @g_free(i8* %38)
  %40 = load i8*, i8** %12, align 8
  %41 = call i32 @strlen(i8* %40)
  store i32 %41, i32* %16, align 4
  %42 = load i32, i32* %16, align 4
  %43 = icmp sgt i32 %42, 0
  br i1 %43, label %44, label %59

44:                                               ; preds = %35
  %45 = load i8*, i8** %12, align 8
  %46 = load i32, i32* %16, align 4
  %47 = sub nsw i32 %46, 1
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8, i8* %45, i64 %48
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp eq i32 %51, 47
  br i1 %52, label %53, label %59

53:                                               ; preds = %44
  %54 = load i8*, i8** %12, align 8
  %55 = load i32, i32* %16, align 4
  %56 = sub nsw i32 %55, 1
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8, i8* %54, i64 %57
  store i8 0, i8* %58, align 1
  br label %59

59:                                               ; preds = %53, %44, %35
  %60 = load i32, i32* %10, align 4
  %61 = load i32, i32* @kFSEventStreamEventFlagItemRenamed, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %81

64:                                               ; preds = %59
  %65 = load i8*, i8** %12, align 8
  %66 = call i32 @seaf_debug(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* %65)
  %67 = load i8*, i8** %6, align 8
  %68 = call i64 @stat(i8* %67, %struct.stat* %15)
  %69 = icmp slt i64 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %64
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %72 = load i32, i32* @WT_EVENT_DELETE, align 4
  %73 = load i8*, i8** %12, align 8
  %74 = call i32 @add_event_to_queue(%struct.TYPE_5__* %71, i32 %72, i8* %73, i32* null)
  br label %80

75:                                               ; preds = %64
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %77 = load i32, i32* @WT_EVENT_CREATE_OR_UPDATE, align 4
  %78 = load i8*, i8** %12, align 8
  %79 = call i32 @add_event_to_queue(%struct.TYPE_5__* %76, i32 %77, i8* %78, i32* null)
  br label %80

80:                                               ; preds = %75, %70
  br label %81

81:                                               ; preds = %80, %59
  %82 = load i32, i32* %10, align 4
  %83 = load i32, i32* @kFSEventStreamEventFlagItemRemoved, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %98

86:                                               ; preds = %81
  %87 = load i8*, i8** %12, align 8
  %88 = call i32 @seaf_debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8* %87)
  %89 = load i8*, i8** %6, align 8
  %90 = call i64 @stat(i8* %89, %struct.stat* %15)
  %91 = icmp slt i64 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %86
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %94 = load i32, i32* @WT_EVENT_DELETE, align 4
  %95 = load i8*, i8** %12, align 8
  %96 = call i32 @add_event_to_queue(%struct.TYPE_5__* %93, i32 %94, i8* %95, i32* null)
  br label %97

97:                                               ; preds = %92, %86
  br label %98

98:                                               ; preds = %97, %81
  %99 = load i32, i32* %10, align 4
  %100 = load i32, i32* @kFSEventStreamEventFlagItemModified, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %115

103:                                              ; preds = %98
  %104 = load i8*, i8** %12, align 8
  %105 = call i32 @seaf_debug(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i8* %104)
  %106 = load i8*, i8** %6, align 8
  %107 = call i64 @stat(i8* %106, %struct.stat* %15)
  %108 = icmp eq i64 %107, 0
  br i1 %108, label %109, label %114

109:                                              ; preds = %103
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %111 = load i32, i32* @WT_EVENT_CREATE_OR_UPDATE, align 4
  %112 = load i8*, i8** %12, align 8
  %113 = call i32 @add_event_to_queue(%struct.TYPE_5__* %110, i32 %111, i8* %112, i32* null)
  br label %114

114:                                              ; preds = %109, %103
  br label %115

115:                                              ; preds = %114, %98
  %116 = load i32, i32* %10, align 4
  %117 = load i32, i32* @kFSEventStreamEventFlagItemCreated, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %132

120:                                              ; preds = %115
  %121 = load i8*, i8** %12, align 8
  %122 = call i32 @seaf_debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i8* %121)
  %123 = load i8*, i8** %6, align 8
  %124 = call i64 @stat(i8* %123, %struct.stat* %15)
  %125 = icmp eq i64 %124, 0
  br i1 %125, label %126, label %131

126:                                              ; preds = %120
  %127 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %128 = load i32, i32* @WT_EVENT_CREATE_OR_UPDATE, align 4
  %129 = load i8*, i8** %12, align 8
  %130 = call i32 @add_event_to_queue(%struct.TYPE_5__* %127, i32 %128, i8* %129, i32* null)
  br label %131

131:                                              ; preds = %126, %120
  br label %132

132:                                              ; preds = %131, %115
  %133 = load i8*, i8** %12, align 8
  %134 = call i32 @g_free(i8* %133)
  %135 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 0
  %137 = load %struct.TYPE_5__*, %struct.TYPE_5__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %137, i32 0, i32 0
  %139 = call i64 @time(i32* null)
  %140 = trunc i64 %139 to i32
  %141 = call i32 @g_atomic_int_set(i32* %138, i32 %140)
  ret void
}

declare dso_local i8* @g_utf8_normalize(i8*, i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @g_strdup(i8*) #1

declare dso_local i32 @g_free(i8*) #1

declare dso_local i32 @seaf_debug(i8*, i8*) #1

declare dso_local i64 @stat(i8*, %struct.stat*) #1

declare dso_local i32 @add_event_to_queue(%struct.TYPE_5__*, i32, i8*, i32*) #1

declare dso_local i32 @g_atomic_int_set(i32*, i32) #1

declare dso_local i64 @time(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
