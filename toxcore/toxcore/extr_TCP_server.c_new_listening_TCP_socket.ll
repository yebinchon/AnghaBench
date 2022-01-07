; ModuleID = '/home/carl/AnghaBench/toxcore/toxcore/extr_TCP_server.c_new_listening_TCP_socket.c'
source_filename = "/home/carl/AnghaBench/toxcore/toxcore/extr_TCP_server.c_new_listening_TCP_socket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SOCK_STREAM = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i32 0, align 4
@TCP_MAX_BACKLOG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @new_listening_TCP_socket to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @new_listening_TCP_socket(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @SOCK_STREAM, align 4
  %10 = load i32, i32* @IPPROTO_TCP, align 4
  %11 = call i32 @socket(i32 %8, i32 %9, i32 %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @sock_valid(i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %58

16:                                               ; preds = %2
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @set_socket_nonblock(i32 %17)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %16
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @AF_INET6, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @set_socket_dualstack(i32 %26)
  store i32 %27, i32* %7, align 4
  br label %28

28:                                               ; preds = %25, %21, %16
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @set_socket_reuseaddr(i32 %32)
  store i32 %33, i32* %7, align 4
  br label %34

34:                                               ; preds = %31, %28
  %35 = load i32, i32* %7, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %48

37:                                               ; preds = %34
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* %5, align 4
  %41 = call i64 @bind_to_port(i32 %38, i32 %39, i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %37
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* @TCP_MAX_BACKLOG, align 4
  %46 = call i64 @listen(i32 %44, i32 %45)
  %47 = icmp eq i64 %46, 0
  br label %48

48:                                               ; preds = %43, %37, %34
  %49 = phi i1 [ false, %37 ], [ false, %34 ], [ %47, %43 ]
  %50 = zext i1 %49 to i32
  store i32 %50, i32* %7, align 4
  %51 = load i32, i32* %7, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %48
  %54 = load i32, i32* %6, align 4
  %55 = call i32 @kill_sock(i32 %54)
  store i32 -1, i32* %3, align 4
  br label %58

56:                                               ; preds = %48
  %57 = load i32, i32* %6, align 4
  store i32 %57, i32* %3, align 4
  br label %58

58:                                               ; preds = %56, %53, %15
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @sock_valid(i32) #1

declare dso_local i32 @set_socket_nonblock(i32) #1

declare dso_local i32 @set_socket_dualstack(i32) #1

declare dso_local i32 @set_socket_reuseaddr(i32) #1

declare dso_local i64 @bind_to_port(i32, i32, i32) #1

declare dso_local i64 @listen(i32, i32) #1

declare dso_local i32 @kill_sock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
