; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/libncftp/extr_ftp.c_AcceptDataConnection.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/libncftp/extr_ftp.c_AcceptDataConnection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, i32, i64, i32, i64, %struct.TYPE_11__, %struct.TYPE_13__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_13__ = type { %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.sockaddr = type { i32 }

@kSendPortMode = common dso_local global i64 0, align 8
@kDoPerror = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Could not accept a data connection.\0A\00", align 1
@kClosedFileDescriptor = common dso_local global i8* null, align 8
@kErrAcceptDataSocket = common dso_local global i32 0, align 4
@kDontPerror = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [52 x i8] c"Data connection did not originate on correct port!\0A\00", align 1
@.str.2 = private unnamed_addr constant [55 x i8] c"Data connection did not originate from remote server!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AcceptDataConnection(%struct.TYPE_12__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i16, align 2
  %7 = alloca i16, align 2
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  %8 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @kSendPortMode, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %126

13:                                               ; preds = %1
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 6
  %16 = call i32 @memset(%struct.TYPE_13__* %15, i32 0, i32 8)
  store i32 8, i32* %5, align 4
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = icmp sgt i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %13
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @alarm(i64 %24)
  br label %26

26:                                               ; preds = %21, %13
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 6
  %32 = bitcast %struct.TYPE_13__* %31 to %struct.sockaddr*
  %33 = call i32 @accept(i32 %29, %struct.sockaddr* %32, i32* %5)
  store i32 %33, i32* %4, align 4
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = icmp sgt i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %26
  %39 = call i32 @alarm(i64 0)
  br label %40

40:                                               ; preds = %38, %26
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @closesocket(i32 %43)
  %45 = load i32, i32* %4, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %59

47:                                               ; preds = %40
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %49 = load i32, i32* @kDoPerror, align 4
  %50 = call i32 @Error(%struct.TYPE_12__* %48, i32 %49, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %51 = load i8*, i8** @kClosedFileDescriptor, align 8
  %52 = ptrtoint i8* %51 to i32
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 8
  %55 = load i32, i32* @kErrAcceptDataSocket, align 4
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 3
  store i32 %55, i32* %57, align 8
  %58 = load i32, i32* @kErrAcceptDataSocket, align 4
  store i32 %58, i32* %2, align 4
  br label %127

59:                                               ; preds = %40
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 4
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %122

64:                                               ; preds = %59
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 6
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call zeroext i16 @ntohs(i32 %68)
  store i16 %69, i16* %6, align 2
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 5
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = call zeroext i16 @ntohs(i32 %73)
  store i16 %74, i16* %7, align 2
  %75 = load i16, i16* %6, align 2
  %76 = zext i16 %75 to i32
  %77 = load i16, i16* %7, align 2
  %78 = zext i16 %77 to i32
  %79 = sub nsw i32 %78, 1
  %80 = icmp ne i32 %76, %79
  br i1 %80, label %81, label %95

81:                                               ; preds = %64
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %83 = load i32, i32* @kDontPerror, align 4
  %84 = call i32 @Error(%struct.TYPE_12__* %82, i32 %83, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0))
  %85 = load i32, i32* %4, align 4
  %86 = call i32 @closesocket(i32 %85)
  %87 = load i8*, i8** @kClosedFileDescriptor, align 8
  %88 = ptrtoint i8* %87 to i32
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 1
  store i32 %88, i32* %90, align 8
  %91 = load i32, i32* @kErrAcceptDataSocket, align 4
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 3
  store i32 %91, i32* %93, align 8
  %94 = load i32, i32* @kErrAcceptDataSocket, align 4
  store i32 %94, i32* %2, align 4
  br label %127

95:                                               ; preds = %64
  %96 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %96, i32 0, i32 6
  %98 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 0
  %100 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %100, i32 0, i32 5
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 0
  %104 = call i64 @memcmp(i32* %99, i32* %103, i32 4)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %120

106:                                              ; preds = %95
  %107 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %108 = load i32, i32* @kDontPerror, align 4
  %109 = call i32 @Error(%struct.TYPE_12__* %107, i32 %108, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0))
  %110 = load i32, i32* %4, align 4
  %111 = call i32 @closesocket(i32 %110)
  %112 = load i8*, i8** @kClosedFileDescriptor, align 8
  %113 = ptrtoint i8* %112 to i32
  %114 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %115 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %114, i32 0, i32 1
  store i32 %113, i32* %115, align 8
  %116 = load i32, i32* @kErrAcceptDataSocket, align 4
  %117 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %118 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %117, i32 0, i32 3
  store i32 %116, i32* %118, align 8
  %119 = load i32, i32* @kErrAcceptDataSocket, align 4
  store i32 %119, i32* %2, align 4
  br label %127

120:                                              ; preds = %95
  br label %121

121:                                              ; preds = %120
  br label %122

122:                                              ; preds = %121, %59
  %123 = load i32, i32* %4, align 4
  %124 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %125 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %124, i32 0, i32 1
  store i32 %123, i32* %125, align 8
  br label %126

126:                                              ; preds = %122, %1
  store i32 0, i32* %2, align 4
  br label %127

127:                                              ; preds = %126, %106, %81, %47
  %128 = load i32, i32* %2, align 4
  ret i32 %128
}

declare dso_local i32 @memset(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @alarm(i64) #1

declare dso_local i32 @accept(i32, %struct.sockaddr*, i32*) #1

declare dso_local i32 @closesocket(i32) #1

declare dso_local i32 @Error(%struct.TYPE_12__*, i32, i8*) #1

declare dso_local zeroext i16 @ntohs(i32) #1

declare dso_local i64 @memcmp(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
