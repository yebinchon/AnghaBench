; ModuleID = '/home/carl/AnghaBench/systemd/src/libsystemd/sd-event/extr_test-event.c_delete_self_handler.c'
source_filename = "/home/carl/AnghaBench/systemd/src/libsystemd/sd-event/extr_test-event.c_delete_self_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inotify_event = type { i32 }
%struct.inotify_context = type { i32 }

@IN_Q_OVERFLOW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"delete-self-handler: overflow\00", align 1
@IN_DELETE_SELF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"delete-self-handler: delete-self\00", align 1
@IN_IGNORED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"delete-self-handler: ignore\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"unexpected inotify event (delete-self)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.inotify_event*, i8*)* @delete_self_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @delete_self_handler(i32* %0, %struct.inotify_event* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.inotify_event*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.inotify_context*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.inotify_event* %1, %struct.inotify_event** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load i8*, i8** %6, align 8
  %9 = bitcast i8* %8 to %struct.inotify_context*
  store %struct.inotify_context* %9, %struct.inotify_context** %7, align 8
  %10 = load %struct.inotify_event*, %struct.inotify_event** %5, align 8
  %11 = getelementptr inbounds %struct.inotify_event, %struct.inotify_event* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @IN_Q_OVERFLOW, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %3
  %17 = call i32 @log_info(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.inotify_context*, %struct.inotify_context** %7, align 8
  %19 = getelementptr inbounds %struct.inotify_context, %struct.inotify_context* %18, i32 0, i32 0
  store i32 1, i32* %19, align 4
  br label %44

20:                                               ; preds = %3
  %21 = load %struct.inotify_event*, %struct.inotify_event** %5, align 8
  %22 = getelementptr inbounds %struct.inotify_event, %struct.inotify_event* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @IN_DELETE_SELF, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %20
  %28 = call i32 @log_info(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %29 = load %struct.inotify_context*, %struct.inotify_context** %7, align 8
  %30 = getelementptr inbounds %struct.inotify_context, %struct.inotify_context* %29, i32 0, i32 0
  store i32 1, i32* %30, align 4
  br label %43

31:                                               ; preds = %20
  %32 = load %struct.inotify_event*, %struct.inotify_event** %5, align 8
  %33 = getelementptr inbounds %struct.inotify_event, %struct.inotify_event* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @IN_IGNORED, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %31
  %39 = call i32 @log_info(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  br label %42

40:                                               ; preds = %31
  %41 = call i32 @assert_not_reached(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  br label %42

42:                                               ; preds = %40, %38
  br label %43

43:                                               ; preds = %42, %27
  br label %44

44:                                               ; preds = %43, %16
  %45 = load i32*, i32** %4, align 8
  %46 = load %struct.inotify_context*, %struct.inotify_context** %7, align 8
  %47 = call i32 @maybe_exit(i32* %45, %struct.inotify_context* %46)
  ret i32 1
}

declare dso_local i32 @log_info(i8*) #1

declare dso_local i32 @assert_not_reached(i8*) #1

declare dso_local i32 @maybe_exit(i32*, %struct.inotify_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
