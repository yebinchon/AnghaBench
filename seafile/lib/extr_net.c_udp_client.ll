; ModuleID = '/home/carl/AnghaBench/seafile/lib/extr_net.c_udp_client.c'
source_filename = "/home/carl/AnghaBench/seafile/lib/extr_net.c_udp_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i32 }
%struct.addrinfo = type { i32, i32, i32, i32, i32, %struct.addrinfo* }

@AF_UNSPEC = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"udp_client error for %s, %s: %s\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"udp_client error for %s, %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @udp_client(i8* %0, i8* %1, %struct.sockaddr** %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.sockaddr**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.addrinfo, align 8
  %13 = alloca %struct.addrinfo*, align 8
  %14 = alloca %struct.addrinfo*, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.sockaddr** %2, %struct.sockaddr*** %8, align 8
  store i32* %3, i32** %9, align 8
  %15 = call i32 @memset(%struct.addrinfo* %12, i32 0, i32 32)
  %16 = load i32, i32* @AF_UNSPEC, align 4
  %17 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %12, i32 0, i32 4
  store i32 %16, i32* %17, align 8
  %18 = load i32, i32* @SOCK_DGRAM, align 4
  %19 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %12, i32 0, i32 3
  store i32 %18, i32* %19, align 4
  %20 = load i8*, i8** %6, align 8
  %21 = load i8*, i8** %7, align 8
  %22 = call i32 @getaddrinfo(i8* %20, i8* %21, %struct.addrinfo* %12, %struct.addrinfo** %13)
  store i32 %22, i32* %11, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %4
  %25 = load i8*, i8** %6, align 8
  %26 = load i8*, i8** %7, align 8
  %27 = load i32, i32* %11, align 4
  %28 = call i32 @gai_strerror(i32 %27)
  %29 = call i32 (i8*, i8*, i8*, ...) @ccnet_warning(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i8* %25, i8* %26, i32 %28)
  store i32 -1, i32* %5, align 4
  br label %83

30:                                               ; preds = %4
  %31 = load %struct.addrinfo*, %struct.addrinfo** %13, align 8
  store %struct.addrinfo* %31, %struct.addrinfo** %14, align 8
  br label %32

32:                                               ; preds = %47, %30
  %33 = load %struct.addrinfo*, %struct.addrinfo** %13, align 8
  %34 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.addrinfo*, %struct.addrinfo** %13, align 8
  %37 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.addrinfo*, %struct.addrinfo** %13, align 8
  %40 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @socket(i32 %35, i32 %38, i32 %41)
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* %10, align 4
  %44 = icmp sge i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %32
  br label %52

46:                                               ; preds = %32
  br label %47

47:                                               ; preds = %46
  %48 = load %struct.addrinfo*, %struct.addrinfo** %13, align 8
  %49 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %48, i32 0, i32 5
  %50 = load %struct.addrinfo*, %struct.addrinfo** %49, align 8
  store %struct.addrinfo* %50, %struct.addrinfo** %13, align 8
  %51 = icmp ne %struct.addrinfo* %50, null
  br i1 %51, label %32, label %52

52:                                               ; preds = %47, %45
  %53 = load %struct.addrinfo*, %struct.addrinfo** %13, align 8
  %54 = icmp eq %struct.addrinfo* %53, null
  br i1 %54, label %55, label %61

55:                                               ; preds = %52
  %56 = load i8*, i8** %6, align 8
  %57 = load i8*, i8** %7, align 8
  %58 = call i32 (i8*, i8*, i8*, ...) @ccnet_warning(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i8* %56, i8* %57)
  %59 = load %struct.addrinfo*, %struct.addrinfo** %14, align 8
  %60 = call i32 @freeaddrinfo(%struct.addrinfo* %59)
  store i32 -1, i32* %5, align 4
  br label %83

61:                                               ; preds = %52
  %62 = load %struct.addrinfo*, %struct.addrinfo** %13, align 8
  %63 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call %struct.sockaddr* @malloc(i32 %64)
  %66 = load %struct.sockaddr**, %struct.sockaddr*** %8, align 8
  store %struct.sockaddr* %65, %struct.sockaddr** %66, align 8
  %67 = load %struct.sockaddr**, %struct.sockaddr*** %8, align 8
  %68 = load %struct.sockaddr*, %struct.sockaddr** %67, align 8
  %69 = load %struct.addrinfo*, %struct.addrinfo** %13, align 8
  %70 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.addrinfo*, %struct.addrinfo** %13, align 8
  %73 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @memcpy(%struct.sockaddr* %68, i32 %71, i32 %74)
  %76 = load %struct.addrinfo*, %struct.addrinfo** %13, align 8
  %77 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i32*, i32** %9, align 8
  store i32 %78, i32* %79, align 4
  %80 = load %struct.addrinfo*, %struct.addrinfo** %14, align 8
  %81 = call i32 @freeaddrinfo(%struct.addrinfo* %80)
  %82 = load i32, i32* %10, align 4
  store i32 %82, i32* %5, align 4
  br label %83

83:                                               ; preds = %61, %55, %24
  %84 = load i32, i32* %5, align 4
  ret i32 %84
}

declare dso_local i32 @memset(%struct.addrinfo*, i32, i32) #1

declare dso_local i32 @getaddrinfo(i8*, i8*, %struct.addrinfo*, %struct.addrinfo**) #1

declare dso_local i32 @ccnet_warning(i8*, i8*, i8*, ...) #1

declare dso_local i32 @gai_strerror(i32) #1

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @freeaddrinfo(%struct.addrinfo*) #1

declare dso_local %struct.sockaddr* @malloc(i32) #1

declare dso_local i32 @memcpy(%struct.sockaddr*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
