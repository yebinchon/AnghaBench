; ModuleID = '/home/carl/AnghaBench/skynet/skynet-src/extr_socket_server.c_new_fd.c'
source_filename = "/home/carl/AnghaBench/skynet/skynet-src/extr_socket_server.c_new_fd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i64, i32, i32, i32, i32, i64, i32, i64, i32*, i32, i32, i64, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.socket_server = type { i32, %struct.socket* }

@SOCKET_TYPE_RESERVE = common dso_local global i64 0, align 8
@SOCKET_TYPE_INVALID = common dso_local global i64 0, align 8
@MIN_READ_BUFFER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.socket* (%struct.socket_server*, i32, i32, i32, i64, i32)* @new_fd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.socket* @new_fd(%struct.socket_server* %0, i32 %1, i32 %2, i32 %3, i64 %4, i32 %5) #0 {
  %7 = alloca %struct.socket*, align 8
  %8 = alloca %struct.socket_server*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.socket*, align 8
  store %struct.socket_server* %0, %struct.socket_server** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i64 %4, i64* %12, align 8
  store i32 %5, i32* %13, align 4
  %15 = load %struct.socket_server*, %struct.socket_server** %8, align 8
  %16 = getelementptr inbounds %struct.socket_server, %struct.socket_server* %15, i32 0, i32 1
  %17 = load %struct.socket*, %struct.socket** %16, align 8
  %18 = load i32, i32* %9, align 4
  %19 = call i64 @HASH_ID(i32 %18)
  %20 = getelementptr inbounds %struct.socket, %struct.socket* %17, i64 %19
  store %struct.socket* %20, %struct.socket** %14, align 8
  %21 = load %struct.socket*, %struct.socket** %14, align 8
  %22 = getelementptr inbounds %struct.socket, %struct.socket* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @SOCKET_TYPE_RESERVE, align 8
  %25 = icmp eq i64 %23, %24
  %26 = zext i1 %25 to i32
  %27 = call i32 @assert(i32 %26)
  %28 = load i32, i32* %13, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %43

30:                                               ; preds = %6
  %31 = load %struct.socket_server*, %struct.socket_server** %8, align 8
  %32 = getelementptr inbounds %struct.socket_server, %struct.socket_server* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* %10, align 4
  %35 = load %struct.socket*, %struct.socket** %14, align 8
  %36 = call i64 @sp_add(i32 %33, i32 %34, %struct.socket* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %30
  %39 = load i64, i64* @SOCKET_TYPE_INVALID, align 8
  %40 = load %struct.socket*, %struct.socket** %14, align 8
  %41 = getelementptr inbounds %struct.socket, %struct.socket* %40, i32 0, i32 0
  store i64 %39, i64* %41, align 8
  store %struct.socket* null, %struct.socket** %7, align 8
  br label %83

42:                                               ; preds = %30
  br label %43

43:                                               ; preds = %42, %6
  %44 = load i32, i32* %9, align 4
  %45 = load %struct.socket*, %struct.socket** %14, align 8
  %46 = getelementptr inbounds %struct.socket, %struct.socket* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 8
  %47 = load i32, i32* %10, align 4
  %48 = load %struct.socket*, %struct.socket** %14, align 8
  %49 = getelementptr inbounds %struct.socket, %struct.socket* %48, i32 0, i32 2
  store i32 %47, i32* %49, align 4
  %50 = load i32, i32* %9, align 4
  %51 = call i32 @ID_TAG16(i32 %50)
  %52 = shl i32 %51, 16
  %53 = load %struct.socket*, %struct.socket** %14, align 8
  %54 = getelementptr inbounds %struct.socket, %struct.socket* %53, i32 0, i32 3
  store i32 %52, i32* %54, align 8
  %55 = load i32, i32* %11, align 4
  %56 = load %struct.socket*, %struct.socket** %14, align 8
  %57 = getelementptr inbounds %struct.socket, %struct.socket* %56, i32 0, i32 4
  store i32 %55, i32* %57, align 4
  %58 = load i32, i32* @MIN_READ_BUFFER, align 4
  %59 = load %struct.socket*, %struct.socket** %14, align 8
  %60 = getelementptr inbounds %struct.socket, %struct.socket* %59, i32 0, i32 13
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  store i32 %58, i32* %61, align 8
  %62 = load i64, i64* %12, align 8
  %63 = load %struct.socket*, %struct.socket** %14, align 8
  %64 = getelementptr inbounds %struct.socket, %struct.socket* %63, i32 0, i32 5
  store i64 %62, i64* %64, align 8
  %65 = load %struct.socket*, %struct.socket** %14, align 8
  %66 = getelementptr inbounds %struct.socket, %struct.socket* %65, i32 0, i32 12
  store i64 0, i64* %66, align 8
  %67 = load %struct.socket*, %struct.socket** %14, align 8
  %68 = getelementptr inbounds %struct.socket, %struct.socket* %67, i32 0, i32 11
  store i64 0, i64* %68, align 8
  %69 = load %struct.socket*, %struct.socket** %14, align 8
  %70 = getelementptr inbounds %struct.socket, %struct.socket* %69, i32 0, i32 10
  %71 = call i32 @check_wb_list(i32* %70)
  %72 = load %struct.socket*, %struct.socket** %14, align 8
  %73 = getelementptr inbounds %struct.socket, %struct.socket* %72, i32 0, i32 9
  %74 = call i32 @check_wb_list(i32* %73)
  %75 = load %struct.socket*, %struct.socket** %14, align 8
  %76 = getelementptr inbounds %struct.socket, %struct.socket* %75, i32 0, i32 8
  store i32* null, i32** %76, align 8
  %77 = load %struct.socket*, %struct.socket** %14, align 8
  %78 = getelementptr inbounds %struct.socket, %struct.socket* %77, i32 0, i32 7
  store i64 0, i64* %78, align 8
  %79 = load %struct.socket*, %struct.socket** %14, align 8
  %80 = getelementptr inbounds %struct.socket, %struct.socket* %79, i32 0, i32 6
  %81 = call i32 @memset(i32* %80, i32 0, i32 4)
  %82 = load %struct.socket*, %struct.socket** %14, align 8
  store %struct.socket* %82, %struct.socket** %7, align 8
  br label %83

83:                                               ; preds = %43, %38
  %84 = load %struct.socket*, %struct.socket** %7, align 8
  ret %struct.socket* %84
}

declare dso_local i64 @HASH_ID(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @sp_add(i32, i32, %struct.socket*) #1

declare dso_local i32 @ID_TAG16(i32) #1

declare dso_local i32 @check_wb_list(i32*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
