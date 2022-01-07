; ModuleID = '/home/carl/AnghaBench/twemproxy/src/extr_nc_proxy.c_proxy_reuse.c'
source_filename = "/home/carl/AnghaBench/twemproxy/src/extr_nc_proxy.c_proxy_reuse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.conn = type { i32, i64, i32 }
%struct.sockaddr_un = type { i32 }

@NC_OK = common dso_local global i32 0, align 4
@NC_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.conn*)* @proxy_reuse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @proxy_reuse(%struct.conn* %0) #0 {
  %2 = alloca %struct.conn*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.sockaddr_un*, align 8
  store %struct.conn* %0, %struct.conn** %2, align 8
  %5 = load %struct.conn*, %struct.conn** %2, align 8
  %6 = getelementptr inbounds %struct.conn, %struct.conn* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  switch i32 %7, label %23 [
    i32 130, label %8
    i32 129, label %8
    i32 128, label %13
  ]

8:                                                ; preds = %1, %1
  %9 = load %struct.conn*, %struct.conn** %2, align 8
  %10 = getelementptr inbounds %struct.conn, %struct.conn* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @nc_set_reuseaddr(i32 %11)
  store i32 %12, i32* %3, align 4
  br label %26

13:                                               ; preds = %1
  %14 = load %struct.conn*, %struct.conn** %2, align 8
  %15 = getelementptr inbounds %struct.conn, %struct.conn* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.sockaddr_un*
  store %struct.sockaddr_un* %17, %struct.sockaddr_un** %4, align 8
  %18 = load %struct.sockaddr_un*, %struct.sockaddr_un** %4, align 8
  %19 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @unlink(i32 %20)
  %22 = load i32, i32* @NC_OK, align 4
  store i32 %22, i32* %3, align 4
  br label %26

23:                                               ; preds = %1
  %24 = call i32 (...) @NOT_REACHED()
  %25 = load i32, i32* @NC_ERROR, align 4
  store i32 %25, i32* %3, align 4
  br label %26

26:                                               ; preds = %23, %13, %8
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

declare dso_local i32 @nc_set_reuseaddr(i32) #1

declare dso_local i32 @unlink(i32) #1

declare dso_local i32 @NOT_REACHED(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
