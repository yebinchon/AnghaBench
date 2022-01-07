; ModuleID = '/home/carl/AnghaBench/tmux/extr_server.c_server_create_socket.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_server.c_server_create_socket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_un = type { i32, i32 }
%struct.sockaddr = type { i32 }

@AF_UNIX = common dso_local global i32 0, align 4
@socket_path = common dso_local global i32 0, align 4
@ENAMETOOLONG = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@S_IXUSR = common dso_local global i32 0, align 4
@S_IXGRP = common dso_local global i32 0, align 4
@S_IRWXO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"error creating %s (%s)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**)* @server_create_socket to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @server_create_socket(i8** %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8**, align 8
  %4 = alloca %struct.sockaddr_un, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8** %0, i8*** %3, align 8
  %9 = call i32 @memset(%struct.sockaddr_un* %4, i32 0, i32 8)
  %10 = load i32, i32* @AF_UNIX, align 4
  %11 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %4, i32 0, i32 1
  store i32 %10, i32* %11, align 4
  %12 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %4, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @socket_path, align 4
  %15 = call i64 @strlcpy(i32 %13, i32 %14, i32 4)
  store i64 %15, i64* %5, align 8
  %16 = load i64, i64* %5, align 8
  %17 = icmp uge i64 %16, 4
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load i32, i32* @ENAMETOOLONG, align 4
  store i32 %19, i32* @errno, align 4
  br label %60

20:                                               ; preds = %1
  %21 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %4, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @unlink(i32 %22)
  %24 = load i32, i32* @AF_UNIX, align 4
  %25 = load i32, i32* @SOCK_STREAM, align 4
  %26 = call i32 @socket(i32 %24, i32 %25, i32 0)
  store i32 %26, i32* %7, align 4
  %27 = icmp eq i32 %26, -1
  br i1 %27, label %28, label %29

28:                                               ; preds = %20
  br label %60

29:                                               ; preds = %20
  %30 = load i32, i32* @S_IXUSR, align 4
  %31 = load i32, i32* @S_IXGRP, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @S_IRWXO, align 4
  %34 = or i32 %32, %33
  %35 = call i32 @umask(i32 %34)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %7, align 4
  %37 = bitcast %struct.sockaddr_un* %4 to %struct.sockaddr*
  %38 = call i32 @bind(i32 %36, %struct.sockaddr* %37, i32 8)
  %39 = icmp eq i32 %38, -1
  br i1 %39, label %40, label %45

40:                                               ; preds = %29
  %41 = load i32, i32* @errno, align 4
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @close(i32 %42)
  %44 = load i32, i32* %8, align 4
  store i32 %44, i32* @errno, align 4
  br label %60

45:                                               ; preds = %29
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @umask(i32 %46)
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @listen(i32 %48, i32 128)
  %50 = icmp eq i32 %49, -1
  br i1 %50, label %51, label %56

51:                                               ; preds = %45
  %52 = load i32, i32* @errno, align 4
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* %7, align 4
  %54 = call i32 @close(i32 %53)
  %55 = load i32, i32* %8, align 4
  store i32 %55, i32* @errno, align 4
  br label %60

56:                                               ; preds = %45
  %57 = load i32, i32* %7, align 4
  %58 = call i32 @setblocking(i32 %57, i32 0)
  %59 = load i32, i32* %7, align 4
  store i32 %59, i32* %2, align 4
  br label %70

60:                                               ; preds = %51, %40, %28, %18
  %61 = load i8**, i8*** %3, align 8
  %62 = icmp ne i8** %61, null
  br i1 %62, label %63, label %69

63:                                               ; preds = %60
  %64 = load i8**, i8*** %3, align 8
  %65 = load i32, i32* @socket_path, align 4
  %66 = load i32, i32* @errno, align 4
  %67 = call i32 @strerror(i32 %66)
  %68 = call i32 @xasprintf(i8** %64, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %65, i32 %67)
  br label %69

69:                                               ; preds = %63, %60
  store i32 -1, i32* %2, align 4
  br label %70

70:                                               ; preds = %69, %56
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

declare dso_local i32 @memset(%struct.sockaddr_un*, i32, i32) #1

declare dso_local i64 @strlcpy(i32, i32, i32) #1

declare dso_local i32 @unlink(i32) #1

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @umask(i32) #1

declare dso_local i32 @bind(i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @listen(i32, i32) #1

declare dso_local i32 @setblocking(i32, i32) #1

declare dso_local i32 @xasprintf(i8**, i8*, i32, i32) #1

declare dso_local i32 @strerror(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
