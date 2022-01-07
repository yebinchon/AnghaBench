; ModuleID = '/home/carl/AnghaBench/seafile/lib/extr_net.c_ccnet_net_bind_tcp.c'
source_filename = "/home/carl/AnghaBench/seafile/lib/extr_net.c_ccnet_net_bind_tcp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.addrinfo = type { i32, i32, %struct.TYPE_2__, i8*, %struct.sockaddr*, i32, i32, i32, %struct.addrinfo*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.sockaddr = type { i32 }
%struct.sockaddr_in = type { i32, i32, %struct.TYPE_2__, i8*, %struct.sockaddr*, i32, i32, i32, %struct.sockaddr_in*, i32 }

@AI_PASSIVE = common dso_local global i32 0, align 4
@AF_UNSPEC = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"getaddrinfo fails: %s\0A\00", align 1
@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_REUSEADDR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"setsockopt of SO_REUSEADDR error\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"bind fails: %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i8* null, align 8
@INADDR_ANY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ccnet_net_bind_tcp(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.addrinfo, align 8
  %9 = alloca %struct.addrinfo*, align 8
  %10 = alloca %struct.addrinfo*, align 8
  %11 = alloca [10 x i8], align 1
  %12 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %13 = bitcast %struct.addrinfo* %8 to %struct.sockaddr_in*
  %14 = call i32 @memset(%struct.sockaddr_in* %13, i32 0, i32 64)
  %15 = load i32, i32* @AI_PASSIVE, align 4
  %16 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %8, i32 0, i32 9
  store i32 %15, i32* %16, align 8
  %17 = load i32, i32* @AF_UNSPEC, align 4
  %18 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %8, i32 0, i32 7
  store i32 %17, i32* %18, align 8
  %19 = load i32, i32* @SOCK_STREAM, align 4
  %20 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %8, i32 0, i32 6
  store i32 %19, i32* %20, align 4
  %21 = getelementptr inbounds [10 x i8], [10 x i8]* %11, i64 0, i64 0
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @snprintf(i8* %21, i32 10, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = getelementptr inbounds [10 x i8], [10 x i8]* %11, i64 0, i64 0
  %25 = bitcast %struct.addrinfo* %8 to %struct.sockaddr_in*
  %26 = bitcast %struct.addrinfo** %9 to %struct.sockaddr_in**
  %27 = call i32 @getaddrinfo(i32* null, i8* %24, %struct.sockaddr_in* %25, %struct.sockaddr_in** %26)
  store i32 %27, i32* %7, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %2
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @gai_strerror(i32 %30)
  %32 = call i32 (i8*, ...) @ccnet_warning(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  store i32 -1, i32* %3, align 4
  br label %98

33:                                               ; preds = %2
  %34 = load %struct.addrinfo*, %struct.addrinfo** %9, align 8
  store %struct.addrinfo* %34, %struct.addrinfo** %10, align 8
  br label %35

35:                                               ; preds = %81, %33
  store i32 1, i32* %12, align 4
  %36 = load %struct.addrinfo*, %struct.addrinfo** %9, align 8
  %37 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %36, i32 0, i32 7
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.addrinfo*, %struct.addrinfo** %9, align 8
  %40 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %39, i32 0, i32 6
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.addrinfo*, %struct.addrinfo** %9, align 8
  %43 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %42, i32 0, i32 5
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @socket(i32 %38, i32 %41, i32 %44)
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* %6, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %35
  br label %81

49:                                               ; preds = %35
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* @SOL_SOCKET, align 4
  %52 = load i32, i32* @SO_REUSEADDR, align 4
  %53 = call i64 (i32, i32, i32, ...) @setsockopt(i32 %50, i32 %51, i32 %52, i32* %12, i64 4)
  %54 = icmp slt i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %49
  %56 = call i32 (i8*, ...) @ccnet_warning(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  br label %81

57:                                               ; preds = %49
  %58 = load i32, i32* %5, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %57
  %61 = load i32, i32* %6, align 4
  %62 = call i32 @makeSocketNonBlocking(i32 %61)
  store i32 %62, i32* %6, align 4
  br label %63

63:                                               ; preds = %60, %57
  %64 = load i32, i32* %6, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %63
  br label %81

67:                                               ; preds = %63
  %68 = load i32, i32* %6, align 4
  %69 = load %struct.addrinfo*, %struct.addrinfo** %9, align 8
  %70 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %69, i32 0, i32 4
  %71 = load %struct.sockaddr*, %struct.sockaddr** %70, align 8
  %72 = load %struct.addrinfo*, %struct.addrinfo** %9, align 8
  %73 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = call i64 @bind(i32 %68, %struct.sockaddr* %71, i32 %74)
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %67
  br label %86

78:                                               ; preds = %67
  %79 = load i32, i32* %6, align 4
  %80 = call i32 @close(i32 %79)
  br label %81

81:                                               ; preds = %78, %66, %55, %48
  %82 = load %struct.addrinfo*, %struct.addrinfo** %9, align 8
  %83 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %82, i32 0, i32 8
  %84 = load %struct.addrinfo*, %struct.addrinfo** %83, align 8
  store %struct.addrinfo* %84, %struct.addrinfo** %9, align 8
  %85 = icmp ne %struct.addrinfo* %84, null
  br i1 %85, label %35, label %86

86:                                               ; preds = %81, %77
  %87 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  %88 = bitcast %struct.addrinfo* %87 to %struct.sockaddr_in*
  %89 = call i32 @freeaddrinfo(%struct.sockaddr_in* %88)
  %90 = load %struct.addrinfo*, %struct.addrinfo** %9, align 8
  %91 = icmp eq %struct.addrinfo* %90, null
  br i1 %91, label %92, label %96

92:                                               ; preds = %86
  %93 = load i32, i32* @errno, align 4
  %94 = call i32 @strerror(i32 %93)
  %95 = call i32 (i8*, ...) @ccnet_warning(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 %94)
  store i32 -1, i32* %3, align 4
  br label %98

96:                                               ; preds = %86
  %97 = load i32, i32* %6, align 4
  store i32 %97, i32* %3, align 4
  br label %98

98:                                               ; preds = %96, %92, %29
  %99 = load i32, i32* %3, align 4
  ret i32 %99
}

declare dso_local i32 @memset(%struct.sockaddr_in*, i32, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @getaddrinfo(i32*, i8*, %struct.sockaddr_in*, %struct.sockaddr_in**) #1

declare dso_local i32 @ccnet_warning(i8*, ...) #1

declare dso_local i32 @gai_strerror(i32) #1

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i64 @setsockopt(i32, i32, i32, ...) #1

declare dso_local i32 @makeSocketNonBlocking(i32) #1

declare dso_local i64 @bind(i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @freeaddrinfo(%struct.sockaddr_in*) #1

declare dso_local i32 @strerror(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
