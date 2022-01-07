; ModuleID = '/home/carl/AnghaBench/twemproxy/src/extr_nc_server.c_server_each_disconnect.c'
source_filename = "/home/carl/AnghaBench/twemproxy/src/extr_nc_server.c_server_each_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.server = type { i64, i32, %struct.server_pool* }
%struct.server_pool = type { i32 }
%struct.conn = type { i32 (i32, %struct.conn*)* }

@NC_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @server_each_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @server_each_disconnect(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.server*, align 8
  %6 = alloca %struct.server_pool*, align 8
  %7 = alloca %struct.conn*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = bitcast i8* %8 to %struct.server*
  store %struct.server* %9, %struct.server** %5, align 8
  %10 = load %struct.server*, %struct.server** %5, align 8
  %11 = getelementptr inbounds %struct.server, %struct.server* %10, i32 0, i32 2
  %12 = load %struct.server_pool*, %struct.server_pool** %11, align 8
  store %struct.server_pool* %12, %struct.server_pool** %6, align 8
  br label %13

13:                                               ; preds = %19, %2
  %14 = load %struct.server*, %struct.server** %5, align 8
  %15 = getelementptr inbounds %struct.server, %struct.server* %14, i32 0, i32 1
  %16 = call i32 @TAILQ_EMPTY(i32* %15)
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  br i1 %18, label %19, label %37

19:                                               ; preds = %13
  %20 = load %struct.server*, %struct.server** %5, align 8
  %21 = getelementptr inbounds %struct.server, %struct.server* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp sgt i64 %22, 0
  %24 = zext i1 %23 to i32
  %25 = call i32 @ASSERT(i32 %24)
  %26 = load %struct.server*, %struct.server** %5, align 8
  %27 = getelementptr inbounds %struct.server, %struct.server* %26, i32 0, i32 1
  %28 = call %struct.conn* @TAILQ_FIRST(i32* %27)
  store %struct.conn* %28, %struct.conn** %7, align 8
  %29 = load %struct.conn*, %struct.conn** %7, align 8
  %30 = getelementptr inbounds %struct.conn, %struct.conn* %29, i32 0, i32 0
  %31 = load i32 (i32, %struct.conn*)*, i32 (i32, %struct.conn*)** %30, align 8
  %32 = load %struct.server_pool*, %struct.server_pool** %6, align 8
  %33 = getelementptr inbounds %struct.server_pool, %struct.server_pool* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.conn*, %struct.conn** %7, align 8
  %36 = call i32 %31(i32 %34, %struct.conn* %35)
  br label %13

37:                                               ; preds = %13
  %38 = load i32, i32* @NC_OK, align 4
  ret i32 %38
}

declare dso_local i32 @TAILQ_EMPTY(i32*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local %struct.conn* @TAILQ_FIRST(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
