; ModuleID = '/home/carl/AnghaBench/vlc/src/network/extr_tls.c_vlc_tls_SocketOpenTLS.c'
source_filename = "/home/carl/AnghaBench/vlc/src/network/extr_tls.c_vlc_tls_SocketOpenTLS.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.addrinfo = type { %struct.addrinfo*, i32, i32 }

@IPPROTO_TCP = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"resolving %s ...\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"cannot resolve %s port %u: %s\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"socket error: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"connection error: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @vlc_tls_SocketOpenTLS(i32* %0, i8* %1, i32 %2, i8* %3, i8** %4, i8** %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8**, align 8
  %13 = alloca i8**, align 8
  %14 = alloca %struct.addrinfo, align 8
  %15 = alloca %struct.addrinfo*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.addrinfo*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  store i32* %0, i32** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i8* %3, i8** %11, align 8
  store i8** %4, i8*** %12, align 8
  store i8** %5, i8*** %13, align 8
  %20 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %14, i32 0, i32 0
  store %struct.addrinfo* null, %struct.addrinfo** %20, align 8
  %21 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %14, i32 0, i32 1
  %22 = load i32, i32* @IPPROTO_TCP, align 4
  store i32 %22, i32* %21, align 8
  %23 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %14, i32 0, i32 2
  %24 = load i32, i32* @SOCK_STREAM, align 4
  store i32 %24, i32* %23, align 4
  %25 = load i32*, i32** %8, align 8
  %26 = load i8*, i8** %9, align 8
  %27 = call i32 @msg_Dbg(i32* %25, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* %26)
  %28 = load i8*, i8** %9, align 8
  %29 = load i32, i32* %10, align 4
  %30 = call i32 @vlc_getaddrinfo_i11e(i8* %28, i32 %29, %struct.addrinfo* %14, %struct.addrinfo** %15)
  store i32 %30, i32* %16, align 4
  %31 = load i32, i32* %16, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %6
  %34 = load i32*, i32** %8, align 8
  %35 = load i8*, i8** %9, align 8
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* %16, align 4
  %38 = call i32 @gai_strerror(i32 %37)
  %39 = call i32 (i32*, i8*, i8*, ...) @msg_Err(i32* %34, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i8* %35, i32 %36, i32 %38)
  store i32* null, i32** %7, align 8
  br label %87

40:                                               ; preds = %6
  %41 = load %struct.addrinfo*, %struct.addrinfo** %15, align 8
  store %struct.addrinfo* %41, %struct.addrinfo** %17, align 8
  br label %42

42:                                               ; preds = %80, %40
  %43 = load %struct.addrinfo*, %struct.addrinfo** %17, align 8
  %44 = icmp ne %struct.addrinfo* %43, null
  br i1 %44, label %45, label %84

45:                                               ; preds = %42
  %46 = load %struct.addrinfo*, %struct.addrinfo** %17, align 8
  %47 = call i32* @vlc_tls_SocketOpenAddrInfo(%struct.addrinfo* %46, i32 1)
  store i32* %47, i32** %18, align 8
  %48 = load i32*, i32** %18, align 8
  %49 = icmp eq i32* %48, null
  br i1 %49, label %50, label %57

50:                                               ; preds = %45
  %51 = load i32*, i32** %8, align 8
  %52 = load i32, i32* @errno, align 4
  %53 = call i32 @vlc_strerror_c(i32 %52)
  %54 = sext i32 %53 to i64
  %55 = inttoptr i64 %54 to i8*
  %56 = call i32 (i32*, i8*, i8*, ...) @msg_Err(i32* %51, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i8* %55)
  br label %80

57:                                               ; preds = %45
  %58 = load i32*, i32** %8, align 8
  %59 = load i32*, i32** %18, align 8
  %60 = load i8*, i8** %9, align 8
  %61 = load i8*, i8** %11, align 8
  %62 = load i8**, i8*** %12, align 8
  %63 = load i8**, i8*** %13, align 8
  %64 = call i32* @vlc_tls_ClientSessionCreate(i32* %58, i32* %59, i8* %60, i8* %61, i8** %62, i8** %63)
  store i32* %64, i32** %19, align 8
  %65 = load i32*, i32** %19, align 8
  %66 = icmp ne i32* %65, null
  br i1 %66, label %67, label %71

67:                                               ; preds = %57
  %68 = load %struct.addrinfo*, %struct.addrinfo** %15, align 8
  %69 = call i32 @freeaddrinfo(%struct.addrinfo* %68)
  %70 = load i32*, i32** %19, align 8
  store i32* %70, i32** %7, align 8
  br label %87

71:                                               ; preds = %57
  %72 = load i32*, i32** %8, align 8
  %73 = load i32, i32* @errno, align 4
  %74 = call i32 @vlc_strerror_c(i32 %73)
  %75 = sext i32 %74 to i64
  %76 = inttoptr i64 %75 to i8*
  %77 = call i32 (i32*, i8*, i8*, ...) @msg_Err(i32* %72, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i8* %76)
  %78 = load i32*, i32** %18, align 8
  %79 = call i32 @vlc_tls_SessionDelete(i32* %78)
  br label %80

80:                                               ; preds = %71, %50
  %81 = load %struct.addrinfo*, %struct.addrinfo** %17, align 8
  %82 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %81, i32 0, i32 0
  %83 = load %struct.addrinfo*, %struct.addrinfo** %82, align 8
  store %struct.addrinfo* %83, %struct.addrinfo** %17, align 8
  br label %42

84:                                               ; preds = %42
  %85 = load %struct.addrinfo*, %struct.addrinfo** %15, align 8
  %86 = call i32 @freeaddrinfo(%struct.addrinfo* %85)
  store i32* null, i32** %7, align 8
  br label %87

87:                                               ; preds = %84, %67, %33
  %88 = load i32*, i32** %7, align 8
  ret i32* %88
}

declare dso_local i32 @msg_Dbg(i32*, i8*, i8*) #1

declare dso_local i32 @vlc_getaddrinfo_i11e(i8*, i32, %struct.addrinfo*, %struct.addrinfo**) #1

declare dso_local i32 @msg_Err(i32*, i8*, i8*, ...) #1

declare dso_local i32 @gai_strerror(i32) #1

declare dso_local i32* @vlc_tls_SocketOpenAddrInfo(%struct.addrinfo*, i32) #1

declare dso_local i32 @vlc_strerror_c(i32) #1

declare dso_local i32* @vlc_tls_ClientSessionCreate(i32*, i32*, i8*, i8*, i8**, i8**) #1

declare dso_local i32 @freeaddrinfo(%struct.addrinfo*) #1

declare dso_local i32 @vlc_tls_SessionDelete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
