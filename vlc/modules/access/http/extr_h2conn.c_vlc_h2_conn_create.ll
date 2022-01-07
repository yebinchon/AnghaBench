; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/http/extr_h2conn.c_vlc_h2_conn_create.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/http/extr_h2conn.c_vlc_h2_conn_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlc_http_conn = type { %struct.vlc_tls*, i32* }
%struct.vlc_tls = type { i32 }
%struct.vlc_h2_conn = type { i32, i32, %struct.vlc_http_conn, i32*, i32, i32, i8*, i8*, i32*, i8* }

@vlc_h2_conn_callbacks = common dso_local global i32 0, align 4
@VLC_H2_DEFAULT_INIT_WINDOW = common dso_local global i8* null, align 8
@vlc_h2_recv_thread = common dso_local global i32 0, align 4
@VLC_THREAD_PRIORITY_INPUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.vlc_http_conn* @vlc_h2_conn_create(i8* %0, %struct.vlc_tls* %1) #0 {
  %3 = alloca %struct.vlc_http_conn*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.vlc_tls*, align 8
  %6 = alloca %struct.vlc_h2_conn*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.vlc_tls* %1, %struct.vlc_tls** %5, align 8
  %7 = call %struct.vlc_h2_conn* @malloc(i32 72)
  store %struct.vlc_h2_conn* %7, %struct.vlc_h2_conn** %6, align 8
  %8 = load %struct.vlc_h2_conn*, %struct.vlc_h2_conn** %6, align 8
  %9 = icmp eq %struct.vlc_h2_conn* %8, null
  %10 = zext i1 %9 to i32
  %11 = call i64 @unlikely(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store %struct.vlc_http_conn* null, %struct.vlc_http_conn** %3, align 8
  br label %79

14:                                               ; preds = %2
  %15 = load %struct.vlc_h2_conn*, %struct.vlc_h2_conn** %6, align 8
  %16 = getelementptr inbounds %struct.vlc_h2_conn, %struct.vlc_h2_conn* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.vlc_http_conn, %struct.vlc_http_conn* %16, i32 0, i32 1
  store i32* @vlc_h2_conn_callbacks, i32** %17, align 8
  %18 = load %struct.vlc_tls*, %struct.vlc_tls** %5, align 8
  %19 = load %struct.vlc_h2_conn*, %struct.vlc_h2_conn** %6, align 8
  %20 = getelementptr inbounds %struct.vlc_h2_conn, %struct.vlc_h2_conn* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.vlc_http_conn, %struct.vlc_http_conn* %20, i32 0, i32 0
  store %struct.vlc_tls* %18, %struct.vlc_tls** %21, align 8
  %22 = load %struct.vlc_tls*, %struct.vlc_tls** %5, align 8
  %23 = call i32* @vlc_h2_output_create(%struct.vlc_tls* %22, i32 1)
  %24 = load %struct.vlc_h2_conn*, %struct.vlc_h2_conn** %6, align 8
  %25 = getelementptr inbounds %struct.vlc_h2_conn, %struct.vlc_h2_conn* %24, i32 0, i32 3
  store i32* %23, i32** %25, align 8
  %26 = load i8*, i8** %4, align 8
  %27 = load %struct.vlc_h2_conn*, %struct.vlc_h2_conn** %6, align 8
  %28 = getelementptr inbounds %struct.vlc_h2_conn, %struct.vlc_h2_conn* %27, i32 0, i32 9
  store i8* %26, i8** %28, align 8
  %29 = load %struct.vlc_h2_conn*, %struct.vlc_h2_conn** %6, align 8
  %30 = getelementptr inbounds %struct.vlc_h2_conn, %struct.vlc_h2_conn* %29, i32 0, i32 8
  store i32* null, i32** %30, align 8
  %31 = load %struct.vlc_h2_conn*, %struct.vlc_h2_conn** %6, align 8
  %32 = getelementptr inbounds %struct.vlc_h2_conn, %struct.vlc_h2_conn* %31, i32 0, i32 0
  store i32 1, i32* %32, align 8
  %33 = load %struct.vlc_h2_conn*, %struct.vlc_h2_conn** %6, align 8
  %34 = getelementptr inbounds %struct.vlc_h2_conn, %struct.vlc_h2_conn* %33, i32 0, i32 1
  store i32 0, i32* %34, align 4
  %35 = load i8*, i8** @VLC_H2_DEFAULT_INIT_WINDOW, align 8
  %36 = load %struct.vlc_h2_conn*, %struct.vlc_h2_conn** %6, align 8
  %37 = getelementptr inbounds %struct.vlc_h2_conn, %struct.vlc_h2_conn* %36, i32 0, i32 7
  store i8* %35, i8** %37, align 8
  %38 = load i8*, i8** @VLC_H2_DEFAULT_INIT_WINDOW, align 8
  %39 = load %struct.vlc_h2_conn*, %struct.vlc_h2_conn** %6, align 8
  %40 = getelementptr inbounds %struct.vlc_h2_conn, %struct.vlc_h2_conn* %39, i32 0, i32 6
  store i8* %38, i8** %40, align 8
  %41 = load %struct.vlc_h2_conn*, %struct.vlc_h2_conn** %6, align 8
  %42 = getelementptr inbounds %struct.vlc_h2_conn, %struct.vlc_h2_conn* %41, i32 0, i32 3
  %43 = load i32*, i32** %42, align 8
  %44 = icmp eq i32* %43, null
  %45 = zext i1 %44 to i32
  %46 = call i64 @unlikely(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %14
  br label %76

49:                                               ; preds = %14
  %50 = load %struct.vlc_h2_conn*, %struct.vlc_h2_conn** %6, align 8
  %51 = getelementptr inbounds %struct.vlc_h2_conn, %struct.vlc_h2_conn* %50, i32 0, i32 4
  %52 = call i32 @vlc_mutex_init(i32* %51)
  %53 = load %struct.vlc_h2_conn*, %struct.vlc_h2_conn** %6, align 8
  %54 = call i32 (...) @vlc_h2_frame_settings()
  %55 = call i64 @vlc_h2_conn_queue(%struct.vlc_h2_conn* %53, i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %65, label %57

57:                                               ; preds = %49
  %58 = load %struct.vlc_h2_conn*, %struct.vlc_h2_conn** %6, align 8
  %59 = getelementptr inbounds %struct.vlc_h2_conn, %struct.vlc_h2_conn* %58, i32 0, i32 5
  %60 = load i32, i32* @vlc_h2_recv_thread, align 4
  %61 = load %struct.vlc_h2_conn*, %struct.vlc_h2_conn** %6, align 8
  %62 = load i32, i32* @VLC_THREAD_PRIORITY_INPUT, align 4
  %63 = call i64 @vlc_clone(i32* %59, i32 %60, %struct.vlc_h2_conn* %61, i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %73

65:                                               ; preds = %57, %49
  %66 = load %struct.vlc_h2_conn*, %struct.vlc_h2_conn** %6, align 8
  %67 = getelementptr inbounds %struct.vlc_h2_conn, %struct.vlc_h2_conn* %66, i32 0, i32 4
  %68 = call i32 @vlc_mutex_destroy(i32* %67)
  %69 = load %struct.vlc_h2_conn*, %struct.vlc_h2_conn** %6, align 8
  %70 = getelementptr inbounds %struct.vlc_h2_conn, %struct.vlc_h2_conn* %69, i32 0, i32 3
  %71 = load i32*, i32** %70, align 8
  %72 = call i32 @vlc_h2_output_destroy(i32* %71)
  br label %76

73:                                               ; preds = %57
  %74 = load %struct.vlc_h2_conn*, %struct.vlc_h2_conn** %6, align 8
  %75 = getelementptr inbounds %struct.vlc_h2_conn, %struct.vlc_h2_conn* %74, i32 0, i32 2
  store %struct.vlc_http_conn* %75, %struct.vlc_http_conn** %3, align 8
  br label %79

76:                                               ; preds = %65, %48
  %77 = load %struct.vlc_h2_conn*, %struct.vlc_h2_conn** %6, align 8
  %78 = call i32 @free(%struct.vlc_h2_conn* %77)
  store %struct.vlc_http_conn* null, %struct.vlc_http_conn** %3, align 8
  br label %79

79:                                               ; preds = %76, %73, %13
  %80 = load %struct.vlc_http_conn*, %struct.vlc_http_conn** %3, align 8
  ret %struct.vlc_http_conn* %80
}

declare dso_local %struct.vlc_h2_conn* @malloc(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32* @vlc_h2_output_create(%struct.vlc_tls*, i32) #1

declare dso_local i32 @vlc_mutex_init(i32*) #1

declare dso_local i64 @vlc_h2_conn_queue(%struct.vlc_h2_conn*, i32) #1

declare dso_local i32 @vlc_h2_frame_settings(...) #1

declare dso_local i64 @vlc_clone(i32*, i32, %struct.vlc_h2_conn*, i32) #1

declare dso_local i32 @vlc_mutex_destroy(i32*) #1

declare dso_local i32 @vlc_h2_output_destroy(i32*) #1

declare dso_local i32 @free(%struct.vlc_h2_conn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
