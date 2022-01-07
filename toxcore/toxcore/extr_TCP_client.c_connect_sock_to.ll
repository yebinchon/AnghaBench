; ModuleID = '/home/carl/AnghaBench/toxcore/toxcore/extr_TCP_client.c_connect_sock_to.c'
source_filename = "/home/carl/AnghaBench/toxcore/toxcore/extr_TCP_client.c_connect_sock_to.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64, %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_11__ = type { i64, %struct.TYPE_12__ }
%struct.sockaddr_storage = type { i32 }
%struct.sockaddr_in = type { i32, i32, i64 }
%struct.sockaddr_in6 = type { i32, i32, i64 }
%struct.sockaddr = type { i32 }

@TCP_PROXY_NONE = common dso_local global i64 0, align 8
@AF_INET = common dso_local global i64 0, align 8
@AF_INET6 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_12__*, %struct.TYPE_11__*)* @connect_sock_to to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @connect_sock_to(i32 %0, %struct.TYPE_12__* byval(%struct.TYPE_12__) align 8 %1, %struct.TYPE_11__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca %struct.sockaddr_storage, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.sockaddr_in*, align 8
  %10 = alloca %struct.sockaddr_in6*, align 8
  store i32 %0, i32* %5, align 4
  store %struct.TYPE_11__* %2, %struct.TYPE_11__** %6, align 8
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @TCP_PROXY_NONE, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %21

16:                                               ; preds = %3
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 1
  %19 = bitcast %struct.TYPE_12__* %1 to i8*
  %20 = bitcast %struct.TYPE_12__* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %19, i8* align 8 %20, i64 24, i1 false)
  br label %21

21:                                               ; preds = %16, %3
  %22 = bitcast %struct.sockaddr_storage* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %22, i8 0, i64 4, i1 false)
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %1, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @AF_INET, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %43

28:                                               ; preds = %21
  %29 = bitcast %struct.sockaddr_storage* %7 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %29, %struct.sockaddr_in** %9, align 8
  store i64 16, i64* %8, align 8
  %30 = load i64, i64* @AF_INET, align 8
  %31 = load %struct.sockaddr_in*, %struct.sockaddr_in** %9, align 8
  %32 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %31, i32 0, i32 2
  store i64 %30, i64* %32, align 8
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %1, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.sockaddr_in*, %struct.sockaddr_in** %9, align 8
  %38 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %1, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.sockaddr_in*, %struct.sockaddr_in** %9, align 8
  %42 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  br label %66

43:                                               ; preds = %21
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %1, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @AF_INET6, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %64

49:                                               ; preds = %43
  %50 = bitcast %struct.sockaddr_storage* %7 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %50, %struct.sockaddr_in6** %10, align 8
  store i64 16, i64* %8, align 8
  %51 = load i64, i64* @AF_INET6, align 8
  %52 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %10, align 8
  %53 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %52, i32 0, i32 2
  store i64 %51, i64* %53, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %1, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %10, align 8
  %59 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 4
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %1, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %10, align 8
  %63 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 8
  br label %65

64:                                               ; preds = %43
  store i32 0, i32* %4, align 4
  br label %71

65:                                               ; preds = %49
  br label %66

66:                                               ; preds = %65, %28
  %67 = load i32, i32* %5, align 4
  %68 = bitcast %struct.sockaddr_storage* %7 to %struct.sockaddr*
  %69 = load i64, i64* %8, align 8
  %70 = call i32 @connect(i32 %67, %struct.sockaddr* %68, i64 %69)
  store i32 1, i32* %4, align 4
  br label %71

71:                                               ; preds = %66, %64
  %72 = load i32, i32* %4, align 4
  ret i32 %72
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @connect(i32, %struct.sockaddr*, i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
