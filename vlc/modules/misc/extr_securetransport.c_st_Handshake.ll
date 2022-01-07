; ModuleID = '/home/carl/AnghaBench/vlc/modules/misc/extr_securetransport.c_st_Handshake.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/misc/extr_securetransport.c_st_Handshake.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i64, i32 }

@errSSLWouldBlock = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [38 x i8] c"handshake is blocked, try again later\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"handshake completed successfully\00", align 1
@.str.2 = private unnamed_addr constant [70 x i8] c"SSLHandshake returned errSSLServerAuthCompleted, continuing handshake\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"connection was refused\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"cipher suite negotiation failed\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"fatal error occurred during handshake\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"handshake returned error %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i8*, i8**)* @st_Handshake to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @st_Handshake(i32* %0, i8* %1, i8* %2, i8** noalias %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca %struct.TYPE_2__*, align 8
  %11 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8** %3, i8*** %9, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = bitcast i32* %12 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %13, %struct.TYPE_2__** %10, align 8
  %14 = load i8*, i8** %8, align 8
  %15 = call i32 @VLC_UNUSED(i8* %14)
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 8
  %19 = call i64 @SSLHandshake(i32 %18)
  store i64 %19, i64* %11, align 8
  %20 = load i8**, i8*** %9, align 8
  %21 = icmp ne i8** %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %4
  %23 = load i8**, i8*** %9, align 8
  store i8* null, i8** %23, align 8
  br label %24

24:                                               ; preds = %22, %4
  %25 = load i64, i64* %11, align 8
  %26 = load i64, i64* @errSSLWouldBlock, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %40

28:                                               ; preds = %24
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @msg_Dbg(i32 %31, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 3
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  %37 = zext i1 %36 to i64
  %38 = select i1 %36, i32 1, i32 0
  %39 = add nsw i32 1, %38
  store i32 %39, i32* %5, align 4
  br label %92

40:                                               ; preds = %24
  %41 = load i64, i64* %11, align 8
  switch i64 %41, label %85 [
    i64 128, label %42
    i64 129, label %60
    i64 132, label %70
    i64 130, label %75
    i64 131, label %80
  ]

42:                                               ; preds = %40
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %42
  %48 = load i32*, i32** %6, align 8
  %49 = load i8*, i8** %7, align 8
  %50 = call i32 @st_validateServerCertificate(i32* %48, i8* %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %47
  store i32 -1, i32* %5, align 4
  br label %92

53:                                               ; preds = %47, %42
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @msg_Dbg(i32 %56, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 1
  store i32 1, i32* %59, align 4
  store i32 0, i32* %5, align 4
  br label %92

60:                                               ; preds = %40
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @msg_Dbg(i32 %63, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.2, i64 0, i64 0))
  %65 = load i32*, i32** %6, align 8
  %66 = load i8*, i8** %7, align 8
  %67 = load i8*, i8** %8, align 8
  %68 = load i8**, i8*** %9, align 8
  %69 = call i32 @st_Handshake(i32* %65, i8* %66, i8* %67, i8** %68)
  store i32 %69, i32* %5, align 4
  br label %92

70:                                               ; preds = %40
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = call i32 (i32, i8*, ...) @msg_Err(i32 %73, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %92

75:                                               ; preds = %40
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = call i32 (i32, i8*, ...) @msg_Err(i32 %78, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %92

80:                                               ; preds = %40
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = call i32 (i32, i8*, ...) @msg_Err(i32 %83, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %92

85:                                               ; preds = %40
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = load i64, i64* %11, align 8
  %90 = trunc i64 %89 to i32
  %91 = call i32 (i32, i8*, ...) @msg_Err(i32 %88, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0), i32 %90)
  store i32 -1, i32* %5, align 4
  br label %92

92:                                               ; preds = %85, %80, %75, %70, %60, %53, %52, %28
  %93 = load i32, i32* %5, align 4
  ret i32 %93
}

declare dso_local i32 @VLC_UNUSED(i8*) #1

declare dso_local i64 @SSLHandshake(i32) #1

declare dso_local i32 @msg_Dbg(i32, i8*) #1

declare dso_local i32 @st_validateServerCertificate(i32*, i8*) #1

declare dso_local i32 @msg_Err(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
