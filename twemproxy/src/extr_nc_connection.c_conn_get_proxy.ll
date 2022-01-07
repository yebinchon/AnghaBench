; ModuleID = '/home/carl/AnghaBench/twemproxy/src/extr_nc_connection.c_conn_get_proxy.c'
source_filename = "/home/carl/AnghaBench/twemproxy/src/extr_nc_connection.c_conn_get_proxy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.conn = type { i32, i32 (%struct.conn*, i8*)*, i32*, i32*, i32*, i32*, i32, i32*, i32, i32*, i32*, i32*, i32*, i32*, i32, i32 }
%struct.server_pool = type { i32 }

@proxy_recv = common dso_local global i32 0, align 4
@proxy_close = common dso_local global i32 0, align 4
@proxy_unref = common dso_local global i32 0, align 4
@LOG_VVERB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"get conn %p proxy %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.conn* @conn_get_proxy(i8* %0) #0 {
  %2 = alloca %struct.conn*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.server_pool*, align 8
  %5 = alloca %struct.conn*, align 8
  store i8* %0, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.server_pool*
  store %struct.server_pool* %7, %struct.server_pool** %4, align 8
  %8 = call %struct.conn* (...) @_conn_get()
  store %struct.conn* %8, %struct.conn** %5, align 8
  %9 = load %struct.conn*, %struct.conn** %5, align 8
  %10 = icmp eq %struct.conn* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store %struct.conn* null, %struct.conn** %2, align 8
  br label %64

12:                                               ; preds = %1
  %13 = load %struct.server_pool*, %struct.server_pool** %4, align 8
  %14 = getelementptr inbounds %struct.server_pool, %struct.server_pool* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.conn*, %struct.conn** %5, align 8
  %17 = getelementptr inbounds %struct.conn, %struct.conn* %16, i32 0, i32 15
  store i32 %15, i32* %17, align 4
  %18 = load %struct.conn*, %struct.conn** %5, align 8
  %19 = getelementptr inbounds %struct.conn, %struct.conn* %18, i32 0, i32 0
  store i32 1, i32* %19, align 8
  %20 = load i32, i32* @proxy_recv, align 4
  %21 = load %struct.conn*, %struct.conn** %5, align 8
  %22 = getelementptr inbounds %struct.conn, %struct.conn* %21, i32 0, i32 14
  store i32 %20, i32* %22, align 8
  %23 = load %struct.conn*, %struct.conn** %5, align 8
  %24 = getelementptr inbounds %struct.conn, %struct.conn* %23, i32 0, i32 13
  store i32* null, i32** %24, align 8
  %25 = load %struct.conn*, %struct.conn** %5, align 8
  %26 = getelementptr inbounds %struct.conn, %struct.conn* %25, i32 0, i32 12
  store i32* null, i32** %26, align 8
  %27 = load %struct.conn*, %struct.conn** %5, align 8
  %28 = getelementptr inbounds %struct.conn, %struct.conn* %27, i32 0, i32 11
  store i32* null, i32** %28, align 8
  %29 = load %struct.conn*, %struct.conn** %5, align 8
  %30 = getelementptr inbounds %struct.conn, %struct.conn* %29, i32 0, i32 10
  store i32* null, i32** %30, align 8
  %31 = load %struct.conn*, %struct.conn** %5, align 8
  %32 = getelementptr inbounds %struct.conn, %struct.conn* %31, i32 0, i32 9
  store i32* null, i32** %32, align 8
  %33 = load i32, i32* @proxy_close, align 4
  %34 = load %struct.conn*, %struct.conn** %5, align 8
  %35 = getelementptr inbounds %struct.conn, %struct.conn* %34, i32 0, i32 8
  store i32 %33, i32* %35, align 8
  %36 = load %struct.conn*, %struct.conn** %5, align 8
  %37 = getelementptr inbounds %struct.conn, %struct.conn* %36, i32 0, i32 7
  store i32* null, i32** %37, align 8
  %38 = load %struct.conn*, %struct.conn** %5, align 8
  %39 = getelementptr inbounds %struct.conn, %struct.conn* %38, i32 0, i32 1
  store i32 (%struct.conn*, i8*)* @proxy_ref, i32 (%struct.conn*, i8*)** %39, align 8
  %40 = load i32, i32* @proxy_unref, align 4
  %41 = load %struct.conn*, %struct.conn** %5, align 8
  %42 = getelementptr inbounds %struct.conn, %struct.conn* %41, i32 0, i32 6
  store i32 %40, i32* %42, align 8
  %43 = load %struct.conn*, %struct.conn** %5, align 8
  %44 = getelementptr inbounds %struct.conn, %struct.conn* %43, i32 0, i32 5
  store i32* null, i32** %44, align 8
  %45 = load %struct.conn*, %struct.conn** %5, align 8
  %46 = getelementptr inbounds %struct.conn, %struct.conn* %45, i32 0, i32 4
  store i32* null, i32** %46, align 8
  %47 = load %struct.conn*, %struct.conn** %5, align 8
  %48 = getelementptr inbounds %struct.conn, %struct.conn* %47, i32 0, i32 3
  store i32* null, i32** %48, align 8
  %49 = load %struct.conn*, %struct.conn** %5, align 8
  %50 = getelementptr inbounds %struct.conn, %struct.conn* %49, i32 0, i32 2
  store i32* null, i32** %50, align 8
  %51 = load %struct.conn*, %struct.conn** %5, align 8
  %52 = getelementptr inbounds %struct.conn, %struct.conn* %51, i32 0, i32 1
  %53 = load i32 (%struct.conn*, i8*)*, i32 (%struct.conn*, i8*)** %52, align 8
  %54 = load %struct.conn*, %struct.conn** %5, align 8
  %55 = load i8*, i8** %3, align 8
  %56 = call i32 %53(%struct.conn* %54, i8* %55)
  %57 = load i32, i32* @LOG_VVERB, align 4
  %58 = load %struct.conn*, %struct.conn** %5, align 8
  %59 = load %struct.conn*, %struct.conn** %5, align 8
  %60 = getelementptr inbounds %struct.conn, %struct.conn* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @log_debug(i32 %57, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), %struct.conn* %58, i32 %61)
  %63 = load %struct.conn*, %struct.conn** %5, align 8
  store %struct.conn* %63, %struct.conn** %2, align 8
  br label %64

64:                                               ; preds = %12, %11
  %65 = load %struct.conn*, %struct.conn** %2, align 8
  ret %struct.conn* %65
}

declare dso_local %struct.conn* @_conn_get(...) #1

declare dso_local i32 @proxy_ref(%struct.conn*, i8*) #1

declare dso_local i32 @log_debug(i32, i8*, %struct.conn*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
