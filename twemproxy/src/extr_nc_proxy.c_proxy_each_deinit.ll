; ModuleID = '/home/carl/AnghaBench/twemproxy/src/extr_nc_proxy.c_proxy_each_deinit.c'
source_filename = "/home/carl/AnghaBench/twemproxy/src/extr_nc_proxy.c_proxy_each_deinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.server_pool = type { i32, %struct.conn* }
%struct.conn = type { i32 (i32, %struct.conn*)* }

@NC_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @proxy_each_deinit(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.server_pool*, align 8
  %6 = alloca %struct.conn*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.server_pool*
  store %struct.server_pool* %8, %struct.server_pool** %5, align 8
  %9 = load %struct.server_pool*, %struct.server_pool** %5, align 8
  %10 = getelementptr inbounds %struct.server_pool, %struct.server_pool* %9, i32 0, i32 1
  %11 = load %struct.conn*, %struct.conn** %10, align 8
  store %struct.conn* %11, %struct.conn** %6, align 8
  %12 = load %struct.conn*, %struct.conn** %6, align 8
  %13 = icmp ne %struct.conn* %12, null
  br i1 %13, label %14, label %23

14:                                               ; preds = %2
  %15 = load %struct.conn*, %struct.conn** %6, align 8
  %16 = getelementptr inbounds %struct.conn, %struct.conn* %15, i32 0, i32 0
  %17 = load i32 (i32, %struct.conn*)*, i32 (i32, %struct.conn*)** %16, align 8
  %18 = load %struct.server_pool*, %struct.server_pool** %5, align 8
  %19 = getelementptr inbounds %struct.server_pool, %struct.server_pool* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.conn*, %struct.conn** %6, align 8
  %22 = call i32 %17(i32 %20, %struct.conn* %21)
  br label %23

23:                                               ; preds = %14, %2
  %24 = load i32, i32* @NC_OK, align 4
  ret i32 %24
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
