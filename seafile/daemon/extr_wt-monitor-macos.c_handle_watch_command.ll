; ModuleID = '/home/carl/AnghaBench/seafile/daemon/extr_wt-monitor-macos.c_handle_watch_command.c'
source_filename = "/home/carl/AnghaBench/seafile/daemon/extr_wt-monitor-macos.c_handle_watch_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i64, i32, i32 }

@CMD_ADD_WATCH = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [47 x i8] c"[wt mon] failed to watch worktree of repo %s.\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"[wt mon] add watch for repo %s\0A\00", align 1
@CMD_DELETE_WATCH = common dso_local global i64 0, align 8
@CMD_REFRESH_WATCH = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [46 x i8] c"[wt mon] failed to refresh watch of repo %s.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_12__*, %struct.TYPE_10__*)* @handle_watch_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_watch_command(%struct.TYPE_12__* %0, %struct.TYPE_10__* %1) #0 {
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %4, align 8
  %8 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  store %struct.TYPE_11__* %10, %struct.TYPE_11__** %5, align 8
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @CMD_ADD_WATCH, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %52

16:                                               ; preds = %2
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call i64 @g_hash_table_lookup_extended(i32 %19, i32 %22, i32* null, i32* null)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %16
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %27 = call i32 @reply_watch_command(%struct.TYPE_12__* %26, i32 0)
  br label %104

28:                                               ; preds = %16
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @handle_add_repo(%struct.TYPE_12__* %29, i32 %32, i32 %35)
  %37 = icmp slt i64 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %28
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @seaf_warning(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %41)
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %44 = call i32 @reply_watch_command(%struct.TYPE_12__* %43, i32 -1)
  br label %104

45:                                               ; preds = %28
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @seaf_debug(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %48)
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %51 = call i32 @reply_watch_command(%struct.TYPE_12__* %50, i32 0)
  br label %104

52:                                               ; preds = %2
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @CMD_DELETE_WATCH, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %79

58:                                               ; preds = %52
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = call i64 @g_hash_table_lookup_extended(i32 %61, i32 %64, i32* %6, i32* %7)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %70, label %67

67:                                               ; preds = %58
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %69 = call i32 @reply_watch_command(%struct.TYPE_12__* %68, i32 0)
  br label %104

70:                                               ; preds = %58
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* %7, align 4
  %76 = call i32 @handle_rm_repo(%struct.TYPE_12__* %71, i32 %74, i32 %75)
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %78 = call i32 @reply_watch_command(%struct.TYPE_12__* %77, i32 0)
  br label %103

79:                                               ; preds = %52
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @CMD_REFRESH_WATCH, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %102

85:                                               ; preds = %79
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = call i64 @handle_refresh_repo(%struct.TYPE_12__* %86, i32 %89)
  %91 = icmp slt i64 %90, 0
  br i1 %91, label %92, label %99

92:                                               ; preds = %85
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @seaf_warning(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 %95)
  %97 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %98 = call i32 @reply_watch_command(%struct.TYPE_12__* %97, i32 -1)
  br label %104

99:                                               ; preds = %85
  %100 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %101 = call i32 @reply_watch_command(%struct.TYPE_12__* %100, i32 0)
  br label %102

102:                                              ; preds = %99, %79
  br label %103

103:                                              ; preds = %102, %70
  br label %104

104:                                              ; preds = %25, %38, %67, %92, %103, %45
  ret void
}

declare dso_local i64 @g_hash_table_lookup_extended(i32, i32, i32*, i32*) #1

declare dso_local i32 @reply_watch_command(%struct.TYPE_12__*, i32) #1

declare dso_local i64 @handle_add_repo(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @seaf_warning(i8*, i32) #1

declare dso_local i32 @seaf_debug(i8*, i32) #1

declare dso_local i32 @handle_rm_repo(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i64 @handle_refresh_repo(%struct.TYPE_12__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
