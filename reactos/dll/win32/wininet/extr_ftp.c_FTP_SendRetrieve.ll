; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/wininet/extr_ftp.c_FTP_SendRetrieve.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/wininet/extr_ftp.c_FTP_SendRetrieve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@FTP_CMD_RETR = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i32, i32)* @FTP_SendRetrieve to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @FTP_SendRetrieve(%struct.TYPE_9__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = call i32 @TRACE(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %11 = call i32 @FTP_InitListenSocket(%struct.TYPE_9__* %10)
  store i32 %11, i32* %8, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  br label %51

14:                                               ; preds = %3
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @FTP_SendType(%struct.TYPE_9__* %15, i32 %16)
  store i32 %17, i32* %8, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %14
  br label %51

20:                                               ; preds = %14
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %22 = call i32 @FTP_SendPortOrPasv(%struct.TYPE_9__* %21)
  store i32 %22, i32* %8, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %20
  br label %51

25:                                               ; preds = %20
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @FTP_CMD_RETR, align 4
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @FTP_SendCommand(i32 %28, i32 %29, i32 %30, i32 0, i32 0, i32 0)
  store i32 %31, i32* %8, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %25
  br label %51

34:                                               ; preds = %25
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @FTP_ReceiveResponse(%struct.TYPE_9__* %35, i32 %39)
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %7, align 4
  %42 = icmp ne i32 %41, 125
  br i1 %42, label %43, label %50

43:                                               ; preds = %34
  %44 = load i32, i32* %7, align 4
  %45 = icmp ne i32 %44, 150
  br i1 %45, label %46, label %50

46:                                               ; preds = %43
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @FTP_SetResponseError(i32 %47)
  %49 = load i32, i32* @FALSE, align 4
  store i32 %49, i32* %8, align 4
  br label %50

50:                                               ; preds = %46, %43, %34
  br label %51

51:                                               ; preds = %50, %33, %24, %19, %13
  %52 = load i32, i32* %8, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %66, label %54

54:                                               ; preds = %51
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %57, -1
  br i1 %58, label %59, label %66

59:                                               ; preds = %54
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @closesocket(i32 %62)
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 0
  store i32 -1, i32* %65, align 4
  br label %66

66:                                               ; preds = %59, %54, %51
  %67 = load i32, i32* %8, align 4
  ret i32 %67
}

declare dso_local i32 @TRACE(i8*) #1

declare dso_local i32 @FTP_InitListenSocket(%struct.TYPE_9__*) #1

declare dso_local i32 @FTP_SendType(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @FTP_SendPortOrPasv(%struct.TYPE_9__*) #1

declare dso_local i32 @FTP_SendCommand(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @FTP_ReceiveResponse(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @FTP_SetResponseError(i32) #1

declare dso_local i32 @closesocket(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
