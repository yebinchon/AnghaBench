; ModuleID = '/home/carl/AnghaBench/vlc/modules/misc/extr_securetransport.c_st_ClientSessionOpen.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/misc/extr_securetransport.c_st_ClientSessionOpen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"open TLS session for %s\00", align 1
@noErr = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"cannot set peer domain name\00", align 1
@.str.2 = private unnamed_addr constant [76 x i8] c"Compiled in SDK without ALPN support. Proxy behavior potentially undefined.\00", align 1
@kSSLSessionOptionBreakOnServerAuth = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"cannot set session option\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"error setting enable cert verify\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_9__*, i32*, i8*, i8**)* @st_ClientSessionOpen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @st_ClientSessionOpen(%struct.TYPE_9__* %0, i32* %1, i8* %2, i8** %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_8__*, align 8
  %12 = alloca i64, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8** %3, i8*** %9, align 8
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %14 = load i8*, i8** %8, align 8
  %15 = call i32 @msg_Dbg(%struct.TYPE_9__* %13, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* %14)
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %17 = call i32 @VLC_OBJECT(%struct.TYPE_9__* %16)
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32*, i32** %7, align 8
  %22 = call i32* @st_SessionOpenCommon(i32 %17, i32 %20, i32* %21, i32 0)
  store i32* %22, i32** %10, align 8
  %23 = load i32*, i32** %10, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %4
  store i32* null, i32** %5, align 8
  br label %78

26:                                               ; preds = %4
  %27 = load i32*, i32** %10, align 8
  %28 = bitcast i32* %27 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %28, %struct.TYPE_8__** %11, align 8
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i8*, i8** %8, align 8
  %33 = load i8*, i8** %8, align 8
  %34 = call i32 @strlen(i8* %33)
  %35 = call i64 @SSLSetPeerDomainName(i32 %31, i8* %32, i32 %34)
  store i64 %35, i64* %12, align 8
  %36 = load i64, i64* %12, align 8
  %37 = load i64, i64* @noErr, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %26
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %41 = call i32 (%struct.TYPE_9__*, i8*, ...) @msg_Err(%struct.TYPE_9__* %40, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %73

42:                                               ; preds = %26
  %43 = load i8**, i8*** %9, align 8
  %44 = icmp ne i8** %43, null
  br i1 %44, label %45, label %48

45:                                               ; preds = %42
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %47 = call i32 @msg_Warn(%struct.TYPE_9__* %46, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.2, i64 0, i64 0))
  br label %48

48:                                               ; preds = %45, %42
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @kSSLSessionOptionBreakOnServerAuth, align 4
  %53 = call i64 @SSLSetSessionOption(i32 %51, i32 %52, i32 1)
  store i64 %53, i64* %12, align 8
  %54 = load i64, i64* %12, align 8
  %55 = load i64, i64* @noErr, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %48
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %59 = call i32 (%struct.TYPE_9__*, i8*, ...) @msg_Err(%struct.TYPE_9__* %58, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  br label %73

60:                                               ; preds = %48
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i64 @SSLSetEnableCertVerify(i32 %63, i32 0)
  store i64 %64, i64* %12, align 8
  %65 = load i64, i64* %12, align 8
  %66 = load i64, i64* @noErr, align 8
  %67 = icmp ne i64 %65, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %60
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %70 = call i32 (%struct.TYPE_9__*, i8*, ...) @msg_Err(%struct.TYPE_9__* %69, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  br label %73

71:                                               ; preds = %60
  %72 = load i32*, i32** %10, align 8
  store i32* %72, i32** %5, align 8
  br label %78

73:                                               ; preds = %68, %57, %39
  %74 = load i32*, i32** %10, align 8
  %75 = call i32 @st_SessionShutdown(i32* %74, i32 1)
  %76 = load i32*, i32** %10, align 8
  %77 = call i32 @st_SessionClose(i32* %76)
  store i32* null, i32** %5, align 8
  br label %78

78:                                               ; preds = %73, %71, %25
  %79 = load i32*, i32** %5, align 8
  ret i32* %79
}

declare dso_local i32 @msg_Dbg(%struct.TYPE_9__*, i8*, i8*) #1

declare dso_local i32* @st_SessionOpenCommon(i32, i32, i32*, i32) #1

declare dso_local i32 @VLC_OBJECT(%struct.TYPE_9__*) #1

declare dso_local i64 @SSLSetPeerDomainName(i32, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @msg_Err(%struct.TYPE_9__*, i8*, ...) #1

declare dso_local i32 @msg_Warn(%struct.TYPE_9__*, i8*) #1

declare dso_local i64 @SSLSetSessionOption(i32, i32, i32) #1

declare dso_local i64 @SSLSetEnableCertVerify(i32, i32) #1

declare dso_local i32 @st_SessionShutdown(i32*, i32) #1

declare dso_local i32 @st_SessionClose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
