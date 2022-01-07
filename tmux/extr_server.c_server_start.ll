; ModuleID = '/home/carl/AnghaBench/tmux/extr_server.c_server_start.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_server.c_server_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tmuxproc = type { i32 }
%struct.event_base = type { i32 }
%struct.client = type { i32 }

@AF_UNIX = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@PF_UNSPEC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"socketpair failed\00", align 1
@SIG_BLOCK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"fork failed\00", align 1
@SIG_SETMASK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"daemon failed\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"event_reinit failed\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"server\00", align 1
@server_proc = common dso_local global i32 0, align 4
@server_signal = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [65 x i8] c"stdio rpath wpath cpath fattr unix getpw recvfd proc exec tty ps\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"pledge failed\00", align 1
@windows = common dso_local global i32 0, align 4
@all_window_panes = common dso_local global i32 0, align 4
@clients = common dso_local global i32 0, align 4
@sessions = common dso_local global i32 0, align 4
@start_time = common dso_local global i32 0, align 4
@server_fd = common dso_local global i32 0, align 4
@CLIENT_EXIT = common dso_local global i32 0, align 4
@server_loop = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @server_start(%struct.tmuxproc* %0, %struct.event_base* %1, i32 %2, i8* %3) #0 {
  %5 = alloca %struct.tmuxproc*, align 8
  %6 = alloca %struct.event_base*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca [2 x i32], align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.client*, align 8
  %13 = alloca i8*, align 8
  store %struct.tmuxproc* %0, %struct.tmuxproc** %5, align 8
  store %struct.event_base* %1, %struct.event_base** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  store i8* null, i8** %13, align 8
  %14 = load i32, i32* @AF_UNIX, align 4
  %15 = load i32, i32* @SOCK_STREAM, align 4
  %16 = load i32, i32* @PF_UNSPEC, align 4
  %17 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %18 = call i64 @socketpair(i32 %14, i32 %15, i32 %16, i32* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %4
  %21 = call i32 @fatal(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %22

22:                                               ; preds = %20, %4
  %23 = call i32 @sigfillset(i32* %10)
  %24 = load i32, i32* @SIG_BLOCK, align 4
  %25 = call i32 @sigprocmask(i32 %24, i32* %10, i32* %11)
  %26 = call i32 (...) @fork()
  switch i32 %26, label %30 [
    i32 -1, label %27
    i32 0, label %29
  ]

27:                                               ; preds = %22
  %28 = call i32 @fatal(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  br label %29

29:                                               ; preds = %22, %27
  br label %38

30:                                               ; preds = %22
  %31 = load i32, i32* @SIG_SETMASK, align 4
  %32 = call i32 @sigprocmask(i32 %31, i32* %11, i32* null)
  %33 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @close(i32 %34)
  %36 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %37 = load i32, i32* %36, align 4
  ret i32 %37

38:                                               ; preds = %29
  %39 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @close(i32 %40)
  %42 = call i64 @daemon(i32 1, i32 0)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %38
  %45 = call i32 @fatal(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  br label %46

46:                                               ; preds = %44, %38
  %47 = load %struct.tmuxproc*, %struct.tmuxproc** %5, align 8
  %48 = call i32 @proc_clear_signals(%struct.tmuxproc* %47, i32 0)
  %49 = load %struct.event_base*, %struct.event_base** %6, align 8
  %50 = call i64 @event_reinit(%struct.event_base* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %46
  %53 = call i32 @fatalx(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  br label %54

54:                                               ; preds = %52, %46
  %55 = call i32 @proc_start(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  store i32 %55, i32* @server_proc, align 4
  %56 = load i32, i32* @server_proc, align 4
  %57 = load i32, i32* @server_signal, align 4
  %58 = call i32 @proc_set_signals(i32 %56, i32 %57)
  %59 = load i32, i32* @SIG_SETMASK, align 4
  %60 = call i32 @sigprocmask(i32 %59, i32* %11, i32* null)
  %61 = call i32 (...) @log_get_level()
  %62 = icmp sgt i32 %61, 1
  br i1 %62, label %63, label %65

63:                                               ; preds = %54
  %64 = call i32 (...) @tty_create_log()
  br label %65

65:                                               ; preds = %63, %54
  %66 = call i64 @pledge(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.5, i64 0, i64 0), i32* null)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %65
  %69 = call i32 @fatal(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  br label %70

70:                                               ; preds = %68, %65
  %71 = call i32 @RB_INIT(i32* @windows)
  %72 = call i32 @RB_INIT(i32* @all_window_panes)
  %73 = call i32 @TAILQ_INIT(i32* @clients)
  %74 = call i32 @RB_INIT(i32* @sessions)
  %75 = call i32 (...) @key_bindings_init()
  %76 = call i32 @gettimeofday(i32* @start_time, i32* null)
  %77 = call i32 @server_create_socket(i8** %13)
  store i32 %77, i32* @server_fd, align 4
  %78 = load i32, i32* @server_fd, align 4
  %79 = icmp ne i32 %78, -1
  br i1 %79, label %80, label %82

80:                                               ; preds = %70
  %81 = call i32 (...) @server_update_socket()
  br label %82

82:                                               ; preds = %80, %70
  %83 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1
  %84 = load i32, i32* %83, align 4
  %85 = call %struct.client* @server_client_create(i32 %84)
  store %struct.client* %85, %struct.client** %12, align 8
  %86 = load i32, i32* %7, align 4
  %87 = icmp sge i32 %86, 0
  br i1 %87, label %88, label %95

88:                                               ; preds = %82
  %89 = load i8*, i8** %8, align 8
  %90 = call i32 @unlink(i8* %89)
  %91 = load i8*, i8** %8, align 8
  %92 = call i32 @free(i8* %91)
  %93 = load i32, i32* %7, align 4
  %94 = call i32 @close(i32 %93)
  br label %95

95:                                               ; preds = %88, %82
  %96 = load i8*, i8** %13, align 8
  %97 = icmp ne i8* %96, null
  br i1 %97, label %98, label %110

98:                                               ; preds = %95
  %99 = load %struct.client*, %struct.client** %12, align 8
  %100 = load i8*, i8** %13, align 8
  %101 = call i32 @cmdq_get_error(i8* %100)
  %102 = call i32 @cmdq_append(%struct.client* %99, i32 %101)
  %103 = load i8*, i8** %13, align 8
  %104 = call i32 @free(i8* %103)
  %105 = load i32, i32* @CLIENT_EXIT, align 4
  %106 = load %struct.client*, %struct.client** %12, align 8
  %107 = getelementptr inbounds %struct.client, %struct.client* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = or i32 %108, %105
  store i32 %109, i32* %107, align 4
  br label %110

110:                                              ; preds = %98, %95
  %111 = call i32 @server_add_accept(i32 0)
  %112 = load i32, i32* @server_proc, align 4
  %113 = load i32, i32* @server_loop, align 4
  %114 = call i32 @proc_loop(i32 %112, i32 %113)
  %115 = call i32 (...) @job_kill_all()
  %116 = call i32 (...) @status_prompt_save_history()
  %117 = call i32 @exit(i32 0) #3
  unreachable
}

declare dso_local i64 @socketpair(i32, i32, i32, i32*) #1

declare dso_local i32 @fatal(i8*) #1

declare dso_local i32 @sigfillset(i32*) #1

declare dso_local i32 @sigprocmask(i32, i32*, i32*) #1

declare dso_local i32 @fork(...) #1

declare dso_local i32 @close(i32) #1

declare dso_local i64 @daemon(i32, i32) #1

declare dso_local i32 @proc_clear_signals(%struct.tmuxproc*, i32) #1

declare dso_local i64 @event_reinit(%struct.event_base*) #1

declare dso_local i32 @fatalx(i8*) #1

declare dso_local i32 @proc_start(i8*) #1

declare dso_local i32 @proc_set_signals(i32, i32) #1

declare dso_local i32 @log_get_level(...) #1

declare dso_local i32 @tty_create_log(...) #1

declare dso_local i64 @pledge(i8*, i32*) #1

declare dso_local i32 @RB_INIT(i32*) #1

declare dso_local i32 @TAILQ_INIT(i32*) #1

declare dso_local i32 @key_bindings_init(...) #1

declare dso_local i32 @gettimeofday(i32*, i32*) #1

declare dso_local i32 @server_create_socket(i8**) #1

declare dso_local i32 @server_update_socket(...) #1

declare dso_local %struct.client* @server_client_create(i32) #1

declare dso_local i32 @unlink(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @cmdq_append(%struct.client*, i32) #1

declare dso_local i32 @cmdq_get_error(i8*) #1

declare dso_local i32 @server_add_accept(i32) #1

declare dso_local i32 @proc_loop(i32, i32) #1

declare dso_local i32 @job_kill_all(...) #1

declare dso_local i32 @status_prompt_save_history(...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
