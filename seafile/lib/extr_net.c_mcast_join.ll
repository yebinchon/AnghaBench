; ModuleID = '/home/carl/AnghaBench/seafile/lib/extr_net.c_mcast_join.c'
source_filename = "/home/carl/AnghaBench/seafile/lib/extr_net.c_mcast_join.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i32 }
%struct.ip_mreq = type { i64, i64, %struct.TYPE_4__, %struct.TYPE_4__, %struct.TYPE_3__, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.ifreq = type { i32, i32 }
%struct.sockaddr_in = type { %struct.sockaddr }
%struct.ipv6_mreq = type { i64, i64, %struct.TYPE_4__, %struct.TYPE_4__, %struct.TYPE_3__, %struct.TYPE_4__ }

@ENXIO = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@IFNAMSIZ = common dso_local global i32 0, align 4
@SIOCGIFADDR = common dso_local global i32 0, align 4
@INADDR_ANY = common dso_local global i32 0, align 4
@IPPROTO_IP = common dso_local global i32 0, align 4
@IP_ADD_MEMBERSHIP = common dso_local global i32 0, align 4
@EAFNOSUPPORT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IPPROTO_IPV6 = common dso_local global i32 0, align 4
@IPV6_JOIN_GROUP = common dso_local global i32 0, align 4
@MCAST_JOIN_GROUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.sockaddr*, i32, i8*, i64)* @mcast_join to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mcast_join(i32 %0, %struct.sockaddr* %1, i32 %2, i8* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.sockaddr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.ip_mreq, align 8
  %13 = alloca %struct.ifreq, align 4
  store i32 %0, i32* %7, align 4
  store %struct.sockaddr* %1, %struct.sockaddr** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  %14 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %15 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  switch i32 %16, label %68 [
    i32 129, label %17
  ]

17:                                               ; preds = %5
  %18 = getelementptr inbounds %struct.ip_mreq, %struct.ip_mreq* %12, i32 0, i32 4
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %21 = bitcast %struct.sockaddr* %20 to %struct.sockaddr_in*
  %22 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %21, i32 0, i32 0
  %23 = call i32 @memcpy(%struct.TYPE_4__* %19, %struct.sockaddr* %22, i32 4)
  %24 = load i64, i64* %11, align 8
  %25 = icmp sgt i64 %24, 0
  br i1 %25, label %26, label %35

26:                                               ; preds = %17
  %27 = load i64, i64* %11, align 8
  %28 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %13, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32* @if_indextoname(i64 %27, i32 %29)
  %31 = icmp eq i32* %30, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %26
  %33 = load i32, i32* @ENXIO, align 4
  store i32 %33, i32* @errno, align 4
  store i32 -1, i32* %6, align 4
  br label %70

34:                                               ; preds = %26
  br label %44

35:                                               ; preds = %17
  %36 = load i8*, i8** %10, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %56

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %13, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i8*, i8** %10, align 8
  %42 = load i32, i32* @IFNAMSIZ, align 4
  %43 = call i32 @strncpy(i32 %40, i8* %41, i32 %42)
  br label %44

44:                                               ; preds = %38, %34
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* @SIOCGIFADDR, align 4
  %47 = call i32 @ioctl(i32 %45, i32 %46, %struct.ifreq* %13)
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  store i32 -1, i32* %6, align 4
  br label %70

50:                                               ; preds = %44
  %51 = getelementptr inbounds %struct.ip_mreq, %struct.ip_mreq* %12, i32 0, i32 3
  %52 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %13, i32 0, i32 0
  %53 = bitcast i32* %52 to %struct.sockaddr_in*
  %54 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %53, i32 0, i32 0
  %55 = call i32 @memcpy(%struct.TYPE_4__* %51, %struct.sockaddr* %54, i32 4)
  br label %61

56:                                               ; preds = %35
  %57 = load i32, i32* @INADDR_ANY, align 4
  %58 = call i32 @htonl(i32 %57)
  %59 = getelementptr inbounds %struct.ip_mreq, %struct.ip_mreq* %12, i32 0, i32 3
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 4
  br label %61

61:                                               ; preds = %56, %50
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* @IPPROTO_IP, align 4
  %65 = load i32, i32* @IP_ADD_MEMBERSHIP, align 4
  %66 = bitcast %struct.ip_mreq* %12 to %struct.ipv6_mreq*
  %67 = call i32 @setsockopt(i32 %63, i32 %64, i32 %65, %struct.ipv6_mreq* %66, i32 32)
  store i32 %67, i32* %6, align 4
  br label %70

68:                                               ; preds = %5
  %69 = load i32, i32* @EAFNOSUPPORT, align 4
  store i32 %69, i32* @errno, align 4
  store i32 -1, i32* %6, align 4
  br label %70

70:                                               ; preds = %68, %62, %49, %32
  %71 = load i32, i32* %6, align 4
  ret i32 %71
}

declare dso_local i32 @memcpy(%struct.TYPE_4__*, %struct.sockaddr*, i32) #1

declare dso_local i32* @if_indextoname(i64, i32) #1

declare dso_local i32 @strncpy(i32, i8*, i32) #1

declare dso_local i32 @ioctl(i32, i32, %struct.ifreq*) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @setsockopt(i32, i32, i32, %struct.ipv6_mreq*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
