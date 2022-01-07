; ModuleID = '/home/carl/AnghaBench/twemproxy/src/extr_nc_proxy.c_proxy_recv.c'
source_filename = "/home/carl/AnghaBench/twemproxy/src/extr_nc_proxy.c_proxy_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.context = type { i32 }
%struct.conn = type { i32, i32, i32, i64 }

@NC_OK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @proxy_recv(%struct.context* %0, %struct.conn* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.context*, align 8
  %5 = alloca %struct.conn*, align 8
  %6 = alloca i64, align 8
  store %struct.context* %0, %struct.context** %4, align 8
  store %struct.conn* %1, %struct.conn** %5, align 8
  %7 = load %struct.conn*, %struct.conn** %5, align 8
  %8 = getelementptr inbounds %struct.conn, %struct.conn* %7, i32 0, i32 3
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %2
  %12 = load %struct.conn*, %struct.conn** %5, align 8
  %13 = getelementptr inbounds %struct.conn, %struct.conn* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  br label %17

17:                                               ; preds = %11, %2
  %18 = phi i1 [ false, %2 ], [ %16, %11 ]
  %19 = zext i1 %18 to i32
  %20 = call i32 @ASSERT(i32 %19)
  %21 = load %struct.conn*, %struct.conn** %5, align 8
  %22 = getelementptr inbounds %struct.conn, %struct.conn* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @ASSERT(i32 %23)
  %25 = load %struct.conn*, %struct.conn** %5, align 8
  %26 = getelementptr inbounds %struct.conn, %struct.conn* %25, i32 0, i32 1
  store i32 1, i32* %26, align 4
  br label %27

27:                                               ; preds = %37, %17
  %28 = load %struct.context*, %struct.context** %4, align 8
  %29 = load %struct.conn*, %struct.conn** %5, align 8
  %30 = call i64 @proxy_accept(%struct.context* %28, %struct.conn* %29)
  store i64 %30, i64* %6, align 8
  %31 = load i64, i64* %6, align 8
  %32 = load i64, i64* @NC_OK, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %27
  %35 = load i64, i64* %6, align 8
  store i64 %35, i64* %3, align 8
  br label %44

36:                                               ; preds = %27
  br label %37

37:                                               ; preds = %36
  %38 = load %struct.conn*, %struct.conn** %5, align 8
  %39 = getelementptr inbounds %struct.conn, %struct.conn* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %27, label %42

42:                                               ; preds = %37
  %43 = load i64, i64* @NC_OK, align 8
  store i64 %43, i64* %3, align 8
  br label %44

44:                                               ; preds = %42, %34
  %45 = load i64, i64* %3, align 8
  ret i64 %45
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @proxy_accept(%struct.context*, %struct.conn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
