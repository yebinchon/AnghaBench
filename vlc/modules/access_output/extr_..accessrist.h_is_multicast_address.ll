; ModuleID = '/home/carl/AnghaBench/vlc/modules/access_output/extr_..accessrist.h_is_multicast_address.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access_output/extr_..accessrist.h_is_multicast_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.addrinfo = type { i32, i64, i32, i32 }

@AI_NUMERICSERV = common dso_local global i32 0, align 4
@AI_IDN = common dso_local global i32 0, align 4
@AI_PASSIVE = common dso_local global i32 0, align 4
@IPPROTO_UDP = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i64 0, align 8
@AF_INET6 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c"[ff00\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"[FF00\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @is_multicast_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_multicast_address(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.addrinfo, align 8
  %7 = alloca %struct.addrinfo*, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i32 0, i32* %5, align 4
  %9 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %6, i32 0, i32 0
  %10 = load i32, i32* @AI_NUMERICSERV, align 4
  %11 = load i32, i32* @AI_IDN, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @AI_PASSIVE, align 4
  %14 = or i32 %12, %13
  store i32 %14, i32* %9, align 8
  %15 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %6, i32 0, i32 1
  store i64 0, i64* %15, align 8
  %16 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %6, i32 0, i32 2
  %17 = load i32, i32* @IPPROTO_UDP, align 4
  store i32 %17, i32* %16, align 8
  %18 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %6, i32 0, i32 3
  %19 = load i32, i32* @SOCK_DGRAM, align 4
  store i32 %19, i32* %18, align 4
  %20 = load i8*, i8** %3, align 8
  %21 = call i32 @vlc_getaddrinfo(i8* %20, i32 0, %struct.addrinfo* %6, %struct.addrinfo** %7)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %63

25:                                               ; preds = %1
  %26 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %27 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @AF_INET, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %37

31:                                               ; preds = %25
  %32 = load i8*, i8** %3, align 8
  %33 = call i32 @inet_addr(i8* %32)
  %34 = call i64 @ntohl(i32 %33)
  store i64 %34, i64* %8, align 8
  %35 = load i64, i64* %8, align 8
  %36 = call i32 @IN_MULTICAST(i64 %35)
  store i32 %36, i32* %5, align 4
  br label %58

37:                                               ; preds = %25
  %38 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %39 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @AF_INET6, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %57

43:                                               ; preds = %37
  %44 = load i8*, i8** %3, align 8
  %45 = call i32 @strlen(i8* %44)
  %46 = icmp sge i32 %45, 5
  br i1 %46, label %47, label %56

47:                                               ; preds = %43
  %48 = load i8*, i8** %3, align 8
  %49 = call i64 @strncmp(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %48, i32 5)
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %55, label %51

51:                                               ; preds = %47
  %52 = load i8*, i8** %3, align 8
  %53 = call i64 @strncmp(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %52, i32 5)
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %51, %47
  store i32 1, i32* %5, align 4
  br label %56

56:                                               ; preds = %55, %51, %43
  br label %57

57:                                               ; preds = %56, %37
  br label %58

58:                                               ; preds = %57, %31
  br label %59

59:                                               ; preds = %58
  %60 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %61 = call i32 @freeaddrinfo(%struct.addrinfo* %60)
  %62 = load i32, i32* %5, align 4
  store i32 %62, i32* %2, align 4
  br label %63

63:                                               ; preds = %59, %24
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local i32 @vlc_getaddrinfo(i8*, i32, %struct.addrinfo*, %struct.addrinfo**) #1

declare dso_local i64 @ntohl(i32) #1

declare dso_local i32 @inet_addr(i8*) #1

declare dso_local i32 @IN_MULTICAST(i64) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @freeaddrinfo(%struct.addrinfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
