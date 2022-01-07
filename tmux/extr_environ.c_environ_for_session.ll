; ModuleID = '/home/carl/AnghaBench/tmux/extr_environ.c_environ_for_session.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_environ.c_environ_for_session.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.environ = type { i32 }
%struct.session = type { i32, i32 }

@global_environ = common dso_local global i32 0, align 4
@global_options = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"default-terminal\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"TERM\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"TMUX\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"%s,%ld,%d\00", align 1
@socket_path = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.environ* @environ_for_session(%struct.session* %0, i32 %1) #0 {
  %3 = alloca %struct.session*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.environ*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.session* %0, %struct.session** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = call %struct.environ* (...) @environ_create()
  store %struct.environ* %8, %struct.environ** %5, align 8
  %9 = load i32, i32* @global_environ, align 4
  %10 = load %struct.environ*, %struct.environ** %5, align 8
  %11 = call i32 @environ_copy(i32 %9, %struct.environ* %10)
  %12 = load %struct.session*, %struct.session** %3, align 8
  %13 = icmp ne %struct.session* %12, null
  br i1 %13, label %14, label %20

14:                                               ; preds = %2
  %15 = load %struct.session*, %struct.session** %3, align 8
  %16 = getelementptr inbounds %struct.session, %struct.session* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.environ*, %struct.environ** %5, align 8
  %19 = call i32 @environ_copy(i32 %17, %struct.environ* %18)
  br label %20

20:                                               ; preds = %14, %2
  %21 = load i32, i32* %4, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %29, label %23

23:                                               ; preds = %20
  %24 = load i32, i32* @global_options, align 4
  %25 = call i8* @options_get_string(i32 %24, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  store i8* %25, i8** %6, align 8
  %26 = load %struct.environ*, %struct.environ** %5, align 8
  %27 = load i8*, i8** %6, align 8
  %28 = call i32 (%struct.environ*, i8*, i8*, i8*, ...) @environ_set(%struct.environ* %26, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %27)
  br label %29

29:                                               ; preds = %23, %20
  %30 = load %struct.session*, %struct.session** %3, align 8
  %31 = icmp ne %struct.session* %30, null
  br i1 %31, label %32, label %36

32:                                               ; preds = %29
  %33 = load %struct.session*, %struct.session** %3, align 8
  %34 = getelementptr inbounds %struct.session, %struct.session* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %7, align 4
  br label %37

36:                                               ; preds = %29
  store i32 -1, i32* %7, align 4
  br label %37

37:                                               ; preds = %36, %32
  %38 = load %struct.environ*, %struct.environ** %5, align 8
  %39 = load i32, i32* @socket_path, align 4
  %40 = sext i32 %39 to i64
  %41 = inttoptr i64 %40 to i8*
  %42 = call i64 (...) @getpid()
  %43 = load i32, i32* %7, align 4
  %44 = call i32 (%struct.environ*, i8*, i8*, i8*, ...) @environ_set(%struct.environ* %38, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8* %41, i64 %42, i32 %43)
  %45 = load %struct.environ*, %struct.environ** %5, align 8
  ret %struct.environ* %45
}

declare dso_local %struct.environ* @environ_create(...) #1

declare dso_local i32 @environ_copy(i32, %struct.environ*) #1

declare dso_local i8* @options_get_string(i32, i8*) #1

declare dso_local i32 @environ_set(%struct.environ*, i8*, i8*, i8*, ...) #1

declare dso_local i64 @getpid(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
