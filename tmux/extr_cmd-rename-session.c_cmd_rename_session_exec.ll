; ModuleID = '/home/carl/AnghaBench/tmux/extr_cmd-rename-session.c_cmd_rename_session_exec.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_cmd-rename-session.c_cmd_rename_session_exec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmd = type { %struct.args* }
%struct.args = type { i32* }
%struct.cmdq_item = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.session* }
%struct.session = type { i8* }
%struct.client = type { i32 }

@CMD_RETURN_NORMAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"bad session name: %s\00", align 1
@CMD_RETURN_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"duplicate session: %s\00", align 1
@sessions = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"session-renamed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cmd*, %struct.cmdq_item*)* @cmd_rename_session_exec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmd_rename_session_exec(%struct.cmd* %0, %struct.cmdq_item* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cmd*, align 8
  %5 = alloca %struct.cmdq_item*, align 8
  %6 = alloca %struct.args*, align 8
  %7 = alloca %struct.client*, align 8
  %8 = alloca %struct.session*, align 8
  %9 = alloca i8*, align 8
  store %struct.cmd* %0, %struct.cmd** %4, align 8
  store %struct.cmdq_item* %1, %struct.cmdq_item** %5, align 8
  %10 = load %struct.cmd*, %struct.cmd** %4, align 8
  %11 = getelementptr inbounds %struct.cmd, %struct.cmd* %10, i32 0, i32 0
  %12 = load %struct.args*, %struct.args** %11, align 8
  store %struct.args* %12, %struct.args** %6, align 8
  %13 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %14 = call %struct.client* @cmd_find_client(%struct.cmdq_item* %13, i32* null, i32 1)
  store %struct.client* %14, %struct.client** %7, align 8
  %15 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %16 = getelementptr inbounds %struct.cmdq_item, %struct.cmdq_item* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load %struct.session*, %struct.session** %17, align 8
  store %struct.session* %18, %struct.session** %8, align 8
  %19 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %20 = load %struct.args*, %struct.args** %6, align 8
  %21 = getelementptr inbounds %struct.args, %struct.args* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.client*, %struct.client** %7, align 8
  %26 = load %struct.session*, %struct.session** %8, align 8
  %27 = call i8* @format_single(%struct.cmdq_item* %19, i32 %24, %struct.client* %25, %struct.session* %26, i32* null, i32* null)
  store i8* %27, i8** %9, align 8
  %28 = load i8*, i8** %9, align 8
  %29 = load %struct.session*, %struct.session** %8, align 8
  %30 = getelementptr inbounds %struct.session, %struct.session* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = call i64 @strcmp(i8* %28, i8* %31)
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %2
  %35 = load i8*, i8** %9, align 8
  %36 = call i32 @free(i8* %35)
  %37 = load i32, i32* @CMD_RETURN_NORMAL, align 4
  store i32 %37, i32* %3, align 4
  br label %79

38:                                               ; preds = %2
  %39 = load i8*, i8** %9, align 8
  %40 = call i32 @session_check_name(i8* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %49, label %42

42:                                               ; preds = %38
  %43 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %44 = load i8*, i8** %9, align 8
  %45 = call i32 @cmdq_error(%struct.cmdq_item* %43, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* %44)
  %46 = load i8*, i8** %9, align 8
  %47 = call i32 @free(i8* %46)
  %48 = load i32, i32* @CMD_RETURN_ERROR, align 4
  store i32 %48, i32* %3, align 4
  br label %79

49:                                               ; preds = %38
  %50 = load i8*, i8** %9, align 8
  %51 = call i32* @session_find(i8* %50)
  %52 = icmp ne i32* %51, null
  br i1 %52, label %53, label %60

53:                                               ; preds = %49
  %54 = load %struct.cmdq_item*, %struct.cmdq_item** %5, align 8
  %55 = load i8*, i8** %9, align 8
  %56 = call i32 @cmdq_error(%struct.cmdq_item* %54, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8* %55)
  %57 = load i8*, i8** %9, align 8
  %58 = call i32 @free(i8* %57)
  %59 = load i32, i32* @CMD_RETURN_ERROR, align 4
  store i32 %59, i32* %3, align 4
  br label %79

60:                                               ; preds = %49
  %61 = load i32, i32* @sessions, align 4
  %62 = load %struct.session*, %struct.session** %8, align 8
  %63 = call i32 @RB_REMOVE(i32 %61, i32* @sessions, %struct.session* %62)
  %64 = load %struct.session*, %struct.session** %8, align 8
  %65 = getelementptr inbounds %struct.session, %struct.session* %64, i32 0, i32 0
  %66 = load i8*, i8** %65, align 8
  %67 = call i32 @free(i8* %66)
  %68 = load i8*, i8** %9, align 8
  %69 = load %struct.session*, %struct.session** %8, align 8
  %70 = getelementptr inbounds %struct.session, %struct.session* %69, i32 0, i32 0
  store i8* %68, i8** %70, align 8
  %71 = load i32, i32* @sessions, align 4
  %72 = load %struct.session*, %struct.session** %8, align 8
  %73 = call i32 @RB_INSERT(i32 %71, i32* @sessions, %struct.session* %72)
  %74 = load %struct.session*, %struct.session** %8, align 8
  %75 = call i32 @server_status_session(%struct.session* %74)
  %76 = load %struct.session*, %struct.session** %8, align 8
  %77 = call i32 @notify_session(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), %struct.session* %76)
  %78 = load i32, i32* @CMD_RETURN_NORMAL, align 4
  store i32 %78, i32* %3, align 4
  br label %79

79:                                               ; preds = %60, %53, %42, %34
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local %struct.client* @cmd_find_client(%struct.cmdq_item*, i32*, i32) #1

declare dso_local i8* @format_single(%struct.cmdq_item*, i32, %struct.client*, %struct.session*, i32*, i32*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @session_check_name(i8*) #1

declare dso_local i32 @cmdq_error(%struct.cmdq_item*, i8*, i8*) #1

declare dso_local i32* @session_find(i8*) #1

declare dso_local i32 @RB_REMOVE(i32, i32*, %struct.session*) #1

declare dso_local i32 @RB_INSERT(i32, i32*, %struct.session*) #1

declare dso_local i32 @server_status_session(%struct.session*) #1

declare dso_local i32 @notify_session(i8*, %struct.session*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
