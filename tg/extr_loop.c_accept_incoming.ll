; ModuleID = '/home/carl/AnghaBench/tg/extr_loop.c_accept_incoming.c'
source_filename = "/home/carl/AnghaBench/tg/extr_loop.c_accept_incoming.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.sockaddr_in = type { i32 }
%struct.bufferevent = type { i32 }
%struct.in_ev = type { i32, i32, i64, i64, %struct.bufferevent* }
%struct.sockaddr = type { i32 }

@E_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Accepting incoming connection\0A\00", align 1
@TLS = common dso_local global %struct.TYPE_2__* null, align 8
@read_incoming = common dso_local global i32 0, align 4
@event_incoming = common dso_local global i32 0, align 4
@EV_READ = common dso_local global i32 0, align 4
@EV_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i16, i8*)* @accept_incoming to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @accept_incoming(i32 %0, i16 signext %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i16, align 2
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sockaddr_in, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.bufferevent*, align 8
  %11 = alloca %struct.in_ev*, align 8
  store i32 %0, i32* %4, align 4
  store i16 %1, i16* %5, align 2
  store i8* %2, i8** %6, align 8
  %12 = load i32, i32* @E_WARNING, align 4
  %13 = call i32 @vlogprintf(i32 %12, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  %14 = load i32, i32* %4, align 4
  %15 = bitcast %struct.sockaddr_in* %8 to %struct.sockaddr*
  %16 = call i32 @accept(i32 %14, %struct.sockaddr* %15, i32* %7)
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %9, align 4
  %18 = icmp sge i32 %17, 0
  %19 = zext i1 %18 to i32
  %20 = call i32 @assert(i32 %19)
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** @TLS, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %9, align 4
  %25 = call %struct.bufferevent* @bufferevent_socket_new(i32 %23, i32 %24, i32 0)
  store %struct.bufferevent* %25, %struct.bufferevent** %10, align 8
  %26 = call %struct.in_ev* @malloc(i32 32)
  store %struct.in_ev* %26, %struct.in_ev** %11, align 8
  %27 = load %struct.bufferevent*, %struct.bufferevent** %10, align 8
  %28 = load %struct.in_ev*, %struct.in_ev** %11, align 8
  %29 = getelementptr inbounds %struct.in_ev, %struct.in_ev* %28, i32 0, i32 4
  store %struct.bufferevent* %27, %struct.bufferevent** %29, align 8
  %30 = load %struct.in_ev*, %struct.in_ev** %11, align 8
  %31 = getelementptr inbounds %struct.in_ev, %struct.in_ev* %30, i32 0, i32 0
  store i32 1, i32* %31, align 8
  %32 = load %struct.in_ev*, %struct.in_ev** %11, align 8
  %33 = getelementptr inbounds %struct.in_ev, %struct.in_ev* %32, i32 0, i32 3
  store i64 0, i64* %33, align 8
  %34 = load %struct.in_ev*, %struct.in_ev** %11, align 8
  %35 = getelementptr inbounds %struct.in_ev, %struct.in_ev* %34, i32 0, i32 2
  store i64 0, i64* %35, align 8
  %36 = load i32, i32* %9, align 4
  %37 = load %struct.in_ev*, %struct.in_ev** %11, align 8
  %38 = getelementptr inbounds %struct.in_ev, %struct.in_ev* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  %39 = load %struct.bufferevent*, %struct.bufferevent** %10, align 8
  %40 = load i32, i32* @read_incoming, align 4
  %41 = load i32, i32* @event_incoming, align 4
  %42 = load %struct.in_ev*, %struct.in_ev** %11, align 8
  %43 = call i32 @bufferevent_setcb(%struct.bufferevent* %39, i32 %40, i32 0, i32 %41, %struct.in_ev* %42)
  %44 = load %struct.bufferevent*, %struct.bufferevent** %10, align 8
  %45 = load i32, i32* @EV_READ, align 4
  %46 = load i32, i32* @EV_WRITE, align 4
  %47 = or i32 %45, %46
  %48 = call i32 @bufferevent_enable(%struct.bufferevent* %44, i32 %47)
  ret void
}

declare dso_local i32 @vlogprintf(i32, i8*) #1

declare dso_local i32 @accept(i32, %struct.sockaddr*, i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.bufferevent* @bufferevent_socket_new(i32, i32, i32) #1

declare dso_local %struct.in_ev* @malloc(i32) #1

declare dso_local i32 @bufferevent_setcb(%struct.bufferevent*, i32, i32, i32, %struct.in_ev*) #1

declare dso_local i32 @bufferevent_enable(%struct.bufferevent*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
