; ModuleID = '/home/carl/AnghaBench/redis/src/extr_networking.c_acceptCommonHandler.c'
source_filename = "/home/carl/AnghaBench/redis/src/extr_networking.c_acceptCommonHandler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@server = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@.str = private unnamed_addr constant [37 x i8] c"-ERR max number of clients reached\0D\0A\00", align 1
@LL_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [61 x i8] c"Error registering fd event for the new client: %s (conn: %s)\00", align 1
@clientAcceptHandler = common dso_local global i32 0, align 4
@C_ERR = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [51 x i8] c"Error accepting a client connection: %s (conn: %s)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i8*)* @acceptCommonHandler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @acceptCommonHandler(i32* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca [100 x i8], align 16
  %10 = alloca [100 x i8], align 16
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = call i32 @UNUSED(i8* %11)
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @server, i32 0, i32 2), align 4
  %14 = call i64 @listLength(i32 %13)
  %15 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @server, i32 0, i32 0), align 8
  %16 = icmp sge i64 %14, %15
  br i1 %16, label %17, label %30

17:                                               ; preds = %3
  store i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  %18 = load i32*, i32** %4, align 8
  %19 = load i8*, i8** %8, align 8
  %20 = load i8*, i8** %8, align 8
  %21 = call i32 @strlen(i8* %20)
  %22 = call i32 @connWrite(i32* %18, i8* %19, i32 %21)
  %23 = icmp eq i32 %22, -1
  br i1 %23, label %24, label %25

24:                                               ; preds = %17
  br label %25

25:                                               ; preds = %24, %17
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @server, i32 0, i32 1), align 8
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @server, i32 0, i32 1), align 8
  %28 = load i32*, i32** %4, align 8
  %29 = call i32 @connClose(i32* %28)
  br label %66

30:                                               ; preds = %3
  %31 = load i32*, i32** %4, align 8
  %32 = call %struct.TYPE_4__* @createClient(i32* %31)
  store %struct.TYPE_4__* %32, %struct.TYPE_4__** %7, align 8
  %33 = icmp eq %struct.TYPE_4__* %32, null
  br i1 %33, label %34, label %44

34:                                               ; preds = %30
  %35 = load i32, i32* @LL_WARNING, align 4
  %36 = load i32*, i32** %4, align 8
  %37 = call i32 @connGetLastError(i32* %36)
  %38 = load i32*, i32** %4, align 8
  %39 = getelementptr inbounds [100 x i8], [100 x i8]* %9, i64 0, i64 0
  %40 = call i32 @connGetInfo(i32* %38, i8* %39, i32 100)
  %41 = call i32 @serverLog(i32 %35, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0), i32 %37, i32 %40)
  %42 = load i32*, i32** %4, align 8
  %43 = call i32 @connClose(i32* %42)
  br label %66

44:                                               ; preds = %30
  %45 = load i32, i32* %5, align 4
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = or i32 %48, %45
  store i32 %49, i32* %47, align 4
  %50 = load i32*, i32** %4, align 8
  %51 = load i32, i32* @clientAcceptHandler, align 4
  %52 = call i64 @connAccept(i32* %50, i32 %51)
  %53 = load i64, i64* @C_ERR, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %66

55:                                               ; preds = %44
  %56 = load i32, i32* @LL_WARNING, align 4
  %57 = load i32*, i32** %4, align 8
  %58 = call i32 @connGetLastError(i32* %57)
  %59 = load i32*, i32** %4, align 8
  %60 = getelementptr inbounds [100 x i8], [100 x i8]* %10, i64 0, i64 0
  %61 = call i32 @connGetInfo(i32* %59, i8* %60, i32 100)
  %62 = call i32 @serverLog(i32 %56, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0), i32 %58, i32 %61)
  %63 = load i32*, i32** %4, align 8
  %64 = call i32 @connGetPrivateData(i32* %63)
  %65 = call i32 @freeClient(i32 %64)
  br label %66

66:                                               ; preds = %25, %34, %55, %44
  ret void
}

declare dso_local i32 @UNUSED(i8*) #1

declare dso_local i64 @listLength(i32) #1

declare dso_local i32 @connWrite(i32*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @connClose(i32*) #1

declare dso_local %struct.TYPE_4__* @createClient(i32*) #1

declare dso_local i32 @serverLog(i32, i8*, i32, i32) #1

declare dso_local i32 @connGetLastError(i32*) #1

declare dso_local i32 @connGetInfo(i32*, i8*, i32) #1

declare dso_local i64 @connAccept(i32*, i32) #1

declare dso_local i32 @freeClient(i32) #1

declare dso_local i32 @connGetPrivateData(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
