; ModuleID = '/home/carl/AnghaBench/systemd/src/udev/extr_udevd.c_main_loop.c'
source_filename = "/home/carl/AnghaBench/systemd/src/udev/extr_udevd.c_main_loop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32*, i32, i32, i32, i32, i32, i32, i32 }

@AF_LOCAL = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i32 0, align 4
@SOCK_CLOEXEC = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [63 x i8] c"Failed to create socketpair for communicating with workers: %m\00", align 1
@READ_END = common dso_local global i64 0, align 8
@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_PASSCRED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Failed to enable SO_PASSCRED: %m\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"Failed to create inotify descriptor: %m\00", align 1
@SIG_BLOCK = common dso_local global i32 0, align 4
@SIGTERM = common dso_local global i32 0, align 4
@SIGINT = common dso_local global i32 0, align 4
@SIGHUP = common dso_local global i32 0, align 4
@SIGCHLD = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"Failed to allocate event loop: %m\00", align 1
@on_sigterm = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [41 x i8] c"Failed to create SIGINT event source: %m\00", align 1
@.str.5 = private unnamed_addr constant [42 x i8] c"Failed to create SIGTERM event source: %m\00", align 1
@on_sighup = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [41 x i8] c"Failed to create SIGHUP event source: %m\00", align 1
@on_sigchld = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [42 x i8] c"Failed to create SIGCHLD event source: %m\00", align 1
@.str.8 = private unnamed_addr constant [43 x i8] c"Failed to create watchdog event source: %m\00", align 1
@.str.9 = private unnamed_addr constant [43 x i8] c"Failed to attach event to udev control: %m\00", align 1
@on_ctrl_msg = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [35 x i8] c"Failed to start device monitor: %m\00", align 1
@SD_EVENT_PRIORITY_IDLE = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [68 x i8] c"Failed to set IDLE event priority for udev control event source: %m\00", align 1
@EPOLLIN = common dso_local global i32 0, align 4
@on_inotify = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [42 x i8] c"Failed to create inotify event source: %m\00", align 1
@.str.13 = private unnamed_addr constant [45 x i8] c"Failed to attach event to device monitor: %m\00", align 1
@on_uevent = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [15 x i8] c"device-monitor\00", align 1
@on_worker = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [41 x i8] c"Failed to create worker event source: %m\00", align 1
@on_post = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [39 x i8] c"Failed to create post event source: %m\00", align 1
@arg_resolve_name_timing = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [30 x i8] c"Failed to read udev rules: %m\00", align 1
@.str.18 = private unnamed_addr constant [55 x i8] c"Failed to apply permissions on static device nodes: %m\00", align 1
@.str.19 = private unnamed_addr constant [50 x i8] c"READY=1\0ASTATUS=Processing with %u children at max\00", align 1
@arg_children_max = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [22 x i8] c"Event loop failed: %m\00", align 1
@.str.21 = private unnamed_addr constant [35 x i8] c"STOPPING=1\0ASTATUS=Shutting down...\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*)* @main_loop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @main_loop(%struct.TYPE_8__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  %6 = call i32 (...) @getpid_cached()
  %7 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 7
  store i32 %6, i32* %8, align 8
  %9 = load i32, i32* @AF_LOCAL, align 4
  %10 = load i32, i32* @SOCK_DGRAM, align 4
  %11 = load i32, i32* @SOCK_CLOEXEC, align 4
  %12 = or i32 %10, %11
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = call i32 @socketpair(i32 %9, i32 %12, i32 0, i32* %15)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %1
  %20 = load i32, i32* @errno, align 4
  %21 = call i32 @log_error_errno(i32 %20, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0))
  store i32 %21, i32* %2, align 4
  br label %278

22:                                               ; preds = %1
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load i64, i64* @READ_END, align 8
  %27 = getelementptr inbounds i32, i32* %25, i64 %26
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @SOL_SOCKET, align 4
  %31 = load i32, i32* @SO_PASSCRED, align 4
  %32 = call i32 @setsockopt_int(i32 %29, i32 %30, i32 %31, i32 1)
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %5, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %22
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @log_error_errno(i32 %36, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  store i32 %37, i32* %2, align 4
  br label %278

38:                                               ; preds = %22
  %39 = call i32 (...) @udev_watch_init()
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* %5, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %38
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @log_error_errno(i32 %43, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  store i32 %44, i32* %2, align 4
  br label %278

45:                                               ; preds = %38
  %46 = load i32, i32* %5, align 4
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 8
  %49 = call i32 (...) @udev_watch_restore()
  %50 = load i32, i32* @SIG_BLOCK, align 4
  %51 = load i32, i32* @SIGTERM, align 4
  %52 = load i32, i32* @SIGINT, align 4
  %53 = load i32, i32* @SIGHUP, align 4
  %54 = load i32, i32* @SIGCHLD, align 4
  %55 = call i64 @sigprocmask_many(i32 %50, i32* null, i32 %51, i32 %52, i32 %53, i32 %54, i32 -1)
  %56 = icmp sge i64 %55, 0
  %57 = zext i1 %56 to i32
  %58 = call i32 @assert_se(i32 %57)
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 2
  %61 = call i32 @sd_event_default(i32* %60)
  store i32 %61, i32* %5, align 4
  %62 = load i32, i32* %5, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %45
  %65 = load i32, i32* %5, align 4
  %66 = call i32 @log_error_errno(i32 %65, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  store i32 %66, i32* %2, align 4
  br label %278

67:                                               ; preds = %45
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @SIGINT, align 4
  %72 = load i32, i32* @on_sigterm, align 4
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %74 = call i32 @sd_event_add_signal(i32 %70, i32* null, i32 %71, i32 %72, %struct.TYPE_8__* %73)
  store i32 %74, i32* %5, align 4
  %75 = load i32, i32* %5, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %67
  %78 = load i32, i32* %5, align 4
  %79 = call i32 @log_error_errno(i32 %78, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0))
  store i32 %79, i32* %2, align 4
  br label %278

80:                                               ; preds = %67
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @SIGTERM, align 4
  %85 = load i32, i32* @on_sigterm, align 4
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %87 = call i32 @sd_event_add_signal(i32 %83, i32* null, i32 %84, i32 %85, %struct.TYPE_8__* %86)
  store i32 %87, i32* %5, align 4
  %88 = load i32, i32* %5, align 4
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %80
  %91 = load i32, i32* %5, align 4
  %92 = call i32 @log_error_errno(i32 %91, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0))
  store i32 %92, i32* %2, align 4
  br label %278

93:                                               ; preds = %80
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @SIGHUP, align 4
  %98 = load i32, i32* @on_sighup, align 4
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %100 = call i32 @sd_event_add_signal(i32 %96, i32* null, i32 %97, i32 %98, %struct.TYPE_8__* %99)
  store i32 %100, i32* %5, align 4
  %101 = load i32, i32* %5, align 4
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %93
  %104 = load i32, i32* %5, align 4
  %105 = call i32 @log_error_errno(i32 %104, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0))
  store i32 %105, i32* %2, align 4
  br label %278

106:                                              ; preds = %93
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* @SIGCHLD, align 4
  %111 = load i32, i32* @on_sigchld, align 4
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %113 = call i32 @sd_event_add_signal(i32 %109, i32* null, i32 %110, i32 %111, %struct.TYPE_8__* %112)
  store i32 %113, i32* %5, align 4
  %114 = load i32, i32* %5, align 4
  %115 = icmp slt i32 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %106
  %117 = load i32, i32* %5, align 4
  %118 = call i32 @log_error_errno(i32 %117, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i64 0, i64 0))
  store i32 %118, i32* %2, align 4
  br label %278

119:                                              ; preds = %106
  %120 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @sd_event_set_watchdog(i32 %122, i32 1)
  store i32 %123, i32* %5, align 4
  %124 = load i32, i32* %5, align 4
  %125 = icmp slt i32 %124, 0
  br i1 %125, label %126, label %129

126:                                              ; preds = %119
  %127 = load i32, i32* %5, align 4
  %128 = call i32 @log_error_errno(i32 %127, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.8, i64 0, i64 0))
  store i32 %128, i32* %2, align 4
  br label %278

129:                                              ; preds = %119
  %130 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 6
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @udev_ctrl_attach_event(i32 %132, i32 %135)
  store i32 %136, i32* %5, align 4
  %137 = load i32, i32* %5, align 4
  %138 = icmp slt i32 %137, 0
  br i1 %138, label %139, label %142

139:                                              ; preds = %129
  %140 = load i32, i32* %5, align 4
  %141 = call i32 @log_error_errno(i32 %140, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.9, i64 0, i64 0))
  store i32 %141, i32* %2, align 4
  br label %278

142:                                              ; preds = %129
  %143 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i32 0, i32 6
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* @on_ctrl_msg, align 4
  %147 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %148 = call i32 @udev_ctrl_start(i32 %145, i32 %146, %struct.TYPE_8__* %147)
  store i32 %148, i32* %5, align 4
  %149 = load i32, i32* %5, align 4
  %150 = icmp slt i32 %149, 0
  br i1 %150, label %151, label %154

151:                                              ; preds = %142
  %152 = load i32, i32* %5, align 4
  %153 = call i32 @log_error_errno(i32 %152, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.10, i64 0, i64 0))
  store i32 %153, i32* %2, align 4
  br label %278

154:                                              ; preds = %142
  %155 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %155, i32 0, i32 6
  %157 = load i32, i32* %156, align 4
  %158 = call i32 @udev_ctrl_get_event_source(i32 %157)
  %159 = load i32, i32* @SD_EVENT_PRIORITY_IDLE, align 4
  %160 = call i32 @sd_event_source_set_priority(i32 %158, i32 %159)
  store i32 %160, i32* %5, align 4
  %161 = load i32, i32* %5, align 4
  %162 = icmp slt i32 %161, 0
  br i1 %162, label %163, label %166

163:                                              ; preds = %154
  %164 = load i32, i32* %5, align 4
  %165 = call i32 @log_error_errno(i32 %164, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.11, i64 0, i64 0))
  store i32 %165, i32* %2, align 4
  br label %278

166:                                              ; preds = %154
  %167 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %168 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 4
  %170 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %171 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %170, i32 0, i32 5
  %172 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %173 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 8
  %175 = load i32, i32* @EPOLLIN, align 4
  %176 = load i32, i32* @on_inotify, align 4
  %177 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %178 = call i32 @sd_event_add_io(i32 %169, i32* %171, i32 %174, i32 %175, i32 %176, %struct.TYPE_8__* %177)
  store i32 %178, i32* %5, align 4
  %179 = load i32, i32* %5, align 4
  %180 = icmp slt i32 %179, 0
  br i1 %180, label %181, label %184

181:                                              ; preds = %166
  %182 = load i32, i32* %5, align 4
  %183 = call i32 @log_error_errno(i32 %182, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.12, i64 0, i64 0))
  store i32 %183, i32* %2, align 4
  br label %278

184:                                              ; preds = %166
  %185 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %186 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %185, i32 0, i32 4
  %187 = load i32, i32* %186, align 4
  %188 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %189 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %188, i32 0, i32 2
  %190 = load i32, i32* %189, align 4
  %191 = call i32 @sd_device_monitor_attach_event(i32 %187, i32 %190)
  store i32 %191, i32* %5, align 4
  %192 = load i32, i32* %5, align 4
  %193 = icmp slt i32 %192, 0
  br i1 %193, label %194, label %197

194:                                              ; preds = %184
  %195 = load i32, i32* %5, align 4
  %196 = call i32 @log_error_errno(i32 %195, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.13, i64 0, i64 0))
  store i32 %196, i32* %2, align 4
  br label %278

197:                                              ; preds = %184
  %198 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %199 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %198, i32 0, i32 4
  %200 = load i32, i32* %199, align 4
  %201 = load i32, i32* @on_uevent, align 4
  %202 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %203 = call i32 @sd_device_monitor_start(i32 %200, i32 %201, %struct.TYPE_8__* %202)
  store i32 %203, i32* %5, align 4
  %204 = load i32, i32* %5, align 4
  %205 = icmp slt i32 %204, 0
  br i1 %205, label %206, label %209

206:                                              ; preds = %197
  %207 = load i32, i32* %5, align 4
  %208 = call i32 @log_error_errno(i32 %207, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.10, i64 0, i64 0))
  store i32 %208, i32* %2, align 4
  br label %278

209:                                              ; preds = %197
  %210 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %211 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %210, i32 0, i32 4
  %212 = load i32, i32* %211, align 4
  %213 = call i32 @sd_device_monitor_get_event_source(i32 %212)
  %214 = call i32 @sd_event_source_set_description(i32 %213, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i64 0, i64 0))
  %215 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %216 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %215, i32 0, i32 2
  %217 = load i32, i32* %216, align 4
  %218 = load i32, i32* %4, align 4
  %219 = load i32, i32* @EPOLLIN, align 4
  %220 = load i32, i32* @on_worker, align 4
  %221 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %222 = call i32 @sd_event_add_io(i32 %217, i32* null, i32 %218, i32 %219, i32 %220, %struct.TYPE_8__* %221)
  store i32 %222, i32* %5, align 4
  %223 = load i32, i32* %5, align 4
  %224 = icmp slt i32 %223, 0
  br i1 %224, label %225, label %228

225:                                              ; preds = %209
  %226 = load i32, i32* %5, align 4
  %227 = call i32 @log_error_errno(i32 %226, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.15, i64 0, i64 0))
  store i32 %227, i32* %2, align 4
  br label %278

228:                                              ; preds = %209
  %229 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %230 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %229, i32 0, i32 2
  %231 = load i32, i32* %230, align 4
  %232 = load i32, i32* @on_post, align 4
  %233 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %234 = call i32 @sd_event_add_post(i32 %231, i32* null, i32 %232, %struct.TYPE_8__* %233)
  store i32 %234, i32* %5, align 4
  %235 = load i32, i32* %5, align 4
  %236 = icmp slt i32 %235, 0
  br i1 %236, label %237, label %240

237:                                              ; preds = %228
  %238 = load i32, i32* %5, align 4
  %239 = call i32 @log_error_errno(i32 %238, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.16, i64 0, i64 0))
  store i32 %239, i32* %2, align 4
  br label %278

240:                                              ; preds = %228
  %241 = call i32 (...) @udev_builtin_init()
  %242 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %243 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %242, i32 0, i32 3
  %244 = load i32, i32* @arg_resolve_name_timing, align 4
  %245 = call i32 @udev_rules_new(i32* %243, i32 %244)
  store i32 %245, i32* %5, align 4
  %246 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %247 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %246, i32 0, i32 3
  %248 = load i32, i32* %247, align 8
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %253, label %250

250:                                              ; preds = %240
  %251 = load i32, i32* %5, align 4
  %252 = call i32 @log_error_errno(i32 %251, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.17, i64 0, i64 0))
  store i32 %252, i32* %2, align 4
  br label %278

253:                                              ; preds = %240
  %254 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %255 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %254, i32 0, i32 3
  %256 = load i32, i32* %255, align 8
  %257 = call i32 @udev_rules_apply_static_dev_perms(i32 %256)
  store i32 %257, i32* %5, align 4
  %258 = load i32, i32* %5, align 4
  %259 = icmp slt i32 %258, 0
  br i1 %259, label %260, label %263

260:                                              ; preds = %253
  %261 = load i32, i32* %5, align 4
  %262 = call i32 @log_error_errno(i32 %261, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.18, i64 0, i64 0))
  br label %263

263:                                              ; preds = %260, %253
  %264 = load i32, i32* @arg_children_max, align 4
  %265 = call i32 @sd_notifyf(i32 0, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.19, i64 0, i64 0), i32 %264)
  %266 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %267 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %266, i32 0, i32 2
  %268 = load i32, i32* %267, align 4
  %269 = call i32 @sd_event_loop(i32 %268)
  store i32 %269, i32* %5, align 4
  %270 = load i32, i32* %5, align 4
  %271 = icmp slt i32 %270, 0
  br i1 %271, label %272, label %275

272:                                              ; preds = %263
  %273 = load i32, i32* %5, align 4
  %274 = call i32 @log_error_errno(i32 %273, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.20, i64 0, i64 0))
  br label %275

275:                                              ; preds = %272, %263
  %276 = call i32 @sd_notify(i32 0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.21, i64 0, i64 0))
  %277 = load i32, i32* %5, align 4
  store i32 %277, i32* %2, align 4
  br label %278

278:                                              ; preds = %275, %250, %237, %225, %206, %194, %181, %163, %151, %139, %126, %116, %103, %90, %77, %64, %42, %35, %19
  %279 = load i32, i32* %2, align 4
  ret i32 %279
}

declare dso_local i32 @getpid_cached(...) #1

declare dso_local i32 @socketpair(i32, i32, i32, i32*) #1

declare dso_local i32 @log_error_errno(i32, i8*) #1

declare dso_local i32 @setsockopt_int(i32, i32, i32, i32) #1

declare dso_local i32 @udev_watch_init(...) #1

declare dso_local i32 @udev_watch_restore(...) #1

declare dso_local i32 @assert_se(i32) #1

declare dso_local i64 @sigprocmask_many(i32, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @sd_event_default(i32*) #1

declare dso_local i32 @sd_event_add_signal(i32, i32*, i32, i32, %struct.TYPE_8__*) #1

declare dso_local i32 @sd_event_set_watchdog(i32, i32) #1

declare dso_local i32 @udev_ctrl_attach_event(i32, i32) #1

declare dso_local i32 @udev_ctrl_start(i32, i32, %struct.TYPE_8__*) #1

declare dso_local i32 @sd_event_source_set_priority(i32, i32) #1

declare dso_local i32 @udev_ctrl_get_event_source(i32) #1

declare dso_local i32 @sd_event_add_io(i32, i32*, i32, i32, i32, %struct.TYPE_8__*) #1

declare dso_local i32 @sd_device_monitor_attach_event(i32, i32) #1

declare dso_local i32 @sd_device_monitor_start(i32, i32, %struct.TYPE_8__*) #1

declare dso_local i32 @sd_event_source_set_description(i32, i8*) #1

declare dso_local i32 @sd_device_monitor_get_event_source(i32) #1

declare dso_local i32 @sd_event_add_post(i32, i32*, i32, %struct.TYPE_8__*) #1

declare dso_local i32 @udev_builtin_init(...) #1

declare dso_local i32 @udev_rules_new(i32*, i32) #1

declare dso_local i32 @udev_rules_apply_static_dev_perms(i32) #1

declare dso_local i32 @sd_notifyf(i32, i8*, i32) #1

declare dso_local i32 @sd_event_loop(i32) #1

declare dso_local i32 @sd_notify(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
