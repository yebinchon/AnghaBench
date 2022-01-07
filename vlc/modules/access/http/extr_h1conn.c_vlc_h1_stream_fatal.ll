; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/http/extr_h1conn.c_vlc_h1_stream_fatal.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/http/extr_h1conn.c_vlc_h1_stream_fatal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlc_h1_conn = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@.str = private unnamed_addr constant [18 x i8] c"connection failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.vlc_h1_conn*)* @vlc_h1_stream_fatal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @vlc_h1_stream_fatal(%struct.vlc_h1_conn* %0) #0 {
  %2 = alloca %struct.vlc_h1_conn*, align 8
  store %struct.vlc_h1_conn* %0, %struct.vlc_h1_conn** %2, align 8
  %3 = load %struct.vlc_h1_conn*, %struct.vlc_h1_conn** %2, align 8
  %4 = getelementptr inbounds %struct.vlc_h1_conn, %struct.vlc_h1_conn* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %6 = load i32*, i32** %5, align 8
  %7 = icmp ne i32* %6, null
  br i1 %7, label %8, label %25

8:                                                ; preds = %1
  %9 = load %struct.vlc_h1_conn*, %struct.vlc_h1_conn** %2, align 8
  %10 = call i32 @CO(%struct.vlc_h1_conn* %9)
  %11 = call i32 @vlc_http_dbg(i32 %10, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.vlc_h1_conn*, %struct.vlc_h1_conn** %2, align 8
  %13 = getelementptr inbounds %struct.vlc_h1_conn, %struct.vlc_h1_conn* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = call i32 @vlc_tls_Shutdown(i32* %15, i32 1)
  %17 = load %struct.vlc_h1_conn*, %struct.vlc_h1_conn** %2, align 8
  %18 = getelementptr inbounds %struct.vlc_h1_conn, %struct.vlc_h1_conn* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = call i32 @vlc_tls_Close(i32* %20)
  %22 = load %struct.vlc_h1_conn*, %struct.vlc_h1_conn** %2, align 8
  %23 = getelementptr inbounds %struct.vlc_h1_conn, %struct.vlc_h1_conn* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  store i32* null, i32** %24, align 8
  br label %25

25:                                               ; preds = %8, %1
  ret i8* null
}

declare dso_local i32 @vlc_http_dbg(i32, i8*) #1

declare dso_local i32 @CO(%struct.vlc_h1_conn*) #1

declare dso_local i32 @vlc_tls_Shutdown(i32*, i32) #1

declare dso_local i32 @vlc_tls_Close(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
