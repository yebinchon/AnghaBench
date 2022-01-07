; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/http/extr_h1conn.c_vlc_h1_stream_read.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/http/extr_h1conn.c_vlc_h1_stream_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i32 }
%struct.vlc_http_stream = type { i32 }
%struct.vlc_h1_conn = type { i64, %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i32* }

@vlc_http_error = common dso_local global %struct.TYPE_8__* null, align 8
@UINTMAX_MAX = common dso_local global i64 0, align 8
@ECONNRESET = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_8__* (%struct.vlc_http_stream*)* @vlc_h1_stream_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_8__* @vlc_h1_stream_read(%struct.vlc_http_stream* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca %struct.vlc_http_stream*, align 8
  %4 = alloca %struct.vlc_h1_conn*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i64, align 8
  store %struct.vlc_http_stream* %0, %struct.vlc_http_stream** %3, align 8
  %8 = load %struct.vlc_http_stream*, %struct.vlc_http_stream** %3, align 8
  %9 = call %struct.vlc_h1_conn* @vlc_h1_stream_conn(%struct.vlc_http_stream* %8)
  store %struct.vlc_h1_conn* %9, %struct.vlc_h1_conn** %4, align 8
  store i64 2048, i64* %5, align 8
  %10 = load %struct.vlc_h1_conn*, %struct.vlc_h1_conn** %4, align 8
  %11 = getelementptr inbounds %struct.vlc_h1_conn, %struct.vlc_h1_conn* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @assert(i32 %12)
  %14 = load %struct.vlc_h1_conn*, %struct.vlc_h1_conn** %4, align 8
  %15 = getelementptr inbounds %struct.vlc_h1_conn, %struct.vlc_h1_conn* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** @vlc_http_error, align 8
  store %struct.TYPE_8__* %20, %struct.TYPE_8__** %2, align 8
  br label %91

21:                                               ; preds = %1
  %22 = load i64, i64* %5, align 8
  %23 = load %struct.vlc_h1_conn*, %struct.vlc_h1_conn** %4, align 8
  %24 = getelementptr inbounds %struct.vlc_h1_conn, %struct.vlc_h1_conn* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ugt i64 %22, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %21
  %28 = load %struct.vlc_h1_conn*, %struct.vlc_h1_conn** %4, align 8
  %29 = getelementptr inbounds %struct.vlc_h1_conn, %struct.vlc_h1_conn* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %5, align 8
  br label %31

31:                                               ; preds = %27, %21
  %32 = load i64, i64* %5, align 8
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %2, align 8
  br label %91

35:                                               ; preds = %31
  %36 = load i64, i64* %5, align 8
  %37 = call %struct.TYPE_8__* @block_Alloc(i64 %36)
  store %struct.TYPE_8__* %37, %struct.TYPE_8__** %6, align 8
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %39 = icmp eq %struct.TYPE_8__* %38, null
  %40 = zext i1 %39 to i32
  %41 = call i64 @unlikely(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %35
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** @vlc_http_error, align 8
  store %struct.TYPE_8__* %44, %struct.TYPE_8__** %2, align 8
  br label %91

45:                                               ; preds = %35
  %46 = load %struct.vlc_h1_conn*, %struct.vlc_h1_conn** %4, align 8
  %47 = getelementptr inbounds %struct.vlc_h1_conn, %struct.vlc_h1_conn* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = load i64, i64* %5, align 8
  %54 = call i64 @vlc_tls_Read(i32* %49, i32 %52, i64 %53, i32 0)
  store i64 %54, i64* %7, align 8
  %55 = load i64, i64* %7, align 8
  %56 = icmp sle i64 %55, 0
  br i1 %56, label %57, label %74

57:                                               ; preds = %45
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %59 = call i32 @block_Release(%struct.TYPE_8__* %58)
  %60 = load i64, i64* %7, align 8
  %61 = icmp slt i64 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %57
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** @vlc_http_error, align 8
  store %struct.TYPE_8__* %63, %struct.TYPE_8__** %2, align 8
  br label %91

64:                                               ; preds = %57
  %65 = load %struct.vlc_h1_conn*, %struct.vlc_h1_conn** %4, align 8
  %66 = getelementptr inbounds %struct.vlc_h1_conn, %struct.vlc_h1_conn* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @UINTMAX_MAX, align 8
  %69 = icmp ne i64 %67, %68
  br i1 %69, label %70, label %73

70:                                               ; preds = %64
  %71 = load i32, i32* @ECONNRESET, align 4
  store i32 %71, i32* @errno, align 4
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** @vlc_http_error, align 8
  store %struct.TYPE_8__* %72, %struct.TYPE_8__** %2, align 8
  br label %91

73:                                               ; preds = %64
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %2, align 8
  br label %91

74:                                               ; preds = %45
  %75 = load i64, i64* %7, align 8
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 0
  store i64 %75, i64* %77, align 8
  %78 = load %struct.vlc_h1_conn*, %struct.vlc_h1_conn** %4, align 8
  %79 = getelementptr inbounds %struct.vlc_h1_conn, %struct.vlc_h1_conn* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @UINTMAX_MAX, align 8
  %82 = icmp ne i64 %80, %81
  br i1 %82, label %83, label %89

83:                                               ; preds = %74
  %84 = load i64, i64* %7, align 8
  %85 = load %struct.vlc_h1_conn*, %struct.vlc_h1_conn** %4, align 8
  %86 = getelementptr inbounds %struct.vlc_h1_conn, %struct.vlc_h1_conn* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = sub i64 %87, %84
  store i64 %88, i64* %86, align 8
  br label %89

89:                                               ; preds = %83, %74
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  store %struct.TYPE_8__* %90, %struct.TYPE_8__** %2, align 8
  br label %91

91:                                               ; preds = %89, %73, %70, %62, %43, %34, %19
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  ret %struct.TYPE_8__* %92
}

declare dso_local %struct.vlc_h1_conn* @vlc_h1_stream_conn(%struct.vlc_http_stream*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.TYPE_8__* @block_Alloc(i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @vlc_tls_Read(i32*, i32, i64, i32) #1

declare dso_local i32 @block_Release(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
