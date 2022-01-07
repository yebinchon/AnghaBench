; ModuleID = '/home/carl/AnghaBench/twemproxy/src/extr_nc_server.c_server_pool_conn.c'
source_filename = "/home/carl/AnghaBench/twemproxy/src/extr_nc_server.c_server_pool_conn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.conn = type { i32 }
%struct.context = type { i32 }
%struct.server_pool = type { i32 }
%struct.server = type { i32 }

@NC_OK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.conn* @server_pool_conn(%struct.context* %0, %struct.server_pool* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.conn*, align 8
  %6 = alloca %struct.context*, align 8
  %7 = alloca %struct.server_pool*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.server*, align 8
  %12 = alloca %struct.conn*, align 8
  store %struct.context* %0, %struct.context** %6, align 8
  store %struct.server_pool* %1, %struct.server_pool** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load %struct.server_pool*, %struct.server_pool** %7, align 8
  %14 = call i64 @server_pool_update(%struct.server_pool* %13)
  store i64 %14, i64* %10, align 8
  %15 = load i64, i64* %10, align 8
  %16 = load i64, i64* @NC_OK, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %4
  store %struct.conn* null, %struct.conn** %5, align 8
  br label %47

19:                                               ; preds = %4
  %20 = load %struct.server_pool*, %struct.server_pool** %7, align 8
  %21 = load i32*, i32** %8, align 8
  %22 = load i32, i32* %9, align 4
  %23 = call %struct.server* @server_pool_server(%struct.server_pool* %20, i32* %21, i32 %22)
  store %struct.server* %23, %struct.server** %11, align 8
  %24 = load %struct.server*, %struct.server** %11, align 8
  %25 = icmp eq %struct.server* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %19
  store %struct.conn* null, %struct.conn** %5, align 8
  br label %47

27:                                               ; preds = %19
  %28 = load %struct.server*, %struct.server** %11, align 8
  %29 = call %struct.conn* @server_conn(%struct.server* %28)
  store %struct.conn* %29, %struct.conn** %12, align 8
  %30 = load %struct.conn*, %struct.conn** %12, align 8
  %31 = icmp eq %struct.conn* %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  store %struct.conn* null, %struct.conn** %5, align 8
  br label %47

33:                                               ; preds = %27
  %34 = load %struct.context*, %struct.context** %6, align 8
  %35 = load %struct.server*, %struct.server** %11, align 8
  %36 = load %struct.conn*, %struct.conn** %12, align 8
  %37 = call i64 @server_connect(%struct.context* %34, %struct.server* %35, %struct.conn* %36)
  store i64 %37, i64* %10, align 8
  %38 = load i64, i64* %10, align 8
  %39 = load i64, i64* @NC_OK, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %33
  %42 = load %struct.context*, %struct.context** %6, align 8
  %43 = load %struct.conn*, %struct.conn** %12, align 8
  %44 = call i32 @server_close(%struct.context* %42, %struct.conn* %43)
  store %struct.conn* null, %struct.conn** %5, align 8
  br label %47

45:                                               ; preds = %33
  %46 = load %struct.conn*, %struct.conn** %12, align 8
  store %struct.conn* %46, %struct.conn** %5, align 8
  br label %47

47:                                               ; preds = %45, %41, %32, %26, %18
  %48 = load %struct.conn*, %struct.conn** %5, align 8
  ret %struct.conn* %48
}

declare dso_local i64 @server_pool_update(%struct.server_pool*) #1

declare dso_local %struct.server* @server_pool_server(%struct.server_pool*, i32*, i32) #1

declare dso_local %struct.conn* @server_conn(%struct.server*) #1

declare dso_local i64 @server_connect(%struct.context*, %struct.server*, %struct.conn*) #1

declare dso_local i32 @server_close(%struct.context*, %struct.conn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
