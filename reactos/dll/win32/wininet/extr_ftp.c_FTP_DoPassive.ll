; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/wininet/extr_ftp.c_FTP_DoPassive.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/wininet/extr_ftp.c_FTP_DoPassive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, %struct.sockaddr_in, %struct.TYPE_7__, i32 }
%struct.sockaddr_in = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.sockaddr = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@FTP_CMD_PASV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"no address found in response, aborting\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"%d,%d,%d,%d,%d,%d\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"unknown response address format '%s', aborting\0A\00", align 1
@AF_INET = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [38 x i8] c"can't connect passive FTP data port.\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*)* @FTP_DoPassive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @FTP_DoPassive(%struct.TYPE_10__* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca [6 x i32], align 16
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.sockaddr_in, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %2, align 8
  %13 = load i32, i32* @FALSE, align 4
  store i32 %13, i32* %4, align 4
  %14 = call i32 @TRACE(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @FTP_CMD_PASV, align 4
  %19 = call i32 @FTP_SendCommand(i32 %17, i32 %18, i32* null, i32 0, i32 0, i32 0)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %1
  br label %162

22:                                               ; preds = %1
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @FTP_ReceiveResponse(%struct.TYPE_10__* %23, i32 %27)
  store i32 %28, i32* %3, align 4
  %29 = load i32, i32* %3, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %161

31:                                               ; preds = %22
  %32 = load i32, i32* %3, align 4
  %33 = icmp eq i32 %32, 227
  br i1 %33, label %34, label %157

34:                                               ; preds = %31
  %35 = call i8* (...) @INTERNET_GetResponseBuffer()
  store i8* %35, i8** %5, align 8
  store i32 -1, i32* %11, align 4
  %36 = load i8*, i8** %5, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 4
  store i8* %37, i8** %6, align 8
  br label %38

38:                                               ; preds = %57, %34
  %39 = load i8*, i8** %6, align 8
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %55

43:                                               ; preds = %38
  %44 = load i8*, i8** %6, align 8
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp slt i32 %46, 48
  br i1 %47, label %53, label %48

48:                                               ; preds = %43
  %49 = load i8*, i8** %6, align 8
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp sgt i32 %51, 57
  br label %53

53:                                               ; preds = %48, %43
  %54 = phi i1 [ true, %43 ], [ %52, %48 ]
  br label %55

55:                                               ; preds = %53, %38
  %56 = phi i1 [ false, %38 ], [ %54, %53 ]
  br i1 %56, label %57, label %60

57:                                               ; preds = %55
  %58 = load i8*, i8** %6, align 8
  %59 = getelementptr inbounds i8, i8* %58, i32 1
  store i8* %59, i8** %6, align 8
  br label %38

60:                                               ; preds = %55
  %61 = load i8*, i8** %6, align 8
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %60
  %66 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  br label %162

67:                                               ; preds = %60
  %68 = load i8*, i8** %6, align 8
  %69 = getelementptr inbounds [6 x i32], [6 x i32]* %7, i64 0, i64 0
  %70 = getelementptr inbounds [6 x i32], [6 x i32]* %7, i64 0, i64 1
  %71 = getelementptr inbounds [6 x i32], [6 x i32]* %7, i64 0, i64 2
  %72 = getelementptr inbounds [6 x i32], [6 x i32]* %7, i64 0, i64 3
  %73 = getelementptr inbounds [6 x i32], [6 x i32]* %7, i64 0, i64 4
  %74 = getelementptr inbounds [6 x i32], [6 x i32]* %7, i64 0, i64 5
  %75 = call i32 @sscanf(i8* %68, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32* %69, i32* %70, i32* %71, i32* %72, i32* %73, i32* %74)
  %76 = icmp ne i32 %75, 6
  br i1 %76, label %77, label %80

77:                                               ; preds = %67
  %78 = load i8*, i8** %6, align 8
  %79 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0), i8* %78)
  br label %162

80:                                               ; preds = %67
  store i32 0, i32* %8, align 4
  br label %81

81:                                               ; preds = %93, %80
  %82 = load i32, i32* %8, align 4
  %83 = icmp slt i32 %82, 6
  br i1 %83, label %84, label %96

84:                                               ; preds = %81
  %85 = load i32, i32* %8, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds [6 x i32], [6 x i32]* %7, i64 0, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = and i32 %88, 255
  %90 = load i32, i32* %8, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds [6 x i32], [6 x i32]* %7, i64 0, i64 %91
  store i32 %89, i32* %92, align 4
  br label %93

93:                                               ; preds = %84
  %94 = load i32, i32* %8, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %8, align 4
  br label %81

96:                                               ; preds = %81
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 1
  %99 = bitcast %struct.sockaddr_in* %12 to i8*
  %100 = bitcast %struct.sockaddr_in* %98 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %99, i8* align 4 %100, i64 8, i1 false)
  %101 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %12, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 0
  %104 = bitcast i32* %103 to i8*
  store i8* %104, i8** %9, align 8
  %105 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %12, i32 0, i32 0
  %106 = bitcast i32* %105 to i8*
  store i8* %106, i8** %10, align 8
  %107 = getelementptr inbounds [6 x i32], [6 x i32]* %7, i64 0, i64 0
  %108 = load i32, i32* %107, align 16
  %109 = trunc i32 %108 to i8
  %110 = load i8*, i8** %9, align 8
  %111 = getelementptr inbounds i8, i8* %110, i64 0
  store i8 %109, i8* %111, align 1
  %112 = getelementptr inbounds [6 x i32], [6 x i32]* %7, i64 0, i64 1
  %113 = load i32, i32* %112, align 4
  %114 = trunc i32 %113 to i8
  %115 = load i8*, i8** %9, align 8
  %116 = getelementptr inbounds i8, i8* %115, i64 1
  store i8 %114, i8* %116, align 1
  %117 = getelementptr inbounds [6 x i32], [6 x i32]* %7, i64 0, i64 2
  %118 = load i32, i32* %117, align 8
  %119 = trunc i32 %118 to i8
  %120 = load i8*, i8** %9, align 8
  %121 = getelementptr inbounds i8, i8* %120, i64 2
  store i8 %119, i8* %121, align 1
  %122 = getelementptr inbounds [6 x i32], [6 x i32]* %7, i64 0, i64 3
  %123 = load i32, i32* %122, align 4
  %124 = trunc i32 %123 to i8
  %125 = load i8*, i8** %9, align 8
  %126 = getelementptr inbounds i8, i8* %125, i64 3
  store i8 %124, i8* %126, align 1
  %127 = getelementptr inbounds [6 x i32], [6 x i32]* %7, i64 0, i64 4
  %128 = load i32, i32* %127, align 16
  %129 = trunc i32 %128 to i8
  %130 = load i8*, i8** %10, align 8
  %131 = getelementptr inbounds i8, i8* %130, i64 0
  store i8 %129, i8* %131, align 1
  %132 = getelementptr inbounds [6 x i32], [6 x i32]* %7, i64 0, i64 5
  %133 = load i32, i32* %132, align 4
  %134 = trunc i32 %133 to i8
  %135 = load i8*, i8** %10, align 8
  %136 = getelementptr inbounds i8, i8* %135, i64 1
  store i8 %134, i8* %136, align 1
  %137 = load i32, i32* @AF_INET, align 4
  %138 = load i32, i32* @SOCK_STREAM, align 4
  %139 = call i32 @socket(i32 %137, i32 %138, i32 0)
  store i32 %139, i32* %11, align 4
  %140 = load i32, i32* %11, align 4
  %141 = icmp eq i32 %140, -1
  br i1 %141, label %142, label %143

142:                                              ; preds = %96
  br label %162

143:                                              ; preds = %96
  %144 = load i32, i32* %11, align 4
  %145 = bitcast %struct.sockaddr_in* %12 to %struct.sockaddr*
  %146 = call i64 @connect(i32 %144, %struct.sockaddr* %145, i32 8)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %152

148:                                              ; preds = %143
  %149 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0))
  %150 = load i32, i32* %11, align 4
  %151 = call i32 @closesocket(i32 %150)
  br label %162

152:                                              ; preds = %143
  %153 = load i32, i32* %11, align 4
  %154 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %155 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %154, i32 0, i32 0
  store i32 %153, i32* %155, align 4
  %156 = load i32, i32* @TRUE, align 4
  store i32 %156, i32* %4, align 4
  br label %160

157:                                              ; preds = %31
  %158 = load i32, i32* %3, align 4
  %159 = call i32 @FTP_SetResponseError(i32 %158)
  br label %160

160:                                              ; preds = %157, %152
  br label %161

161:                                              ; preds = %160, %22
  br label %162

162:                                              ; preds = %161, %148, %142, %77, %65, %21
  %163 = load i32, i32* %4, align 4
  ret i32 %163
}

declare dso_local i32 @TRACE(i8*) #1

declare dso_local i32 @FTP_SendCommand(i32, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @FTP_ReceiveResponse(%struct.TYPE_10__*, i32) #1

declare dso_local i8* @INTERNET_GetResponseBuffer(...) #1

declare dso_local i32 @ERR(i8*, ...) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*, i32*, i32*, i32*, i32*, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i64 @connect(i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @closesocket(i32) #1

declare dso_local i32 @FTP_SetResponseError(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
