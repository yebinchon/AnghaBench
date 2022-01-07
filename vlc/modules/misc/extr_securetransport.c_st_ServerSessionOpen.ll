; ModuleID = '/home/carl/AnghaBench/vlc/modules/misc/extr_securetransport.c_st_ServerSessionOpen.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/misc/extr_securetransport.c_st_ServerSessionOpen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_9__ = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"open TLS server session\00", align 1
@noErr = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"cannot set server certificate\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_10__*, i32*, i8**)* @st_ServerSessionOpen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @st_ServerSessionOpen(%struct.TYPE_10__* %0, i32* %1, i8** %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca i64, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8** %2, i8*** %7, align 8
  %12 = load i8**, i8*** %7, align 8
  %13 = call i32 @VLC_UNUSED(i8** %12)
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %15 = call i32 @msg_Dbg(%struct.TYPE_10__* %14, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %17 = call i32 @VLC_OBJECT(%struct.TYPE_10__* %16)
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %21 = load i32*, i32** %6, align 8
  %22 = call i32* @st_SessionOpenCommon(i32 %17, %struct.TYPE_11__* %20, i32* %21, i32 1)
  store i32* %22, i32** %8, align 8
  %23 = load i32*, i32** %8, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %3
  store i32* null, i32** %4, align 8
  br label %52

26:                                               ; preds = %3
  %27 = load i32*, i32** %8, align 8
  %28 = bitcast i32* %27 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %28, %struct.TYPE_9__** %9, align 8
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %30, align 8
  store %struct.TYPE_11__* %31, %struct.TYPE_11__** %10, align 8
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @SSLSetCertificate(i32 %34, i32 %37)
  store i64 %38, i64* %11, align 8
  %39 = load i64, i64* %11, align 8
  %40 = load i64, i64* @noErr, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %26
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %44 = call i32 @msg_Err(%struct.TYPE_10__* %43, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %47

45:                                               ; preds = %26
  %46 = load i32*, i32** %8, align 8
  store i32* %46, i32** %4, align 8
  br label %52

47:                                               ; preds = %42
  %48 = load i32*, i32** %8, align 8
  %49 = call i32 @st_SessionShutdown(i32* %48, i32 1)
  %50 = load i32*, i32** %8, align 8
  %51 = call i32 @st_SessionClose(i32* %50)
  store i32* null, i32** %4, align 8
  br label %52

52:                                               ; preds = %47, %45, %25
  %53 = load i32*, i32** %4, align 8
  ret i32* %53
}

declare dso_local i32 @VLC_UNUSED(i8**) #1

declare dso_local i32 @msg_Dbg(%struct.TYPE_10__*, i8*) #1

declare dso_local i32* @st_SessionOpenCommon(i32, %struct.TYPE_11__*, i32*, i32) #1

declare dso_local i32 @VLC_OBJECT(%struct.TYPE_10__*) #1

declare dso_local i64 @SSLSetCertificate(i32, i32) #1

declare dso_local i32 @msg_Err(%struct.TYPE_10__*, i8*) #1

declare dso_local i32 @st_SessionShutdown(i32*, i32) #1

declare dso_local i32 @st_SessionClose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
