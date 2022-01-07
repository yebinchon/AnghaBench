; ModuleID = '/home/carl/AnghaBench/tmux/extr_cmd-run-shell.c_cmd_run_shell_callback.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_cmd-run-shell.c_cmd_run_shell_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.job = type { i32 }
%struct.cmd_run_shell_data = type { i8*, i32* }
%struct.bufferevent = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"'%s' returned %d\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"'%s' terminated by signal %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.job*)* @cmd_run_shell_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cmd_run_shell_callback(%struct.job* %0) #0 {
  %2 = alloca %struct.job*, align 8
  %3 = alloca %struct.cmd_run_shell_data*, align 8
  %4 = alloca %struct.bufferevent*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.job* %0, %struct.job** %2, align 8
  %11 = load %struct.job*, %struct.job** %2, align 8
  %12 = call %struct.cmd_run_shell_data* @job_get_data(%struct.job* %11)
  store %struct.cmd_run_shell_data* %12, %struct.cmd_run_shell_data** %3, align 8
  %13 = load %struct.job*, %struct.job** %2, align 8
  %14 = call %struct.bufferevent* @job_get_event(%struct.job* %13)
  store %struct.bufferevent* %14, %struct.bufferevent** %4, align 8
  %15 = load %struct.cmd_run_shell_data*, %struct.cmd_run_shell_data** %3, align 8
  %16 = getelementptr inbounds %struct.cmd_run_shell_data, %struct.cmd_run_shell_data* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  store i8* %17, i8** %5, align 8
  store i8* null, i8** %6, align 8
  br label %18

18:                                               ; preds = %31, %1
  %19 = load %struct.bufferevent*, %struct.bufferevent** %4, align 8
  %20 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i8* @evbuffer_readline(i32 %21)
  store i8* %22, i8** %7, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %30

24:                                               ; preds = %18
  %25 = load %struct.job*, %struct.job** %2, align 8
  %26 = load i8*, i8** %7, align 8
  %27 = call i32 @cmd_run_shell_print(%struct.job* %25, i8* %26)
  %28 = load i8*, i8** %7, align 8
  %29 = call i32 @free(i8* %28)
  br label %30

30:                                               ; preds = %24, %18
  br label %31

31:                                               ; preds = %30
  %32 = load i8*, i8** %7, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %18, label %34

34:                                               ; preds = %31
  %35 = load %struct.bufferevent*, %struct.bufferevent** %4, align 8
  %36 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @EVBUFFER_LENGTH(i32 %37)
  store i64 %38, i64* %8, align 8
  %39 = load i64, i64* %8, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %60

41:                                               ; preds = %34
  %42 = load i64, i64* %8, align 8
  %43 = add i64 %42, 1
  %44 = call i8* @xmalloc(i64 %43)
  store i8* %44, i8** %7, align 8
  %45 = load i8*, i8** %7, align 8
  %46 = load %struct.bufferevent*, %struct.bufferevent** %4, align 8
  %47 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @EVBUFFER_DATA(i32 %48)
  %50 = load i64, i64* %8, align 8
  %51 = call i32 @memcpy(i8* %45, i32 %49, i64 %50)
  %52 = load i8*, i8** %7, align 8
  %53 = load i64, i64* %8, align 8
  %54 = getelementptr inbounds i8, i8* %52, i64 %53
  store i8 0, i8* %54, align 1
  %55 = load %struct.job*, %struct.job** %2, align 8
  %56 = load i8*, i8** %7, align 8
  %57 = call i32 @cmd_run_shell_print(%struct.job* %55, i8* %56)
  %58 = load i8*, i8** %7, align 8
  %59 = call i32 @free(i8* %58)
  br label %60

60:                                               ; preds = %41, %34
  %61 = load %struct.job*, %struct.job** %2, align 8
  %62 = call i32 @job_get_status(%struct.job* %61)
  store i32 %62, i32* %10, align 4
  %63 = load i32, i32* %10, align 4
  %64 = call i64 @WIFEXITED(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %75

66:                                               ; preds = %60
  %67 = load i32, i32* %10, align 4
  %68 = call i32 @WEXITSTATUS(i32 %67)
  store i32 %68, i32* %9, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %66
  %71 = load i8*, i8** %5, align 8
  %72 = load i32, i32* %9, align 4
  %73 = call i32 @xasprintf(i8** %6, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* %71, i32 %72)
  br label %74

74:                                               ; preds = %70, %66
  br label %86

75:                                               ; preds = %60
  %76 = load i32, i32* %10, align 4
  %77 = call i64 @WIFSIGNALED(i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %75
  %80 = load i32, i32* %10, align 4
  %81 = call i32 @WTERMSIG(i32 %80)
  store i32 %81, i32* %9, align 4
  %82 = load i8*, i8** %5, align 8
  %83 = load i32, i32* %9, align 4
  %84 = call i32 @xasprintf(i8** %6, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i8* %82, i32 %83)
  br label %85

85:                                               ; preds = %79, %75
  br label %86

86:                                               ; preds = %85, %74
  %87 = load i8*, i8** %6, align 8
  %88 = icmp ne i8* %87, null
  br i1 %88, label %89, label %93

89:                                               ; preds = %86
  %90 = load %struct.job*, %struct.job** %2, align 8
  %91 = load i8*, i8** %6, align 8
  %92 = call i32 @cmd_run_shell_print(%struct.job* %90, i8* %91)
  br label %93

93:                                               ; preds = %89, %86
  %94 = load i8*, i8** %6, align 8
  %95 = call i32 @free(i8* %94)
  %96 = load %struct.cmd_run_shell_data*, %struct.cmd_run_shell_data** %3, align 8
  %97 = getelementptr inbounds %struct.cmd_run_shell_data, %struct.cmd_run_shell_data* %96, i32 0, i32 1
  %98 = load i32*, i32** %97, align 8
  %99 = icmp ne i32* %98, null
  br i1 %99, label %100, label %105

100:                                              ; preds = %93
  %101 = load %struct.cmd_run_shell_data*, %struct.cmd_run_shell_data** %3, align 8
  %102 = getelementptr inbounds %struct.cmd_run_shell_data, %struct.cmd_run_shell_data* %101, i32 0, i32 1
  %103 = load i32*, i32** %102, align 8
  %104 = call i32 @cmdq_continue(i32* %103)
  br label %105

105:                                              ; preds = %100, %93
  ret void
}

declare dso_local %struct.cmd_run_shell_data* @job_get_data(%struct.job*) #1

declare dso_local %struct.bufferevent* @job_get_event(%struct.job*) #1

declare dso_local i8* @evbuffer_readline(i32) #1

declare dso_local i32 @cmd_run_shell_print(%struct.job*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @EVBUFFER_LENGTH(i32) #1

declare dso_local i8* @xmalloc(i64) #1

declare dso_local i32 @memcpy(i8*, i32, i64) #1

declare dso_local i32 @EVBUFFER_DATA(i32) #1

declare dso_local i32 @job_get_status(%struct.job*) #1

declare dso_local i64 @WIFEXITED(i32) #1

declare dso_local i32 @WEXITSTATUS(i32) #1

declare dso_local i32 @xasprintf(i8**, i8*, i8*, i32) #1

declare dso_local i64 @WIFSIGNALED(i32) #1

declare dso_local i32 @WTERMSIG(i32) #1

declare dso_local i32 @cmdq_continue(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
