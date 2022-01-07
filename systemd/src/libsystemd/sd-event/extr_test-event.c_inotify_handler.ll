; ModuleID = '/home/carl/AnghaBench/systemd/src/libsystemd/sd-event/extr_test-event.c_inotify_handler.c'
source_filename = "/home/carl/AnghaBench/systemd/src/libsystemd/sd-event/extr_test-event.c_inotify_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inotify_event = type { i32, i8* }
%struct.inotify_context = type { i32, i32, i32* }

@IN_Q_OVERFLOW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"inotify-handler <%s>: overflow\00", align 1
@IN_CREATE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"inotify-handler <%s>: create on %s\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"sub\00", align 1
@IN_DELETE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"inotify-handler <%s>: delete of %s\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"unexpected inotify event\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.inotify_event*, i8*)* @inotify_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @inotify_handler(i32* %0, %struct.inotify_event* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.inotify_event*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.inotify_context*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.inotify_event* %1, %struct.inotify_event** %5, align 8
  store i8* %2, i8** %6, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to %struct.inotify_context*
  store %struct.inotify_context* %13, %struct.inotify_context** %7, align 8
  %14 = load i32*, i32** %4, align 8
  %15 = call i64 @sd_event_source_get_description(i32* %14, i8** %8)
  %16 = icmp sge i64 %15, 0
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert_se(i32 %17)
  %19 = load i8*, i8** %8, align 8
  %20 = call i64 @safe_atou(i8* %19, i32* %10)
  %21 = icmp sge i64 %20, 0
  %22 = zext i1 %21 to i32
  %23 = call i32 @assert_se(i32 %22)
  %24 = load i32, i32* %10, align 4
  %25 = icmp ule i32 %24, 3
  %26 = zext i1 %25 to i32
  %27 = call i32 @assert_se(i32 %26)
  %28 = load i32, i32* %10, align 4
  %29 = shl i32 1, %28
  store i32 %29, i32* %9, align 4
  %30 = load %struct.inotify_event*, %struct.inotify_event** %5, align 8
  %31 = getelementptr inbounds %struct.inotify_event, %struct.inotify_event* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @IN_Q_OVERFLOW, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %3
  %37 = load i8*, i8** %8, align 8
  %38 = call i32 (i8*, i8*, ...) @log_info(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* %37)
  %39 = load i32, i32* %9, align 4
  %40 = load %struct.inotify_context*, %struct.inotify_context** %7, align 8
  %41 = getelementptr inbounds %struct.inotify_context, %struct.inotify_context* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = or i32 %42, %39
  store i32 %43, i32* %41, align 8
  br label %109

44:                                               ; preds = %3
  %45 = load %struct.inotify_event*, %struct.inotify_event** %5, align 8
  %46 = getelementptr inbounds %struct.inotify_event, %struct.inotify_event* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @IN_CREATE, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %87

51:                                               ; preds = %44
  %52 = load i8*, i8** %8, align 8
  %53 = load %struct.inotify_event*, %struct.inotify_event** %5, align 8
  %54 = getelementptr inbounds %struct.inotify_event, %struct.inotify_event* %53, i32 0, i32 1
  %55 = load i8*, i8** %54, align 8
  %56 = call i32 @log_debug(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i8* %52, i8* %55)
  %57 = load %struct.inotify_event*, %struct.inotify_event** %5, align 8
  %58 = getelementptr inbounds %struct.inotify_event, %struct.inotify_event* %57, i32 0, i32 1
  %59 = load i8*, i8** %58, align 8
  %60 = call i32 @streq(i8* %59, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %86, label %62

62:                                               ; preds = %51
  %63 = load %struct.inotify_event*, %struct.inotify_event** %5, align 8
  %64 = getelementptr inbounds %struct.inotify_event, %struct.inotify_event* %63, i32 0, i32 1
  %65 = load i8*, i8** %64, align 8
  %66 = call i64 @safe_atou(i8* %65, i32* %11)
  %67 = icmp sge i64 %66, 0
  %68 = zext i1 %67 to i32
  %69 = call i32 @assert_se(i32 %68)
  %70 = load i32, i32* %11, align 4
  %71 = load %struct.inotify_context*, %struct.inotify_context** %7, align 8
  %72 = getelementptr inbounds %struct.inotify_context, %struct.inotify_context* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = icmp ult i32 %70, %73
  %75 = zext i1 %74 to i32
  %76 = call i32 @assert_se(i32 %75)
  %77 = load i32, i32* %9, align 4
  %78 = load %struct.inotify_context*, %struct.inotify_context** %7, align 8
  %79 = getelementptr inbounds %struct.inotify_context, %struct.inotify_context* %78, i32 0, i32 2
  %80 = load i32*, i32** %79, align 8
  %81 = load i32, i32* %11, align 4
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = or i32 %84, %77
  store i32 %85, i32* %83, align 4
  br label %86

86:                                               ; preds = %62, %51
  br label %108

87:                                               ; preds = %44
  %88 = load %struct.inotify_event*, %struct.inotify_event** %5, align 8
  %89 = getelementptr inbounds %struct.inotify_event, %struct.inotify_event* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @IN_DELETE, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %105

94:                                               ; preds = %87
  %95 = load i8*, i8** %8, align 8
  %96 = load %struct.inotify_event*, %struct.inotify_event** %5, align 8
  %97 = getelementptr inbounds %struct.inotify_event, %struct.inotify_event* %96, i32 0, i32 1
  %98 = load i8*, i8** %97, align 8
  %99 = call i32 (i8*, i8*, ...) @log_info(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i8* %95, i8* %98)
  %100 = load %struct.inotify_event*, %struct.inotify_event** %5, align 8
  %101 = getelementptr inbounds %struct.inotify_event, %struct.inotify_event* %100, i32 0, i32 1
  %102 = load i8*, i8** %101, align 8
  %103 = call i32 @streq(i8* %102, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %104 = call i32 @assert_se(i32 %103)
  br label %107

105:                                              ; preds = %87
  %106 = call i32 @assert_not_reached(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  br label %107

107:                                              ; preds = %105, %94
  br label %108

108:                                              ; preds = %107, %86
  br label %109

109:                                              ; preds = %108, %36
  %110 = load i32*, i32** %4, align 8
  %111 = load %struct.inotify_context*, %struct.inotify_context** %7, align 8
  %112 = call i32 @maybe_exit(i32* %110, %struct.inotify_context* %111)
  ret i32 1
}

declare dso_local i32 @assert_se(i32) #1

declare dso_local i64 @sd_event_source_get_description(i32*, i8**) #1

declare dso_local i64 @safe_atou(i8*, i32*) #1

declare dso_local i32 @log_info(i8*, i8*, ...) #1

declare dso_local i32 @log_debug(i8*, i8*, i8*) #1

declare dso_local i32 @streq(i8*, i8*) #1

declare dso_local i32 @assert_not_reached(i8*) #1

declare dso_local i32 @maybe_exit(i32*, %struct.inotify_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
