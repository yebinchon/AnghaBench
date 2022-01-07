; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/http/extr_h1conn.c_vlc_h1_stream_close.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/http/extr_h1conn.c_vlc_h1_stream_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlc_http_stream = type { i32 }
%struct.vlc_h1_conn = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vlc_http_stream*, i32)* @vlc_h1_stream_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vlc_h1_stream_close(%struct.vlc_http_stream* %0, i32 %1) #0 {
  %3 = alloca %struct.vlc_http_stream*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.vlc_h1_conn*, align 8
  store %struct.vlc_http_stream* %0, %struct.vlc_http_stream** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.vlc_http_stream*, %struct.vlc_http_stream** %3, align 8
  %7 = call %struct.vlc_h1_conn* @vlc_h1_stream_conn(%struct.vlc_http_stream* %6)
  store %struct.vlc_h1_conn* %7, %struct.vlc_h1_conn** %5, align 8
  %8 = load %struct.vlc_h1_conn*, %struct.vlc_h1_conn** %5, align 8
  %9 = getelementptr inbounds %struct.vlc_h1_conn, %struct.vlc_h1_conn* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @assert(i32 %10)
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load %struct.vlc_h1_conn*, %struct.vlc_h1_conn** %5, align 8
  %16 = call i32 @vlc_h1_stream_fatal(%struct.vlc_h1_conn* %15)
  br label %17

17:                                               ; preds = %14, %2
  %18 = load %struct.vlc_h1_conn*, %struct.vlc_h1_conn** %5, align 8
  %19 = getelementptr inbounds %struct.vlc_h1_conn, %struct.vlc_h1_conn* %18, i32 0, i32 0
  store i32 0, i32* %19, align 8
  %20 = load %struct.vlc_h1_conn*, %struct.vlc_h1_conn** %5, align 8
  %21 = getelementptr inbounds %struct.vlc_h1_conn, %struct.vlc_h1_conn* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %17
  %25 = load %struct.vlc_h1_conn*, %struct.vlc_h1_conn** %5, align 8
  %26 = call i32 @vlc_h1_conn_destroy(%struct.vlc_h1_conn* %25)
  br label %27

27:                                               ; preds = %24, %17
  ret void
}

declare dso_local %struct.vlc_h1_conn* @vlc_h1_stream_conn(%struct.vlc_http_stream*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @vlc_h1_stream_fatal(%struct.vlc_h1_conn*) #1

declare dso_local i32 @vlc_h1_conn_destroy(%struct.vlc_h1_conn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
