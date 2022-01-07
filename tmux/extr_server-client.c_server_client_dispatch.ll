; ModuleID = '/home/carl/AnghaBench/tmux/extr_server-client.c_server_client_dispatch.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_server-client.c_server_client_dispatch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imsg = type { i8*, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.client = type { i32, i32, i32, %struct.TYPE_6__, %struct.session*, i32, i32, i32 (%struct.client*, i32, i32)*, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.session = type { i32 }
%struct.msg_stdin_data = type { i32, i32 }

@CLIENT_DEAD = common dso_local global i32 0, align 4
@IMSG_HEADER_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"bad MSG_STDIN size\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"bad MSG_RESIZE size\00", align 1
@CLIENT_CONTROL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"client-resized\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"bad MSG_EXITING size\00", align 1
@MSG_EXITED = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [20 x i8] c"bad MSG_WAKEUP size\00", align 1
@CLIENT_SUSPENDED = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [20 x i8] c"gettimeofday failed\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"bad MSG_SHELL size\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.imsg*, i8*)* @server_client_dispatch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @server_client_dispatch(%struct.imsg* %0, i8* %1) #0 {
  %3 = alloca %struct.imsg*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.client*, align 8
  %6 = alloca %struct.msg_stdin_data, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.session*, align 8
  store %struct.imsg* %0, %struct.imsg** %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.client*
  store %struct.client* %11, %struct.client** %5, align 8
  %12 = load %struct.client*, %struct.client** %5, align 8
  %13 = getelementptr inbounds %struct.client, %struct.client* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @CLIENT_DEAD, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  br label %196

19:                                               ; preds = %2
  %20 = load %struct.imsg*, %struct.imsg** %3, align 8
  %21 = icmp eq %struct.imsg* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = load %struct.client*, %struct.client** %5, align 8
  %24 = call i32 @server_client_lost(%struct.client* %23)
  br label %196

25:                                               ; preds = %19
  %26 = load %struct.imsg*, %struct.imsg** %3, align 8
  %27 = getelementptr inbounds %struct.imsg, %struct.imsg* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  store i8* %28, i8** %7, align 8
  %29 = load %struct.imsg*, %struct.imsg** %3, align 8
  %30 = getelementptr inbounds %struct.imsg, %struct.imsg* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @IMSG_HEADER_SIZE, align 4
  %34 = sub nsw i32 %32, %33
  store i32 %34, i32* %8, align 4
  %35 = load %struct.imsg*, %struct.imsg** %3, align 8
  %36 = getelementptr inbounds %struct.imsg, %struct.imsg* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  switch i32 %38, label %196 [
    i32 136, label %39
    i32 134, label %39
    i32 133, label %39
    i32 139, label %39
    i32 135, label %39
    i32 137, label %39
    i32 140, label %39
    i32 138, label %39
    i32 142, label %43
    i32 130, label %47
    i32 132, label %89
    i32 141, label %121
    i32 128, label %137
    i32 129, label %137
    i32 131, label %188
  ]

39:                                               ; preds = %25, %25, %25, %25, %25, %25, %25, %25
  %40 = load %struct.client*, %struct.client** %5, align 8
  %41 = load %struct.imsg*, %struct.imsg** %3, align 8
  %42 = call i32 @server_client_dispatch_identify(%struct.client* %40, %struct.imsg* %41)
  br label %196

43:                                               ; preds = %25
  %44 = load %struct.client*, %struct.client** %5, align 8
  %45 = load %struct.imsg*, %struct.imsg** %3, align 8
  %46 = call i32 @server_client_dispatch_command(%struct.client* %44, %struct.imsg* %45)
  br label %196

47:                                               ; preds = %25
  %48 = load i32, i32* %8, align 4
  %49 = sext i32 %48 to i64
  %50 = icmp ne i64 %49, 8
  br i1 %50, label %51, label %53

51:                                               ; preds = %47
  %52 = call i32 @fatalx(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %53

53:                                               ; preds = %51, %47
  %54 = load i8*, i8** %7, align 8
  %55 = call i32 @memcpy(%struct.msg_stdin_data* %6, i8* %54, i32 8)
  %56 = load %struct.client*, %struct.client** %5, align 8
  %57 = getelementptr inbounds %struct.client, %struct.client* %56, i32 0, i32 7
  %58 = load i32 (%struct.client*, i32, i32)*, i32 (%struct.client*, i32, i32)** %57, align 8
  %59 = icmp eq i32 (%struct.client*, i32, i32)* %58, null
  br i1 %59, label %60, label %61

60:                                               ; preds = %53
  br label %196

61:                                               ; preds = %53
  %62 = getelementptr inbounds %struct.msg_stdin_data, %struct.msg_stdin_data* %6, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = icmp sle i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %61
  %66 = load %struct.client*, %struct.client** %5, align 8
  %67 = getelementptr inbounds %struct.client, %struct.client* %66, i32 0, i32 1
  store i32 1, i32* %67, align 4
  br label %77

68:                                               ; preds = %61
  %69 = load %struct.client*, %struct.client** %5, align 8
  %70 = getelementptr inbounds %struct.client, %struct.client* %69, i32 0, i32 8
  %71 = load i32, i32* %70, align 8
  %72 = getelementptr inbounds %struct.msg_stdin_data, %struct.msg_stdin_data* %6, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = getelementptr inbounds %struct.msg_stdin_data, %struct.msg_stdin_data* %6, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @evbuffer_add(i32 %71, i32 %73, i32 %75)
  br label %77

77:                                               ; preds = %68, %65
  %78 = load %struct.client*, %struct.client** %5, align 8
  %79 = getelementptr inbounds %struct.client, %struct.client* %78, i32 0, i32 7
  %80 = load i32 (%struct.client*, i32, i32)*, i32 (%struct.client*, i32, i32)** %79, align 8
  %81 = load %struct.client*, %struct.client** %5, align 8
  %82 = load %struct.client*, %struct.client** %5, align 8
  %83 = getelementptr inbounds %struct.client, %struct.client* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.client*, %struct.client** %5, align 8
  %86 = getelementptr inbounds %struct.client, %struct.client* %85, i32 0, i32 6
  %87 = load i32, i32* %86, align 4
  %88 = call i32 %80(%struct.client* %81, i32 %84, i32 %87)
  br label %196

89:                                               ; preds = %25
  %90 = load i32, i32* %8, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %89
  %93 = call i32 @fatalx(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  br label %94

94:                                               ; preds = %92, %89
  %95 = load %struct.client*, %struct.client** %5, align 8
  %96 = getelementptr inbounds %struct.client, %struct.client* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* @CLIENT_CONTROL, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %94
  br label %196

102:                                              ; preds = %94
  %103 = load %struct.client*, %struct.client** %5, align 8
  %104 = call i32 @server_client_update_latest(%struct.client* %103)
  %105 = load %struct.client*, %struct.client** %5, align 8
  %106 = call i32 @server_client_clear_overlay(%struct.client* %105)
  %107 = load %struct.client*, %struct.client** %5, align 8
  %108 = getelementptr inbounds %struct.client, %struct.client* %107, i32 0, i32 3
  %109 = call i32 @tty_resize(%struct.TYPE_6__* %108)
  %110 = call i32 (...) @recalculate_sizes()
  %111 = load %struct.client*, %struct.client** %5, align 8
  %112 = call i32 @server_redraw_client(%struct.client* %111)
  %113 = load %struct.client*, %struct.client** %5, align 8
  %114 = getelementptr inbounds %struct.client, %struct.client* %113, i32 0, i32 4
  %115 = load %struct.session*, %struct.session** %114, align 8
  %116 = icmp ne %struct.session* %115, null
  br i1 %116, label %117, label %120

117:                                              ; preds = %102
  %118 = load %struct.client*, %struct.client** %5, align 8
  %119 = call i32 @notify_client(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), %struct.client* %118)
  br label %120

120:                                              ; preds = %117, %102
  br label %196

121:                                              ; preds = %25
  %122 = load i32, i32* %8, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %121
  %125 = call i32 @fatalx(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  br label %126

126:                                              ; preds = %124, %121
  %127 = load %struct.client*, %struct.client** %5, align 8
  %128 = getelementptr inbounds %struct.client, %struct.client* %127, i32 0, i32 4
  store %struct.session* null, %struct.session** %128, align 8
  %129 = load %struct.client*, %struct.client** %5, align 8
  %130 = getelementptr inbounds %struct.client, %struct.client* %129, i32 0, i32 3
  %131 = call i32 @tty_close(%struct.TYPE_6__* %130)
  %132 = load %struct.client*, %struct.client** %5, align 8
  %133 = getelementptr inbounds %struct.client, %struct.client* %132, i32 0, i32 5
  %134 = load i32, i32* %133, align 8
  %135 = load i32, i32* @MSG_EXITED, align 4
  %136 = call i32 @proc_send(i32 %134, i32 %135, i32 -1, i32* null, i32 0)
  br label %196

137:                                              ; preds = %25, %25
  %138 = load i32, i32* %8, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %142

140:                                              ; preds = %137
  %141 = call i32 @fatalx(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  br label %142

142:                                              ; preds = %140, %137
  %143 = load %struct.client*, %struct.client** %5, align 8
  %144 = getelementptr inbounds %struct.client, %struct.client* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = load i32, i32* @CLIENT_SUSPENDED, align 4
  %147 = and i32 %145, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %150, label %149

149:                                              ; preds = %142
  br label %196

150:                                              ; preds = %142
  %151 = load i32, i32* @CLIENT_SUSPENDED, align 4
  %152 = xor i32 %151, -1
  %153 = load %struct.client*, %struct.client** %5, align 8
  %154 = getelementptr inbounds %struct.client, %struct.client* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = and i32 %155, %152
  store i32 %156, i32* %154, align 8
  %157 = load %struct.client*, %struct.client** %5, align 8
  %158 = getelementptr inbounds %struct.client, %struct.client* %157, i32 0, i32 3
  %159 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = icmp eq i32 %160, -1
  br i1 %161, label %162, label %163

162:                                              ; preds = %150
  br label %196

163:                                              ; preds = %150
  %164 = load %struct.client*, %struct.client** %5, align 8
  %165 = getelementptr inbounds %struct.client, %struct.client* %164, i32 0, i32 4
  %166 = load %struct.session*, %struct.session** %165, align 8
  store %struct.session* %166, %struct.session** %9, align 8
  %167 = load %struct.client*, %struct.client** %5, align 8
  %168 = getelementptr inbounds %struct.client, %struct.client* %167, i32 0, i32 2
  %169 = call i32 @gettimeofday(i32* %168, i32* null)
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %173

171:                                              ; preds = %163
  %172 = call i32 @fatal(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0))
  br label %173

173:                                              ; preds = %171, %163
  %174 = load %struct.client*, %struct.client** %5, align 8
  %175 = getelementptr inbounds %struct.client, %struct.client* %174, i32 0, i32 3
  %176 = call i32 @tty_start_tty(%struct.TYPE_6__* %175)
  %177 = load %struct.client*, %struct.client** %5, align 8
  %178 = call i32 @server_redraw_client(%struct.client* %177)
  %179 = call i32 (...) @recalculate_sizes()
  %180 = load %struct.session*, %struct.session** %9, align 8
  %181 = icmp ne %struct.session* %180, null
  br i1 %181, label %182, label %187

182:                                              ; preds = %173
  %183 = load %struct.session*, %struct.session** %9, align 8
  %184 = load %struct.client*, %struct.client** %5, align 8
  %185 = getelementptr inbounds %struct.client, %struct.client* %184, i32 0, i32 2
  %186 = call i32 @session_update_activity(%struct.session* %183, i32* %185)
  br label %187

187:                                              ; preds = %182, %173
  br label %196

188:                                              ; preds = %25
  %189 = load i32, i32* %8, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %193

191:                                              ; preds = %188
  %192 = call i32 @fatalx(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0))
  br label %193

193:                                              ; preds = %191, %188
  %194 = load %struct.client*, %struct.client** %5, align 8
  %195 = call i32 @server_client_dispatch_shell(%struct.client* %194)
  br label %196

196:                                              ; preds = %18, %22, %25, %193, %187, %162, %149, %126, %120, %101, %77, %60, %43, %39
  ret void
}

declare dso_local i32 @server_client_lost(%struct.client*) #1

declare dso_local i32 @server_client_dispatch_identify(%struct.client*, %struct.imsg*) #1

declare dso_local i32 @server_client_dispatch_command(%struct.client*, %struct.imsg*) #1

declare dso_local i32 @fatalx(i8*) #1

declare dso_local i32 @memcpy(%struct.msg_stdin_data*, i8*, i32) #1

declare dso_local i32 @evbuffer_add(i32, i32, i32) #1

declare dso_local i32 @server_client_update_latest(%struct.client*) #1

declare dso_local i32 @server_client_clear_overlay(%struct.client*) #1

declare dso_local i32 @tty_resize(%struct.TYPE_6__*) #1

declare dso_local i32 @recalculate_sizes(...) #1

declare dso_local i32 @server_redraw_client(%struct.client*) #1

declare dso_local i32 @notify_client(i8*, %struct.client*) #1

declare dso_local i32 @tty_close(%struct.TYPE_6__*) #1

declare dso_local i32 @proc_send(i32, i32, i32, i32*, i32) #1

declare dso_local i32 @gettimeofday(i32*, i32*) #1

declare dso_local i32 @fatal(i8*) #1

declare dso_local i32 @tty_start_tty(%struct.TYPE_6__*) #1

declare dso_local i32 @session_update_activity(%struct.session*, i32*) #1

declare dso_local i32 @server_client_dispatch_shell(%struct.client*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
