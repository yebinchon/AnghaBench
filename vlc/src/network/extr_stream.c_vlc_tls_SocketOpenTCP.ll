; ModuleID = '/home/carl/AnghaBench/vlc/src/network/extr_stream.c_vlc_tls_SocketOpenTCP.c'
source_filename = "/home/carl/AnghaBench/vlc/src/network/extr_stream.c_vlc_tls_SocketOpenTCP.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.addrinfo = type { %struct.addrinfo*, i32, i32 }

@IPPROTO_TCP = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"resolving %s ...\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"cannot resolve %s port %u: %s\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"connecting to %s port %u ...\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"connection error: %s\00", align 1
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @vlc_tls_SocketOpenTCP(i32* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.addrinfo, align 8
  %9 = alloca %struct.addrinfo*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.addrinfo*, align 8
  %12 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %8, i32 0, i32 0
  store %struct.addrinfo* null, %struct.addrinfo** %13, align 8
  %14 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %8, i32 0, i32 1
  %15 = load i32, i32* @IPPROTO_TCP, align 4
  store i32 %15, i32* %14, align 8
  %16 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %8, i32 0, i32 2
  %17 = load i32, i32* @SOCK_STREAM, align 4
  store i32 %17, i32* %16, align 4
  %18 = load i8*, i8** %6, align 8
  %19 = icmp ne i8* %18, null
  %20 = zext i1 %19 to i32
  %21 = call i32 @assert(i32 %20)
  %22 = load i32*, i32** %5, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = call i32 (i32*, i8*, i8*, ...) @msg_Dbg(i32* %22, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* %23)
  %25 = load i8*, i8** %6, align 8
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @vlc_getaddrinfo_i11e(i8* %25, i32 %26, %struct.addrinfo* %8, %struct.addrinfo** %9)
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %10, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %3
  %31 = load i32*, i32** %5, align 8
  %32 = load i8*, i8** %6, align 8
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* %10, align 4
  %35 = call i32 @gai_strerror(i32 %34)
  %36 = call i32 (i32*, i8*, i8*, ...) @msg_Err(i32* %31, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i8* %32, i32 %33, i32 %35)
  store i32* null, i32** %4, align 8
  br label %69

37:                                               ; preds = %3
  %38 = load i32*, i32** %5, align 8
  %39 = load i8*, i8** %6, align 8
  %40 = load i32, i32* %7, align 4
  %41 = call i32 (i32*, i8*, i8*, ...) @msg_Dbg(i32* %38, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i8* %39, i32 %40)
  %42 = load %struct.addrinfo*, %struct.addrinfo** %9, align 8
  store %struct.addrinfo* %42, %struct.addrinfo** %11, align 8
  br label %43

43:                                               ; preds = %62, %37
  %44 = load %struct.addrinfo*, %struct.addrinfo** %11, align 8
  %45 = icmp ne %struct.addrinfo* %44, null
  br i1 %45, label %46, label %66

46:                                               ; preds = %43
  %47 = load %struct.addrinfo*, %struct.addrinfo** %11, align 8
  %48 = call i32* @vlc_tls_SocketOpenAddrInfo(%struct.addrinfo* %47, i32 0)
  store i32* %48, i32** %12, align 8
  %49 = load i32*, i32** %12, align 8
  %50 = icmp eq i32* %49, null
  br i1 %50, label %51, label %58

51:                                               ; preds = %46
  %52 = load i32*, i32** %5, align 8
  %53 = load i32, i32* @errno, align 4
  %54 = call i32 @vlc_strerror_c(i32 %53)
  %55 = sext i32 %54 to i64
  %56 = inttoptr i64 %55 to i8*
  %57 = call i32 (i32*, i8*, i8*, ...) @msg_Err(i32* %52, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i8* %56)
  br label %62

58:                                               ; preds = %46
  %59 = load %struct.addrinfo*, %struct.addrinfo** %9, align 8
  %60 = call i32 @freeaddrinfo(%struct.addrinfo* %59)
  %61 = load i32*, i32** %12, align 8
  store i32* %61, i32** %4, align 8
  br label %69

62:                                               ; preds = %51
  %63 = load %struct.addrinfo*, %struct.addrinfo** %11, align 8
  %64 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %63, i32 0, i32 0
  %65 = load %struct.addrinfo*, %struct.addrinfo** %64, align 8
  store %struct.addrinfo* %65, %struct.addrinfo** %11, align 8
  br label %43

66:                                               ; preds = %43
  %67 = load %struct.addrinfo*, %struct.addrinfo** %9, align 8
  %68 = call i32 @freeaddrinfo(%struct.addrinfo* %67)
  store i32* null, i32** %4, align 8
  br label %69

69:                                               ; preds = %66, %58, %30
  %70 = load i32*, i32** %4, align 8
  ret i32* %70
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @msg_Dbg(i32*, i8*, i8*, ...) #1

declare dso_local i32 @vlc_getaddrinfo_i11e(i8*, i32, %struct.addrinfo*, %struct.addrinfo**) #1

declare dso_local i32 @msg_Err(i32*, i8*, i8*, ...) #1

declare dso_local i32 @gai_strerror(i32) #1

declare dso_local i32* @vlc_tls_SocketOpenAddrInfo(%struct.addrinfo*, i32) #1

declare dso_local i32 @vlc_strerror_c(i32) #1

declare dso_local i32 @freeaddrinfo(%struct.addrinfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
