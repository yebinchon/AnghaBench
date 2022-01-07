; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/rpcrt4/extr_rpc_transport.c_rpcrt4_ip_tcp_get_top_of_tower.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/rpcrt4/extr_rpc_transport.c_rpcrt4_ip_tcp_get_top_of_tower.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i8, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }
%struct.addrinfo = type { i64, i32*, i32*, i32*, i64, i32, i32, i32 }
%struct.sockaddr_in = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"(%p, %s, %s)\0A\00", align 1
@EPM_PROTOCOL_IP = common dso_local global i32 0, align 4
@AI_NUMERICHOST = common dso_local global i32 0, align 4
@PF_INET = common dso_local global i64 0, align 8
@SOCK_STREAM = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"0.0.0.0\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"getaddrinfo failed: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"unexpected protocol family %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i8*, i8, i8*)* @rpcrt4_ip_tcp_get_top_of_tower to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @rpcrt4_ip_tcp_get_top_of_tower(i8* %0, i8* %1, i8 zeroext %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_5__*, align 8
  %11 = alloca %struct.TYPE_6__*, align 8
  %12 = alloca %struct.addrinfo*, align 8
  %13 = alloca %struct.addrinfo, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca %struct.sockaddr_in*, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8 %2, i8* %8, align 1
  store i8* %3, i8** %9, align 8
  store i64 32, i64* %15, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = load i8*, i8** %9, align 8
  %20 = call i32 @TRACE(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %17, i8* %18, i8* %19)
  %21 = load i8*, i8** %6, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %4
  %24 = load i64, i64* %15, align 8
  store i64 %24, i64* %5, align 8
  br label %106

25:                                               ; preds = %4
  %26 = load i8*, i8** %6, align 8
  %27 = bitcast i8* %26 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %27, %struct.TYPE_5__** %10, align 8
  %28 = load i8*, i8** %6, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 16
  store i8* %29, i8** %6, align 8
  %30 = load i8*, i8** %6, align 8
  %31 = bitcast i8* %30 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %31, %struct.TYPE_6__** %11, align 8
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  store i32 1, i32* %33, align 4
  %34 = load i8, i8* %8, align 1
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 1
  store i8 %34, i8* %36, align 4
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 2
  store i32 4, i32* %38, align 4
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  store i32 4, i32* %40, align 4
  %41 = load i32, i32* @EPM_PROTOCOL_IP, align 4
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 3
  store i32 %41, i32* %43, align 4
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 1
  store i32 4, i32* %45, align 4
  %46 = load i32, i32* @AI_NUMERICHOST, align 4
  %47 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %13, i32 0, i32 7
  store i32 %46, i32* %47, align 8
  %48 = load i64, i64* @PF_INET, align 8
  %49 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %13, i32 0, i32 0
  store i64 %48, i64* %49, align 8
  %50 = load i32, i32* @SOCK_STREAM, align 4
  %51 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %13, i32 0, i32 6
  store i32 %50, i32* %51, align 4
  %52 = load i32, i32* @IPPROTO_TCP, align 4
  %53 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %13, i32 0, i32 5
  store i32 %52, i32* %53, align 8
  %54 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %13, i32 0, i32 4
  store i64 0, i64* %54, align 8
  %55 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %13, i32 0, i32 1
  store i32* null, i32** %55, align 8
  %56 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %13, i32 0, i32 3
  store i32* null, i32** %56, align 8
  %57 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %13, i32 0, i32 2
  store i32* null, i32** %57, align 8
  %58 = load i8*, i8** %7, align 8
  %59 = load i8*, i8** %9, align 8
  %60 = call i32 @getaddrinfo(i8* %58, i8* %59, %struct.addrinfo* %13, %struct.addrinfo** %12)
  store i32 %60, i32* %14, align 4
  %61 = load i32, i32* %14, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %73

63:                                               ; preds = %25
  %64 = load i8*, i8** %9, align 8
  %65 = call i32 @getaddrinfo(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* %64, %struct.addrinfo* %13, %struct.addrinfo** %12)
  store i32 %65, i32* %14, align 4
  %66 = load i32, i32* %14, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %63
  %69 = load i32, i32* %14, align 4
  %70 = call i64 @gai_strerror(i32 %69)
  %71 = call i32 @ERR(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i64 %70)
  store i64 0, i64* %5, align 8
  br label %106

72:                                               ; preds = %63
  br label %73

73:                                               ; preds = %72, %25
  %74 = load %struct.addrinfo*, %struct.addrinfo** %12, align 8
  %75 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @PF_INET, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %95

79:                                               ; preds = %73
  %80 = load %struct.addrinfo*, %struct.addrinfo** %12, align 8
  %81 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %80, i32 0, i32 1
  %82 = load i32*, i32** %81, align 8
  %83 = bitcast i32* %82 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %83, %struct.sockaddr_in** %16, align 8
  %84 = load %struct.sockaddr_in*, %struct.sockaddr_in** %16, align 8
  %85 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 3
  store i32 %86, i32* %88, align 4
  %89 = load %struct.sockaddr_in*, %struct.sockaddr_in** %16, align 8
  %90 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 2
  store i32 %92, i32* %94, align 4
  br label %102

95:                                               ; preds = %73
  %96 = load %struct.addrinfo*, %struct.addrinfo** %12, align 8
  %97 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = call i32 @ERR(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i64 %98)
  %100 = load %struct.addrinfo*, %struct.addrinfo** %12, align 8
  %101 = call i32 @freeaddrinfo(%struct.addrinfo* %100)
  store i64 0, i64* %5, align 8
  br label %106

102:                                              ; preds = %79
  %103 = load %struct.addrinfo*, %struct.addrinfo** %12, align 8
  %104 = call i32 @freeaddrinfo(%struct.addrinfo* %103)
  %105 = load i64, i64* %15, align 8
  store i64 %105, i64* %5, align 8
  br label %106

106:                                              ; preds = %102, %95, %68, %23
  %107 = load i64, i64* %5, align 8
  ret i64 %107
}

declare dso_local i32 @TRACE(i8*, i8*, i8*, i8*) #1

declare dso_local i32 @getaddrinfo(i8*, i8*, %struct.addrinfo*, %struct.addrinfo**) #1

declare dso_local i32 @ERR(i8*, i64) #1

declare dso_local i64 @gai_strerror(i32) #1

declare dso_local i32 @freeaddrinfo(%struct.addrinfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
