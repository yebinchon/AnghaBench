; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/screensavers/matrix/extr_message.c_InitMatrixMessage.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/screensavers/matrix/extr_message.c_InitMatrixMessage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i64, i8*, i8*, i64 }

@MAXMSG_WIDTH = common dso_local global i32 0, align 4
@MAXMSG_HEIGHT = common dso_local global i32 0, align 4
@MSGSPEED_MIN = common dso_local global i32 0, align 4
@g_szFontName = common dso_local global i32 0, align 4
@g_nFontSize = common dso_local global i32 0, align 4
@g_fFontBold = common dso_local global i32 0, align 4
@g_szMessages = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_6__* @InitMatrixMessage(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_6__*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = call %struct.TYPE_6__* @malloc(i32 40)
  store %struct.TYPE_6__* %9, %struct.TYPE_6__** %8, align 8
  %10 = icmp eq %struct.TYPE_6__* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %4, align 8
  br label %49

12:                                               ; preds = %3
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %14 = call i32 @ClearMatrixMessage(%struct.TYPE_6__* %13)
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 4
  store i64 0, i64* %16, align 8
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @MAXMSG_WIDTH, align 4
  %19 = call i8* @min(i32 %17, i32 %18)
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 3
  store i8* %19, i8** %21, align 8
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @MAXMSG_HEIGHT, align 4
  %24 = call i8* @min(i32 %22, i32 %23)
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 2
  store i8* %24, i8** %26, align 8
  %27 = call i32 (...) @crc_rand()
  %28 = load i32, i32* @MSGSPEED_MIN, align 4
  %29 = srem i32 %27, %28
  %30 = load i32, i32* @MSGSPEED_MIN, align 4
  %31 = add nsw i32 %29, %30
  %32 = sub nsw i32 0, %31
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  %35 = call i64 (...) @GetTickCount()
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 1
  store i64 %35, i64* %37, align 8
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @g_szFontName, align 4
  %40 = load i32, i32* @g_nFontSize, align 4
  %41 = load i32, i32* @g_fFontBold, align 4
  %42 = call i32 @SetMessageFont(i32 %38, i32 %39, i32 %40, i32 %41)
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %44 = load i32*, i32** @g_szMessages, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @SetMatrixMessage(%struct.TYPE_6__* %43, i32 0, i32 %46)
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  store %struct.TYPE_6__* %48, %struct.TYPE_6__** %4, align 8
  br label %49

49:                                               ; preds = %12, %11
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  ret %struct.TYPE_6__* %50
}

declare dso_local %struct.TYPE_6__* @malloc(i32) #1

declare dso_local i32 @ClearMatrixMessage(%struct.TYPE_6__*) #1

declare dso_local i8* @min(i32, i32) #1

declare dso_local i32 @crc_rand(...) #1

declare dso_local i64 @GetTickCount(...) #1

declare dso_local i32 @SetMessageFont(i32, i32, i32, i32) #1

declare dso_local i32 @SetMatrixMessage(%struct.TYPE_6__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
