; ModuleID = '/home/carl/AnghaBench/skynet/skynet-src/extr_socket_server.c_socket_server_release.c'
source_filename = "/home/carl/AnghaBench/skynet/skynet-src/extr_socket_server.c_socket_server_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket_server = type { i32, i32, i32, %struct.socket* }
%struct.socket = type { i64, i32 }
%struct.socket_message = type { i32 }
%struct.socket_lock = type { i32 }

@MAX_SOCKET = common dso_local global i32 0, align 4
@SOCKET_TYPE_RESERVE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @socket_server_release(%struct.socket_server* %0) #0 {
  %2 = alloca %struct.socket_server*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.socket_message, align 4
  %5 = alloca %struct.socket*, align 8
  %6 = alloca %struct.socket_lock, align 4
  store %struct.socket_server* %0, %struct.socket_server** %2, align 8
  store i32 0, i32* %3, align 4
  br label %7

7:                                                ; preds = %33, %1
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @MAX_SOCKET, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %36

11:                                               ; preds = %7
  %12 = load %struct.socket_server*, %struct.socket_server** %2, align 8
  %13 = getelementptr inbounds %struct.socket_server, %struct.socket_server* %12, i32 0, i32 3
  %14 = load %struct.socket*, %struct.socket** %13, align 8
  %15 = load i32, i32* %3, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.socket, %struct.socket* %14, i64 %16
  store %struct.socket* %17, %struct.socket** %5, align 8
  %18 = load %struct.socket*, %struct.socket** %5, align 8
  %19 = call i32 @socket_lock_init(%struct.socket* %18, %struct.socket_lock* %6)
  %20 = load %struct.socket*, %struct.socket** %5, align 8
  %21 = getelementptr inbounds %struct.socket, %struct.socket* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @SOCKET_TYPE_RESERVE, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %11
  %26 = load %struct.socket_server*, %struct.socket_server** %2, align 8
  %27 = load %struct.socket*, %struct.socket** %5, align 8
  %28 = call i32 @force_close(%struct.socket_server* %26, %struct.socket* %27, %struct.socket_lock* %6, %struct.socket_message* %4)
  br label %29

29:                                               ; preds = %25, %11
  %30 = load %struct.socket*, %struct.socket** %5, align 8
  %31 = getelementptr inbounds %struct.socket, %struct.socket* %30, i32 0, i32 1
  %32 = call i32 @spinlock_destroy(i32* %31)
  br label %33

33:                                               ; preds = %29
  %34 = load i32, i32* %3, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %3, align 4
  br label %7

36:                                               ; preds = %7
  %37 = load %struct.socket_server*, %struct.socket_server** %2, align 8
  %38 = getelementptr inbounds %struct.socket_server, %struct.socket_server* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @close(i32 %39)
  %41 = load %struct.socket_server*, %struct.socket_server** %2, align 8
  %42 = getelementptr inbounds %struct.socket_server, %struct.socket_server* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @close(i32 %43)
  %45 = load %struct.socket_server*, %struct.socket_server** %2, align 8
  %46 = getelementptr inbounds %struct.socket_server, %struct.socket_server* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @sp_release(i32 %47)
  %49 = load %struct.socket_server*, %struct.socket_server** %2, align 8
  %50 = call i32 @FREE(%struct.socket_server* %49)
  ret void
}

declare dso_local i32 @socket_lock_init(%struct.socket*, %struct.socket_lock*) #1

declare dso_local i32 @force_close(%struct.socket_server*, %struct.socket*, %struct.socket_lock*, %struct.socket_message*) #1

declare dso_local i32 @spinlock_destroy(i32*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @sp_release(i32) #1

declare dso_local i32 @FREE(%struct.socket_server*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
