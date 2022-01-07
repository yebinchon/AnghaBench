; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/CHMLib/src/extr_chm_http.c_chmhttp_server.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/CHMLib/src/extr_chm_http.c_chmhttp_server.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.chmHttpServer = type { i32, i32* }
%struct.chmHttpSlave = type { i32, %struct.chmHttpServer* }
%struct.sockaddr_in = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.sockaddr = type { i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"couldn't open file '%s'\0A\00", align 1
@AF_INET = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@config_port = common dso_local global i32 0, align 4
@config_bind = common dso_local global i8* null, align 8
@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_REUSEADDR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"setsockopt\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"couldn't bind to ip %s port %d\0A\00", align 1
@_slave = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @chmhttp_server to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @chmhttp_server(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.chmHttpServer, align 8
  %4 = alloca %struct.chmHttpSlave*, align 8
  %5 = alloca %struct.sockaddr_in, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store i32 1, i32* %8, align 4
  %9 = load i8*, i8** %2, align 8
  %10 = call i32* @chm_open(i8* %9)
  %11 = getelementptr inbounds %struct.chmHttpServer, %struct.chmHttpServer* %3, i32 0, i32 1
  store i32* %10, i32** %11, align 8
  %12 = icmp eq i32* %10, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %1
  %14 = load i32, i32* @stderr, align 4
  %15 = load i8*, i8** %2, align 8
  %16 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %14, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* %15)
  %17 = call i32 @exit(i32 2) #3
  unreachable

18:                                               ; preds = %1
  %19 = load i32, i32* @AF_INET, align 4
  %20 = load i32, i32* @SOCK_STREAM, align 4
  %21 = call i32 @socket(i32 %19, i32 %20, i32 0)
  %22 = getelementptr inbounds %struct.chmHttpServer, %struct.chmHttpServer* %3, i32 0, i32 0
  store i32 %21, i32* %22, align 8
  %23 = call i32 @memset(%struct.sockaddr_in* %5, i32 0, i32 12)
  %24 = load i32, i32* @AF_INET, align 4
  %25 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %5, i32 0, i32 2
  store i32 %24, i32* %25, align 4
  %26 = load i32, i32* @config_port, align 4
  %27 = call i32 @htons(i32 %26)
  %28 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %5, i32 0, i32 1
  store i32 %27, i32* %28, align 4
  %29 = load i8*, i8** @config_bind, align 8
  %30 = call i32 @inet_addr(i8* %29)
  %31 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %5, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  %33 = getelementptr inbounds %struct.chmHttpServer, %struct.chmHttpServer* %3, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @SOL_SOCKET, align 4
  %36 = load i32, i32* @SO_REUSEADDR, align 4
  %37 = call i64 @setsockopt(i32 %34, i32 %35, i32 %36, i32* %8, i32 4)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %18
  %40 = call i32 @perror(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %41 = call i32 @exit(i32 3) #3
  unreachable

42:                                               ; preds = %18
  %43 = getelementptr inbounds %struct.chmHttpServer, %struct.chmHttpServer* %3, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = bitcast %struct.sockaddr_in* %5 to %struct.sockaddr*
  %46 = call i64 @bind(i32 %44, %struct.sockaddr* %45, i32 12)
  %47 = icmp slt i64 %46, 0
  br i1 %47, label %48, label %58

48:                                               ; preds = %42
  %49 = getelementptr inbounds %struct.chmHttpServer, %struct.chmHttpServer* %3, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @close(i32 %50)
  %52 = getelementptr inbounds %struct.chmHttpServer, %struct.chmHttpServer* %3, i32 0, i32 0
  store i32 -1, i32* %52, align 8
  %53 = load i32, i32* @stderr, align 4
  %54 = load i8*, i8** @config_bind, align 8
  %55 = load i32, i32* @config_port, align 4
  %56 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %53, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i8* %54, i32 %55)
  %57 = call i32 @exit(i32 3) #3
  unreachable

58:                                               ; preds = %42
  %59 = getelementptr inbounds %struct.chmHttpServer, %struct.chmHttpServer* %3, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @listen(i32 %60, i32 75)
  store i32 4, i32* %6, align 4
  br label %62

62:                                               ; preds = %58, %78
  %63 = call i64 @malloc(i32 16)
  %64 = inttoptr i64 %63 to %struct.chmHttpSlave*
  store %struct.chmHttpSlave* %64, %struct.chmHttpSlave** %4, align 8
  %65 = load %struct.chmHttpSlave*, %struct.chmHttpSlave** %4, align 8
  %66 = getelementptr inbounds %struct.chmHttpSlave, %struct.chmHttpSlave* %65, i32 0, i32 1
  store %struct.chmHttpServer* %3, %struct.chmHttpServer** %66, align 8
  %67 = getelementptr inbounds %struct.chmHttpServer, %struct.chmHttpServer* %3, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = bitcast %struct.sockaddr_in* %5 to %struct.sockaddr*
  %70 = call i32 @accept(i32 %68, %struct.sockaddr* %69, i32* %6)
  %71 = load %struct.chmHttpSlave*, %struct.chmHttpSlave** %4, align 8
  %72 = getelementptr inbounds %struct.chmHttpSlave, %struct.chmHttpSlave* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 8
  %73 = load %struct.chmHttpSlave*, %struct.chmHttpSlave** %4, align 8
  %74 = getelementptr inbounds %struct.chmHttpSlave, %struct.chmHttpSlave* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = icmp eq i32 %75, -1
  br i1 %76, label %77, label %78

77:                                               ; preds = %62
  br label %85

78:                                               ; preds = %62
  %79 = load i32, i32* @_slave, align 4
  %80 = load %struct.chmHttpSlave*, %struct.chmHttpSlave** %4, align 8
  %81 = bitcast %struct.chmHttpSlave* %80 to i8*
  %82 = call i32 @pthread_create(i32* %7, i32* null, i32 %79, i8* %81)
  %83 = load i32, i32* %7, align 4
  %84 = call i32 @pthread_detach(i32 %83)
  br label %62

85:                                               ; preds = %77
  %86 = load %struct.chmHttpSlave*, %struct.chmHttpSlave** %4, align 8
  %87 = call i32 @free(%struct.chmHttpSlave* %86)
  ret void
}

declare dso_local i32* @chm_open(i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @memset(%struct.sockaddr_in*, i32, i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @inet_addr(i8*) #1

declare dso_local i64 @setsockopt(i32, i32, i32, i32*, i32) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i64 @bind(i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @listen(i32, i32) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @accept(i32, %struct.sockaddr*, i32*) #1

declare !callback !2 dso_local i32 @pthread_create(i32*, i32*, i32, i8*) #1

declare dso_local i32 @pthread_detach(i32) #1

declare dso_local i32 @free(%struct.chmHttpSlave*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{!3}
!3 = !{i64 2, i64 3, i1 false}
