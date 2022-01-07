; ModuleID = '/home/carl/AnghaBench/xLua/build/luasocket/extr_inet.c_inet_trydisconnect.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luasocket/extr_inet.c_inet_trydisconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in6_addr = type { i32 }
%struct.sockaddr_in = type { %struct.TYPE_2__, i8* }
%struct.TYPE_2__ = type { i32 }
%struct.sockaddr_in6 = type { %struct.in6_addr, i8* }

@AF_UNSPEC = common dso_local global i8* null, align 8
@INADDR_ANY = common dso_local global i32 0, align 4
@IN6ADDR_ANY_INIT = common dso_local global %struct.in6_addr zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @inet_trydisconnect(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.sockaddr_in, align 8
  %9 = alloca %struct.sockaddr_in6, align 8
  %10 = alloca %struct.in6_addr, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %6, align 4
  switch i32 %11, label %39 [
    i32 129, label %12
    i32 128, label %25
  ]

12:                                               ; preds = %3
  %13 = bitcast %struct.sockaddr_in* %8 to i8*
  %14 = call i32 @memset(i8* %13, i32 0, i32 16)
  %15 = load i8*, i8** @AF_UNSPEC, align 8
  %16 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %8, i32 0, i32 1
  store i8* %15, i8** %16, align 8
  %17 = load i32, i32* @INADDR_ANY, align 4
  %18 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %8, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 8
  %20 = load i32, i32* %5, align 4
  %21 = bitcast %struct.sockaddr_in* %8 to i32*
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @socket_connect(i32 %20, i32* %21, i32 16, i32 %22)
  %24 = call i8* @socket_strerror(i32 %23)
  store i8* %24, i8** %4, align 8
  br label %40

25:                                               ; preds = %3
  %26 = bitcast %struct.in6_addr* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %26, i8* align 4 bitcast (%struct.in6_addr* @IN6ADDR_ANY_INIT to i8*), i64 4, i1 false)
  %27 = bitcast %struct.sockaddr_in6* %9 to i8*
  %28 = call i32 @memset(i8* %27, i32 0, i32 16)
  %29 = load i8*, i8** @AF_UNSPEC, align 8
  %30 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %9, i32 0, i32 1
  store i8* %29, i8** %30, align 8
  %31 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %9, i32 0, i32 0
  %32 = bitcast %struct.in6_addr* %31 to i8*
  %33 = bitcast %struct.in6_addr* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %32, i8* align 4 %33, i64 4, i1 false)
  %34 = load i32, i32* %5, align 4
  %35 = bitcast %struct.sockaddr_in6* %9 to i32*
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @socket_connect(i32 %34, i32* %35, i32 16, i32 %36)
  %38 = call i8* @socket_strerror(i32 %37)
  store i8* %38, i8** %4, align 8
  br label %40

39:                                               ; preds = %3
  store i8* null, i8** %4, align 8
  br label %40

40:                                               ; preds = %39, %25, %12
  %41 = load i8*, i8** %4, align 8
  ret i8* %41
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i8* @socket_strerror(i32) #1

declare dso_local i32 @socket_connect(i32, i32*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
