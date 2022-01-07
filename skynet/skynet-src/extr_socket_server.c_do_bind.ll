; ModuleID = '/home/carl/AnghaBench/skynet/skynet-src/extr_socket_server.c_do_bind.c'
source_filename = "/home/carl/AnghaBench/skynet/skynet-src/extr_socket_server.c_do_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.addrinfo = type { i32, i32, i32, i64, i32 }
%struct.sockaddr = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"0.0.0.0\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@AF_UNSPEC = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@IPPROTO_UDP = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i32 0, align 4
@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_REUSEADDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32, i32*)* @do_bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_bind(i8* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.addrinfo, align 8
  %14 = alloca %struct.addrinfo*, align 8
  %15 = alloca [16 x i8], align 16
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32 1, i32* %12, align 4
  store %struct.addrinfo* null, %struct.addrinfo** %14, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = icmp eq i8* %16, null
  br i1 %17, label %24, label %18

18:                                               ; preds = %4
  %19 = load i8*, i8** %6, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 0
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %18, %4
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  br label %25

25:                                               ; preds = %24, %18
  %26 = getelementptr inbounds [16 x i8], [16 x i8]* %15, i64 0, i64 0
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @sprintf(i8* %26, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %27)
  %29 = call i32 @memset(%struct.addrinfo* %13, i32 0, i32 32)
  %30 = load i32, i32* @AF_UNSPEC, align 4
  %31 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %13, i32 0, i32 0
  store i32 %30, i32* %31, align 8
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* @IPPROTO_TCP, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %25
  %36 = load i32, i32* @SOCK_STREAM, align 4
  %37 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %13, i32 0, i32 4
  store i32 %36, i32* %37, align 8
  br label %46

38:                                               ; preds = %25
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* @IPPROTO_UDP, align 4
  %41 = icmp eq i32 %39, %40
  %42 = zext i1 %41 to i32
  %43 = call i32 @assert(i32 %42)
  %44 = load i32, i32* @SOCK_DGRAM, align 4
  %45 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %13, i32 0, i32 4
  store i32 %44, i32* %45, align 8
  br label %46

46:                                               ; preds = %38, %35
  %47 = load i32, i32* %8, align 4
  %48 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %13, i32 0, i32 1
  store i32 %47, i32* %48, align 4
  %49 = load i8*, i8** %6, align 8
  %50 = getelementptr inbounds [16 x i8], [16 x i8]* %15, i64 0, i64 0
  %51 = call i32 @getaddrinfo(i8* %49, i8* %50, %struct.addrinfo* %13, %struct.addrinfo** %14)
  store i32 %51, i32* %11, align 4
  %52 = load i32, i32* %11, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %46
  store i32 -1, i32* %5, align 4
  br label %100

55:                                               ; preds = %46
  %56 = load %struct.addrinfo*, %struct.addrinfo** %14, align 8
  %57 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32*, i32** %9, align 8
  store i32 %58, i32* %59, align 4
  %60 = load i32*, i32** %9, align 8
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.addrinfo*, %struct.addrinfo** %14, align 8
  %63 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %62, i32 0, i32 4
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @socket(i32 %61, i32 %64, i32 0)
  store i32 %65, i32* %10, align 4
  %66 = load i32, i32* %10, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %55
  br label %97

69:                                               ; preds = %55
  %70 = load i32, i32* %10, align 4
  %71 = load i32, i32* @SOL_SOCKET, align 4
  %72 = load i32, i32* @SO_REUSEADDR, align 4
  %73 = bitcast i32* %12 to i8*
  %74 = call i32 @setsockopt(i32 %70, i32 %71, i32 %72, i8* %73, i32 4)
  %75 = icmp eq i32 %74, -1
  br i1 %75, label %76, label %77

76:                                               ; preds = %69
  br label %94

77:                                               ; preds = %69
  %78 = load i32, i32* %10, align 4
  %79 = load %struct.addrinfo*, %struct.addrinfo** %14, align 8
  %80 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %79, i32 0, i32 3
  %81 = load i64, i64* %80, align 8
  %82 = inttoptr i64 %81 to %struct.sockaddr*
  %83 = load %struct.addrinfo*, %struct.addrinfo** %14, align 8
  %84 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @bind(i32 %78, %struct.sockaddr* %82, i32 %85)
  store i32 %86, i32* %11, align 4
  %87 = load i32, i32* %11, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %77
  br label %94

90:                                               ; preds = %77
  %91 = load %struct.addrinfo*, %struct.addrinfo** %14, align 8
  %92 = call i32 @freeaddrinfo(%struct.addrinfo* %91)
  %93 = load i32, i32* %10, align 4
  store i32 %93, i32* %5, align 4
  br label %100

94:                                               ; preds = %89, %76
  %95 = load i32, i32* %10, align 4
  %96 = call i32 @close(i32 %95)
  br label %97

97:                                               ; preds = %94, %68
  %98 = load %struct.addrinfo*, %struct.addrinfo** %14, align 8
  %99 = call i32 @freeaddrinfo(%struct.addrinfo* %98)
  store i32 -1, i32* %5, align 4
  br label %100

100:                                              ; preds = %97, %90, %54
  %101 = load i32, i32* %5, align 4
  ret i32 %101
}

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @memset(%struct.addrinfo*, i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @getaddrinfo(i8*, i8*, %struct.addrinfo*, %struct.addrinfo**) #1

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @setsockopt(i32, i32, i32, i8*, i32) #1

declare dso_local i32 @bind(i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @freeaddrinfo(%struct.addrinfo*) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
