; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/http/extr_chunked.c_vlc_chunked_open.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/http/extr_chunked.c_vlc_chunked_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlc_http_stream = type { i32* }
%struct.vlc_tls = type { i32 }
%struct.vlc_chunked_stream = type { i32, i32, %struct.vlc_http_stream, i64, %struct.vlc_tls*, %struct.vlc_http_stream* }

@vlc_chunked_callbacks = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.vlc_http_stream* @vlc_chunked_open(%struct.vlc_http_stream* %0, %struct.vlc_tls* %1) #0 {
  %3 = alloca %struct.vlc_http_stream*, align 8
  %4 = alloca %struct.vlc_http_stream*, align 8
  %5 = alloca %struct.vlc_tls*, align 8
  %6 = alloca %struct.vlc_chunked_stream*, align 8
  store %struct.vlc_http_stream* %0, %struct.vlc_http_stream** %4, align 8
  store %struct.vlc_tls* %1, %struct.vlc_tls** %5, align 8
  %7 = call %struct.vlc_chunked_stream* @malloc(i32 40)
  store %struct.vlc_chunked_stream* %7, %struct.vlc_chunked_stream** %6, align 8
  %8 = load %struct.vlc_chunked_stream*, %struct.vlc_chunked_stream** %6, align 8
  %9 = icmp eq %struct.vlc_chunked_stream* %8, null
  %10 = zext i1 %9 to i32
  %11 = call i64 @unlikely(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store %struct.vlc_http_stream* null, %struct.vlc_http_stream** %3, align 8
  br label %32

14:                                               ; preds = %2
  %15 = load %struct.vlc_chunked_stream*, %struct.vlc_chunked_stream** %6, align 8
  %16 = getelementptr inbounds %struct.vlc_chunked_stream, %struct.vlc_chunked_stream* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.vlc_http_stream, %struct.vlc_http_stream* %16, i32 0, i32 0
  store i32* @vlc_chunked_callbacks, i32** %17, align 8
  %18 = load %struct.vlc_http_stream*, %struct.vlc_http_stream** %4, align 8
  %19 = load %struct.vlc_chunked_stream*, %struct.vlc_chunked_stream** %6, align 8
  %20 = getelementptr inbounds %struct.vlc_chunked_stream, %struct.vlc_chunked_stream* %19, i32 0, i32 5
  store %struct.vlc_http_stream* %18, %struct.vlc_http_stream** %20, align 8
  %21 = load %struct.vlc_tls*, %struct.vlc_tls** %5, align 8
  %22 = load %struct.vlc_chunked_stream*, %struct.vlc_chunked_stream** %6, align 8
  %23 = getelementptr inbounds %struct.vlc_chunked_stream, %struct.vlc_chunked_stream* %22, i32 0, i32 4
  store %struct.vlc_tls* %21, %struct.vlc_tls** %23, align 8
  %24 = load %struct.vlc_chunked_stream*, %struct.vlc_chunked_stream** %6, align 8
  %25 = getelementptr inbounds %struct.vlc_chunked_stream, %struct.vlc_chunked_stream* %24, i32 0, i32 3
  store i64 0, i64* %25, align 8
  %26 = load %struct.vlc_chunked_stream*, %struct.vlc_chunked_stream** %6, align 8
  %27 = getelementptr inbounds %struct.vlc_chunked_stream, %struct.vlc_chunked_stream* %26, i32 0, i32 0
  store i32 0, i32* %27, align 8
  %28 = load %struct.vlc_chunked_stream*, %struct.vlc_chunked_stream** %6, align 8
  %29 = getelementptr inbounds %struct.vlc_chunked_stream, %struct.vlc_chunked_stream* %28, i32 0, i32 1
  store i32 0, i32* %29, align 4
  %30 = load %struct.vlc_chunked_stream*, %struct.vlc_chunked_stream** %6, align 8
  %31 = getelementptr inbounds %struct.vlc_chunked_stream, %struct.vlc_chunked_stream* %30, i32 0, i32 2
  store %struct.vlc_http_stream* %31, %struct.vlc_http_stream** %3, align 8
  br label %32

32:                                               ; preds = %14, %13
  %33 = load %struct.vlc_http_stream*, %struct.vlc_http_stream** %3, align 8
  ret %struct.vlc_http_stream* %33
}

declare dso_local %struct.vlc_chunked_stream* @malloc(i32) #1

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
