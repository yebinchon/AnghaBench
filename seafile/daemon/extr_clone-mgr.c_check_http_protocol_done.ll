; ModuleID = '/home/carl/AnghaBench/seafile/daemon/extr_clone-mgr.c_check_http_protocol_done.c'
source_filename = "/home/carl/AnghaBench/seafile/daemon/extr_clone-mgr.c_check_http_protocol_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i64 }
%struct.TYPE_10__ = type { i64, i32, i32, i32 }

@CLONE_STATE_CANCEL_PENDING = common dso_local global i64 0, align 8
@CLONE_STATE_CANCELED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"https\00", align 1
@seaf = common dso_local global %struct.TYPE_11__* null, align 8
@TRUE = common dso_local global i32 0, align 4
@check_http_fileserver_protocol_done = common dso_local global i32 0, align 4
@SYNC_ERROR_ID_NOT_ENOUGH_MEMORY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, i8*)* @check_http_protocol_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_http_protocol_done(%struct.TYPE_9__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i8*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %8, %struct.TYPE_10__** %5, align 8
  %9 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @CLONE_STATE_CANCEL_PENDING, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %16 = load i32, i32* @CLONE_STATE_CANCELED, align 4
  %17 = call i32 @transition_state(%struct.TYPE_10__* %15, i32 %16)
  br label %76

18:                                               ; preds = %2
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 3
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %42

23:                                               ; preds = %18
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %42, label %28

28:                                               ; preds = %23
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 3
  store i32 %31, i32* %33, align 8
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @g_strdup(i32 %36)
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 4
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %41 = call i32 @http_check_head_commit(%struct.TYPE_10__* %40)
  br label %76

42:                                               ; preds = %23, %18
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = call i64 @strncmp(i32 %45, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 5)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %69

48:                                               ; preds = %42
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = call i8* @http_fileserver_url(i32 %51)
  store i8* %52, i8** %6, align 8
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** @seaf, align 8
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i8*, i8** %6, align 8
  %57 = load i32, i32* @TRUE, align 4
  %58 = load i32, i32* @check_http_fileserver_protocol_done, align 4
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %60 = call i64 @http_tx_manager_check_protocol_version(i32 %55, i8* %56, i32 %57, i32 %58, %struct.TYPE_10__* %59)
  %61 = icmp slt i64 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %48
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %64 = load i32, i32* @SYNC_ERROR_ID_NOT_ENOUGH_MEMORY, align 4
  %65 = call i32 @transition_to_error(%struct.TYPE_10__* %63, i32 %64)
  br label %66

66:                                               ; preds = %62, %48
  %67 = load i8*, i8** %6, align 8
  %68 = call i32 @g_free(i8* %67)
  br label %75

69:                                               ; preds = %42
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @transition_to_error(%struct.TYPE_10__* %70, i32 %73)
  br label %75

75:                                               ; preds = %69, %66
  br label %76

76:                                               ; preds = %14, %75, %28
  ret void
}

declare dso_local i32 @transition_state(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @g_strdup(i32) #1

declare dso_local i32 @http_check_head_commit(%struct.TYPE_10__*) #1

declare dso_local i64 @strncmp(i32, i8*, i32) #1

declare dso_local i8* @http_fileserver_url(i32) #1

declare dso_local i64 @http_tx_manager_check_protocol_version(i32, i8*, i32, i32, %struct.TYPE_10__*) #1

declare dso_local i32 @transition_to_error(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @g_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
