; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/wininet/extr_ftp.c_FTP_ReceiveResponse.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/wininet/extr_ftp.c_FTP_ReceiveResponse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@FALSE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [12 x i8] c"socket(%d)\0A\00", align 1
@INTERNET_STATUS_RECEIVING_RESPONSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@INTERNET_STATUS_RESPONSE_RECEIVED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"return %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @FTP_ReceiveResponse(%struct.TYPE_3__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [5 x i8], align 1
  %9 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = call i8* (...) @INTERNET_GetResponseBuffer()
  store i8* %10, i8** %5, align 8
  store i32 0, i32* %7, align 4
  %11 = load i64, i64* @FALSE, align 8
  store i64 %11, i64* %9, align 8
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @TRACE(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @INTERNET_STATUS_RECEIVING_RESPONSE, align 4
  %20 = call i32 @INTERNET_SendCallback(i32* %17, i32 %18, i32 %19, i32* null, i32 0)
  br label %21

21:                                               ; preds = %2, %57
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @FTP_GetNextLine(i32 %24, i32* %6)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %21
  br label %70

28:                                               ; preds = %21
  %29 = load i32, i32* %6, align 4
  %30 = icmp sge i32 %29, 3
  br i1 %30, label %31, label %57

31:                                               ; preds = %28
  %32 = load i64, i64* %9, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %49, label %34

34:                                               ; preds = %31
  %35 = load i8*, i8** %5, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 3
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp ne i32 %38, 45
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  br label %58

41:                                               ; preds = %34
  %42 = load i64, i64* @TRUE, align 8
  store i64 %42, i64* %9, align 8
  %43 = getelementptr inbounds [5 x i8], [5 x i8]* %8, i64 0, i64 0
  %44 = load i8*, i8** %5, align 8
  %45 = call i32 @memcpy(i8* %43, i8* %44, i32 3)
  %46 = getelementptr inbounds [5 x i8], [5 x i8]* %8, i64 0, i64 3
  store i8 32, i8* %46, align 1
  %47 = getelementptr inbounds [5 x i8], [5 x i8]* %8, i64 0, i64 4
  store i8 0, i8* %47, align 1
  br label %48

48:                                               ; preds = %41
  br label %56

49:                                               ; preds = %31
  %50 = getelementptr inbounds [5 x i8], [5 x i8]* %8, i64 0, i64 0
  %51 = load i8*, i8** %5, align 8
  %52 = call i32 @memcmp(i8* %50, i8* %51, i32 4)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %49
  br label %58

55:                                               ; preds = %49
  br label %56

56:                                               ; preds = %55, %48
  br label %57

57:                                               ; preds = %56, %28
  br label %21

58:                                               ; preds = %54, %40
  %59 = load i32, i32* %6, align 4
  %60 = icmp sge i32 %59, 3
  br i1 %60, label %61, label %69

61:                                               ; preds = %58
  %62 = load i8*, i8** %5, align 8
  %63 = call i32 @atoi(i8* %62)
  store i32 %63, i32* %7, align 4
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = load i32, i32* %4, align 4
  %67 = load i32, i32* @INTERNET_STATUS_RESPONSE_RECEIVED, align 4
  %68 = call i32 @INTERNET_SendCallback(i32* %65, i32 %66, i32 %67, i32* %6, i32 4)
  br label %69

69:                                               ; preds = %61, %58
  br label %70

70:                                               ; preds = %69, %27
  %71 = load i32, i32* %7, align 4
  %72 = call i32 @TRACE(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %71)
  %73 = load i32, i32* %7, align 4
  ret i32 %73
}

declare dso_local i8* @INTERNET_GetResponseBuffer(...) #1

declare dso_local i32 @TRACE(i8*, i32) #1

declare dso_local i32 @INTERNET_SendCallback(i32*, i32, i32, i32*, i32) #1

declare dso_local i32 @FTP_GetNextLine(i32, i32*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @atoi(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
