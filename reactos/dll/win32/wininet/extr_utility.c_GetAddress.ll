; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/wininet/extr_utility.c_GetAddress.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/wininet/extr_utility.c_GetAddress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i32 }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.sockaddr_in = type { i8*, i32 }
%struct.sockaddr_in6 = type { i8*, i32 }

@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [54 x i8] c"failed to get IPv4 address of %s, retrying with IPv6\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"failed to get address of %s\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"address too small\0A\00", align 1
@INET6_ADDRSTRLEN = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @GetAddress(i32* %0, i32 %1, %struct.sockaddr* %2, i32* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.sockaddr*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_6__*, align 8
  %13 = alloca %struct.TYPE_6__, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.sockaddr* %2, %struct.sockaddr** %9, align 8
  store i32* %3, i32** %10, align 8
  store i8* %4, i8** %11, align 8
  store i8* null, i8** %14, align 8
  %16 = load i32*, i32** %7, align 8
  %17 = call i32 @debugstr_w(i32* %16)
  %18 = call i32 @TRACE(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = call i32 @memset(%struct.TYPE_6__* %13, i32 0, i32 12)
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  store i32 129, i32* %20, align 4
  %21 = load i32*, i32** %7, align 8
  %22 = call i32 @GetAddrInfoW(i32* %21, i32* null, %struct.TYPE_6__* %13, %struct.TYPE_6__** %12)
  store i32 %22, i32* %15, align 4
  %23 = load i32, i32* %15, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %5
  %26 = load i32*, i32** %7, align 8
  %27 = call i32 @debugstr_w(i32* %26)
  %28 = call i32 @TRACE(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i32 %27)
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  store i32 128, i32* %29, align 4
  %30 = load i32*, i32** %7, align 8
  %31 = call i32 @GetAddrInfoW(i32* %30, i32* null, %struct.TYPE_6__* %13, %struct.TYPE_6__** %12)
  store i32 %31, i32* %15, align 4
  br label %32

32:                                               ; preds = %25, %5
  %33 = load i32, i32* %15, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %32
  %36 = load i32*, i32** %7, align 8
  %37 = call i32 @debugstr_w(i32* %36)
  %38 = call i32 @TRACE(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %37)
  %39 = load i32, i32* @FALSE, align 4
  store i32 %39, i32* %6, align 4
  br label %103

40:                                               ; preds = %32
  %41 = load i32*, i32** %10, align 8
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = icmp slt i32 %42, %45
  br i1 %46, label %47, label %52

47:                                               ; preds = %40
  %48 = call i32 @WARN(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %50 = call i32 @FreeAddrInfoW(%struct.TYPE_6__* %49)
  %51 = load i32, i32* @FALSE, align 4
  store i32 %51, i32* %6, align 4
  br label %103

52:                                               ; preds = %40
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load i32*, i32** %10, align 8
  store i32 %55, i32* %56, align 4
  %57 = load %struct.sockaddr*, %struct.sockaddr** %9, align 8
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @memcpy(%struct.sockaddr* %57, i32 %60, i32 %63)
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  switch i32 %67, label %88 [
    i32 129, label %68
    i32 128, label %78
  ]

68:                                               ; preds = %52
  %69 = load %struct.sockaddr*, %struct.sockaddr** %9, align 8
  %70 = bitcast %struct.sockaddr* %69 to %struct.sockaddr_in*
  %71 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %70, i32 0, i32 1
  %72 = bitcast i32* %71 to i8*
  store i8* %72, i8** %14, align 8
  %73 = load i32, i32* %8, align 4
  %74 = call i8* @htons(i32 %73)
  %75 = load %struct.sockaddr*, %struct.sockaddr** %9, align 8
  %76 = bitcast %struct.sockaddr* %75 to %struct.sockaddr_in*
  %77 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %76, i32 0, i32 0
  store i8* %74, i8** %77, align 8
  br label %88

78:                                               ; preds = %52
  %79 = load %struct.sockaddr*, %struct.sockaddr** %9, align 8
  %80 = bitcast %struct.sockaddr* %79 to %struct.sockaddr_in6*
  %81 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %80, i32 0, i32 1
  %82 = bitcast i32* %81 to i8*
  store i8* %82, i8** %14, align 8
  %83 = load i32, i32* %8, align 4
  %84 = call i8* @htons(i32 %83)
  %85 = load %struct.sockaddr*, %struct.sockaddr** %9, align 8
  %86 = bitcast %struct.sockaddr* %85 to %struct.sockaddr_in6*
  %87 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %86, i32 0, i32 0
  store i8* %84, i8** %87, align 8
  br label %88

88:                                               ; preds = %52, %78, %68
  %89 = load i8*, i8** %11, align 8
  %90 = icmp ne i8* %89, null
  br i1 %90, label %91, label %99

91:                                               ; preds = %88
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i8*, i8** %14, align 8
  %96 = load i8*, i8** %11, align 8
  %97 = load i32, i32* @INET6_ADDRSTRLEN, align 4
  %98 = call i32 @inet_ntop(i32 %94, i8* %95, i8* %96, i32 %97)
  br label %99

99:                                               ; preds = %91, %88
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %101 = call i32 @FreeAddrInfoW(%struct.TYPE_6__* %100)
  %102 = load i32, i32* @TRUE, align 4
  store i32 %102, i32* %6, align 4
  br label %103

103:                                              ; preds = %99, %47, %35
  %104 = load i32, i32* %6, align 4
  ret i32 %104
}

declare dso_local i32 @TRACE(i8*, i32) #1

declare dso_local i32 @debugstr_w(i32*) #1

declare dso_local i32 @memset(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @GetAddrInfoW(i32*, i32*, %struct.TYPE_6__*, %struct.TYPE_6__**) #1

declare dso_local i32 @WARN(i8*) #1

declare dso_local i32 @FreeAddrInfoW(%struct.TYPE_6__*) #1

declare dso_local i32 @memcpy(%struct.sockaddr*, i32, i32) #1

declare dso_local i8* @htons(i32) #1

declare dso_local i32 @inet_ntop(i32, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
