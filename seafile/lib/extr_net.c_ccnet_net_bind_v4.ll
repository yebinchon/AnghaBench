; ModuleID = '/home/carl/AnghaBench/seafile/lib/extr_net.c_ccnet_net_bind_v4.c'
source_filename = "/home/carl/AnghaBench/seafile/lib/extr_net.c_ccnet_net_bind_v4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i32, i32, i32 }
%struct.sockaddr_storage = type { i32 }
%struct.sockaddr = type { i32 }

@AF_INET = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"create socket failed: %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"Bad ip address %s\0A\00", align 1
@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_REUSEADDR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"setsockopt of SO_REUSEADDR error: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"Bind error: %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"getsockname error: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ccnet_net_bind_v4(i8* %0, i32* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.sockaddr_in, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.sockaddr_storage, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 1, i32* %8, align 4
  %11 = load i32, i32* @AF_INET, align 4
  %12 = load i32, i32* @SOCK_STREAM, align 4
  %13 = call i64 @socket(i32 %11, i32 %12, i32 0)
  store i64 %13, i64* %6, align 8
  %14 = load i64, i64* %6, align 8
  %15 = icmp slt i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %2
  %17 = load i32, i32* @errno, align 4
  %18 = call i8* @strerror(i32 %17)
  %19 = call i32 @ccnet_warning(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* %18)
  %20 = call i32 @exit(i32 -1) #3
  unreachable

21:                                               ; preds = %2
  %22 = call i32 @memset(%struct.sockaddr_in* %7, i32 0, i32 12)
  %23 = load i32, i32* @AF_INET, align 4
  %24 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %7, i32 0, i32 2
  store i32 %23, i32* %24, align 4
  %25 = load i8*, i8** %4, align 8
  %26 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %7, i32 0, i32 1
  %27 = call i64 @inet_aton(i8* %25, i32* %26)
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %21
  %30 = load i8*, i8** %4, align 8
  %31 = call i32 @ccnet_warning(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8* %30)
  store i64 -1, i64* %3, align 8
  br label %75

32:                                               ; preds = %21
  %33 = load i32*, i32** %5, align 8
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @htons(i32 %34)
  %36 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %7, i32 0, i32 0
  store i32 %35, i32* %36, align 4
  %37 = load i64, i64* %6, align 8
  %38 = load i32, i32* @SOL_SOCKET, align 4
  %39 = load i32, i32* @SO_REUSEADDR, align 4
  %40 = bitcast i32* %8 to i8*
  %41 = call i64 @setsockopt(i64 %37, i32 %38, i32 %39, i8* %40, i32 4)
  %42 = icmp slt i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %32
  %44 = load i32, i32* @errno, align 4
  %45 = call i8* @strerror(i32 %44)
  %46 = call i32 @ccnet_warning(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i8* %45)
  store i64 -1, i64* %3, align 8
  br label %75

47:                                               ; preds = %32
  %48 = load i64, i64* %6, align 8
  %49 = bitcast %struct.sockaddr_in* %7 to %struct.sockaddr*
  %50 = call i64 @bind(i64 %48, %struct.sockaddr* %49, i32 12)
  %51 = icmp slt i64 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %47
  %53 = load i32, i32* @errno, align 4
  %54 = call i8* @strerror(i32 %53)
  %55 = call i32 @ccnet_warning(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i8* %54)
  store i64 -1, i64* %3, align 8
  br label %75

56:                                               ; preds = %47
  %57 = load i32*, i32** %5, align 8
  %58 = load i32, i32* %57, align 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %73

60:                                               ; preds = %56
  store i32 4, i32* %10, align 4
  %61 = load i64, i64* %6, align 8
  %62 = bitcast %struct.sockaddr_storage* %9 to %struct.sockaddr*
  %63 = call i64 @getsockname(i64 %61, %struct.sockaddr* %62, i32* %10)
  %64 = icmp slt i64 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %60
  %66 = load i32, i32* @errno, align 4
  %67 = call i8* @strerror(i32 %66)
  %68 = call i32 @ccnet_warning(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i8* %67)
  store i64 -1, i64* %3, align 8
  br label %75

69:                                               ; preds = %60
  %70 = bitcast %struct.sockaddr_storage* %9 to %struct.sockaddr*
  %71 = call i32 @sock_port(%struct.sockaddr* %70)
  %72 = load i32*, i32** %5, align 8
  store i32 %71, i32* %72, align 4
  br label %73

73:                                               ; preds = %69, %56
  %74 = load i64, i64* %6, align 8
  store i64 %74, i64* %3, align 8
  br label %75

75:                                               ; preds = %73, %65, %52, %43, %29
  %76 = load i64, i64* %3, align 8
  ret i64 %76
}

declare dso_local i64 @socket(i32, i32, i32) #1

declare dso_local i32 @ccnet_warning(i8*, i8*) #1

declare dso_local i8* @strerror(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @memset(%struct.sockaddr_in*, i32, i32) #1

declare dso_local i64 @inet_aton(i8*, i32*) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i64 @setsockopt(i64, i32, i32, i8*, i32) #1

declare dso_local i64 @bind(i64, %struct.sockaddr*, i32) #1

declare dso_local i64 @getsockname(i64, %struct.sockaddr*, i32*) #1

declare dso_local i32 @sock_port(%struct.sockaddr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
