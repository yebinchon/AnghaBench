; ModuleID = '/home/carl/AnghaBench/vlc/src/network/extr_tcp.c_net_ConnectTCP.c'
source_filename = "/home/carl/AnghaBench/vlc/src/network/extr_tcp.c_net_ConnectTCP.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"socks\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"net: connecting to %s port %d (SOCKS) for %s port %d\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"net: connecting to %s port %d\00", align 1
@SOCK_STREAM = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [11 x i8] c"socks-user\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"socks-pwd\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"SOCKS handshake failed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @net_ConnectTCP(i32* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %14 = load i32*, i32** %4, align 8
  %15 = call i8* @var_InheritString(i32* %14, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i8* %15, i8** %9, align 8
  %16 = load i8*, i8** %9, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %37

18:                                               ; preds = %3
  %19 = load i8*, i8** %9, align 8
  store i8* %19, i8** %7, align 8
  %20 = load i8*, i8** %9, align 8
  %21 = call i8* @strchr(i8* %20, i8 signext 58)
  store i8* %21, i8** %10, align 8
  %22 = load i8*, i8** %10, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %29

24:                                               ; preds = %18
  %25 = load i8*, i8** %10, align 8
  %26 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %26, i8** %10, align 8
  store i8 0, i8* %25, align 1
  %27 = load i8*, i8** %10, align 8
  %28 = call i32 @atoi(i8* %27)
  store i32 %28, i32* %8, align 4
  br label %30

29:                                               ; preds = %18
  store i32 1080, i32* %8, align 4
  br label %30

30:                                               ; preds = %29, %24
  %31 = load i32*, i32** %4, align 8
  %32 = load i8*, i8** %7, align 8
  %33 = load i32, i32* %8, align 4
  %34 = load i8*, i8** %5, align 8
  %35 = load i32, i32* %6, align 4
  %36 = call i32 (i32*, i8*, i8*, i32, ...) @msg_Dbg(i32* %31, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i8* %32, i32 %33, i8* %34, i32 %35)
  br label %44

37:                                               ; preds = %3
  %38 = load i32*, i32** %4, align 8
  %39 = load i8*, i8** %5, align 8
  %40 = load i32, i32* %6, align 4
  %41 = call i32 (i32*, i8*, i8*, i32, ...) @msg_Dbg(i32* %38, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i8* %39, i32 %40)
  %42 = load i8*, i8** %5, align 8
  store i8* %42, i8** %7, align 8
  %43 = load i32, i32* %6, align 4
  store i32 %43, i32* %8, align 4
  br label %44

44:                                               ; preds = %37, %30
  %45 = load i32*, i32** %4, align 8
  %46 = load i8*, i8** %7, align 8
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* @SOCK_STREAM, align 4
  %49 = load i32, i32* @IPPROTO_TCP, align 4
  %50 = call i32 @net_Connect(i32* %45, i8* %46, i32 %47, i32 %48, i32 %49)
  store i32 %50, i32* %11, align 4
  %51 = load i8*, i8** %9, align 8
  %52 = icmp ne i8* %51, null
  br i1 %52, label %53, label %79

53:                                               ; preds = %44
  %54 = load i32, i32* %11, align 4
  %55 = icmp ne i32 %54, -1
  br i1 %55, label %56, label %79

56:                                               ; preds = %53
  %57 = load i32*, i32** %4, align 8
  %58 = call i8* @var_InheritString(i32* %57, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  store i8* %58, i8** %12, align 8
  %59 = load i32*, i32** %4, align 8
  %60 = call i8* @var_InheritString(i32* %59, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  store i8* %60, i8** %13, align 8
  %61 = load i32*, i32** %4, align 8
  %62 = load i32, i32* %11, align 4
  %63 = load i8*, i8** %12, align 8
  %64 = load i8*, i8** %13, align 8
  %65 = load i8*, i8** %5, align 8
  %66 = load i32, i32* %6, align 4
  %67 = call i64 @SocksHandshakeTCP(i32* %61, i32 %62, i32 5, i8* %63, i8* %64, i8* %65, i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %56
  %70 = load i32*, i32** %4, align 8
  %71 = call i32 @msg_Err(i32* %70, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  %72 = load i32, i32* %11, align 4
  %73 = call i32 @net_Close(i32 %72)
  store i32 -1, i32* %11, align 4
  br label %74

74:                                               ; preds = %69, %56
  %75 = load i8*, i8** %13, align 8
  %76 = call i32 @free(i8* %75)
  %77 = load i8*, i8** %12, align 8
  %78 = call i32 @free(i8* %77)
  br label %79

79:                                               ; preds = %74, %53, %44
  %80 = load i32, i32* %11, align 4
  ret i32 %80
}

declare dso_local i8* @var_InheritString(i32*, i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @msg_Dbg(i32*, i8*, i8*, i32, ...) #1

declare dso_local i32 @net_Connect(i32*, i8*, i32, i32, i32) #1

declare dso_local i64 @SocksHandshakeTCP(i32*, i32, i32, i8*, i8*, i8*, i32) #1

declare dso_local i32 @msg_Err(i32*, i8*) #1

declare dso_local i32 @net_Close(i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
