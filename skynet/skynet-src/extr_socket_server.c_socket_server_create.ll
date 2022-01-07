; ModuleID = '/home/carl/AnghaBench/skynet/skynet-src/extr_socket_server.c_socket_server_create.c'
source_filename = "/home/carl/AnghaBench/skynet/skynet-src/extr_socket_server.c_socket_server_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket_server = type { i32, i32, i32, i32, i32, i64, i64, i64, %struct.socket*, i32, i32 }
%struct.socket = type { i32, i32, i32, i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"socket-server: create event pool failed.\0A\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"socket-server: create socket pair failed.\0A\00", align 1
@.str.2 = private unnamed_addr constant [51 x i8] c"socket-server: can't add server fd to event pool.\0A\00", align 1
@MAX_SOCKET = common dso_local global i32 0, align 4
@SOCKET_TYPE_INVALID = common dso_local global i32 0, align 4
@FD_SETSIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.socket_server* @socket_server_create(i32 %0) #0 {
  %2 = alloca %struct.socket_server*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [2 x i32], align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.socket_server*, align 8
  %8 = alloca %struct.socket*, align 8
  store i32 %0, i32* %3, align 4
  %9 = call i32 (...) @sp_create()
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = call i64 @sp_invalid(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load i32, i32* @stderr, align 4
  %15 = call i32 @fprintf(i32 %14, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  store %struct.socket_server* null, %struct.socket_server** %2, align 8
  br label %107

16:                                               ; preds = %1
  %17 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %18 = call i64 @pipe(i32* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %16
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @sp_release(i32 %21)
  %23 = load i32, i32* @stderr, align 4
  %24 = call i32 @fprintf(i32 %23, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  store %struct.socket_server* null, %struct.socket_server** %2, align 8
  br label %107

25:                                               ; preds = %16
  %26 = load i32, i32* %6, align 4
  %27 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @sp_add(i32 %26, i32 %28, i32* null)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %42

31:                                               ; preds = %25
  %32 = load i32, i32* @stderr, align 4
  %33 = call i32 @fprintf(i32 %32, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0))
  %34 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @close(i32 %35)
  %37 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @close(i32 %38)
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @sp_release(i32 %40)
  store %struct.socket_server* null, %struct.socket_server** %2, align 8
  br label %107

42:                                               ; preds = %25
  %43 = call %struct.socket_server* @MALLOC(i32 64)
  store %struct.socket_server* %43, %struct.socket_server** %7, align 8
  %44 = load i32, i32* %3, align 4
  %45 = load %struct.socket_server*, %struct.socket_server** %7, align 8
  %46 = getelementptr inbounds %struct.socket_server, %struct.socket_server* %45, i32 0, i32 10
  store i32 %44, i32* %46, align 4
  %47 = load i32, i32* %6, align 4
  %48 = load %struct.socket_server*, %struct.socket_server** %7, align 8
  %49 = getelementptr inbounds %struct.socket_server, %struct.socket_server* %48, i32 0, i32 9
  store i32 %47, i32* %49, align 8
  %50 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.socket_server*, %struct.socket_server** %7, align 8
  %53 = getelementptr inbounds %struct.socket_server, %struct.socket_server* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 8
  %54 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.socket_server*, %struct.socket_server** %7, align 8
  %57 = getelementptr inbounds %struct.socket_server, %struct.socket_server* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 4
  %58 = load %struct.socket_server*, %struct.socket_server** %7, align 8
  %59 = getelementptr inbounds %struct.socket_server, %struct.socket_server* %58, i32 0, i32 2
  store i32 1, i32* %59, align 8
  store i32 0, i32* %4, align 4
  br label %60

60:                                               ; preds = %83, %42
  %61 = load i32, i32* %4, align 4
  %62 = load i32, i32* @MAX_SOCKET, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %86

64:                                               ; preds = %60
  %65 = load %struct.socket_server*, %struct.socket_server** %7, align 8
  %66 = getelementptr inbounds %struct.socket_server, %struct.socket_server* %65, i32 0, i32 8
  %67 = load %struct.socket*, %struct.socket** %66, align 8
  %68 = load i32, i32* %4, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.socket, %struct.socket* %67, i64 %69
  store %struct.socket* %70, %struct.socket** %8, align 8
  %71 = load i32, i32* @SOCKET_TYPE_INVALID, align 4
  %72 = load %struct.socket*, %struct.socket** %8, align 8
  %73 = getelementptr inbounds %struct.socket, %struct.socket* %72, i32 0, i32 3
  store i32 %71, i32* %73, align 4
  %74 = load %struct.socket*, %struct.socket** %8, align 8
  %75 = getelementptr inbounds %struct.socket, %struct.socket* %74, i32 0, i32 2
  %76 = call i32 @clear_wb_list(i32* %75)
  %77 = load %struct.socket*, %struct.socket** %8, align 8
  %78 = getelementptr inbounds %struct.socket, %struct.socket* %77, i32 0, i32 1
  %79 = call i32 @clear_wb_list(i32* %78)
  %80 = load %struct.socket*, %struct.socket** %8, align 8
  %81 = getelementptr inbounds %struct.socket, %struct.socket* %80, i32 0, i32 0
  %82 = call i32 @spinlock_init(i32* %81)
  br label %83

83:                                               ; preds = %64
  %84 = load i32, i32* %4, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %4, align 4
  br label %60

86:                                               ; preds = %60
  %87 = load %struct.socket_server*, %struct.socket_server** %7, align 8
  %88 = getelementptr inbounds %struct.socket_server, %struct.socket_server* %87, i32 0, i32 7
  store i64 0, i64* %88, align 8
  %89 = load %struct.socket_server*, %struct.socket_server** %7, align 8
  %90 = getelementptr inbounds %struct.socket_server, %struct.socket_server* %89, i32 0, i32 6
  store i64 0, i64* %90, align 8
  %91 = load %struct.socket_server*, %struct.socket_server** %7, align 8
  %92 = getelementptr inbounds %struct.socket_server, %struct.socket_server* %91, i32 0, i32 5
  store i64 0, i64* %92, align 8
  %93 = load %struct.socket_server*, %struct.socket_server** %7, align 8
  %94 = getelementptr inbounds %struct.socket_server, %struct.socket_server* %93, i32 0, i32 4
  %95 = call i32 @memset(i32* %94, i32 0, i32 4)
  %96 = load %struct.socket_server*, %struct.socket_server** %7, align 8
  %97 = getelementptr inbounds %struct.socket_server, %struct.socket_server* %96, i32 0, i32 3
  %98 = call i32 @FD_ZERO(i32* %97)
  %99 = load %struct.socket_server*, %struct.socket_server** %7, align 8
  %100 = getelementptr inbounds %struct.socket_server, %struct.socket_server* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* @FD_SETSIZE, align 4
  %103 = icmp slt i32 %101, %102
  %104 = zext i1 %103 to i32
  %105 = call i32 @assert(i32 %104)
  %106 = load %struct.socket_server*, %struct.socket_server** %7, align 8
  store %struct.socket_server* %106, %struct.socket_server** %2, align 8
  br label %107

107:                                              ; preds = %86, %31, %20, %13
  %108 = load %struct.socket_server*, %struct.socket_server** %2, align 8
  ret %struct.socket_server* %108
}

declare dso_local i32 @sp_create(...) #1

declare dso_local i64 @sp_invalid(i32) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i64 @pipe(i32*) #1

declare dso_local i32 @sp_release(i32) #1

declare dso_local i64 @sp_add(i32, i32, i32*) #1

declare dso_local i32 @close(i32) #1

declare dso_local %struct.socket_server* @MALLOC(i32) #1

declare dso_local i32 @clear_wb_list(i32*) #1

declare dso_local i32 @spinlock_init(i32*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @FD_ZERO(i32*) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
