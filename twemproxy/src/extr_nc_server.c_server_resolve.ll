; ModuleID = '/home/carl/AnghaBench/twemproxy/src/extr_nc_server.c_server_resolve.c'
source_filename = "/home/carl/AnghaBench/twemproxy/src/extr_nc_server.c_server_resolve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.server = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.conn = type { i32, %struct.sockaddr*, i32, i32, i32 }
%struct.sockaddr = type { i32 }

@NC_OK = common dso_local global i64 0, align 8
@EHOSTDOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.server*, %struct.conn*)* @server_resolve to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @server_resolve(%struct.server* %0, %struct.conn* %1) #0 {
  %3 = alloca %struct.server*, align 8
  %4 = alloca %struct.conn*, align 8
  %5 = alloca i64, align 8
  store %struct.server* %0, %struct.server** %3, align 8
  store %struct.conn* %1, %struct.conn** %4, align 8
  %6 = load %struct.server*, %struct.server** %3, align 8
  %7 = getelementptr inbounds %struct.server, %struct.server* %6, i32 0, i32 2
  %8 = load %struct.server*, %struct.server** %3, align 8
  %9 = getelementptr inbounds %struct.server, %struct.server* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.server*, %struct.server** %3, align 8
  %12 = getelementptr inbounds %struct.server, %struct.server* %11, i32 0, i32 0
  %13 = call i64 @nc_resolve(i32* %7, i32 %10, %struct.TYPE_2__* %12)
  store i64 %13, i64* %5, align 8
  %14 = load i64, i64* %5, align 8
  %15 = load i64, i64* @NC_OK, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %23

17:                                               ; preds = %2
  %18 = load i32, i32* @EHOSTDOWN, align 4
  %19 = load %struct.conn*, %struct.conn** %4, align 8
  %20 = getelementptr inbounds %struct.conn, %struct.conn* %19, i32 0, i32 4
  store i32 %18, i32* %20, align 8
  %21 = load %struct.conn*, %struct.conn** %4, align 8
  %22 = getelementptr inbounds %struct.conn, %struct.conn* %21, i32 0, i32 0
  store i32 1, i32* %22, align 8
  br label %42

23:                                               ; preds = %2
  %24 = load %struct.server*, %struct.server** %3, align 8
  %25 = getelementptr inbounds %struct.server, %struct.server* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.conn*, %struct.conn** %4, align 8
  %29 = getelementptr inbounds %struct.conn, %struct.conn* %28, i32 0, i32 3
  store i32 %27, i32* %29, align 4
  %30 = load %struct.server*, %struct.server** %3, align 8
  %31 = getelementptr inbounds %struct.server, %struct.server* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.conn*, %struct.conn** %4, align 8
  %35 = getelementptr inbounds %struct.conn, %struct.conn* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 8
  %36 = load %struct.server*, %struct.server** %3, align 8
  %37 = getelementptr inbounds %struct.server, %struct.server* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = bitcast i32* %38 to %struct.sockaddr*
  %40 = load %struct.conn*, %struct.conn** %4, align 8
  %41 = getelementptr inbounds %struct.conn, %struct.conn* %40, i32 0, i32 1
  store %struct.sockaddr* %39, %struct.sockaddr** %41, align 8
  br label %42

42:                                               ; preds = %23, %17
  ret void
}

declare dso_local i64 @nc_resolve(i32*, i32, %struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
