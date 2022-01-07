; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/http/extr_chunked_test.c_test_bad.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/http/extr_chunked_test.c_test_bad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlc_http_stream = type { i32 }

@stream_content = common dso_local global i8* null, align 8
@stream_length = common dso_local global i32 0, align 4
@stream_bad = common dso_local global i32 0, align 4
@chunked_stream = common dso_local global i32 0, align 4
@chunked_tls = common dso_local global i32 0, align 4
@vlc_http_error = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @test_bad to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_bad(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.vlc_http_stream*, align 8
  %4 = alloca i32*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  store i8* %5, i8** @stream_content, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = call i32 @strlen(i8* %6)
  store i32 %7, i32* @stream_length, align 4
  store i32 1, i32* @stream_bad, align 4
  %8 = call %struct.vlc_http_stream* @vlc_chunked_open(i32* @chunked_stream, i32* @chunked_tls)
  store %struct.vlc_http_stream* %8, %struct.vlc_http_stream** %3, align 8
  %9 = load %struct.vlc_http_stream*, %struct.vlc_http_stream** %3, align 8
  %10 = icmp ne %struct.vlc_http_stream* %9, null
  %11 = zext i1 %10 to i32
  %12 = call i32 @assert(i32 %11)
  br label %13

13:                                               ; preds = %18, %1
  %14 = load %struct.vlc_http_stream*, %struct.vlc_http_stream** %3, align 8
  %15 = call i32* @vlc_http_stream_read(%struct.vlc_http_stream* %14)
  store i32* %15, i32** %4, align 8
  %16 = load i32*, i32** @vlc_http_error, align 8
  %17 = icmp ne i32* %15, %16
  br i1 %17, label %18, label %25

18:                                               ; preds = %13
  %19 = load i32*, i32** %4, align 8
  %20 = icmp ne i32* %19, null
  %21 = zext i1 %20 to i32
  %22 = call i32 @assert(i32 %21)
  %23 = load i32*, i32** %4, align 8
  %24 = call i32 @block_Release(i32* %23)
  br label %13

25:                                               ; preds = %13
  %26 = load %struct.vlc_http_stream*, %struct.vlc_http_stream** %3, align 8
  %27 = call i32 @vlc_http_stream_close(%struct.vlc_http_stream* %26, i32 0)
  ret void
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local %struct.vlc_http_stream* @vlc_chunked_open(i32*, i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32* @vlc_http_stream_read(%struct.vlc_http_stream*) #1

declare dso_local i32 @block_Release(i32*) #1

declare dso_local i32 @vlc_http_stream_close(%struct.vlc_http_stream*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
