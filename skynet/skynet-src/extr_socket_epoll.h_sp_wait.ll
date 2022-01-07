; ModuleID = '/home/carl/AnghaBench/skynet/skynet-src/extr_socket_epoll.h_sp_wait.c'
source_filename = "/home/carl/AnghaBench/skynet/skynet-src/extr_socket_epoll.h_sp_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.event = type { i32, i32, i32, i32, i32 }
%struct.epoll_event = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@EPOLLOUT = common dso_local global i32 0, align 4
@EPOLLIN = common dso_local global i32 0, align 4
@EPOLLHUP = common dso_local global i32 0, align 4
@EPOLLERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.event*, i32)* @sp_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sp_wait(i32 %0, %struct.event* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.event*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.event* %1, %struct.event** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %7, align 8
  %15 = alloca %struct.epoll_event, i64 %13, align 16
  store i64 %13, i64* %8, align 8
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @epoll_wait(i32 %16, %struct.epoll_event* %15, i32 %17, i32 -1)
  store i32 %18, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %19

19:                                               ; preds = %77, %3
  %20 = load i32, i32* %10, align 4
  %21 = load i32, i32* %9, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %80

23:                                               ; preds = %19
  %24 = load i32, i32* %10, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %15, i64 %25
  %27 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.event*, %struct.event** %5, align 8
  %31 = load i32, i32* %10, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.event, %struct.event* %30, i64 %32
  %34 = getelementptr inbounds %struct.event, %struct.event* %33, i32 0, i32 4
  store i32 %29, i32* %34, align 4
  %35 = load i32, i32* %10, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %15, i64 %36
  %38 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  store i32 %39, i32* %11, align 4
  %40 = load i32, i32* %11, align 4
  %41 = load i32, i32* @EPOLLOUT, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  %44 = zext i1 %43 to i32
  %45 = load %struct.event*, %struct.event** %5, align 8
  %46 = load i32, i32* %10, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.event, %struct.event* %45, i64 %47
  %49 = getelementptr inbounds %struct.event, %struct.event* %48, i32 0, i32 0
  store i32 %44, i32* %49, align 4
  %50 = load i32, i32* %11, align 4
  %51 = load i32, i32* @EPOLLIN, align 4
  %52 = load i32, i32* @EPOLLHUP, align 4
  %53 = or i32 %51, %52
  %54 = and i32 %50, %53
  %55 = icmp ne i32 %54, 0
  %56 = zext i1 %55 to i32
  %57 = load %struct.event*, %struct.event** %5, align 8
  %58 = load i32, i32* %10, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.event, %struct.event* %57, i64 %59
  %61 = getelementptr inbounds %struct.event, %struct.event* %60, i32 0, i32 1
  store i32 %56, i32* %61, align 4
  %62 = load i32, i32* %11, align 4
  %63 = load i32, i32* @EPOLLERR, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  %66 = zext i1 %65 to i32
  %67 = load %struct.event*, %struct.event** %5, align 8
  %68 = load i32, i32* %10, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.event, %struct.event* %67, i64 %69
  %71 = getelementptr inbounds %struct.event, %struct.event* %70, i32 0, i32 2
  store i32 %66, i32* %71, align 4
  %72 = load %struct.event*, %struct.event** %5, align 8
  %73 = load i32, i32* %10, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.event, %struct.event* %72, i64 %74
  %76 = getelementptr inbounds %struct.event, %struct.event* %75, i32 0, i32 3
  store i32 0, i32* %76, align 4
  br label %77

77:                                               ; preds = %23
  %78 = load i32, i32* %10, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %10, align 4
  br label %19

80:                                               ; preds = %19
  %81 = load i32, i32* %9, align 4
  %82 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %82)
  ret i32 %81
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @epoll_wait(i32, %struct.epoll_event*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
