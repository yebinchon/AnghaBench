; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/apitests/ws2_32/extr_ioctlsocket.c_Test_ioctlsocket.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/apitests/ws2_32/extr_ioctlsocket.c_Test_ioctlsocket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [33 x i8] c"WSAStartup failed. iResult = %d\0A\00", align 1
@FIONREAD = common dso_local global i32 0, align 4
@SOCKET_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"iResult = %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"BytesAvailable = %ld\0A\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"CreateSocket failed. Aborting test.\0A\00", align 1
@.str.4 = private unnamed_addr constant [48 x i8] c"ConnectToReactOSWebsite failed. Aborting test.\0A\00", align 1
@.str.5 = private unnamed_addr constant [42 x i8] c"GetRequestAndWait failed. Aborting test.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Test_ioctlsocket() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = call i32 @MAKEWORD(i32 2, i32 2)
  %9 = call i32 @WSAStartup(i32 %8, i32* %7)
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = icmp eq i32 %10, 0
  %12 = zext i1 %11 to i32
  %13 = load i32, i32* %3, align 4
  %14 = call i32 (i32, i8*, ...) @ok(i32 %12, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %13)
  store i32 -559038737, i32* %5, align 4
  %15 = load i32, i32* @FIONREAD, align 4
  %16 = call i32 @ioctlsocket(i32 0, i32 %15, i32* %5)
  store i32 %16, i32* %3, align 4
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @SOCKET_ERROR, align 4
  %19 = icmp eq i32 %17, %18
  %20 = zext i1 %19 to i32
  %21 = load i32, i32* %3, align 4
  %22 = call i32 (i32, i8*, ...) @ok(i32 %20, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %21)
  %23 = load i32, i32* %5, align 4
  %24 = icmp eq i32 %23, -559038737
  %25 = zext i1 %24 to i32
  %26 = load i32, i32* %5, align 4
  %27 = call i32 (i32, i8*, ...) @ok(i32 %25, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %26)
  %28 = call i32 @CreateSocket(i32* %4)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %0
  %31 = call i32 (i32, i8*, ...) @ok(i32 0, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  br label %129

32:                                               ; preds = %0
  store i32 -559038737, i32* %5, align 4
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* @FIONREAD, align 4
  %35 = call i32 @ioctlsocket(i32 %33, i32 %34, i32* %5)
  store i32 %35, i32* %3, align 4
  %36 = load i32, i32* %3, align 4
  %37 = icmp eq i32 %36, 0
  %38 = zext i1 %37 to i32
  %39 = load i32, i32* %3, align 4
  %40 = call i32 (i32, i8*, ...) @ok(i32 %38, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %39)
  %41 = load i32, i32* %5, align 4
  %42 = icmp eq i32 %41, 0
  %43 = zext i1 %42 to i32
  %44 = load i32, i32* %5, align 4
  %45 = call i32 (i32, i8*, ...) @ok(i32 %43, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %44)
  %46 = load i32, i32* %4, align 4
  %47 = call i32 @ConnectToReactOSWebsite(i32 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %51, label %49

49:                                               ; preds = %32
  %50 = call i32 (i32, i8*, ...) @ok(i32 0, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  br label %129

51:                                               ; preds = %32
  %52 = load i32, i32* %4, align 4
  %53 = load i32, i32* @FIONREAD, align 4
  %54 = call i32 @ioctlsocket(i32 %52, i32 %53, i32* %5)
  store i32 %54, i32* %3, align 4
  %55 = load i32, i32* %3, align 4
  %56 = icmp eq i32 %55, 0
  %57 = zext i1 %56 to i32
  %58 = load i32, i32* %3, align 4
  %59 = call i32 (i32, i8*, ...) @ok(i32 %57, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %58)
  %60 = load i32, i32* %5, align 4
  %61 = icmp eq i32 %60, 0
  %62 = zext i1 %61 to i32
  %63 = load i32, i32* %5, align 4
  %64 = call i32 (i32, i8*, ...) @ok(i32 %62, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %63)
  %65 = load i32, i32* %4, align 4
  %66 = call i32 @GetRequestAndWait(i32 %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %70, label %68

68:                                               ; preds = %51
  %69 = call i32 (i32, i8*, ...) @ok(i32 0, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  br label %129

70:                                               ; preds = %51
  %71 = load i32, i32* %4, align 4
  %72 = load i32, i32* @FIONREAD, align 4
  %73 = call i32 @ioctlsocket(i32 %71, i32 %72, i32* %5)
  %74 = call i32 @SCKTEST(i32 %73)
  %75 = load i32, i32* %5, align 4
  %76 = icmp ne i32 %75, 0
  %77 = zext i1 %76 to i32
  %78 = load i32, i32* %5, align 4
  %79 = call i32 (i32, i8*, ...) @ok(i32 %77, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %78)
  %80 = load i32, i32* %5, align 4
  %81 = sdiv i32 %80, 2
  store i32 %81, i32* %6, align 4
  %82 = call i32 (...) @GetProcessHeap()
  %83 = load i32, i32* %6, align 4
  %84 = call i64 @HeapAlloc(i32 %82, i32 0, i32 %83)
  store i64 %84, i64* %2, align 8
  %85 = load i32, i32* %4, align 4
  %86 = load i64, i64* %2, align 8
  %87 = load i32, i32* %6, align 4
  %88 = call i32 @recv(i32 %85, i64 %86, i32 %87, i32 0)
  %89 = call i32 @SCKTEST(i32 %88)
  %90 = call i32 (...) @GetProcessHeap()
  %91 = load i64, i64* %2, align 8
  %92 = call i32 @HeapFree(i32 %90, i32 0, i64 %91)
  %93 = load i32, i32* %5, align 4
  %94 = load i32, i32* %6, align 4
  %95 = sub nsw i32 %93, %94
  store i32 %95, i32* %6, align 4
  %96 = load i32, i32* %4, align 4
  %97 = load i32, i32* @FIONREAD, align 4
  %98 = call i32 @ioctlsocket(i32 %96, i32 %97, i32* %5)
  %99 = call i32 @SCKTEST(i32 %98)
  %100 = load i32, i32* %5, align 4
  %101 = load i32, i32* %6, align 4
  %102 = icmp eq i32 %100, %101
  %103 = zext i1 %102 to i32
  %104 = load i32, i32* %5, align 4
  %105 = call i32 (i32, i8*, ...) @ok(i32 %103, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %104)
  %106 = call i32 (...) @GetProcessHeap()
  %107 = load i32, i32* %6, align 4
  %108 = call i64 @HeapAlloc(i32 %106, i32 0, i32 %107)
  store i64 %108, i64* %2, align 8
  %109 = load i32, i32* %4, align 4
  %110 = load i64, i64* %2, align 8
  %111 = load i32, i32* %6, align 4
  %112 = call i32 @recv(i32 %109, i64 %110, i32 %111, i32 0)
  %113 = call i32 @SCKTEST(i32 %112)
  %114 = call i32 (...) @GetProcessHeap()
  %115 = load i64, i64* %2, align 8
  %116 = call i32 @HeapFree(i32 %114, i32 0, i64 %115)
  %117 = load i32, i32* %4, align 4
  %118 = load i32, i32* @FIONREAD, align 4
  %119 = call i32 @ioctlsocket(i32 %117, i32 %118, i32* %5)
  %120 = call i32 @SCKTEST(i32 %119)
  %121 = load i32, i32* %5, align 4
  %122 = icmp eq i32 %121, 0
  %123 = zext i1 %122 to i32
  %124 = load i32, i32* %5, align 4
  %125 = call i32 (i32, i8*, ...) @ok(i32 %123, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %124)
  %126 = load i32, i32* %4, align 4
  %127 = call i32 @closesocket(i32 %126)
  %128 = call i32 (...) @WSACleanup()
  store i32 1, i32* %1, align 4
  br label %129

129:                                              ; preds = %70, %68, %49, %30
  %130 = load i32, i32* %1, align 4
  ret i32 %130
}

declare dso_local i32 @WSAStartup(i32, i32*) #1

declare dso_local i32 @MAKEWORD(i32, i32) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @ioctlsocket(i32, i32, i32*) #1

declare dso_local i32 @CreateSocket(i32*) #1

declare dso_local i32 @ConnectToReactOSWebsite(i32) #1

declare dso_local i32 @GetRequestAndWait(i32) #1

declare dso_local i32 @SCKTEST(i32) #1

declare dso_local i64 @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @recv(i32, i64, i32, i32) #1

declare dso_local i32 @HeapFree(i32, i32, i64) #1

declare dso_local i32 @closesocket(i32) #1

declare dso_local i32 @WSACleanup(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
