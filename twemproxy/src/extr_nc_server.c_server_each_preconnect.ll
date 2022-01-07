; ModuleID = '/home/carl/AnghaBench/twemproxy/src/extr_nc_server.c_server_each_preconnect.c'
source_filename = "/home/carl/AnghaBench/twemproxy/src/extr_nc_server.c_server_each_preconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.server = type { %struct.TYPE_2__, %struct.server_pool* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.server_pool = type { i32 }
%struct.conn = type { i32 }

@NC_ENOMEM = common dso_local global i64 0, align 8
@NC_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [45 x i8] c"connect to server '%.*s' failed, ignored: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i8*)* @server_each_preconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @server_each_preconnect(i8* %0, i8* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.server*, align 8
  %8 = alloca %struct.server_pool*, align 8
  %9 = alloca %struct.conn*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.server*
  store %struct.server* %11, %struct.server** %7, align 8
  %12 = load %struct.server*, %struct.server** %7, align 8
  %13 = getelementptr inbounds %struct.server, %struct.server* %12, i32 0, i32 1
  %14 = load %struct.server_pool*, %struct.server_pool** %13, align 8
  store %struct.server_pool* %14, %struct.server_pool** %8, align 8
  %15 = load %struct.server*, %struct.server** %7, align 8
  %16 = call %struct.conn* @server_conn(%struct.server* %15)
  store %struct.conn* %16, %struct.conn** %9, align 8
  %17 = load %struct.conn*, %struct.conn** %9, align 8
  %18 = icmp eq %struct.conn* %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i64, i64* @NC_ENOMEM, align 8
  store i64 %20, i64* %3, align 8
  br label %50

21:                                               ; preds = %2
  %22 = load %struct.server_pool*, %struct.server_pool** %8, align 8
  %23 = getelementptr inbounds %struct.server_pool, %struct.server_pool* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.server*, %struct.server** %7, align 8
  %26 = load %struct.conn*, %struct.conn** %9, align 8
  %27 = call i64 @server_connect(i32 %24, %struct.server* %25, %struct.conn* %26)
  store i64 %27, i64* %6, align 8
  %28 = load i64, i64* %6, align 8
  %29 = load i64, i64* @NC_OK, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %48

31:                                               ; preds = %21
  %32 = load %struct.server*, %struct.server** %7, align 8
  %33 = getelementptr inbounds %struct.server, %struct.server* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.server*, %struct.server** %7, align 8
  %37 = getelementptr inbounds %struct.server, %struct.server* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @errno, align 4
  %41 = call i32 @strerror(i32 %40)
  %42 = call i32 @log_warn(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %35, i32 %39, i32 %41)
  %43 = load %struct.server_pool*, %struct.server_pool** %8, align 8
  %44 = getelementptr inbounds %struct.server_pool, %struct.server_pool* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.conn*, %struct.conn** %9, align 8
  %47 = call i32 @server_close(i32 %45, %struct.conn* %46)
  br label %48

48:                                               ; preds = %31, %21
  %49 = load i64, i64* @NC_OK, align 8
  store i64 %49, i64* %3, align 8
  br label %50

50:                                               ; preds = %48, %19
  %51 = load i64, i64* %3, align 8
  ret i64 %51
}

declare dso_local %struct.conn* @server_conn(%struct.server*) #1

declare dso_local i64 @server_connect(i32, %struct.server*, %struct.conn*) #1

declare dso_local i32 @log_warn(i8*, i32, i32, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @server_close(i32, %struct.conn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
