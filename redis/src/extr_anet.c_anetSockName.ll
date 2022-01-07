; ModuleID = '/home/carl/AnghaBench/redis/src/extr_anet.c_anetSockName.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_anet.c_anetSockName.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_storage = type { i64 }
%struct.sockaddr_in = type { i32, i32 }
%struct.sockaddr_in6 = type { i32, i32 }
%struct.sockaddr = type { i32 }

@AF_INET = common dso_local global i64 0, align 8
@AF_INET6 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @anetSockName(i32 %0, i8* %1, i64 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.sockaddr_storage, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.sockaddr_in*, align 8
  %13 = alloca %struct.sockaddr_in6*, align 8
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 8, i32* %11, align 4
  %14 = load i32, i32* %6, align 4
  %15 = bitcast %struct.sockaddr_storage* %10 to %struct.sockaddr*
  %16 = call i32 @getsockname(i32 %14, %struct.sockaddr* %15, i32* %11)
  %17 = icmp eq i32 %16, -1
  br i1 %17, label %18, label %28

18:                                               ; preds = %4
  %19 = load i32*, i32** %9, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  %22 = load i32*, i32** %9, align 8
  store i32 0, i32* %22, align 4
  br label %23

23:                                               ; preds = %21, %18
  %24 = load i8*, i8** %7, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 0
  store i8 63, i8* %25, align 1
  %26 = load i8*, i8** %7, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 1
  store i8 0, i8* %27, align 1
  store i32 -1, i32* %5, align 4
  br label %78

28:                                               ; preds = %4
  %29 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %10, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @AF_INET, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %55

33:                                               ; preds = %28
  %34 = bitcast %struct.sockaddr_storage* %10 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %34, %struct.sockaddr_in** %12, align 8
  %35 = load i8*, i8** %7, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %45

37:                                               ; preds = %33
  %38 = load i64, i64* @AF_INET, align 8
  %39 = load %struct.sockaddr_in*, %struct.sockaddr_in** %12, align 8
  %40 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %39, i32 0, i32 1
  %41 = bitcast i32* %40 to i8*
  %42 = load i8*, i8** %7, align 8
  %43 = load i64, i64* %8, align 8
  %44 = call i32 @inet_ntop(i64 %38, i8* %41, i8* %42, i64 %43)
  br label %45

45:                                               ; preds = %37, %33
  %46 = load i32*, i32** %9, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %48, label %54

48:                                               ; preds = %45
  %49 = load %struct.sockaddr_in*, %struct.sockaddr_in** %12, align 8
  %50 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @ntohs(i32 %51)
  %53 = load i32*, i32** %9, align 8
  store i32 %52, i32* %53, align 4
  br label %54

54:                                               ; preds = %48, %45
  br label %77

55:                                               ; preds = %28
  %56 = bitcast %struct.sockaddr_storage* %10 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %56, %struct.sockaddr_in6** %13, align 8
  %57 = load i8*, i8** %7, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %59, label %67

59:                                               ; preds = %55
  %60 = load i64, i64* @AF_INET6, align 8
  %61 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %13, align 8
  %62 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %61, i32 0, i32 1
  %63 = bitcast i32* %62 to i8*
  %64 = load i8*, i8** %7, align 8
  %65 = load i64, i64* %8, align 8
  %66 = call i32 @inet_ntop(i64 %60, i8* %63, i8* %64, i64 %65)
  br label %67

67:                                               ; preds = %59, %55
  %68 = load i32*, i32** %9, align 8
  %69 = icmp ne i32* %68, null
  br i1 %69, label %70, label %76

70:                                               ; preds = %67
  %71 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %13, align 8
  %72 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @ntohs(i32 %73)
  %75 = load i32*, i32** %9, align 8
  store i32 %74, i32* %75, align 4
  br label %76

76:                                               ; preds = %70, %67
  br label %77

77:                                               ; preds = %76, %54
  store i32 0, i32* %5, align 4
  br label %78

78:                                               ; preds = %77, %23
  %79 = load i32, i32* %5, align 4
  ret i32 %79
}

declare dso_local i32 @getsockname(i32, %struct.sockaddr*, i32*) #1

declare dso_local i32 @inet_ntop(i64, i8*, i8*, i64) #1

declare dso_local i32 @ntohs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
