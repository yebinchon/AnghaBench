; ModuleID = '/home/carl/AnghaBench/systemd/src/run/extr_run.c_transient_service_set_properties.c'
source_filename = "/home/carl/AnghaBench/systemd/src/run/extr_run.c_transient_service_set_properties.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@UNIT_SERVICE = common dso_local global i32 0, align 4
@arg_property = common dso_local global i32 0, align 4
@arg_wait = common dso_local global i64 0, align 8
@arg_stdio = common dso_local global i64 0, align 8
@ARG_STDIO_NONE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"(sv)\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"AddRef\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@arg_remain_after_exit = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"RemainAfterExit\00", align 1
@arg_service_type = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"Type\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@arg_exec_user = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [5 x i8] c"User\00", align 1
@arg_exec_group = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [6 x i8] c"Group\00", align 1
@arg_nice_set = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [5 x i8] c"Nice\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"i\00", align 1
@arg_nice = common dso_local global i32 0, align 4
@arg_working_directory = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [17 x i8] c"WorkingDirectory\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"(sv)(sv)(sv)(sv)\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"StandardInput\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"tty\00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"StandardOutput\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"StandardError\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"TTYPath\00", align 1
@ARG_STDIO_DIRECT = common dso_local global i64 0, align 8
@.str.17 = private unnamed_addr constant [13 x i8] c"(sv)(sv)(sv)\00", align 1
@.str.18 = private unnamed_addr constant [28 x i8] c"StandardInputFileDescriptor\00", align 1
@.str.19 = private unnamed_addr constant [2 x i8] c"h\00", align 1
@STDIN_FILENO = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [29 x i8] c"StandardOutputFileDescriptor\00", align 1
@STDOUT_FILENO = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [28 x i8] c"StandardErrorFileDescriptor\00", align 1
@STDERR_FILENO = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [5 x i8] c"TERM\00", align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"TERM=\00", align 1
@.str.24 = private unnamed_addr constant [12 x i8] c"Environment\00", align 1
@.str.25 = private unnamed_addr constant [3 x i8] c"as\00", align 1
@arg_environment = common dso_local global i32* null, align 8
@.str.26 = private unnamed_addr constant [3 x i8] c"sv\00", align 1
@arg_cmdline = common dso_local global i32* null, align 8
@.str.27 = private unnamed_addr constant [10 x i8] c"ExecStart\00", align 1
@.str.28 = private unnamed_addr constant [8 x i8] c"a(sasb)\00", align 1
@.str.29 = private unnamed_addr constant [7 x i8] c"(sasb)\00", align 1
@.str.30 = private unnamed_addr constant [5 x i8] c"sasb\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*)* @transient_service_set_properties to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @transient_service_set_properties(i32* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %6, align 4
  %10 = load i32*, i32** %4, align 8
  %11 = call i32 @assert(i32* %10)
  %12 = load i32*, i32** %4, align 8
  %13 = load i32, i32* @UNIT_SERVICE, align 4
  %14 = load i32, i32* @arg_property, align 4
  %15 = call i32 @transient_unit_set_properties(i32* %12, i32 %13, i32 %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* %7, align 4
  store i32 %19, i32* %3, align 4
  br label %352

20:                                               ; preds = %2
  %21 = load i32*, i32** %4, align 8
  %22 = call i32 @transient_kill_set_properties(i32* %21)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = load i32, i32* %7, align 4
  store i32 %26, i32* %3, align 4
  br label %352

27:                                               ; preds = %20
  %28 = load i32*, i32** %4, align 8
  %29 = call i32 @transient_cgroup_set_properties(i32* %28)
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = load i32, i32* %7, align 4
  store i32 %33, i32* %3, align 4
  br label %352

34:                                               ; preds = %27
  %35 = load i64, i64* @arg_wait, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %34
  %38 = load i64, i64* @arg_stdio, align 8
  %39 = load i64, i64* @ARG_STDIO_NONE, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %50

41:                                               ; preds = %37, %34
  %42 = load i32*, i32** %4, align 8
  %43 = call i32 (i32*, i8*, ...) @sd_bus_message_append(i32* %42, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 1)
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %7, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %41
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @bus_log_create_error(i32 %47)
  store i32 %48, i32* %3, align 4
  br label %352

49:                                               ; preds = %41
  br label %50

50:                                               ; preds = %49, %37
  %51 = load i32, i32* @arg_remain_after_exit, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %63

53:                                               ; preds = %50
  %54 = load i32*, i32** %4, align 8
  %55 = load i32, i32* @arg_remain_after_exit, align 4
  %56 = call i32 (i32*, i8*, ...) @sd_bus_message_append(i32* %54, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 %55)
  store i32 %56, i32* %7, align 4
  %57 = load i32, i32* %7, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %53
  %60 = load i32, i32* %7, align 4
  %61 = call i32 @bus_log_create_error(i32 %60)
  store i32 %61, i32* %3, align 4
  br label %352

62:                                               ; preds = %53
  br label %63

63:                                               ; preds = %62, %50
  %64 = load i32, i32* @arg_service_type, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %76

66:                                               ; preds = %63
  %67 = load i32*, i32** %4, align 8
  %68 = load i32, i32* @arg_service_type, align 4
  %69 = call i32 (i32*, i8*, ...) @sd_bus_message_append(i32* %67, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i32 %68)
  store i32 %69, i32* %7, align 4
  %70 = load i32, i32* %7, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %66
  %73 = load i32, i32* %7, align 4
  %74 = call i32 @bus_log_create_error(i32 %73)
  store i32 %74, i32* %3, align 4
  br label %352

75:                                               ; preds = %66
  br label %76

76:                                               ; preds = %75, %63
  %77 = load i32, i32* @arg_exec_user, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %89

79:                                               ; preds = %76
  %80 = load i32*, i32** %4, align 8
  %81 = load i32, i32* @arg_exec_user, align 4
  %82 = call i32 (i32*, i8*, ...) @sd_bus_message_append(i32* %80, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i32 %81)
  store i32 %82, i32* %7, align 4
  %83 = load i32, i32* %7, align 4
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %79
  %86 = load i32, i32* %7, align 4
  %87 = call i32 @bus_log_create_error(i32 %86)
  store i32 %87, i32* %3, align 4
  br label %352

88:                                               ; preds = %79
  br label %89

89:                                               ; preds = %88, %76
  %90 = load i32, i32* @arg_exec_group, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %102

92:                                               ; preds = %89
  %93 = load i32*, i32** %4, align 8
  %94 = load i32, i32* @arg_exec_group, align 4
  %95 = call i32 (i32*, i8*, ...) @sd_bus_message_append(i32* %93, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i32 %94)
  store i32 %95, i32* %7, align 4
  %96 = load i32, i32* %7, align 4
  %97 = icmp slt i32 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %92
  %99 = load i32, i32* %7, align 4
  %100 = call i32 @bus_log_create_error(i32 %99)
  store i32 %100, i32* %3, align 4
  br label %352

101:                                              ; preds = %92
  br label %102

102:                                              ; preds = %101, %89
  %103 = load i64, i64* @arg_nice_set, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %115

105:                                              ; preds = %102
  %106 = load i32*, i32** %4, align 8
  %107 = load i32, i32* @arg_nice, align 4
  %108 = call i32 (i32*, i8*, ...) @sd_bus_message_append(i32* %106, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0), i32 %107)
  store i32 %108, i32* %7, align 4
  %109 = load i32, i32* %7, align 4
  %110 = icmp slt i32 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %105
  %112 = load i32, i32* %7, align 4
  %113 = call i32 @bus_log_create_error(i32 %112)
  store i32 %113, i32* %3, align 4
  br label %352

114:                                              ; preds = %105
  br label %115

115:                                              ; preds = %114, %102
  %116 = load i32, i32* @arg_working_directory, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %128

118:                                              ; preds = %115
  %119 = load i32*, i32** %4, align 8
  %120 = load i32, i32* @arg_working_directory, align 4
  %121 = call i32 (i32*, i8*, ...) @sd_bus_message_append(i32* %119, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i32 %120)
  store i32 %121, i32* %7, align 4
  %122 = load i32, i32* %7, align 4
  %123 = icmp slt i32 %122, 0
  br i1 %123, label %124, label %127

124:                                              ; preds = %118
  %125 = load i32, i32* %7, align 4
  %126 = call i32 @bus_log_create_error(i32 %125)
  store i32 %126, i32* %3, align 4
  br label %352

127:                                              ; preds = %118
  br label %128

128:                                              ; preds = %127, %115
  %129 = load i8*, i8** %5, align 8
  %130 = icmp ne i8* %129, null
  br i1 %130, label %131, label %141

131:                                              ; preds = %128
  %132 = load i32*, i32** %4, align 8
  %133 = load i8*, i8** %5, align 8
  %134 = call i32 (i32*, i8*, ...) @sd_bus_message_append(i32* %132, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i8* %133)
  store i32 %134, i32* %7, align 4
  %135 = load i32, i32* %7, align 4
  %136 = icmp slt i32 %135, 0
  br i1 %136, label %137, label %140

137:                                              ; preds = %131
  %138 = load i32, i32* %7, align 4
  %139 = call i32 @bus_log_create_error(i32 %138)
  store i32 %139, i32* %3, align 4
  br label %352

140:                                              ; preds = %131
  store i32 1, i32* %6, align 4
  br label %172

141:                                              ; preds = %128
  %142 = load i64, i64* @arg_stdio, align 8
  %143 = load i64, i64* @ARG_STDIO_DIRECT, align 8
  %144 = icmp eq i64 %142, %143
  br i1 %144, label %145, label %171

145:                                              ; preds = %141
  %146 = load i32*, i32** %4, align 8
  %147 = load i32, i32* @STDIN_FILENO, align 4
  %148 = load i32, i32* @STDOUT_FILENO, align 4
  %149 = load i32, i32* @STDERR_FILENO, align 4
  %150 = call i32 (i32*, i8*, ...) @sd_bus_message_append(i32* %146, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0), i32 %147, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0), i32 %148, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.21, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0), i32 %149)
  store i32 %150, i32* %7, align 4
  %151 = load i32, i32* %7, align 4
  %152 = icmp slt i32 %151, 0
  br i1 %152, label %153, label %156

153:                                              ; preds = %145
  %154 = load i32, i32* %7, align 4
  %155 = call i32 @bus_log_create_error(i32 %154)
  store i32 %155, i32* %3, align 4
  br label %352

156:                                              ; preds = %145
  %157 = load i32, i32* @STDIN_FILENO, align 4
  %158 = call i64 @isatty(i32 %157)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %168, label %160

160:                                              ; preds = %156
  %161 = load i32, i32* @STDOUT_FILENO, align 4
  %162 = call i64 @isatty(i32 %161)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %168, label %164

164:                                              ; preds = %160
  %165 = load i32, i32* @STDERR_FILENO, align 4
  %166 = call i64 @isatty(i32 %165)
  %167 = icmp ne i64 %166, 0
  br label %168

168:                                              ; preds = %164, %160, %156
  %169 = phi i1 [ true, %160 ], [ true, %156 ], [ %167, %164 ]
  %170 = zext i1 %169 to i32
  store i32 %170, i32* %6, align 4
  br label %171

171:                                              ; preds = %168, %141
  br label %172

172:                                              ; preds = %171, %140
  %173 = load i32, i32* %6, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %192

175:                                              ; preds = %172
  %176 = call i8* @getenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i64 0, i64 0))
  store i8* %176, i8** %8, align 8
  %177 = load i8*, i8** %8, align 8
  %178 = icmp ne i8* %177, null
  br i1 %178, label %179, label %191

179:                                              ; preds = %175
  %180 = load i8*, i8** %8, align 8
  %181 = call i8* @strjoina(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i64 0, i64 0), i8* %180)
  store i8* %181, i8** %9, align 8
  %182 = load i32*, i32** %4, align 8
  %183 = load i8*, i8** %9, align 8
  %184 = call i32 (i32*, i8*, ...) @sd_bus_message_append(i32* %182, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i64 0, i64 0), i32 1, i8* %183)
  store i32 %184, i32* %7, align 4
  %185 = load i32, i32* %7, align 4
  %186 = icmp slt i32 %185, 0
  br i1 %186, label %187, label %190

187:                                              ; preds = %179
  %188 = load i32, i32* %7, align 4
  %189 = call i32 @bus_log_create_error(i32 %188)
  store i32 %189, i32* %3, align 4
  br label %352

190:                                              ; preds = %179
  br label %191

191:                                              ; preds = %190, %175
  br label %192

192:                                              ; preds = %191, %172
  %193 = load i32*, i32** @arg_environment, align 8
  %194 = call i32 @strv_isempty(i32* %193)
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %246, label %196

196:                                              ; preds = %192
  %197 = load i32*, i32** %4, align 8
  %198 = call i32 @sd_bus_message_open_container(i32* %197, i8 signext 114, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.26, i64 0, i64 0))
  store i32 %198, i32* %7, align 4
  %199 = load i32, i32* %7, align 4
  %200 = icmp slt i32 %199, 0
  br i1 %200, label %201, label %204

201:                                              ; preds = %196
  %202 = load i32, i32* %7, align 4
  %203 = call i32 @bus_log_create_error(i32 %202)
  store i32 %203, i32* %3, align 4
  br label %352

204:                                              ; preds = %196
  %205 = load i32*, i32** %4, align 8
  %206 = call i32 (i32*, i8*, ...) @sd_bus_message_append(i32* %205, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.24, i64 0, i64 0))
  store i32 %206, i32* %7, align 4
  %207 = load i32, i32* %7, align 4
  %208 = icmp slt i32 %207, 0
  br i1 %208, label %209, label %212

209:                                              ; preds = %204
  %210 = load i32, i32* %7, align 4
  %211 = call i32 @bus_log_create_error(i32 %210)
  store i32 %211, i32* %3, align 4
  br label %352

212:                                              ; preds = %204
  %213 = load i32*, i32** %4, align 8
  %214 = call i32 @sd_bus_message_open_container(i32* %213, i8 signext 118, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i64 0, i64 0))
  store i32 %214, i32* %7, align 4
  %215 = load i32, i32* %7, align 4
  %216 = icmp slt i32 %215, 0
  br i1 %216, label %217, label %220

217:                                              ; preds = %212
  %218 = load i32, i32* %7, align 4
  %219 = call i32 @bus_log_create_error(i32 %218)
  store i32 %219, i32* %3, align 4
  br label %352

220:                                              ; preds = %212
  %221 = load i32*, i32** %4, align 8
  %222 = load i32*, i32** @arg_environment, align 8
  %223 = call i32 @sd_bus_message_append_strv(i32* %221, i32* %222)
  store i32 %223, i32* %7, align 4
  %224 = load i32, i32* %7, align 4
  %225 = icmp slt i32 %224, 0
  br i1 %225, label %226, label %229

226:                                              ; preds = %220
  %227 = load i32, i32* %7, align 4
  %228 = call i32 @bus_log_create_error(i32 %227)
  store i32 %228, i32* %3, align 4
  br label %352

229:                                              ; preds = %220
  %230 = load i32*, i32** %4, align 8
  %231 = call i32 @sd_bus_message_close_container(i32* %230)
  store i32 %231, i32* %7, align 4
  %232 = load i32, i32* %7, align 4
  %233 = icmp slt i32 %232, 0
  br i1 %233, label %234, label %237

234:                                              ; preds = %229
  %235 = load i32, i32* %7, align 4
  %236 = call i32 @bus_log_create_error(i32 %235)
  store i32 %236, i32* %3, align 4
  br label %352

237:                                              ; preds = %229
  %238 = load i32*, i32** %4, align 8
  %239 = call i32 @sd_bus_message_close_container(i32* %238)
  store i32 %239, i32* %7, align 4
  %240 = load i32, i32* %7, align 4
  %241 = icmp slt i32 %240, 0
  br i1 %241, label %242, label %245

242:                                              ; preds = %237
  %243 = load i32, i32* %7, align 4
  %244 = call i32 @bus_log_create_error(i32 %243)
  store i32 %244, i32* %3, align 4
  br label %352

245:                                              ; preds = %237
  br label %246

246:                                              ; preds = %245, %192
  %247 = load i32*, i32** @arg_cmdline, align 8
  %248 = call i32 @strv_isempty(i32* %247)
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %351, label %250

250:                                              ; preds = %246
  %251 = load i32*, i32** %4, align 8
  %252 = call i32 @sd_bus_message_open_container(i32* %251, i8 signext 114, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.26, i64 0, i64 0))
  store i32 %252, i32* %7, align 4
  %253 = load i32, i32* %7, align 4
  %254 = icmp slt i32 %253, 0
  br i1 %254, label %255, label %258

255:                                              ; preds = %250
  %256 = load i32, i32* %7, align 4
  %257 = call i32 @bus_log_create_error(i32 %256)
  store i32 %257, i32* %3, align 4
  br label %352

258:                                              ; preds = %250
  %259 = load i32*, i32** %4, align 8
  %260 = call i32 (i32*, i8*, ...) @sd_bus_message_append(i32* %259, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.27, i64 0, i64 0))
  store i32 %260, i32* %7, align 4
  %261 = load i32, i32* %7, align 4
  %262 = icmp slt i32 %261, 0
  br i1 %262, label %263, label %266

263:                                              ; preds = %258
  %264 = load i32, i32* %7, align 4
  %265 = call i32 @bus_log_create_error(i32 %264)
  store i32 %265, i32* %3, align 4
  br label %352

266:                                              ; preds = %258
  %267 = load i32*, i32** %4, align 8
  %268 = call i32 @sd_bus_message_open_container(i32* %267, i8 signext 118, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.28, i64 0, i64 0))
  store i32 %268, i32* %7, align 4
  %269 = load i32, i32* %7, align 4
  %270 = icmp slt i32 %269, 0
  br i1 %270, label %271, label %274

271:                                              ; preds = %266
  %272 = load i32, i32* %7, align 4
  %273 = call i32 @bus_log_create_error(i32 %272)
  store i32 %273, i32* %3, align 4
  br label %352

274:                                              ; preds = %266
  %275 = load i32*, i32** %4, align 8
  %276 = call i32 @sd_bus_message_open_container(i32* %275, i8 signext 97, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.29, i64 0, i64 0))
  store i32 %276, i32* %7, align 4
  %277 = load i32, i32* %7, align 4
  %278 = icmp slt i32 %277, 0
  br i1 %278, label %279, label %282

279:                                              ; preds = %274
  %280 = load i32, i32* %7, align 4
  %281 = call i32 @bus_log_create_error(i32 %280)
  store i32 %281, i32* %3, align 4
  br label %352

282:                                              ; preds = %274
  %283 = load i32*, i32** %4, align 8
  %284 = call i32 @sd_bus_message_open_container(i32* %283, i8 signext 114, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.30, i64 0, i64 0))
  store i32 %284, i32* %7, align 4
  %285 = load i32, i32* %7, align 4
  %286 = icmp slt i32 %285, 0
  br i1 %286, label %287, label %290

287:                                              ; preds = %282
  %288 = load i32, i32* %7, align 4
  %289 = call i32 @bus_log_create_error(i32 %288)
  store i32 %289, i32* %3, align 4
  br label %352

290:                                              ; preds = %282
  %291 = load i32*, i32** %4, align 8
  %292 = load i32*, i32** @arg_cmdline, align 8
  %293 = getelementptr inbounds i32, i32* %292, i64 0
  %294 = load i32, i32* %293, align 4
  %295 = call i32 (i32*, i8*, ...) @sd_bus_message_append(i32* %291, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i32 %294)
  store i32 %295, i32* %7, align 4
  %296 = load i32, i32* %7, align 4
  %297 = icmp slt i32 %296, 0
  br i1 %297, label %298, label %301

298:                                              ; preds = %290
  %299 = load i32, i32* %7, align 4
  %300 = call i32 @bus_log_create_error(i32 %299)
  store i32 %300, i32* %3, align 4
  br label %352

301:                                              ; preds = %290
  %302 = load i32*, i32** %4, align 8
  %303 = load i32*, i32** @arg_cmdline, align 8
  %304 = call i32 @sd_bus_message_append_strv(i32* %302, i32* %303)
  store i32 %304, i32* %7, align 4
  %305 = load i32, i32* %7, align 4
  %306 = icmp slt i32 %305, 0
  br i1 %306, label %307, label %310

307:                                              ; preds = %301
  %308 = load i32, i32* %7, align 4
  %309 = call i32 @bus_log_create_error(i32 %308)
  store i32 %309, i32* %3, align 4
  br label %352

310:                                              ; preds = %301
  %311 = load i32*, i32** %4, align 8
  %312 = call i32 (i32*, i8*, ...) @sd_bus_message_append(i32* %311, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 0)
  store i32 %312, i32* %7, align 4
  %313 = load i32, i32* %7, align 4
  %314 = icmp slt i32 %313, 0
  br i1 %314, label %315, label %318

315:                                              ; preds = %310
  %316 = load i32, i32* %7, align 4
  %317 = call i32 @bus_log_create_error(i32 %316)
  store i32 %317, i32* %3, align 4
  br label %352

318:                                              ; preds = %310
  %319 = load i32*, i32** %4, align 8
  %320 = call i32 @sd_bus_message_close_container(i32* %319)
  store i32 %320, i32* %7, align 4
  %321 = load i32, i32* %7, align 4
  %322 = icmp slt i32 %321, 0
  br i1 %322, label %323, label %326

323:                                              ; preds = %318
  %324 = load i32, i32* %7, align 4
  %325 = call i32 @bus_log_create_error(i32 %324)
  store i32 %325, i32* %3, align 4
  br label %352

326:                                              ; preds = %318
  %327 = load i32*, i32** %4, align 8
  %328 = call i32 @sd_bus_message_close_container(i32* %327)
  store i32 %328, i32* %7, align 4
  %329 = load i32, i32* %7, align 4
  %330 = icmp slt i32 %329, 0
  br i1 %330, label %331, label %334

331:                                              ; preds = %326
  %332 = load i32, i32* %7, align 4
  %333 = call i32 @bus_log_create_error(i32 %332)
  store i32 %333, i32* %3, align 4
  br label %352

334:                                              ; preds = %326
  %335 = load i32*, i32** %4, align 8
  %336 = call i32 @sd_bus_message_close_container(i32* %335)
  store i32 %336, i32* %7, align 4
  %337 = load i32, i32* %7, align 4
  %338 = icmp slt i32 %337, 0
  br i1 %338, label %339, label %342

339:                                              ; preds = %334
  %340 = load i32, i32* %7, align 4
  %341 = call i32 @bus_log_create_error(i32 %340)
  store i32 %341, i32* %3, align 4
  br label %352

342:                                              ; preds = %334
  %343 = load i32*, i32** %4, align 8
  %344 = call i32 @sd_bus_message_close_container(i32* %343)
  store i32 %344, i32* %7, align 4
  %345 = load i32, i32* %7, align 4
  %346 = icmp slt i32 %345, 0
  br i1 %346, label %347, label %350

347:                                              ; preds = %342
  %348 = load i32, i32* %7, align 4
  %349 = call i32 @bus_log_create_error(i32 %348)
  store i32 %349, i32* %3, align 4
  br label %352

350:                                              ; preds = %342
  br label %351

351:                                              ; preds = %350, %246
  store i32 0, i32* %3, align 4
  br label %352

352:                                              ; preds = %351, %347, %339, %331, %323, %315, %307, %298, %287, %279, %271, %263, %255, %242, %234, %226, %217, %209, %201, %187, %153, %137, %124, %111, %98, %85, %72, %59, %46, %32, %25, %18
  %353 = load i32, i32* %3, align 4
  ret i32 %353
}

declare dso_local i32 @assert(i32*) #1

declare dso_local i32 @transient_unit_set_properties(i32*, i32, i32) #1

declare dso_local i32 @transient_kill_set_properties(i32*) #1

declare dso_local i32 @transient_cgroup_set_properties(i32*) #1

declare dso_local i32 @sd_bus_message_append(i32*, i8*, ...) #1

declare dso_local i32 @bus_log_create_error(i32) #1

declare dso_local i64 @isatty(i32) #1

declare dso_local i8* @getenv(i8*) #1

declare dso_local i8* @strjoina(i8*, i8*) #1

declare dso_local i32 @strv_isempty(i32*) #1

declare dso_local i32 @sd_bus_message_open_container(i32*, i8 signext, i8*) #1

declare dso_local i32 @sd_bus_message_append_strv(i32*, i32*) #1

declare dso_local i32 @sd_bus_message_close_container(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
