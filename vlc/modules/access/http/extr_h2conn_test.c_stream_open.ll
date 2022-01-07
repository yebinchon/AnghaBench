; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/http/extr_h2conn_test.c_stream_open.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/http/extr_h2conn_test.c_stream_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlc_http_stream = type { i32 }
%struct.vlc_http_msg = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"GET\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"https\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"www.example.com\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@conn = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.vlc_http_stream* ()* @stream_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.vlc_http_stream* @stream_open() #0 {
  %1 = alloca %struct.vlc_http_msg*, align 8
  %2 = alloca %struct.vlc_http_stream*, align 8
  %3 = call %struct.vlc_http_msg* @vlc_http_req_create(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store %struct.vlc_http_msg* %3, %struct.vlc_http_msg** %1, align 8
  %4 = load %struct.vlc_http_msg*, %struct.vlc_http_msg** %1, align 8
  %5 = icmp ne %struct.vlc_http_msg* %4, null
  %6 = zext i1 %5 to i32
  %7 = call i32 @assert(i32 %6)
  %8 = load i32, i32* @conn, align 4
  %9 = load %struct.vlc_http_msg*, %struct.vlc_http_msg** %1, align 8
  %10 = call %struct.vlc_http_stream* @vlc_http_stream_open(i32 %8, %struct.vlc_http_msg* %9)
  store %struct.vlc_http_stream* %10, %struct.vlc_http_stream** %2, align 8
  %11 = load %struct.vlc_http_msg*, %struct.vlc_http_msg** %1, align 8
  %12 = call i32 @vlc_http_msg_destroy(%struct.vlc_http_msg* %11)
  %13 = load %struct.vlc_http_stream*, %struct.vlc_http_stream** %2, align 8
  ret %struct.vlc_http_stream* %13
}

declare dso_local %struct.vlc_http_msg* @vlc_http_req_create(i8*, i8*, i8*, i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.vlc_http_stream* @vlc_http_stream_open(i32, %struct.vlc_http_msg*) #1

declare dso_local i32 @vlc_http_msg_destroy(%struct.vlc_http_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
