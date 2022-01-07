; ModuleID = '/home/carl/AnghaBench/systemd/src/core/extr_manager.c_manager_setup_user_lookup_fd.c'
source_filename = "/home/carl/AnghaBench/systemd/src/core/extr_manager.c_manager_setup_user_lookup_fd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64*, i32, i32 }

@AF_UNIX = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i32 0, align 4
@SOCK_CLOEXEC = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Failed to allocate user lookup socket: %m\00", align 1
@NOTIFY_RCVBUF_SIZE = common dso_local global i32 0, align 4
@EPOLLIN = common dso_local global i32 0, align 4
@manager_dispatch_user_lookup_fd = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"Failed to allocate user lookup event source: %m\00", align 1
@SD_EVENT_PRIORITY_NORMAL = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [55 x i8] c"Failed to set priority of user lookup event source: %m\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"user-lookup\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*)* @manager_setup_user_lookup_fd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @manager_setup_user_lookup_fd(%struct.TYPE_5__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  %5 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %6 = call i32 @assert(%struct.TYPE_5__* %5)
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %9 = load i64*, i64** %8, align 8
  %10 = getelementptr inbounds i64, i64* %9, i64 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp slt i64 %11, 0
  br i1 %12, label %13, label %44

13:                                               ; preds = %1
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i64*, i64** %15, align 8
  %17 = call i32 @safe_close_pair(i64* %16)
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @sd_event_source_unref(i32 %20)
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 8
  %24 = load i32, i32* @AF_UNIX, align 4
  %25 = load i32, i32* @SOCK_DGRAM, align 4
  %26 = load i32, i32* @SOCK_CLOEXEC, align 4
  %27 = or i32 %25, %26
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i64*, i64** %29, align 8
  %31 = call i64 @socketpair(i32 %24, i32 %27, i32 0, i64* %30)
  %32 = icmp slt i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %13
  %34 = load i32, i32* @errno, align 4
  %35 = call i32 @log_error_errno(i32 %34, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  store i32 %35, i32* %2, align 4
  br label %87

36:                                               ; preds = %13
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i64*, i64** %38, align 8
  %40 = getelementptr inbounds i64, i64* %39, i64 0
  %41 = load i64, i64* %40, align 8
  %42 = load i32, i32* @NOTIFY_RCVBUF_SIZE, align 4
  %43 = call i32 @fd_inc_rcvbuf(i64 %41, i32 %42)
  br label %44

44:                                               ; preds = %36, %1
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %86, label %49

49:                                               ; preds = %44
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 1
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load i64*, i64** %56, align 8
  %58 = getelementptr inbounds i64, i64* %57, i64 0
  %59 = load i64, i64* %58, align 8
  %60 = load i32, i32* @EPOLLIN, align 4
  %61 = load i32, i32* @manager_dispatch_user_lookup_fd, align 4
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %63 = call i32 @sd_event_add_io(i32 %52, i32* %54, i64 %59, i32 %60, i32 %61, %struct.TYPE_5__* %62)
  store i32 %63, i32* %4, align 4
  %64 = load i32, i32* %4, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %49
  %67 = load i32, i32* @errno, align 4
  %68 = call i32 @log_error_errno(i32 %67, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  store i32 %68, i32* %2, align 4
  br label %87

69:                                               ; preds = %49
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = load i64, i64* @SD_EVENT_PRIORITY_NORMAL, align 8
  %74 = sub nsw i64 %73, 11
  %75 = call i32 @sd_event_source_set_priority(i32 %72, i64 %74)
  store i32 %75, i32* %4, align 4
  %76 = load i32, i32* %4, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %69
  %79 = load i32, i32* @errno, align 4
  %80 = call i32 @log_error_errno(i32 %79, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0))
  store i32 %80, i32* %2, align 4
  br label %87

81:                                               ; preds = %69
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @sd_event_source_set_description(i32 %84, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  br label %86

86:                                               ; preds = %81, %44
  store i32 0, i32* %2, align 4
  br label %87

87:                                               ; preds = %86, %78, %66, %33
  %88 = load i32, i32* %2, align 4
  ret i32 %88
}

declare dso_local i32 @assert(%struct.TYPE_5__*) #1

declare dso_local i32 @safe_close_pair(i64*) #1

declare dso_local i32 @sd_event_source_unref(i32) #1

declare dso_local i64 @socketpair(i32, i32, i32, i64*) #1

declare dso_local i32 @log_error_errno(i32, i8*) #1

declare dso_local i32 @fd_inc_rcvbuf(i64, i32) #1

declare dso_local i32 @sd_event_add_io(i32, i32*, i64, i32, i32, %struct.TYPE_5__*) #1

declare dso_local i32 @sd_event_source_set_priority(i32, i64) #1

declare dso_local i32 @sd_event_source_set_description(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
