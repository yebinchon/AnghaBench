; ModuleID = '/home/carl/AnghaBench/skynet/skynet-src/extr_socket_server.c_reserve_id.c'
source_filename = "/home/carl/AnghaBench/skynet/skynet-src/extr_socket_server.c_reserve_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket_server = type { %struct.socket*, i32 }
%struct.socket = type { i64, i32, i32, i64, i32 }

@MAX_SOCKET = common dso_local global i32 0, align 4
@SOCKET_TYPE_INVALID = common dso_local global i64 0, align 8
@SOCKET_TYPE_RESERVE = common dso_local global i32 0, align 4
@PROTOCOL_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket_server*)* @reserve_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reserve_id(%struct.socket_server* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.socket_server*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.socket*, align 8
  store %struct.socket_server* %0, %struct.socket_server** %3, align 8
  store i32 0, i32* %4, align 4
  br label %7

7:                                                ; preds = %57, %1
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @MAX_SOCKET, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %60

11:                                               ; preds = %7
  %12 = load %struct.socket_server*, %struct.socket_server** %3, align 8
  %13 = getelementptr inbounds %struct.socket_server, %struct.socket_server* %12, i32 0, i32 1
  %14 = call i32 @ATOM_INC(i32* %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %11
  %18 = load %struct.socket_server*, %struct.socket_server** %3, align 8
  %19 = getelementptr inbounds %struct.socket_server, %struct.socket_server* %18, i32 0, i32 1
  %20 = call i32 @ATOM_AND(i32* %19, i32 2147483647)
  store i32 %20, i32* %5, align 4
  br label %21

21:                                               ; preds = %17, %11
  %22 = load %struct.socket_server*, %struct.socket_server** %3, align 8
  %23 = getelementptr inbounds %struct.socket_server, %struct.socket_server* %22, i32 0, i32 0
  %24 = load %struct.socket*, %struct.socket** %23, align 8
  %25 = load i32, i32* %5, align 4
  %26 = call i64 @HASH_ID(i32 %25)
  %27 = getelementptr inbounds %struct.socket, %struct.socket* %24, i64 %26
  store %struct.socket* %27, %struct.socket** %6, align 8
  %28 = load %struct.socket*, %struct.socket** %6, align 8
  %29 = getelementptr inbounds %struct.socket, %struct.socket* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @SOCKET_TYPE_INVALID, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %56

33:                                               ; preds = %21
  %34 = load %struct.socket*, %struct.socket** %6, align 8
  %35 = getelementptr inbounds %struct.socket, %struct.socket* %34, i32 0, i32 0
  %36 = load i64, i64* @SOCKET_TYPE_INVALID, align 8
  %37 = load i32, i32* @SOCKET_TYPE_RESERVE, align 4
  %38 = call i64 @ATOM_CAS(i64* %35, i64 %36, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %52

40:                                               ; preds = %33
  %41 = load i32, i32* %5, align 4
  %42 = load %struct.socket*, %struct.socket** %6, align 8
  %43 = getelementptr inbounds %struct.socket, %struct.socket* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 8
  %44 = load i32, i32* @PROTOCOL_UNKNOWN, align 4
  %45 = load %struct.socket*, %struct.socket** %6, align 8
  %46 = getelementptr inbounds %struct.socket, %struct.socket* %45, i32 0, i32 4
  store i32 %44, i32* %46, align 8
  %47 = load %struct.socket*, %struct.socket** %6, align 8
  %48 = getelementptr inbounds %struct.socket, %struct.socket* %47, i32 0, i32 3
  store i64 0, i64* %48, align 8
  %49 = load %struct.socket*, %struct.socket** %6, align 8
  %50 = getelementptr inbounds %struct.socket, %struct.socket* %49, i32 0, i32 2
  store i32 -1, i32* %50, align 4
  %51 = load i32, i32* %5, align 4
  store i32 %51, i32* %2, align 4
  br label %61

52:                                               ; preds = %33
  %53 = load i32, i32* %4, align 4
  %54 = add nsw i32 %53, -1
  store i32 %54, i32* %4, align 4
  br label %55

55:                                               ; preds = %52
  br label %56

56:                                               ; preds = %55, %21
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %4, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %4, align 4
  br label %7

60:                                               ; preds = %7
  store i32 -1, i32* %2, align 4
  br label %61

61:                                               ; preds = %60, %40
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local i32 @ATOM_INC(i32*) #1

declare dso_local i32 @ATOM_AND(i32*, i32) #1

declare dso_local i64 @HASH_ID(i32) #1

declare dso_local i64 @ATOM_CAS(i64*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
