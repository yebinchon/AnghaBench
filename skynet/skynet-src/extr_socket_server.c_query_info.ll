; ModuleID = '/home/carl/AnghaBench/skynet/skynet-src/extr_socket_server.c_query_info.c'
source_filename = "/home/carl/AnghaBench/skynet/skynet-src/extr_socket_server.c_query_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32, i32, %struct.TYPE_4__, i64, i32, %struct.TYPE_3__, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.socket_info = type { i8*, i32, i32, i32, i32, i32, i64, i32, i32 }
%union.sockaddr_all = type { i32 }

@SOCKET_INFO_BIND = common dso_local global i32 0, align 4
@SOCKET_INFO_LISTEN = common dso_local global i32 0, align 4
@PROTOCOL_TCP = common dso_local global i32 0, align 4
@SOCKET_INFO_TCP = common dso_local global i32 0, align 4
@SOCKET_INFO_UDP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.socket_info*)* @query_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @query_info(%struct.socket* %0, %struct.socket_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.socket*, align 8
  %5 = alloca %struct.socket_info*, align 8
  %6 = alloca %union.sockaddr_all, align 4
  %7 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %4, align 8
  store %struct.socket_info* %1, %struct.socket_info** %5, align 8
  store i32 4, i32* %7, align 4
  %8 = load %struct.socket*, %struct.socket** %4, align 8
  %9 = getelementptr inbounds %struct.socket, %struct.socket* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  switch i32 %10, label %75 [
    i32 130, label %11
    i32 128, label %19
    i32 129, label %35
  ]

11:                                               ; preds = %2
  %12 = load i32, i32* @SOCKET_INFO_BIND, align 4
  %13 = load %struct.socket_info*, %struct.socket_info** %5, align 8
  %14 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %13, i32 0, i32 8
  store i32 %12, i32* %14, align 4
  %15 = load %struct.socket_info*, %struct.socket_info** %5, align 8
  %16 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 0
  store i8 0, i8* %18, align 1
  br label %76

19:                                               ; preds = %2
  %20 = load i32, i32* @SOCKET_INFO_LISTEN, align 4
  %21 = load %struct.socket_info*, %struct.socket_info** %5, align 8
  %22 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %21, i32 0, i32 8
  store i32 %20, i32* %22, align 4
  %23 = load %struct.socket*, %struct.socket** %4, align 8
  %24 = getelementptr inbounds %struct.socket, %struct.socket* %23, i32 0, i32 6
  %25 = load i32, i32* %24, align 8
  %26 = bitcast %union.sockaddr_all* %6 to i32*
  %27 = call i32 @getsockname(i32 %25, i32* %26, i32* %7)
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %19
  %30 = load %struct.socket_info*, %struct.socket_info** %5, align 8
  %31 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = call i32 @getname(%union.sockaddr_all* %6, i8* %32, i32 8)
  br label %34

34:                                               ; preds = %29, %19
  br label %76

35:                                               ; preds = %2
  %36 = load %struct.socket*, %struct.socket** %4, align 8
  %37 = getelementptr inbounds %struct.socket, %struct.socket* %36, i32 0, i32 7
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @PROTOCOL_TCP, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %57

41:                                               ; preds = %35
  %42 = load i32, i32* @SOCKET_INFO_TCP, align 4
  %43 = load %struct.socket_info*, %struct.socket_info** %5, align 8
  %44 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %43, i32 0, i32 8
  store i32 %42, i32* %44, align 4
  %45 = load %struct.socket*, %struct.socket** %4, align 8
  %46 = getelementptr inbounds %struct.socket, %struct.socket* %45, i32 0, i32 6
  %47 = load i32, i32* %46, align 8
  %48 = bitcast %union.sockaddr_all* %6 to i32*
  %49 = call i32 @getpeername(i32 %47, i32* %48, i32* %7)
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %41
  %52 = load %struct.socket_info*, %struct.socket_info** %5, align 8
  %53 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %52, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  %55 = call i32 @getname(%union.sockaddr_all* %6, i8* %54, i32 8)
  br label %56

56:                                               ; preds = %51, %41
  br label %74

57:                                               ; preds = %35
  %58 = load i32, i32* @SOCKET_INFO_UDP, align 4
  %59 = load %struct.socket_info*, %struct.socket_info** %5, align 8
  %60 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %59, i32 0, i32 8
  store i32 %58, i32* %60, align 4
  %61 = load %struct.socket*, %struct.socket** %4, align 8
  %62 = load %struct.socket*, %struct.socket** %4, align 8
  %63 = getelementptr inbounds %struct.socket, %struct.socket* %62, i32 0, i32 5
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @udp_socket_address(%struct.socket* %61, i32 %65, %union.sockaddr_all* %6)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %57
  %69 = load %struct.socket_info*, %struct.socket_info** %5, align 8
  %70 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %69, i32 0, i32 0
  %71 = load i8*, i8** %70, align 8
  %72 = call i32 @getname(%union.sockaddr_all* %6, i8* %71, i32 8)
  br label %73

73:                                               ; preds = %68, %57
  br label %74

74:                                               ; preds = %73, %56
  br label %76

75:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %116

76:                                               ; preds = %74, %34, %11
  %77 = load %struct.socket*, %struct.socket** %4, align 8
  %78 = getelementptr inbounds %struct.socket, %struct.socket* %77, i32 0, i32 4
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.socket_info*, %struct.socket_info** %5, align 8
  %81 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %80, i32 0, i32 7
  store i32 %79, i32* %81, align 8
  %82 = load %struct.socket*, %struct.socket** %4, align 8
  %83 = getelementptr inbounds %struct.socket, %struct.socket* %82, i32 0, i32 3
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.socket_info*, %struct.socket_info** %5, align 8
  %86 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %85, i32 0, i32 6
  store i64 %84, i64* %86, align 8
  %87 = load %struct.socket*, %struct.socket** %4, align 8
  %88 = getelementptr inbounds %struct.socket, %struct.socket* %87, i32 0, i32 2
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.socket_info*, %struct.socket_info** %5, align 8
  %92 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %91, i32 0, i32 5
  store i32 %90, i32* %92, align 8
  %93 = load %struct.socket*, %struct.socket** %4, align 8
  %94 = getelementptr inbounds %struct.socket, %struct.socket* %93, i32 0, i32 2
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.socket_info*, %struct.socket_info** %5, align 8
  %98 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %97, i32 0, i32 4
  store i32 %96, i32* %98, align 4
  %99 = load %struct.socket*, %struct.socket** %4, align 8
  %100 = getelementptr inbounds %struct.socket, %struct.socket* %99, i32 0, i32 2
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.socket_info*, %struct.socket_info** %5, align 8
  %104 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %103, i32 0, i32 3
  store i32 %102, i32* %104, align 8
  %105 = load %struct.socket*, %struct.socket** %4, align 8
  %106 = getelementptr inbounds %struct.socket, %struct.socket* %105, i32 0, i32 2
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.socket_info*, %struct.socket_info** %5, align 8
  %110 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %109, i32 0, i32 2
  store i32 %108, i32* %110, align 4
  %111 = load %struct.socket*, %struct.socket** %4, align 8
  %112 = getelementptr inbounds %struct.socket, %struct.socket* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.socket_info*, %struct.socket_info** %5, align 8
  %115 = getelementptr inbounds %struct.socket_info, %struct.socket_info* %114, i32 0, i32 1
  store i32 %113, i32* %115, align 8
  store i32 1, i32* %3, align 4
  br label %116

116:                                              ; preds = %76, %75
  %117 = load i32, i32* %3, align 4
  ret i32 %117
}

declare dso_local i32 @getsockname(i32, i32*, i32*) #1

declare dso_local i32 @getname(%union.sockaddr_all*, i8*, i32) #1

declare dso_local i32 @getpeername(i32, i32*, i32*) #1

declare dso_local i32 @udp_socket_address(%struct.socket*, i32, %union.sockaddr_all*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
