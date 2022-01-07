; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/http/extr_h2conn_test.c_stream_reply.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/http/extr_h2conn_test.c_stream_reply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlc_http_msg = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"VLC-h2-tester\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @stream_reply to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stream_reply(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.vlc_http_msg*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = call %struct.vlc_http_msg* @vlc_http_resp_create(i32 200)
  store %struct.vlc_http_msg* %6, %struct.vlc_http_msg** %5, align 8
  %7 = load %struct.vlc_http_msg*, %struct.vlc_http_msg** %5, align 8
  %8 = icmp ne %struct.vlc_http_msg* %7, null
  %9 = zext i1 %8 to i32
  %10 = call i32 @assert(i32 %9)
  %11 = load %struct.vlc_http_msg*, %struct.vlc_http_msg** %5, align 8
  %12 = call i32 @vlc_http_msg_add_agent(%struct.vlc_http_msg* %11, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.vlc_http_msg*, %struct.vlc_http_msg** %5, align 8
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @vlc_http_msg_h2_frame(%struct.vlc_http_msg* %13, i32 %14, i32 %15)
  %17 = call i32 @conn_send(i32 %16)
  %18 = load %struct.vlc_http_msg*, %struct.vlc_http_msg** %5, align 8
  %19 = call i32 @vlc_http_msg_destroy(%struct.vlc_http_msg* %18)
  ret void
}

declare dso_local %struct.vlc_http_msg* @vlc_http_resp_create(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @vlc_http_msg_add_agent(%struct.vlc_http_msg*, i8*) #1

declare dso_local i32 @conn_send(i32) #1

declare dso_local i32 @vlc_http_msg_h2_frame(%struct.vlc_http_msg*, i32, i32) #1

declare dso_local i32 @vlc_http_msg_destroy(%struct.vlc_http_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
