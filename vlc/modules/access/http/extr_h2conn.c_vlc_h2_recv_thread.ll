; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/http/extr_h2conn.c_vlc_h2_recv_thread.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/http/extr_h2conn.c_vlc_h2_recv_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlc_h2_conn = type { i32, %struct.vlc_h2_stream*, %struct.TYPE_2__ }
%struct.vlc_h2_stream = type { %struct.vlc_h2_stream* }
%struct.TYPE_2__ = type { i32 }
%struct.vlc_h2_frame = type { i32 }
%struct.vlc_h2_parser = type { i32 }

@vlc_h2_parser_callbacks = common dso_local global i32 0, align 4
@cleanup_parser = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"connection shutdown\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"in\00", align 1
@VLC_H2_CANCEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @vlc_h2_recv_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @vlc_h2_recv_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.vlc_h2_conn*, align 8
  %4 = alloca %struct.vlc_h2_frame*, align 8
  %5 = alloca %struct.vlc_h2_parser*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.vlc_h2_stream*, align 8
  store i8* %0, i8** %2, align 8
  %9 = load i8*, i8** %2, align 8
  %10 = bitcast i8* %9 to %struct.vlc_h2_conn*
  store %struct.vlc_h2_conn* %10, %struct.vlc_h2_conn** %3, align 8
  %11 = call i32 (...) @vlc_savecancel()
  store i32 %11, i32* %6, align 4
  %12 = load %struct.vlc_h2_conn*, %struct.vlc_h2_conn** %3, align 8
  %13 = call %struct.vlc_h2_parser* @vlc_h2_parse_init(%struct.vlc_h2_conn* %12, i32* @vlc_h2_parser_callbacks)
  store %struct.vlc_h2_parser* %13, %struct.vlc_h2_parser** %5, align 8
  %14 = load %struct.vlc_h2_parser*, %struct.vlc_h2_parser** %5, align 8
  %15 = icmp eq %struct.vlc_h2_parser* %14, null
  %16 = zext i1 %15 to i32
  %17 = call i64 @unlikely(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  br label %60

20:                                               ; preds = %1
  %21 = load i32, i32* @cleanup_parser, align 4
  %22 = load %struct.vlc_h2_parser*, %struct.vlc_h2_parser** %5, align 8
  %23 = call i32 @vlc_cleanup_push(i32 %21, %struct.vlc_h2_parser* %22)
  br label %24

24:                                               ; preds = %53, %20
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @vlc_restorecancel(i32 %25)
  %27 = load %struct.vlc_h2_conn*, %struct.vlc_h2_conn** %3, align 8
  %28 = getelementptr inbounds %struct.vlc_h2_conn, %struct.vlc_h2_conn* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call %struct.vlc_h2_frame* @vlc_h2_frame_recv(i32 %30)
  store %struct.vlc_h2_frame* %31, %struct.vlc_h2_frame** %4, align 8
  %32 = call i32 (...) @vlc_savecancel()
  store i32 %32, i32* %6, align 4
  %33 = load %struct.vlc_h2_frame*, %struct.vlc_h2_frame** %4, align 8
  %34 = icmp eq %struct.vlc_h2_frame* %33, null
  br i1 %34, label %35, label %39

35:                                               ; preds = %24
  %36 = load %struct.vlc_h2_conn*, %struct.vlc_h2_conn** %3, align 8
  %37 = call i32 @CO(%struct.vlc_h2_conn* %36)
  %38 = call i32 @vlc_http_dbg(i32 %37, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %56

39:                                               ; preds = %24
  %40 = load %struct.vlc_h2_conn*, %struct.vlc_h2_conn** %3, align 8
  %41 = call i32 @CO(%struct.vlc_h2_conn* %40)
  %42 = load %struct.vlc_h2_frame*, %struct.vlc_h2_frame** %4, align 8
  %43 = call i32 @vlc_h2_frame_dump(i32 %41, %struct.vlc_h2_frame* %42, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %44 = load %struct.vlc_h2_conn*, %struct.vlc_h2_conn** %3, align 8
  %45 = getelementptr inbounds %struct.vlc_h2_conn, %struct.vlc_h2_conn* %44, i32 0, i32 0
  %46 = call i32 @vlc_mutex_lock(i32* %45)
  %47 = load %struct.vlc_h2_parser*, %struct.vlc_h2_parser** %5, align 8
  %48 = load %struct.vlc_h2_frame*, %struct.vlc_h2_frame** %4, align 8
  %49 = call i32 @vlc_h2_parse(%struct.vlc_h2_parser* %47, %struct.vlc_h2_frame* %48)
  store i32 %49, i32* %7, align 4
  %50 = load %struct.vlc_h2_conn*, %struct.vlc_h2_conn** %3, align 8
  %51 = getelementptr inbounds %struct.vlc_h2_conn, %struct.vlc_h2_conn* %50, i32 0, i32 0
  %52 = call i32 @vlc_mutex_unlock(i32* %51)
  br label %53

53:                                               ; preds = %39
  %54 = load i32, i32* %7, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %24, label %56

56:                                               ; preds = %53, %35
  %57 = call i32 (...) @vlc_cleanup_pop()
  %58 = load %struct.vlc_h2_parser*, %struct.vlc_h2_parser** %5, align 8
  %59 = call i32 @vlc_h2_parse_destroy(%struct.vlc_h2_parser* %58)
  br label %60

60:                                               ; preds = %56, %19
  %61 = load %struct.vlc_h2_conn*, %struct.vlc_h2_conn** %3, align 8
  %62 = getelementptr inbounds %struct.vlc_h2_conn, %struct.vlc_h2_conn* %61, i32 0, i32 0
  %63 = call i32 @vlc_mutex_lock(i32* %62)
  %64 = load %struct.vlc_h2_conn*, %struct.vlc_h2_conn** %3, align 8
  %65 = getelementptr inbounds %struct.vlc_h2_conn, %struct.vlc_h2_conn* %64, i32 0, i32 1
  %66 = load %struct.vlc_h2_stream*, %struct.vlc_h2_stream** %65, align 8
  store %struct.vlc_h2_stream* %66, %struct.vlc_h2_stream** %8, align 8
  br label %67

67:                                               ; preds = %74, %60
  %68 = load %struct.vlc_h2_stream*, %struct.vlc_h2_stream** %8, align 8
  %69 = icmp ne %struct.vlc_h2_stream* %68, null
  br i1 %69, label %70, label %78

70:                                               ; preds = %67
  %71 = load %struct.vlc_h2_stream*, %struct.vlc_h2_stream** %8, align 8
  %72 = load i32, i32* @VLC_H2_CANCEL, align 4
  %73 = call i32 @vlc_h2_stream_reset(%struct.vlc_h2_stream* %71, i32 %72)
  br label %74

74:                                               ; preds = %70
  %75 = load %struct.vlc_h2_stream*, %struct.vlc_h2_stream** %8, align 8
  %76 = getelementptr inbounds %struct.vlc_h2_stream, %struct.vlc_h2_stream* %75, i32 0, i32 0
  %77 = load %struct.vlc_h2_stream*, %struct.vlc_h2_stream** %76, align 8
  store %struct.vlc_h2_stream* %77, %struct.vlc_h2_stream** %8, align 8
  br label %67

78:                                               ; preds = %67
  %79 = load %struct.vlc_h2_conn*, %struct.vlc_h2_conn** %3, align 8
  %80 = getelementptr inbounds %struct.vlc_h2_conn, %struct.vlc_h2_conn* %79, i32 0, i32 0
  %81 = call i32 @vlc_mutex_unlock(i32* %80)
  ret i8* null
}

declare dso_local i32 @vlc_savecancel(...) #1

declare dso_local %struct.vlc_h2_parser* @vlc_h2_parse_init(%struct.vlc_h2_conn*, i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @vlc_cleanup_push(i32, %struct.vlc_h2_parser*) #1

declare dso_local i32 @vlc_restorecancel(i32) #1

declare dso_local %struct.vlc_h2_frame* @vlc_h2_frame_recv(i32) #1

declare dso_local i32 @vlc_http_dbg(i32, i8*) #1

declare dso_local i32 @CO(%struct.vlc_h2_conn*) #1

declare dso_local i32 @vlc_h2_frame_dump(i32, %struct.vlc_h2_frame*, i8*) #1

declare dso_local i32 @vlc_mutex_lock(i32*) #1

declare dso_local i32 @vlc_h2_parse(%struct.vlc_h2_parser*, %struct.vlc_h2_frame*) #1

declare dso_local i32 @vlc_mutex_unlock(i32*) #1

declare dso_local i32 @vlc_cleanup_pop(...) #1

declare dso_local i32 @vlc_h2_parse_destroy(%struct.vlc_h2_parser*) #1

declare dso_local i32 @vlc_h2_stream_reset(%struct.vlc_h2_stream*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
