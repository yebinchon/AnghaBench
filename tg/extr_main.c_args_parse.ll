; ModuleID = '/home/carl/AnghaBench/tg/extr_main.c_args_parse.c'
source_filename = "/home/carl/AnghaBench/tg/extr_main.c_args_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.option = type { i8*, i32, i32, i32 }

@TLS = common dso_local global i32 0, align 4
@args_parse.long_options = internal global [33 x %struct.option] [%struct.option { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0), i32 130, i32 0, i32 1000 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i32 128, i32 0, i32 117 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), i32 128, i32 0, i32 107 }, %struct.option { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i32 130, i32 0, i32 118 }, %struct.option { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i32 0, i32 0), i32 130, i32 0, i32 78 }, %struct.option { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i32 0, i32 0), i32 128, i32 0, i32 108 }, %struct.option { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i32 0, i32 0), i32 130, i32 0, i32 102 }, %struct.option { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i32 0, i32 0), i32 130, i32 0, i32 69 }, %struct.option { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i32 0, i32 0), i32 130, i32 0, i32 119 }, %struct.option { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i32 0, i32 0), i32 130, i32 0, i32 87 }, %struct.option { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i32 0, i32 0), i32 130, i32 0, i32 67 }, %struct.option { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i32 0, i32 0), i32 130, i32 0, i32 82 }, %struct.option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i32 0, i32 0), i32 130, i32 0, i32 65 }, %struct.option { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i32 0, i32 0), i32 130, i32 0, i32 100 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i32 0, i32 0), i32 128, i32 0, i32 76 }, %struct.option { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0), i32 128, i32 0, i32 85 }, %struct.option { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i32 0, i32 0), i32 128, i32 0, i32 71 }, %struct.option { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i32 0, i32 0), i32 130, i32 0, i32 68 }, %struct.option { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18, i32 0, i32 0), i32 130, i32 0, i32 113 }, %struct.option { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i32 0, i32 0), i32 128, i32 0, i32 80 }, %struct.option { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.20, i32 0, i32 0), i32 128, i32 0, i32 83 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i32 0, i32 0), i32 128, i32 0, i32 101 }, %struct.option { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.22, i32 0, i32 0), i32 130, i32 0, i32 73 }, %struct.option { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.23, i32 0, i32 0), i32 130, i32 0, i32 54 }, %struct.option { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i32 0, i32 0), i32 129, i32 0, i32 98 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i32 0, i32 0), i32 130, i32 0, i32 104 }, %struct.option { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.26, i32 0, i32 0), i32 130, i32 0, i32 1001 }, %struct.option { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.27, i32 0, i32 0), i32 130, i32 0, i32 1002 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i32 0, i32 0), i32 130, i32 0, i32 1003 }, %struct.option { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.29, i32 0, i32 0), i32 128, i32 0, i32 90 }, %struct.option { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.30, i32 0, i32 0), i32 130, i32 0, i32 1004 }, %struct.option { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.31, i32 0, i32 0), i32 130, i32 0, i32 1005 }, %struct.option zeroinitializer], align 16
@.str = private unnamed_addr constant [16 x i8] c"debug-allocator\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"phone\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"rsa-key\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"verbosity\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"enable-msg-id\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"log-level\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"sync-from-start\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"disable-auto-accept\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"allow-weak-random\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"wait-dialog-list\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"disable-colors\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"disable-readline\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"alert\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"daemonize\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"logname\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"username\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"groupname\00", align 1
@.str.17 = private unnamed_addr constant [15 x i8] c"disable-output\00", align 1
@.str.18 = private unnamed_addr constant [20 x i8] c"reset-authorization\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"tcp-port\00", align 1
@.str.20 = private unnamed_addr constant [12 x i8] c"unix-socket\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"exec\00", align 1
@.str.22 = private unnamed_addr constant [14 x i8] c"disable-names\00", align 1
@.str.23 = private unnamed_addr constant [12 x i8] c"enable-ipv6\00", align 1
@.str.24 = private unnamed_addr constant [4 x i8] c"bot\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.26 = private unnamed_addr constant [15 x i8] c"accept-any-tcp\00", align 1
@.str.27 = private unnamed_addr constant [21 x i8] c"disable-link-preview\00", align 1
@.str.28 = private unnamed_addr constant [5 x i8] c"json\00", align 1
@.str.29 = private unnamed_addr constant [14 x i8] c"python-script\00", align 1
@.str.30 = private unnamed_addr constant [18 x i8] c"permanent-msg-ids\00", align 1
@.str.31 = private unnamed_addr constant [19 x i8] c"permanent-peer-ids\00", align 1
@.str.32 = private unnamed_addr constant [35 x i8] c"u:hk:vNl:fEwWCRAdL:DU:G:qP:S:e:I6b\00", align 1
@bot_mode = common dso_local global i32 0, align 4
@optarg = common dso_local global i8* null, align 8
@bot_hash = common dso_local global i8* null, align 8
@tgl_allocator_debug = common dso_local global i32 0, align 4
@tgl_allocator = common dso_local global i32* null, align 8
@accept_any_tcp = common dso_local global i32 0, align 4
@verbosity = common dso_local global i32 0, align 4
@msg_num_mode = common dso_local global i32 0, align 4
@log_level = common dso_local global i8* null, align 8
@sync_from_start = common dso_local global i32 0, align 4
@disable_auto_accept = common dso_local global i32 0, align 4
@allow_weak_random = common dso_local global i32 0, align 4
@wait_dialog_list = common dso_local global i32 0, align 4
@disable_colors = common dso_local global i32 0, align 4
@readline_disabled = common dso_local global i32 0, align 4
@alert_sound = common dso_local global i32 0, align 4
@daemonize = common dso_local global i32 0, align 4
@logname = common dso_local global i8* null, align 8
@set_user_name = common dso_local global i8* null, align 8
@set_group_name = common dso_local global i8* null, align 8
@disable_output = common dso_local global i32 0, align 4
@reset_authorization = common dso_local global i32 0, align 4
@port = common dso_local global i8* null, align 8
@unix_socket = common dso_local global i8* null, align 8
@start_command = common dso_local global i8* null, align 8
@use_ids = common dso_local global i32 0, align 4
@ipv6_enabled = common dso_local global i32 0, align 4
@disable_link_preview = common dso_local global i32 0, align 4
@enable_json = common dso_local global i32 0, align 4
@permanent_msg_id_mode = common dso_local global i32 0, align 4
@permanent_peer_id_mode = common dso_local global i32 0, align 4
@binlog_enabled = common dso_local global i32 0, align 4
@config_filename = common dso_local global i32 0, align 4
@lua_file = common dso_local global i8* null, align 8
@prefix = common dso_local global i8* null, align 8
@python_file = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @args_parse(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %6 = call i32 (...) @tgl_state_alloc()
  store i32 %6, i32* @TLS, align 4
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %86, %2
  %8 = load i32, i32* %3, align 4
  %9 = load i8**, i8*** %4, align 8
  %10 = call i32 @getopt_long(i32 %8, i8** %9, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.32, i64 0, i64 0), %struct.option* getelementptr inbounds ([33 x %struct.option], [33 x %struct.option]* @args_parse.long_options, i64 0, i64 0), i32* null)
  store i32 %10, i32* %5, align 4
  %11 = icmp ne i32 %10, -1
  br i1 %11, label %12, label %87

12:                                               ; preds = %7
  %13 = load i32, i32* %5, align 4
  switch i32 %13, label %84 [
    i32 98, label %14
    i32 1000, label %22
    i32 1001, label %23
    i32 117, label %24
    i32 107, label %27
    i32 118, label %31
    i32 78, label %36
    i32 108, label %39
    i32 102, label %42
    i32 69, label %43
    i32 119, label %44
    i32 87, label %45
    i32 67, label %46
    i32 82, label %49
    i32 65, label %52
    i32 100, label %53
    i32 76, label %56
    i32 85, label %58
    i32 71, label %60
    i32 68, label %62
    i32 113, label %65
    i32 80, label %68
    i32 83, label %71
    i32 101, label %73
    i32 73, label %75
    i32 54, label %78
    i32 1002, label %79
    i32 1003, label %80
    i32 1004, label %81
    i32 1005, label %82
    i32 104, label %83
  ]

14:                                               ; preds = %12
  %15 = load i32, i32* @bot_mode, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* @bot_mode, align 4
  %17 = load i8*, i8** @optarg, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %14
  %20 = load i8*, i8** @optarg, align 8
  store i8* %20, i8** @bot_hash, align 8
  br label %21

21:                                               ; preds = %19, %14
  br label %86

22:                                               ; preds = %12
  store i32* @tgl_allocator_debug, i32** @tgl_allocator, align 8
  br label %86

23:                                               ; preds = %12
  store i32 1, i32* @accept_any_tcp, align 4
  br label %86

24:                                               ; preds = %12
  %25 = load i8*, i8** @optarg, align 8
  %26 = call i32 @set_default_username(i8* %25)
  br label %86

27:                                               ; preds = %12
  %28 = load i32, i32* @TLS, align 4
  %29 = load i8*, i8** @optarg, align 8
  %30 = call i32 @tgl_set_rsa_key(i32 %28, i8* %29)
  br label %86

31:                                               ; preds = %12
  %32 = load i32, i32* @TLS, align 4
  %33 = call i32 @tgl_incr_verbosity(i32 %32)
  %34 = load i32, i32* @verbosity, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* @verbosity, align 4
  br label %86

36:                                               ; preds = %12
  %37 = load i32, i32* @msg_num_mode, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* @msg_num_mode, align 4
  br label %86

39:                                               ; preds = %12
  %40 = load i8*, i8** @optarg, align 8
  %41 = call i8* @atoi(i8* %40)
  store i8* %41, i8** @log_level, align 8
  br label %86

42:                                               ; preds = %12
  store i32 1, i32* @sync_from_start, align 4
  br label %86

43:                                               ; preds = %12
  store i32 1, i32* @disable_auto_accept, align 4
  br label %86

44:                                               ; preds = %12
  store i32 1, i32* @allow_weak_random, align 4
  br label %86

45:                                               ; preds = %12
  store i32 1, i32* @wait_dialog_list, align 4
  br label %86

46:                                               ; preds = %12
  %47 = load i32, i32* @disable_colors, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* @disable_colors, align 4
  br label %86

49:                                               ; preds = %12
  %50 = load i32, i32* @readline_disabled, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* @readline_disabled, align 4
  br label %86

52:                                               ; preds = %12
  store i32 1, i32* @alert_sound, align 4
  br label %86

53:                                               ; preds = %12
  %54 = load i32, i32* @daemonize, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* @daemonize, align 4
  br label %86

56:                                               ; preds = %12
  %57 = load i8*, i8** @optarg, align 8
  store i8* %57, i8** @logname, align 8
  br label %86

58:                                               ; preds = %12
  %59 = load i8*, i8** @optarg, align 8
  store i8* %59, i8** @set_user_name, align 8
  br label %86

60:                                               ; preds = %12
  %61 = load i8*, i8** @optarg, align 8
  store i8* %61, i8** @set_group_name, align 8
  br label %86

62:                                               ; preds = %12
  %63 = load i32, i32* @disable_output, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* @disable_output, align 4
  br label %86

65:                                               ; preds = %12
  %66 = load i32, i32* @reset_authorization, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* @reset_authorization, align 4
  br label %86

68:                                               ; preds = %12
  %69 = load i8*, i8** @optarg, align 8
  %70 = call i8* @atoi(i8* %69)
  store i8* %70, i8** @port, align 8
  br label %86

71:                                               ; preds = %12
  %72 = load i8*, i8** @optarg, align 8
  store i8* %72, i8** @unix_socket, align 8
  br label %86

73:                                               ; preds = %12
  %74 = load i8*, i8** @optarg, align 8
  store i8* %74, i8** @start_command, align 8
  br label %86

75:                                               ; preds = %12
  %76 = load i32, i32* @use_ids, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* @use_ids, align 4
  br label %86

78:                                               ; preds = %12
  store i32 1, i32* @ipv6_enabled, align 4
  br label %86

79:                                               ; preds = %12
  store i32 2, i32* @disable_link_preview, align 4
  br label %86

80:                                               ; preds = %12
  store i32 1, i32* @enable_json, align 4
  br label %86

81:                                               ; preds = %12
  store i32 1, i32* @permanent_msg_id_mode, align 4
  br label %86

82:                                               ; preds = %12
  store i32 1, i32* @permanent_peer_id_mode, align 4
  br label %86

83:                                               ; preds = %12
  br label %84

84:                                               ; preds = %12, %83
  %85 = call i32 (...) @usage()
  br label %86

86:                                               ; preds = %84, %82, %81, %80, %79, %78, %75, %73, %71, %68, %65, %62, %60, %58, %56, %53, %52, %49, %46, %45, %44, %43, %42, %39, %36, %31, %27, %24, %23, %22, %21
  br label %7

87:                                               ; preds = %7
  ret void
}

declare dso_local i32 @tgl_state_alloc(...) #1

declare dso_local i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) #1

declare dso_local i32 @set_default_username(i8*) #1

declare dso_local i32 @tgl_set_rsa_key(i32, i8*) #1

declare dso_local i32 @tgl_incr_verbosity(i32) #1

declare dso_local i8* @atoi(i8*) #1

declare dso_local i32 @usage(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
