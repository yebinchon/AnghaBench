; ModuleID = '/home/carl/AnghaBench/redis/src/extr_anet.c__anetTcpServer.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_anet.c__anetTcpServer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.addrinfo = type { i32, i32, i32, i32, i32, %struct.addrinfo*, i32 }

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@SOCK_STREAM = common dso_local global i32 0, align 4
@AI_PASSIVE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@ANET_ERR = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"unable to bind socket, errno: %d\00", align 1
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i8*, i32, i32)* @_anetTcpServer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_anetTcpServer(i8* %0, i32 %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [6 x i8], align 1
  %15 = alloca %struct.addrinfo, align 8
  %16 = alloca %struct.addrinfo*, align 8
  %17 = alloca %struct.addrinfo*, align 8
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 -1, i32* %12, align 4
  %18 = getelementptr inbounds [6 x i8], [6 x i8]* %14, i64 0, i64 0
  %19 = load i32, i32* %8, align 4
  %20 = call i32 @snprintf(i8* %18, i32 6, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = call i32 @memset(%struct.addrinfo* %15, i32 0, i32 40)
  %22 = load i32, i32* %10, align 4
  %23 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %15, i32 0, i32 0
  store i32 %22, i32* %23, align 8
  %24 = load i32, i32* @SOCK_STREAM, align 4
  %25 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %15, i32 0, i32 4
  store i32 %24, i32* %25, align 8
  %26 = load i32, i32* @AI_PASSIVE, align 4
  %27 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %15, i32 0, i32 6
  store i32 %26, i32* %27, align 8
  %28 = load i8*, i8** %9, align 8
  %29 = getelementptr inbounds [6 x i8], [6 x i8]* %14, i64 0, i64 0
  %30 = call i32 @getaddrinfo(i8* %28, i8* %29, %struct.addrinfo* %15, %struct.addrinfo** %16)
  store i32 %30, i32* %13, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %5
  %33 = load i8*, i8** %7, align 8
  %34 = load i32, i32* %13, align 4
  %35 = call i32 @gai_strerror(i32 %34)
  %36 = call i32 @anetSetError(i8* %33, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  %37 = load i32, i32* @ANET_ERR, align 4
  store i32 %37, i32* %6, align 4
  br label %114

38:                                               ; preds = %5
  %39 = load %struct.addrinfo*, %struct.addrinfo** %16, align 8
  store %struct.addrinfo* %39, %struct.addrinfo** %17, align 8
  br label %40

40:                                               ; preds = %90, %38
  %41 = load %struct.addrinfo*, %struct.addrinfo** %17, align 8
  %42 = icmp ne %struct.addrinfo* %41, null
  br i1 %42, label %43, label %94

43:                                               ; preds = %40
  %44 = load %struct.addrinfo*, %struct.addrinfo** %17, align 8
  %45 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.addrinfo*, %struct.addrinfo** %17, align 8
  %48 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.addrinfo*, %struct.addrinfo** %17, align 8
  %51 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @socket(i32 %46, i32 %49, i32 %52)
  store i32 %53, i32* %12, align 4
  %54 = icmp eq i32 %53, -1
  br i1 %54, label %55, label %56

55:                                               ; preds = %43
  br label %90

56:                                               ; preds = %43
  %57 = load i32, i32* %10, align 4
  %58 = load i32, i32* @AF_INET6, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %67

60:                                               ; preds = %56
  %61 = load i8*, i8** %7, align 8
  %62 = load i32, i32* %12, align 4
  %63 = call i32 @anetV6Only(i8* %61, i32 %62)
  %64 = load i32, i32* @ANET_ERR, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %60
  br label %102

67:                                               ; preds = %60, %56
  %68 = load i8*, i8** %7, align 8
  %69 = load i32, i32* %12, align 4
  %70 = call i32 @anetSetReuseAddr(i8* %68, i32 %69)
  %71 = load i32, i32* @ANET_ERR, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %67
  br label %102

74:                                               ; preds = %67
  %75 = load i8*, i8** %7, align 8
  %76 = load i32, i32* %12, align 4
  %77 = load %struct.addrinfo*, %struct.addrinfo** %17, align 8
  %78 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.addrinfo*, %struct.addrinfo** %17, align 8
  %81 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* %11, align 4
  %84 = call i32 @anetListen(i8* %75, i32 %76, i32 %79, i32 %82, i32 %83)
  %85 = load i32, i32* @ANET_ERR, align 4
  %86 = icmp eq i32 %84, %85
  br i1 %86, label %87, label %89

87:                                               ; preds = %74
  %88 = load i32, i32* @ANET_ERR, align 4
  store i32 %88, i32* %12, align 4
  br label %89

89:                                               ; preds = %87, %74
  br label %110

90:                                               ; preds = %55
  %91 = load %struct.addrinfo*, %struct.addrinfo** %17, align 8
  %92 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %91, i32 0, i32 5
  %93 = load %struct.addrinfo*, %struct.addrinfo** %92, align 8
  store %struct.addrinfo* %93, %struct.addrinfo** %17, align 8
  br label %40

94:                                               ; preds = %40
  %95 = load %struct.addrinfo*, %struct.addrinfo** %17, align 8
  %96 = icmp eq %struct.addrinfo* %95, null
  br i1 %96, label %97, label %101

97:                                               ; preds = %94
  %98 = load i8*, i8** %7, align 8
  %99 = load i32, i32* @errno, align 4
  %100 = call i32 @anetSetError(i8* %98, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %99)
  br label %102

101:                                              ; preds = %94
  br label %102

102:                                              ; preds = %101, %97, %73, %66
  %103 = load i32, i32* %12, align 4
  %104 = icmp ne i32 %103, -1
  br i1 %104, label %105, label %108

105:                                              ; preds = %102
  %106 = load i32, i32* %12, align 4
  %107 = call i32 @close(i32 %106)
  br label %108

108:                                              ; preds = %105, %102
  %109 = load i32, i32* @ANET_ERR, align 4
  store i32 %109, i32* %12, align 4
  br label %110

110:                                              ; preds = %108, %89
  %111 = load %struct.addrinfo*, %struct.addrinfo** %16, align 8
  %112 = call i32 @freeaddrinfo(%struct.addrinfo* %111)
  %113 = load i32, i32* %12, align 4
  store i32 %113, i32* %6, align 4
  br label %114

114:                                              ; preds = %110, %32
  %115 = load i32, i32* %6, align 4
  ret i32 %115
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @memset(%struct.addrinfo*, i32, i32) #1

declare dso_local i32 @getaddrinfo(i8*, i8*, %struct.addrinfo*, %struct.addrinfo**) #1

declare dso_local i32 @anetSetError(i8*, i8*, i32) #1

declare dso_local i32 @gai_strerror(i32) #1

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @anetV6Only(i8*, i32) #1

declare dso_local i32 @anetSetReuseAddr(i8*, i32) #1

declare dso_local i32 @anetListen(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @freeaddrinfo(%struct.addrinfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
