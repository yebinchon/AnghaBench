; ModuleID = '/home/carl/AnghaBench/systemd/man/extr_inotify-watch-tmp.c_inotify_handler.c'
source_filename = "/home/carl/AnghaBench/systemd/man/extr_inotify-watch-tmp.c_inotify_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inotify_event = type { i32, i8* }

@IN_Q_OVERFLOW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"inotify-handler <%s>: overflow\0A\00", align 1
@IN_CREATE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"inotify-handler <%s>: create on %s\0A\00", align 1
@IN_DELETE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"inotify-handler <%s>: delete on %s\0A\00", align 1
@IN_MOVED_TO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [38 x i8] c"inotify-handler <%s>: moved-to on %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"exit\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.inotify_event*, i8*)* @inotify_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @inotify_handler(i32* %0, %struct.inotify_event* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.inotify_event*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.inotify_event* %1, %struct.inotify_event** %5, align 8
  store i8* %2, i8** %6, align 8
  store i8* null, i8** %7, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = call i32 @sd_event_source_get_description(i32* %8, i8** %7)
  %10 = load %struct.inotify_event*, %struct.inotify_event** %5, align 8
  %11 = getelementptr inbounds %struct.inotify_event, %struct.inotify_event* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @IN_Q_OVERFLOW, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load i8*, i8** %7, align 8
  %18 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i8* %17)
  br label %61

19:                                               ; preds = %3
  %20 = load %struct.inotify_event*, %struct.inotify_event** %5, align 8
  %21 = getelementptr inbounds %struct.inotify_event, %struct.inotify_event* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @IN_CREATE, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %19
  %27 = load i8*, i8** %7, align 8
  %28 = load %struct.inotify_event*, %struct.inotify_event** %5, align 8
  %29 = getelementptr inbounds %struct.inotify_event, %struct.inotify_event* %28, i32 0, i32 1
  %30 = load i8*, i8** %29, align 8
  %31 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i8* %27, i8* %30)
  br label %60

32:                                               ; preds = %19
  %33 = load %struct.inotify_event*, %struct.inotify_event** %5, align 8
  %34 = getelementptr inbounds %struct.inotify_event, %struct.inotify_event* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @IN_DELETE, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %32
  %40 = load i8*, i8** %7, align 8
  %41 = load %struct.inotify_event*, %struct.inotify_event** %5, align 8
  %42 = getelementptr inbounds %struct.inotify_event, %struct.inotify_event* %41, i32 0, i32 1
  %43 = load i8*, i8** %42, align 8
  %44 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i8* %40, i8* %43)
  br label %59

45:                                               ; preds = %32
  %46 = load %struct.inotify_event*, %struct.inotify_event** %5, align 8
  %47 = getelementptr inbounds %struct.inotify_event, %struct.inotify_event* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @IN_MOVED_TO, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %45
  %53 = load i8*, i8** %7, align 8
  %54 = load %struct.inotify_event*, %struct.inotify_event** %5, align 8
  %55 = getelementptr inbounds %struct.inotify_event, %struct.inotify_event* %54, i32 0, i32 1
  %56 = load i8*, i8** %55, align 8
  %57 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i8* %53, i8* %56)
  br label %58

58:                                               ; preds = %52, %45
  br label %59

59:                                               ; preds = %58, %39
  br label %60

60:                                               ; preds = %59, %26
  br label %61

61:                                               ; preds = %60, %16
  %62 = load %struct.inotify_event*, %struct.inotify_event** %5, align 8
  %63 = getelementptr inbounds %struct.inotify_event, %struct.inotify_event* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @IN_CREATE, align 4
  %66 = load i32, i32* @IN_MOVED_TO, align 4
  %67 = or i32 %65, %66
  %68 = and i32 %64, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %80

70:                                               ; preds = %61
  %71 = load %struct.inotify_event*, %struct.inotify_event** %5, align 8
  %72 = getelementptr inbounds %struct.inotify_event, %struct.inotify_event* %71, i32 0, i32 1
  %73 = load i8*, i8** %72, align 8
  %74 = call i64 @strcmp(i8* %73, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %70
  %77 = load i32*, i32** %4, align 8
  %78 = call i32 @sd_event_source_get_event(i32* %77)
  %79 = call i32 @sd_event_exit(i32 %78, i32 0)
  br label %80

80:                                               ; preds = %76, %70, %61
  ret i32 1
}

declare dso_local i32 @sd_event_source_get_description(i32*, i8**) #1

declare dso_local i32 @printf(i8*, i8*, ...) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @sd_event_exit(i32, i32) #1

declare dso_local i32 @sd_event_source_get_event(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
