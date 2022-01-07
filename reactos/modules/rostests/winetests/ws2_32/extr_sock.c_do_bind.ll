; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/ws2_32/extr_sock.c_do_bind.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/ws2_32/extr_sock.c_do_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i32 }

@BIND_TRIES = common dso_local global i32 0, align 4
@WSAEADDRINUSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"address in use, waiting ...\0A\00", align 1
@BIND_SLEEP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"failed to bind: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.sockaddr*, i32)* @do_bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_bind(i32 %0, %struct.sockaddr* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sockaddr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.sockaddr* %1, %struct.sockaddr** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %8, align 4
  %10 = load i32, i32* @BIND_TRIES, align 4
  store i32 %10, i32* %9, align 4
  br label %11

11:                                               ; preds = %27, %3
  %12 = load i32, i32* %4, align 4
  %13 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @bind(i32 %12, %struct.sockaddr* %13, i32 %14)
  store i32 %15, i32* %7, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %11
  %18 = call i32 (...) @WSAGetLastError()
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* @WSAEADDRINUSE, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %17
  %22 = load i32, i32* %9, align 4
  %23 = add nsw i32 %22, -1
  store i32 %23, i32* %9, align 4
  %24 = icmp sge i32 %22, 0
  br label %25

25:                                               ; preds = %21, %17, %11
  %26 = phi i1 [ false, %17 ], [ false, %11 ], [ %24, %21 ]
  br i1 %26, label %27, label %32

27:                                               ; preds = %25
  %28 = call i32 @trace(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* @BIND_SLEEP, align 4
  %30 = mul nsw i32 1000, %29
  %31 = call i32 @Sleep(i32 %30)
  br label %11

32:                                               ; preds = %25
  %33 = load i32, i32* %7, align 4
  %34 = icmp eq i32 %33, 0
  %35 = zext i1 %34 to i32
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @ok(i32 %35, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %36)
  ret void
}

declare dso_local i32 @bind(i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @WSAGetLastError(...) #1

declare dso_local i32 @trace(i8*) #1

declare dso_local i32 @Sleep(i32) #1

declare dso_local i32 @ok(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
