; ModuleID = '/home/carl/AnghaBench/tmux/extr_server-client.c_server_client_dispatch_command.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_server-client.c_server_client_dispatch_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.client = type { i32 }
%struct.imsg = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.msg_command_data = type { i32 }
%struct.cmd_parse_result = type { i32, i8*, i32 }

@CLIENT_EXIT = common dso_local global i32 0, align 4
@IMSG_HEADER_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"bad MSG_COMMAND size\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"bad MSG_COMMAND string\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"command too long\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"new-session\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"empty command\00", align 1
@server_client_command_done = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.client*, %struct.imsg*)* @server_client_dispatch_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @server_client_dispatch_command(%struct.client* %0, %struct.imsg* %1) #0 {
  %3 = alloca %struct.client*, align 8
  %4 = alloca %struct.imsg*, align 8
  %5 = alloca %struct.msg_command_data, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8**, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.cmd_parse_result*, align 8
  store %struct.client* %0, %struct.client** %3, align 8
  store %struct.imsg* %1, %struct.imsg** %4, align 8
  %12 = load %struct.client*, %struct.client** %3, align 8
  %13 = getelementptr inbounds %struct.client, %struct.client* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @CLIENT_EXIT, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  br label %124

19:                                               ; preds = %2
  %20 = load %struct.imsg*, %struct.imsg** %4, align 8
  %21 = getelementptr inbounds %struct.imsg, %struct.imsg* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @IMSG_HEADER_SIZE, align 4
  %25 = sub nsw i32 %23, %24
  %26 = sext i32 %25 to i64
  %27 = icmp ult i64 %26, 4
  br i1 %27, label %28, label %30

28:                                               ; preds = %19
  %29 = call i32 @fatalx(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %30

30:                                               ; preds = %28, %19
  %31 = load %struct.imsg*, %struct.imsg** %4, align 8
  %32 = getelementptr inbounds %struct.imsg, %struct.imsg* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @memcpy(%struct.msg_command_data* %5, i64 %33, i32 4)
  %35 = load %struct.imsg*, %struct.imsg** %4, align 8
  %36 = getelementptr inbounds %struct.imsg, %struct.imsg* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = inttoptr i64 %37 to i8*
  %39 = getelementptr inbounds i8, i8* %38, i64 4
  store i8* %39, i8** %6, align 8
  %40 = load %struct.imsg*, %struct.imsg** %4, align 8
  %41 = getelementptr inbounds %struct.imsg, %struct.imsg* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @IMSG_HEADER_SIZE, align 4
  %45 = sub nsw i32 %43, %44
  %46 = sext i32 %45 to i64
  %47 = sub i64 %46, 4
  store i64 %47, i64* %7, align 8
  %48 = load i64, i64* %7, align 8
  %49 = icmp ugt i64 %48, 0
  br i1 %49, label %50, label %60

50:                                               ; preds = %30
  %51 = load i8*, i8** %6, align 8
  %52 = load i64, i64* %7, align 8
  %53 = sub i64 %52, 1
  %54 = getelementptr inbounds i8, i8* %51, i64 %53
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %50
  %59 = call i32 @fatalx(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %60

60:                                               ; preds = %58, %50, %30
  %61 = getelementptr inbounds %struct.msg_command_data, %struct.msg_command_data* %5, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %8, align 4
  %63 = load i8*, i8** %6, align 8
  %64 = load i64, i64* %7, align 8
  %65 = load i32, i32* %8, align 4
  %66 = call i64 @cmd_unpack_argv(i8* %63, i64 %64, i32 %65, i8*** %9)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %60
  %69 = call i8* @xstrdup(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  store i8* %69, i8** %10, align 8
  br label %109

70:                                               ; preds = %60
  %71 = load i32, i32* %8, align 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %70
  store i32 1, i32* %8, align 4
  %74 = call i8** @xcalloc(i32 1, i32 8)
  store i8** %74, i8*** %9, align 8
  %75 = call i8* @xstrdup(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %76 = load i8**, i8*** %9, align 8
  store i8* %75, i8** %76, align 8
  br label %77

77:                                               ; preds = %73, %70
  %78 = load i32, i32* %8, align 4
  %79 = load i8**, i8*** %9, align 8
  %80 = call %struct.cmd_parse_result* @cmd_parse_from_arguments(i32 %78, i8** %79, i32* null)
  store %struct.cmd_parse_result* %80, %struct.cmd_parse_result** %11, align 8
  %81 = load %struct.cmd_parse_result*, %struct.cmd_parse_result** %11, align 8
  %82 = getelementptr inbounds %struct.cmd_parse_result, %struct.cmd_parse_result* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  switch i32 %83, label %91 [
    i32 130, label %84
    i32 129, label %86
    i32 128, label %90
  ]

84:                                               ; preds = %77
  %85 = call i8* @xstrdup(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  store i8* %85, i8** %10, align 8
  br label %109

86:                                               ; preds = %77
  %87 = load %struct.cmd_parse_result*, %struct.cmd_parse_result** %11, align 8
  %88 = getelementptr inbounds %struct.cmd_parse_result, %struct.cmd_parse_result* %87, i32 0, i32 1
  %89 = load i8*, i8** %88, align 8
  store i8* %89, i8** %10, align 8
  br label %109

90:                                               ; preds = %77
  br label %91

91:                                               ; preds = %77, %90
  %92 = load i32, i32* %8, align 4
  %93 = load i8**, i8*** %9, align 8
  %94 = call i32 @cmd_free_argv(i32 %92, i8** %93)
  %95 = load %struct.client*, %struct.client** %3, align 8
  %96 = load %struct.cmd_parse_result*, %struct.cmd_parse_result** %11, align 8
  %97 = getelementptr inbounds %struct.cmd_parse_result, %struct.cmd_parse_result* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @cmdq_get_command(i32 %98, i32* null, i32* null, i32 0)
  %100 = call i32 @cmdq_append(%struct.client* %95, i32 %99)
  %101 = load %struct.client*, %struct.client** %3, align 8
  %102 = load i32, i32* @server_client_command_done, align 4
  %103 = call i32 @cmdq_get_callback(i32 %102, i32* null)
  %104 = call i32 @cmdq_append(%struct.client* %101, i32 %103)
  %105 = load %struct.cmd_parse_result*, %struct.cmd_parse_result** %11, align 8
  %106 = getelementptr inbounds %struct.cmd_parse_result, %struct.cmd_parse_result* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @cmd_list_free(i32 %107)
  br label %124

109:                                              ; preds = %86, %84, %68
  %110 = load i32, i32* %8, align 4
  %111 = load i8**, i8*** %9, align 8
  %112 = call i32 @cmd_free_argv(i32 %110, i8** %111)
  %113 = load %struct.client*, %struct.client** %3, align 8
  %114 = load i8*, i8** %10, align 8
  %115 = call i32 @cmdq_get_error(i8* %114)
  %116 = call i32 @cmdq_append(%struct.client* %113, i32 %115)
  %117 = load i8*, i8** %10, align 8
  %118 = call i32 @free(i8* %117)
  %119 = load i32, i32* @CLIENT_EXIT, align 4
  %120 = load %struct.client*, %struct.client** %3, align 8
  %121 = getelementptr inbounds %struct.client, %struct.client* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = or i32 %122, %119
  store i32 %123, i32* %121, align 4
  br label %124

124:                                              ; preds = %109, %91, %18
  ret void
}

declare dso_local i32 @fatalx(i8*) #1

declare dso_local i32 @memcpy(%struct.msg_command_data*, i64, i32) #1

declare dso_local i64 @cmd_unpack_argv(i8*, i64, i32, i8***) #1

declare dso_local i8* @xstrdup(i8*) #1

declare dso_local i8** @xcalloc(i32, i32) #1

declare dso_local %struct.cmd_parse_result* @cmd_parse_from_arguments(i32, i8**, i32*) #1

declare dso_local i32 @cmd_free_argv(i32, i8**) #1

declare dso_local i32 @cmdq_append(%struct.client*, i32) #1

declare dso_local i32 @cmdq_get_command(i32, i32*, i32*, i32) #1

declare dso_local i32 @cmdq_get_callback(i32, i32*) #1

declare dso_local i32 @cmd_list_free(i32) #1

declare dso_local i32 @cmdq_get_error(i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
