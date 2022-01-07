; ModuleID = '/home/carl/AnghaBench/systemd/src/activate/extr_activate.c_main.c'
source_filename = "/home/carl/AnghaBench/systemd/src/activate/extr_activate.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.epoll_event = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@EXIT_SUCCESS = common dso_local global i32 0, align 4
@EXIT_FAILURE = common dso_local global i32 0, align 4
@arg_accept = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [48 x i8] c"No sockets to listen on specified or passed in.\00", align 1
@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [24 x i8] c"epoll_wait() failed: %m\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"Communication attempt on fd %i.\00", align 1
@optind = common dso_local global i64 0, align 8
@SD_LISTEN_FDS_START = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.epoll_event, align 4
  store i32 0, i32* %4, align 4
  store i32 %0, i32* %5, align 4
  store i8** %1, i8*** %6, align 8
  store i8** %2, i8*** %7, align 8
  store i32 -1, i32* %10, align 4
  %12 = call i32 @log_show_color(i32 1)
  %13 = call i32 (...) @log_parse_environment()
  %14 = call i32 (...) @log_open()
  %15 = load i32, i32* %5, align 4
  %16 = load i8**, i8*** %6, align 8
  %17 = call i32 @parse_argv(i32 %15, i8** %16)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp sle i32 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %3
  %21 = load i32, i32* %8, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  %24 = load i32, i32* @EXIT_SUCCESS, align 4
  br label %27

25:                                               ; preds = %20
  %26 = load i32, i32* @EXIT_FAILURE, align 4
  br label %27

27:                                               ; preds = %25, %23
  %28 = phi i32 [ %24, %23 ], [ %26, %25 ]
  store i32 %28, i32* %4, align 4
  br label %103

29:                                               ; preds = %3
  %30 = call i32 (...) @install_chld_handler()
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %34, i32* %4, align 4
  br label %103

35:                                               ; preds = %29
  %36 = load i64, i64* @arg_accept, align 8
  %37 = call i32 @open_sockets(i32* %10, i64 %36)
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %9, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %41, i32* %4, align 4
  br label %103

42:                                               ; preds = %35
  %43 = load i32, i32* %9, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %42
  %46 = call i32 @log_error(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  %47 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %47, i32* %4, align 4
  br label %103

48:                                               ; preds = %42
  br label %49

49:                                               ; preds = %88, %57, %48
  %50 = load i32, i32* %10, align 4
  %51 = call i64 @epoll_wait(i32 %50, %struct.epoll_event* %11, i32 1, i32 -1)
  %52 = icmp slt i64 %51, 0
  br i1 %52, label %53, label %62

53:                                               ; preds = %49
  %54 = load i64, i64* @errno, align 8
  %55 = load i64, i64* @EINTR, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %53
  br label %49

58:                                               ; preds = %53
  %59 = load i64, i64* @errno, align 8
  %60 = call i32 @log_error_errno(i64 %59, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %61 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %61, i32* %4, align 4
  br label %103

62:                                               ; preds = %49
  %63 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %11, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @log_info(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %65)
  %67 = load i64, i64* @arg_accept, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %87

69:                                               ; preds = %62
  %70 = load i8**, i8*** %6, align 8
  %71 = load i64, i64* @optind, align 8
  %72 = getelementptr inbounds i8*, i8** %70, i64 %71
  %73 = load i8*, i8** %72, align 8
  %74 = load i8**, i8*** %6, align 8
  %75 = load i64, i64* @optind, align 8
  %76 = getelementptr inbounds i8*, i8** %74, i64 %75
  %77 = load i8**, i8*** %7, align 8
  %78 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %11, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @do_accept(i8* %73, i8** %76, i8** %77, i32 %80)
  store i32 %81, i32* %8, align 4
  %82 = load i32, i32* %8, align 4
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %69
  %85 = load i32, i32* @EXIT_FAILURE, align 4
  store i32 %85, i32* %4, align 4
  br label %103

86:                                               ; preds = %69
  br label %88

87:                                               ; preds = %62
  br label %89

88:                                               ; preds = %86
  br label %49

89:                                               ; preds = %87
  %90 = load i8**, i8*** %6, align 8
  %91 = load i64, i64* @optind, align 8
  %92 = getelementptr inbounds i8*, i8** %90, i64 %91
  %93 = load i8*, i8** %92, align 8
  %94 = load i8**, i8*** %6, align 8
  %95 = load i64, i64* @optind, align 8
  %96 = getelementptr inbounds i8*, i8** %94, i64 %95
  %97 = load i8**, i8*** %7, align 8
  %98 = load i32, i32* @SD_LISTEN_FDS_START, align 4
  %99 = load i32, i32* %9, align 4
  %100 = sext i32 %99 to i64
  %101 = call i32 @exec_process(i8* %93, i8** %96, i8** %97, i32 %98, i64 %100)
  %102 = load i32, i32* @EXIT_SUCCESS, align 4
  store i32 %102, i32* %4, align 4
  br label %103

103:                                              ; preds = %89, %84, %58, %45, %40, %33, %27
  %104 = load i32, i32* %4, align 4
  ret i32 %104
}

declare dso_local i32 @log_show_color(i32) #1

declare dso_local i32 @log_parse_environment(...) #1

declare dso_local i32 @log_open(...) #1

declare dso_local i32 @parse_argv(i32, i8**) #1

declare dso_local i32 @install_chld_handler(...) #1

declare dso_local i32 @open_sockets(i32*, i64) #1

declare dso_local i32 @log_error(i8*) #1

declare dso_local i64 @epoll_wait(i32, %struct.epoll_event*, i32, i32) #1

declare dso_local i32 @log_error_errno(i64, i8*) #1

declare dso_local i32 @log_info(i8*, i32) #1

declare dso_local i32 @do_accept(i8*, i8**, i8**, i32) #1

declare dso_local i32 @exec_process(i8*, i8**, i8**, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
