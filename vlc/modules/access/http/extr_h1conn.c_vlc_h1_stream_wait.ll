; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/http/extr_h1conn.c_vlc_h1_stream_wait.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/http/extr_h1conn.c_vlc_h1_stream_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlc_http_msg = type { i32 }
%struct.vlc_http_stream = type { i32 }
%struct.vlc_h1_conn = type { i32, i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@.str = private unnamed_addr constant [24 x i8] c"incoming response:\0A%.*s\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"Connection\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"close\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"Transfer-Encoding\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"chunked\00", align 1
@UINTMAX_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.vlc_http_msg* (%struct.vlc_http_stream*)* @vlc_h1_stream_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.vlc_http_msg* @vlc_h1_stream_wait(%struct.vlc_http_stream* %0) #0 {
  %2 = alloca %struct.vlc_http_msg*, align 8
  %3 = alloca %struct.vlc_http_stream*, align 8
  %4 = alloca %struct.vlc_h1_conn*, align 8
  %5 = alloca %struct.vlc_http_msg*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store %struct.vlc_http_stream* %0, %struct.vlc_http_stream** %3, align 8
  %10 = load %struct.vlc_http_stream*, %struct.vlc_http_stream** %3, align 8
  %11 = call %struct.vlc_h1_conn* @vlc_h1_stream_conn(%struct.vlc_http_stream* %10)
  store %struct.vlc_h1_conn* %11, %struct.vlc_h1_conn** %4, align 8
  %12 = load %struct.vlc_h1_conn*, %struct.vlc_h1_conn** %4, align 8
  %13 = getelementptr inbounds %struct.vlc_h1_conn, %struct.vlc_h1_conn* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @assert(i32 %14)
  %16 = load %struct.vlc_h1_conn*, %struct.vlc_h1_conn** %4, align 8
  %17 = getelementptr inbounds %struct.vlc_h1_conn, %struct.vlc_h1_conn* %16, i32 0, i32 3
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %1
  store %struct.vlc_http_msg* null, %struct.vlc_http_msg** %2, align 8
  br label %119

22:                                               ; preds = %1
  %23 = load %struct.vlc_h1_conn*, %struct.vlc_h1_conn** %4, align 8
  %24 = getelementptr inbounds %struct.vlc_h1_conn, %struct.vlc_h1_conn* %23, i32 0, i32 3
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = call i8* @vlc_https_headers_recv(i32* %26, i64* %7)
  store i8* %27, i8** %9, align 8
  %28 = load i8*, i8** %9, align 8
  %29 = icmp eq i8* %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %22
  %31 = load %struct.vlc_h1_conn*, %struct.vlc_h1_conn** %4, align 8
  %32 = call %struct.vlc_http_msg* @vlc_h1_stream_fatal(%struct.vlc_h1_conn* %31)
  store %struct.vlc_http_msg* %32, %struct.vlc_http_msg** %2, align 8
  br label %119

33:                                               ; preds = %22
  %34 = load %struct.vlc_h1_conn*, %struct.vlc_h1_conn** %4, align 8
  %35 = call i32 @CO(%struct.vlc_h1_conn* %34)
  %36 = load i64, i64* %7, align 8
  %37 = trunc i64 %36 to i32
  %38 = load i8*, i8** %9, align 8
  %39 = call i32 @vlc_http_dbg(i32 %35, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %37, i8* %38)
  %40 = load i8*, i8** %9, align 8
  %41 = call %struct.vlc_http_msg* @vlc_http_msg_headers(i8* %40)
  store %struct.vlc_http_msg* %41, %struct.vlc_http_msg** %5, align 8
  %42 = load i8*, i8** %9, align 8
  %43 = call i32 @vlc_http_minor(i8* %42)
  store i32 %43, i32* %8, align 4
  %44 = load i8*, i8** %9, align 8
  %45 = call i32 @free(i8* %44)
  %46 = load %struct.vlc_http_msg*, %struct.vlc_http_msg** %5, align 8
  %47 = icmp eq %struct.vlc_http_msg* %46, null
  br i1 %47, label %48, label %51

48:                                               ; preds = %33
  %49 = load %struct.vlc_h1_conn*, %struct.vlc_h1_conn** %4, align 8
  %50 = call %struct.vlc_http_msg* @vlc_h1_stream_fatal(%struct.vlc_h1_conn* %49)
  store %struct.vlc_http_msg* %50, %struct.vlc_http_msg** %2, align 8
  br label %119

51:                                               ; preds = %33
  %52 = load i32, i32* %8, align 4
  %53 = icmp sge i32 %52, 0
  %54 = zext i1 %53 to i32
  %55 = call i32 @assert(i32 %54)
  %56 = load %struct.vlc_http_msg*, %struct.vlc_http_msg** %5, align 8
  %57 = call i64 @vlc_http_msg_get_size(%struct.vlc_http_msg* %56)
  %58 = load %struct.vlc_h1_conn*, %struct.vlc_h1_conn** %4, align 8
  %59 = getelementptr inbounds %struct.vlc_h1_conn, %struct.vlc_h1_conn* %58, i32 0, i32 1
  store i64 %57, i64* %59, align 8
  %60 = load %struct.vlc_h1_conn*, %struct.vlc_h1_conn** %4, align 8
  %61 = getelementptr inbounds %struct.vlc_h1_conn, %struct.vlc_h1_conn* %60, i32 0, i32 2
  store i32 0, i32* %61, align 8
  %62 = load i32, i32* %8, align 4
  %63 = icmp sge i32 %62, 1
  br i1 %63, label %64, label %111

64:                                               ; preds = %51
  %65 = load %struct.vlc_http_msg*, %struct.vlc_http_msg** %5, align 8
  %66 = call i8* @vlc_http_msg_get_token(%struct.vlc_http_msg* %65, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %67 = icmp ne i8* %66, null
  br i1 %67, label %68, label %71

68:                                               ; preds = %64
  %69 = load %struct.vlc_h1_conn*, %struct.vlc_h1_conn** %4, align 8
  %70 = getelementptr inbounds %struct.vlc_h1_conn, %struct.vlc_h1_conn* %69, i32 0, i32 2
  store i32 1, i32* %70, align 8
  br label %71

71:                                               ; preds = %68, %64
  %72 = load %struct.vlc_http_msg*, %struct.vlc_http_msg** %5, align 8
  %73 = call i8* @vlc_http_msg_get_token(%struct.vlc_http_msg* %72, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  store i8* %73, i8** %6, align 8
  %74 = load i8*, i8** %6, align 8
  %75 = icmp ne i8* %74, null
  br i1 %75, label %76, label %110

76:                                               ; preds = %71
  %77 = load i8*, i8** %6, align 8
  %78 = call i32* @vlc_http_next_token(i8* %77)
  %79 = icmp ne i32* %78, null
  br i1 %79, label %80, label %85

80:                                               ; preds = %76
  %81 = load %struct.vlc_http_msg*, %struct.vlc_http_msg** %5, align 8
  %82 = call i32 @vlc_http_msg_destroy(%struct.vlc_http_msg* %81)
  %83 = load %struct.vlc_h1_conn*, %struct.vlc_h1_conn** %4, align 8
  %84 = call %struct.vlc_http_msg* @vlc_h1_stream_fatal(%struct.vlc_h1_conn* %83)
  store %struct.vlc_http_msg* %84, %struct.vlc_http_msg** %2, align 8
  br label %119

85:                                               ; preds = %76
  %86 = load %struct.vlc_h1_conn*, %struct.vlc_h1_conn** %4, align 8
  %87 = getelementptr inbounds %struct.vlc_h1_conn, %struct.vlc_h1_conn* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @UINTMAX_MAX, align 8
  %90 = icmp eq i64 %88, %89
  %91 = zext i1 %90 to i32
  %92 = call i32 @assert(i32 %91)
  %93 = load %struct.vlc_http_stream*, %struct.vlc_http_stream** %3, align 8
  %94 = load %struct.vlc_h1_conn*, %struct.vlc_h1_conn** %4, align 8
  %95 = getelementptr inbounds %struct.vlc_h1_conn, %struct.vlc_h1_conn* %94, i32 0, i32 3
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 0
  %97 = load i32*, i32** %96, align 8
  %98 = call %struct.vlc_http_stream* @vlc_chunked_open(%struct.vlc_http_stream* %93, i32* %97)
  store %struct.vlc_http_stream* %98, %struct.vlc_http_stream** %3, align 8
  %99 = load %struct.vlc_http_stream*, %struct.vlc_http_stream** %3, align 8
  %100 = icmp eq %struct.vlc_http_stream* %99, null
  %101 = zext i1 %100 to i32
  %102 = call i64 @unlikely(i32 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %109

104:                                              ; preds = %85
  %105 = load %struct.vlc_http_msg*, %struct.vlc_http_msg** %5, align 8
  %106 = call i32 @vlc_http_msg_destroy(%struct.vlc_http_msg* %105)
  %107 = load %struct.vlc_h1_conn*, %struct.vlc_h1_conn** %4, align 8
  %108 = call %struct.vlc_http_msg* @vlc_h1_stream_fatal(%struct.vlc_h1_conn* %107)
  store %struct.vlc_http_msg* %108, %struct.vlc_http_msg** %2, align 8
  br label %119

109:                                              ; preds = %85
  br label %110

110:                                              ; preds = %109, %71
  br label %114

111:                                              ; preds = %51
  %112 = load %struct.vlc_h1_conn*, %struct.vlc_h1_conn** %4, align 8
  %113 = getelementptr inbounds %struct.vlc_h1_conn, %struct.vlc_h1_conn* %112, i32 0, i32 2
  store i32 1, i32* %113, align 8
  br label %114

114:                                              ; preds = %111, %110
  %115 = load %struct.vlc_http_msg*, %struct.vlc_http_msg** %5, align 8
  %116 = load %struct.vlc_http_stream*, %struct.vlc_http_stream** %3, align 8
  %117 = call i32 @vlc_http_msg_attach(%struct.vlc_http_msg* %115, %struct.vlc_http_stream* %116)
  %118 = load %struct.vlc_http_msg*, %struct.vlc_http_msg** %5, align 8
  store %struct.vlc_http_msg* %118, %struct.vlc_http_msg** %2, align 8
  br label %119

119:                                              ; preds = %114, %104, %80, %48, %30, %21
  %120 = load %struct.vlc_http_msg*, %struct.vlc_http_msg** %2, align 8
  ret %struct.vlc_http_msg* %120
}

declare dso_local %struct.vlc_h1_conn* @vlc_h1_stream_conn(%struct.vlc_http_stream*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i8* @vlc_https_headers_recv(i32*, i64*) #1

declare dso_local %struct.vlc_http_msg* @vlc_h1_stream_fatal(%struct.vlc_h1_conn*) #1

declare dso_local i32 @vlc_http_dbg(i32, i8*, i32, i8*) #1

declare dso_local i32 @CO(%struct.vlc_h1_conn*) #1

declare dso_local %struct.vlc_http_msg* @vlc_http_msg_headers(i8*) #1

declare dso_local i32 @vlc_http_minor(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @vlc_http_msg_get_size(%struct.vlc_http_msg*) #1

declare dso_local i8* @vlc_http_msg_get_token(%struct.vlc_http_msg*, i8*, i8*) #1

declare dso_local i32* @vlc_http_next_token(i8*) #1

declare dso_local i32 @vlc_http_msg_destroy(%struct.vlc_http_msg*) #1

declare dso_local %struct.vlc_http_stream* @vlc_chunked_open(%struct.vlc_http_stream*, i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @vlc_http_msg_attach(%struct.vlc_http_msg*, %struct.vlc_http_stream*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
