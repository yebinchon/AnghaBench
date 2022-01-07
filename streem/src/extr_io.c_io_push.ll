; ModuleID = '/home/carl/AnghaBench/streem/src/extr_io.c_io_push.c'
source_filename = "/home/carl/AnghaBench/streem/src/extr_io.c_io_push.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.epoll_event = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@EPOLLIN = common dso_local global i32 0, align 4
@EPOLLONESHOT = common dso_local global i32 0, align 4
@epoll_fd = common dso_local global i32 0, align 4
@EPOLL_CTL_ADD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i32)* @io_push to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @io_push(i32 %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.epoll_event, align 4
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = bitcast %struct.epoll_event* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %8, i8 0, i64 12, i1 false)
  %9 = load i32, i32* @EPOLLIN, align 4
  %10 = load i32, i32* @EPOLLONESHOT, align 4
  %11 = or i32 %9, %10
  %12 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %7, i32 0, i32 0
  store i32 %11, i32* %12, align 4
  %13 = load i32*, i32** %5, align 8
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @io_task(i32* %13, i32 %14)
  %16 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %7, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  %18 = load i32, i32* @epoll_fd, align 4
  %19 = load i32, i32* @EPOLL_CTL_ADD, align 4
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @epoll_ctl(i32 %18, i32 %19, i32 %20, %struct.epoll_event* %7)
  ret i32 %21
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @io_task(i32*, i32) #2

declare dso_local i32 @epoll_ctl(i32, i32, i32, %struct.epoll_event*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
