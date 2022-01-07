; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/http/extr_chunked_test.c_test_good.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/http/extr_chunked_test.c_test_good.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlc_http_stream = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }

@.str = private unnamed_addr constant [64 x i8] c"A\0D\0A1234567890\0D\0A1A; ext-foo=1\0D\0Aabcdefghijklmnopqrstuvwxyz\0D\0A0\0D\0A\0D\0A\00", align 1
@stream_content = common dso_local global i8* null, align 8
@stream_length = common dso_local global i32 0, align 4
@stream_bad = common dso_local global i32 0, align 4
@chunked_stream = common dso_local global i32 0, align 4
@chunked_tls = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"1234567890\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"abcdefghijklmnopqrstuvwxyz\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_good to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_good() #0 {
  %1 = alloca %struct.vlc_http_stream*, align 8
  %2 = alloca %struct.TYPE_4__*, align 8
  store i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), i8** @stream_content, align 8
  %3 = load i8*, i8** @stream_content, align 8
  %4 = call i32 @strlen(i8* %3)
  store i32 %4, i32* @stream_length, align 4
  store i32 0, i32* @stream_bad, align 4
  %5 = call %struct.vlc_http_stream* @vlc_chunked_open(i32* @chunked_stream, i32* @chunked_tls)
  store %struct.vlc_http_stream* %5, %struct.vlc_http_stream** %1, align 8
  %6 = load %struct.vlc_http_stream*, %struct.vlc_http_stream** %1, align 8
  %7 = icmp ne %struct.vlc_http_stream* %6, null
  %8 = zext i1 %7 to i32
  %9 = call i32 @assert(i32 %8)
  %10 = load %struct.vlc_http_stream*, %struct.vlc_http_stream** %1, align 8
  %11 = call i32* @vlc_http_stream_read_headers(%struct.vlc_http_stream* %10)
  %12 = icmp eq i32* %11, null
  %13 = zext i1 %12 to i32
  %14 = call i32 @assert(i32 %13)
  %15 = load %struct.vlc_http_stream*, %struct.vlc_http_stream** %1, align 8
  %16 = call %struct.TYPE_4__* @vlc_http_stream_read(%struct.vlc_http_stream* %15)
  store %struct.TYPE_4__* %16, %struct.TYPE_4__** %2, align 8
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %18 = icmp ne %struct.TYPE_4__* %17, null
  %19 = zext i1 %18 to i32
  %20 = call i32 @assert(i32 %19)
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp eq i32 %23, 10
  %25 = zext i1 %24 to i32
  %26 = call i32 @assert(i32 %25)
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @memcmp(i32 %29, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 10)
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  %34 = call i32 @assert(i32 %33)
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %36 = call i32 @block_Release(%struct.TYPE_4__* %35)
  %37 = load %struct.vlc_http_stream*, %struct.vlc_http_stream** %1, align 8
  %38 = call %struct.TYPE_4__* @vlc_http_stream_read(%struct.vlc_http_stream* %37)
  store %struct.TYPE_4__* %38, %struct.TYPE_4__** %2, align 8
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %40 = icmp ne %struct.TYPE_4__* %39, null
  %41 = zext i1 %40 to i32
  %42 = call i32 @assert(i32 %41)
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp eq i32 %45, 26
  %47 = zext i1 %46 to i32
  %48 = call i32 @assert(i32 %47)
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @memcmp(i32 %51, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 26)
  %53 = icmp ne i32 %52, 0
  %54 = xor i1 %53, true
  %55 = zext i1 %54 to i32
  %56 = call i32 @assert(i32 %55)
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %58 = call i32 @block_Release(%struct.TYPE_4__* %57)
  %59 = load %struct.vlc_http_stream*, %struct.vlc_http_stream** %1, align 8
  %60 = call %struct.TYPE_4__* @vlc_http_stream_read(%struct.vlc_http_stream* %59)
  store %struct.TYPE_4__* %60, %struct.TYPE_4__** %2, align 8
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %62 = icmp eq %struct.TYPE_4__* %61, null
  %63 = zext i1 %62 to i32
  %64 = call i32 @assert(i32 %63)
  %65 = load %struct.vlc_http_stream*, %struct.vlc_http_stream** %1, align 8
  %66 = call %struct.TYPE_4__* @vlc_http_stream_read(%struct.vlc_http_stream* %65)
  store %struct.TYPE_4__* %66, %struct.TYPE_4__** %2, align 8
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %68 = icmp eq %struct.TYPE_4__* %67, null
  %69 = zext i1 %68 to i32
  %70 = call i32 @assert(i32 %69)
  %71 = load %struct.vlc_http_stream*, %struct.vlc_http_stream** %1, align 8
  %72 = call i32 @vlc_http_stream_close(%struct.vlc_http_stream* %71, i32 0)
  ret void
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local %struct.vlc_http_stream* @vlc_chunked_open(i32*, i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32* @vlc_http_stream_read_headers(%struct.vlc_http_stream*) #1

declare dso_local %struct.TYPE_4__* @vlc_http_stream_read(%struct.vlc_http_stream*) #1

declare dso_local i32 @memcmp(i32, i8*, i32) #1

declare dso_local i32 @block_Release(%struct.TYPE_4__*) #1

declare dso_local i32 @vlc_http_stream_close(%struct.vlc_http_stream*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
