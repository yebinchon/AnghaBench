; ModuleID = '/home/carl/AnghaBench/systemd/src/shared/extr_bus-unit-util.c_bus_append_socket_property.c'
source_filename = "/home/carl/AnghaBench/systemd/src/shared/extr_bus-unit-util.c_bus_append_socket_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"Accept\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"Writable\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"KeepAlive\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"NoDelay\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"FreeBind\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"Transparent\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"Broadcast\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"PassCredentials\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"PassSecurity\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"ReusePort\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"RemoveOnStop\00", align 1
@.str.11 = private unnamed_addr constant [22 x i8] c"SELinuxContextFromNet\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"Priority\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"IPTTL\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"Mark\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"IPTOS\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"Backlog\00", align 1
@.str.17 = private unnamed_addr constant [15 x i8] c"MaxConnections\00", align 1
@.str.18 = private unnamed_addr constant [24 x i8] c"MaxConnectionsPerSource\00", align 1
@.str.19 = private unnamed_addr constant [16 x i8] c"KeepAliveProbes\00", align 1
@.str.20 = private unnamed_addr constant [18 x i8] c"TriggerLimitBurst\00", align 1
@.str.21 = private unnamed_addr constant [11 x i8] c"SocketMode\00", align 1
@.str.22 = private unnamed_addr constant [14 x i8] c"DirectoryMode\00", align 1
@.str.23 = private unnamed_addr constant [24 x i8] c"MessageQueueMaxMessages\00", align 1
@.str.24 = private unnamed_addr constant [24 x i8] c"MessageQueueMessageSize\00", align 1
@.str.25 = private unnamed_addr constant [11 x i8] c"TimeoutSec\00", align 1
@.str.26 = private unnamed_addr constant [17 x i8] c"KeepAliveTimeSec\00", align 1
@.str.27 = private unnamed_addr constant [21 x i8] c"KeepAliveIntervalSec\00", align 1
@.str.28 = private unnamed_addr constant [15 x i8] c"DeferAcceptSec\00", align 1
@.str.29 = private unnamed_addr constant [24 x i8] c"TriggerLimitIntervalSec\00", align 1
@.str.30 = private unnamed_addr constant [14 x i8] c"ReceiveBuffer\00", align 1
@.str.31 = private unnamed_addr constant [11 x i8] c"SendBuffer\00", align 1
@.str.32 = private unnamed_addr constant [9 x i8] c"PipeSize\00", align 1
@.str.33 = private unnamed_addr constant [13 x i8] c"ExecStartPre\00", align 1
@.str.34 = private unnamed_addr constant [14 x i8] c"ExecStartPost\00", align 1
@.str.35 = private unnamed_addr constant [11 x i8] c"ExecReload\00", align 1
@.str.36 = private unnamed_addr constant [13 x i8] c"ExecStopPost\00", align 1
@.str.37 = private unnamed_addr constant [11 x i8] c"SmackLabel\00", align 1
@.str.38 = private unnamed_addr constant [15 x i8] c"SmackLabelIPIn\00", align 1
@.str.39 = private unnamed_addr constant [16 x i8] c"SmackLabelIPOut\00", align 1
@.str.40 = private unnamed_addr constant [14 x i8] c"TCPCongestion\00", align 1
@.str.41 = private unnamed_addr constant [13 x i8] c"BindToDevice\00", align 1
@.str.42 = private unnamed_addr constant [13 x i8] c"BindIPv6Only\00", align 1
@.str.43 = private unnamed_addr constant [19 x i8] c"FileDescriptorName\00", align 1
@.str.44 = private unnamed_addr constant [11 x i8] c"SocketUser\00", align 1
@.str.45 = private unnamed_addr constant [12 x i8] c"SocketGroup\00", align 1
@.str.46 = private unnamed_addr constant [9 x i8] c"Symlinks\00", align 1
@EXTRACT_UNQUOTE = common dso_local global i32 0, align 4
@.str.47 = private unnamed_addr constant [15 x i8] c"SocketProtocol\00", align 1
@.str.48 = private unnamed_addr constant [13 x i8] c"ListenStream\00", align 1
@.str.49 = private unnamed_addr constant [15 x i8] c"ListenDatagram\00", align 1
@.str.50 = private unnamed_addr constant [23 x i8] c"ListenSequentialPacket\00", align 1
@.str.51 = private unnamed_addr constant [14 x i8] c"ListenNetlink\00", align 1
@.str.52 = private unnamed_addr constant [14 x i8] c"ListenSpecial\00", align 1
@.str.53 = private unnamed_addr constant [19 x i8] c"ListenMessageQueue\00", align 1
@.str.54 = private unnamed_addr constant [11 x i8] c"ListenFIFO\00", align 1
@.str.55 = private unnamed_addr constant [18 x i8] c"ListenUSBFunction\00", align 1
@.str.56 = private unnamed_addr constant [5 x i8] c"(sv)\00", align 1
@.str.57 = private unnamed_addr constant [7 x i8] c"Listen\00", align 1
@.str.58 = private unnamed_addr constant [6 x i8] c"a(ss)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i8*)* @bus_append_socket_property to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bus_append_socket_property(i32* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = call i64 (i8*, i8*, i8*, ...) @STR_IN_SET(i8* %9, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i64 0, i64 0))
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %3
  %13 = load i32*, i32** %5, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = call i32 @bus_append_parse_boolean(i32* %13, i8* %14, i8* %15)
  store i32 %16, i32* %4, align 4
  br label %144

17:                                               ; preds = %3
  %18 = load i8*, i8** %6, align 8
  %19 = call i64 (i8*, i8*, i8*, ...) @STR_IN_SET(i8* %18, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0))
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %17
  %22 = load i32*, i32** %5, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = load i8*, i8** %7, align 8
  %25 = call i32 @bus_append_safe_atoi(i32* %22, i8* %23, i8* %24)
  store i32 %25, i32* %4, align 4
  br label %144

26:                                               ; preds = %17
  %27 = load i8*, i8** %6, align 8
  %28 = call i64 @streq(i8* %27, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0))
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %26
  %31 = load i32*, i32** %5, align 8
  %32 = load i8*, i8** %6, align 8
  %33 = load i8*, i8** %7, align 8
  %34 = call i32 @bus_append_ip_tos_from_string(i32* %31, i8* %32, i8* %33)
  store i32 %34, i32* %4, align 4
  br label %144

35:                                               ; preds = %26
  %36 = load i8*, i8** %6, align 8
  %37 = call i64 (i8*, i8*, i8*, ...) @STR_IN_SET(i8* %36, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.20, i64 0, i64 0))
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %35
  %40 = load i32*, i32** %5, align 8
  %41 = load i8*, i8** %6, align 8
  %42 = load i8*, i8** %7, align 8
  %43 = call i32 @bus_append_safe_atou(i32* %40, i8* %41, i8* %42)
  store i32 %43, i32* %4, align 4
  br label %144

44:                                               ; preds = %35
  %45 = load i8*, i8** %6, align 8
  %46 = call i64 (i8*, i8*, i8*, ...) @STR_IN_SET(i8* %45, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.21, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.22, i64 0, i64 0))
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %44
  %49 = load i32*, i32** %5, align 8
  %50 = load i8*, i8** %6, align 8
  %51 = load i8*, i8** %7, align 8
  %52 = call i32 @bus_append_parse_mode(i32* %49, i8* %50, i8* %51)
  store i32 %52, i32* %4, align 4
  br label %144

53:                                               ; preds = %44
  %54 = load i8*, i8** %6, align 8
  %55 = call i64 (i8*, i8*, i8*, ...) @STR_IN_SET(i8* %54, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.24, i64 0, i64 0))
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %53
  %58 = load i32*, i32** %5, align 8
  %59 = load i8*, i8** %6, align 8
  %60 = load i8*, i8** %7, align 8
  %61 = call i32 @bus_append_safe_atoi64(i32* %58, i8* %59, i8* %60)
  store i32 %61, i32* %4, align 4
  br label %144

62:                                               ; preds = %53
  %63 = load i8*, i8** %6, align 8
  %64 = call i64 (i8*, i8*, i8*, ...) @STR_IN_SET(i8* %63, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.25, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.27, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.28, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.29, i64 0, i64 0))
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %62
  %67 = load i32*, i32** %5, align 8
  %68 = load i8*, i8** %6, align 8
  %69 = load i8*, i8** %7, align 8
  %70 = call i32 @bus_append_parse_sec_rename(i32* %67, i8* %68, i8* %69)
  store i32 %70, i32* %4, align 4
  br label %144

71:                                               ; preds = %62
  %72 = load i8*, i8** %6, align 8
  %73 = call i64 (i8*, i8*, i8*, ...) @STR_IN_SET(i8* %72, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.30, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.31, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.32, i64 0, i64 0))
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %71
  %76 = load i32*, i32** %5, align 8
  %77 = load i8*, i8** %6, align 8
  %78 = load i8*, i8** %7, align 8
  %79 = call i32 @bus_append_parse_size(i32* %76, i8* %77, i8* %78, i32 1024)
  store i32 %79, i32* %4, align 4
  br label %144

80:                                               ; preds = %71
  %81 = load i8*, i8** %6, align 8
  %82 = call i64 (i8*, i8*, i8*, ...) @STR_IN_SET(i8* %81, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.33, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.34, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.35, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.36, i64 0, i64 0))
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %80
  %85 = load i32*, i32** %5, align 8
  %86 = load i8*, i8** %6, align 8
  %87 = load i8*, i8** %7, align 8
  %88 = call i32 @bus_append_exec_command(i32* %85, i8* %86, i8* %87)
  store i32 %88, i32* %4, align 4
  br label %144

89:                                               ; preds = %80
  %90 = load i8*, i8** %6, align 8
  %91 = call i64 (i8*, i8*, i8*, ...) @STR_IN_SET(i8* %90, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.37, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.38, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.39, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.40, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.41, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.42, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.43, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.44, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.45, i64 0, i64 0))
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %89
  %94 = load i32*, i32** %5, align 8
  %95 = load i8*, i8** %6, align 8
  %96 = load i8*, i8** %7, align 8
  %97 = call i32 @bus_append_string(i32* %94, i8* %95, i8* %96)
  store i32 %97, i32* %4, align 4
  br label %144

98:                                               ; preds = %89
  %99 = load i8*, i8** %6, align 8
  %100 = call i64 @streq(i8* %99, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.46, i64 0, i64 0))
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %108

102:                                              ; preds = %98
  %103 = load i32*, i32** %5, align 8
  %104 = load i8*, i8** %6, align 8
  %105 = load i8*, i8** %7, align 8
  %106 = load i32, i32* @EXTRACT_UNQUOTE, align 4
  %107 = call i32 @bus_append_strv(i32* %103, i8* %104, i8* %105, i32 %106)
  store i32 %107, i32* %4, align 4
  br label %144

108:                                              ; preds = %98
  %109 = load i8*, i8** %6, align 8
  %110 = call i64 @streq(i8* %109, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.47, i64 0, i64 0))
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %117

112:                                              ; preds = %108
  %113 = load i32*, i32** %5, align 8
  %114 = load i8*, i8** %6, align 8
  %115 = load i8*, i8** %7, align 8
  %116 = call i32 @bus_append_parse_ip_protocol(i32* %113, i8* %114, i8* %115)
  store i32 %116, i32* %4, align 4
  br label %144

117:                                              ; preds = %108
  %118 = load i8*, i8** %6, align 8
  %119 = call i64 (i8*, i8*, i8*, ...) @STR_IN_SET(i8* %118, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.48, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.49, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.50, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.51, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.52, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.53, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.54, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.55, i64 0, i64 0))
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %143

121:                                              ; preds = %117
  %122 = load i8*, i8** %7, align 8
  %123 = call i64 @isempty(i8* %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %121
  %126 = load i32*, i32** %5, align 8
  %127 = call i32 (i32*, i8*, i8*, i8*, i32, ...) @sd_bus_message_append(i32* %126, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.56, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.57, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.58, i64 0, i64 0), i32 0)
  store i32 %127, i32* %8, align 4
  br label %136

128:                                              ; preds = %121
  %129 = load i32*, i32** %5, align 8
  %130 = load i8*, i8** %6, align 8
  %131 = call i32 @STRLEN(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.57, i64 0, i64 0))
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i8, i8* %130, i64 %132
  %134 = load i8*, i8** %7, align 8
  %135 = call i32 (i32*, i8*, i8*, i8*, i32, ...) @sd_bus_message_append(i32* %129, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.56, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.57, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.58, i64 0, i64 0), i32 1, i8* %133, i8* %134)
  store i32 %135, i32* %8, align 4
  br label %136

136:                                              ; preds = %128, %125
  %137 = load i32, i32* %8, align 4
  %138 = icmp slt i32 %137, 0
  br i1 %138, label %139, label %142

139:                                              ; preds = %136
  %140 = load i32, i32* %8, align 4
  %141 = call i32 @bus_log_create_error(i32 %140)
  store i32 %141, i32* %4, align 4
  br label %144

142:                                              ; preds = %136
  store i32 1, i32* %4, align 4
  br label %144

143:                                              ; preds = %117
  store i32 0, i32* %4, align 4
  br label %144

144:                                              ; preds = %143, %142, %139, %112, %102, %93, %84, %75, %66, %57, %48, %39, %30, %21, %12
  %145 = load i32, i32* %4, align 4
  ret i32 %145
}

declare dso_local i64 @STR_IN_SET(i8*, i8*, i8*, ...) #1

declare dso_local i32 @bus_append_parse_boolean(i32*, i8*, i8*) #1

declare dso_local i32 @bus_append_safe_atoi(i32*, i8*, i8*) #1

declare dso_local i64 @streq(i8*, i8*) #1

declare dso_local i32 @bus_append_ip_tos_from_string(i32*, i8*, i8*) #1

declare dso_local i32 @bus_append_safe_atou(i32*, i8*, i8*) #1

declare dso_local i32 @bus_append_parse_mode(i32*, i8*, i8*) #1

declare dso_local i32 @bus_append_safe_atoi64(i32*, i8*, i8*) #1

declare dso_local i32 @bus_append_parse_sec_rename(i32*, i8*, i8*) #1

declare dso_local i32 @bus_append_parse_size(i32*, i8*, i8*, i32) #1

declare dso_local i32 @bus_append_exec_command(i32*, i8*, i8*) #1

declare dso_local i32 @bus_append_string(i32*, i8*, i8*) #1

declare dso_local i32 @bus_append_strv(i32*, i8*, i8*, i32) #1

declare dso_local i32 @bus_append_parse_ip_protocol(i32*, i8*, i8*) #1

declare dso_local i64 @isempty(i8*) #1

declare dso_local i32 @sd_bus_message_append(i32*, i8*, i8*, i8*, i32, ...) #1

declare dso_local i32 @STRLEN(i8*) #1

declare dso_local i32 @bus_log_create_error(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
