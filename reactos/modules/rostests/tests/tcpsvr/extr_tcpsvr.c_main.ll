; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/tests/tcpsvr/extr_tcpsvr.c_main.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/tests/tcpsvr/extr_tcpsvr.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.sockaddr = type { i32 }

@MAX_MSG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Could not initialize winsock dll.\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"cannot open socket \00", align 1
@ERROR = common dso_local global i32 0, align 4
@INADDR_ANY = common dso_local global i32 0, align 4
@SERVER_PORT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"cannot bind port \00", align 1
@.str.3 = private unnamed_addr constant [158 x i8] c"%s: \0ATo start test, Please telnet to localhost (127.0.0.1) port 23 \0AWhen connected input raw data followed by End of Line\0ATest is now running on TCP port %u\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"cannot accept connection \00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"%s: received from %s:TCP%d : %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.sockaddr_in, align 4
  %13 = alloca %struct.sockaddr_in, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %17 = load i32, i32* @MAX_MSG, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %14, align 8
  %20 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %15, align 8
  %21 = call i32 @MAKEWORD(i32 2, i32 2)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = call i64 @WSAStartup(i32 %22, i32* %7)
  store i64 %23, i64* %8, align 8
  %24 = load i64, i64* %8, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %2
  %27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* @FALSE, align 4
  store i32 %28, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %99

29:                                               ; preds = %2
  %30 = load i32, i32* @AF_INET, align 4
  %31 = load i32, i32* @SOCK_STREAM, align 4
  %32 = call i32 @socket(i32 %30, i32 %31, i32 0)
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %29
  %36 = call i32 @perror(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %37 = call i32 (...) @WSACleanup()
  %38 = load i32, i32* @ERROR, align 4
  store i32 %38, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %99

39:                                               ; preds = %29
  %40 = load i32, i32* @AF_INET, align 4
  %41 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %13, i32 0, i32 2
  store i32 %40, i32* %41, align 4
  %42 = load i32, i32* @INADDR_ANY, align 4
  %43 = call i32 @htonl(i32 %42)
  %44 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %13, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 4
  %46 = load i32, i32* @SERVER_PORT, align 4
  %47 = call i32 @htons(i32 %46)
  %48 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %13, i32 0, i32 0
  store i32 %47, i32* %48, align 4
  %49 = load i32, i32* %9, align 4
  %50 = bitcast %struct.sockaddr_in* %13 to %struct.sockaddr*
  %51 = call i64 @bind(i32 %49, %struct.sockaddr* %50, i32 12)
  %52 = icmp slt i64 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %39
  %54 = call i32 @perror(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %55 = call i32 (...) @WSACleanup()
  %56 = load i32, i32* @ERROR, align 4
  store i32 %56, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %99

57:                                               ; preds = %39
  %58 = load i32, i32* %9, align 4
  %59 = call i32 @listen(i32 %58, i32 5)
  br label %60

60:                                               ; preds = %98, %57
  br label %61

61:                                               ; preds = %60
  %62 = load i8**, i8*** %5, align 8
  %63 = getelementptr inbounds i8*, i8** %62, i64 0
  %64 = load i8*, i8** %63, align 8
  %65 = load i32, i32* @SERVER_PORT, align 4
  %66 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([158 x i8], [158 x i8]* @.str.3, i64 0, i64 0), i8* %64, i32 %65)
  store i32 12, i32* %11, align 4
  %67 = load i32, i32* %9, align 4
  %68 = bitcast %struct.sockaddr_in* %12 to %struct.sockaddr*
  %69 = call i32 @accept(i32 %67, %struct.sockaddr* %68, i32* %11)
  store i32 %69, i32* %10, align 4
  %70 = load i32, i32* %10, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %61
  %73 = call i32 @perror(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  %74 = call i32 (...) @WSACleanup()
  %75 = load i32, i32* @ERROR, align 4
  store i32 %75, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %99

76:                                               ; preds = %61
  %77 = load i32, i32* @MAX_MSG, align 4
  %78 = call i32 @memset(i8* %20, i32 0, i32 %77)
  br label %79

79:                                               ; preds = %84, %76
  %80 = load i32, i32* %10, align 4
  %81 = call i32 @read_line(i32 %80, i8* %20)
  %82 = load i32, i32* @ERROR, align 4
  %83 = icmp ne i32 %81, %82
  br i1 %83, label %84, label %98

84:                                               ; preds = %79
  %85 = load i8**, i8*** %5, align 8
  %86 = getelementptr inbounds i8*, i8** %85, i64 0
  %87 = load i8*, i8** %86, align 8
  %88 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %12, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i8* @inet_ntoa(i32 %90)
  %92 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %12, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @ntohs(i32 %93)
  %95 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), i8* %87, i8* %91, i32 %94, i8* %20)
  %96 = load i32, i32* @MAX_MSG, align 4
  %97 = call i32 @memset(i8* %20, i32 0, i32 %96)
  br label %79

98:                                               ; preds = %79
  br label %60

99:                                               ; preds = %72, %53, %35, %26
  %100 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %100)
  %101 = load i32, i32* %3, align 4
  ret i32 %101
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @MAKEWORD(i32, i32) #2

declare dso_local i64 @WSAStartup(i32, i32*) #2

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i32 @socket(i32, i32, i32) #2

declare dso_local i32 @perror(i8*) #2

declare dso_local i32 @WSACleanup(...) #2

declare dso_local i32 @htonl(i32) #2

declare dso_local i32 @htons(i32) #2

declare dso_local i64 @bind(i32, %struct.sockaddr*, i32) #2

declare dso_local i32 @listen(i32, i32) #2

declare dso_local i32 @accept(i32, %struct.sockaddr*, i32*) #2

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i32 @read_line(i32, i8*) #2

declare dso_local i8* @inet_ntoa(i32) #2

declare dso_local i32 @ntohs(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
