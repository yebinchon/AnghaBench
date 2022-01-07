; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/netapi32/extr_nbt.c_NetBTSend.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/netapi32/extr_nbt.c_NetBTSend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i64 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_8__ = type { i32, i8* }

@NBSS_HDRSIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"adapt %p, session %p, NCB %p\0A\00", align 1
@NRC_ENVNOTDEF = common dso_local global i64 0, align 8
@NRC_INVADDRESS = common dso_local global i64 0, align 8
@NRC_BADDR = common dso_local global i64 0, align 8
@NRC_SNUMOUT = common dso_local global i64 0, align 8
@INVALID_SOCKET = common dso_local global i64 0, align 8
@NBSS_MSG = common dso_local global i64 0, align 8
@SOCKET_ERROR = common dso_local global i32 0, align 4
@NRC_SABORT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [48 x i8] c"Only sent %d bytes (of %d), hanging up session\0A\00", align 1
@NRC_GOODRET = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [18 x i8] c"returning 0x%02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i8*, %struct.TYPE_9__*)* @NetBTSend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @NetBTSend(i8* %0, i8* %1, %struct.TYPE_9__* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca [2 x %struct.TYPE_8__], align 16
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.TYPE_9__* %2, %struct.TYPE_9__** %7, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = bitcast i8* %17 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %18, %struct.TYPE_11__** %8, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = bitcast i8* %19 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %20, %struct.TYPE_10__** %9, align 8
  %21 = load i32, i32* @NBSS_HDRSIZE, align 4
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %10, align 8
  %24 = alloca i64, i64 %22, align 16
  store i64 %22, i64* %11, align 8
  %25 = load i8*, i8** %5, align 8
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %28 = call i32 (i8*, i8*, ...) @TRACE(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8* %25, %struct.TYPE_10__* %26, %struct.TYPE_9__* %27)
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %30 = icmp ne %struct.TYPE_11__* %29, null
  br i1 %30, label %33, label %31

31:                                               ; preds = %3
  %32 = load i64, i64* @NRC_ENVNOTDEF, align 8
  store i64 %32, i64* %4, align 8
  store i32 1, i32* %16, align 4
  br label %127

33:                                               ; preds = %3
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %35 = icmp ne %struct.TYPE_9__* %34, null
  br i1 %35, label %38, label %36

36:                                               ; preds = %33
  %37 = load i64, i64* @NRC_INVADDRESS, align 8
  store i64 %37, i64* %4, align 8
  store i32 1, i32* %16, align 4
  br label %127

38:                                               ; preds = %33
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %38
  %44 = load i64, i64* @NRC_BADDR, align 8
  store i64 %44, i64* %4, align 8
  store i32 1, i32* %16, align 4
  br label %127

45:                                               ; preds = %38
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %47 = icmp ne %struct.TYPE_10__* %46, null
  br i1 %47, label %50, label %48

48:                                               ; preds = %45
  %49 = load i64, i64* @NRC_SNUMOUT, align 8
  store i64 %49, i64* %4, align 8
  store i32 1, i32* %16, align 4
  br label %127

50:                                               ; preds = %45
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @INVALID_SOCKET, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %50
  %57 = load i64, i64* @NRC_SNUMOUT, align 8
  store i64 %57, i64* %4, align 8
  store i32 1, i32* %16, align 4
  br label %127

58:                                               ; preds = %50
  %59 = load i64, i64* @NBSS_MSG, align 8
  %60 = getelementptr inbounds i64, i64* %24, i64 0
  store i64 %59, i64* %60, align 16
  %61 = getelementptr inbounds i64, i64* %24, i64 1
  store i64 0, i64* %61, align 8
  %62 = getelementptr inbounds i64, i64* %24, i64 2
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @NBR_ADDWORD(i64* %62, i32 %65)
  %67 = load i32, i32* @NBSS_HDRSIZE, align 4
  %68 = getelementptr inbounds [2 x %struct.TYPE_8__], [2 x %struct.TYPE_8__]* %14, i64 0, i64 0
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 16
  %70 = bitcast i64* %24 to i8*
  %71 = getelementptr inbounds [2 x %struct.TYPE_8__], [2 x %struct.TYPE_8__]* %14, i64 0, i64 0
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 1
  store i8* %70, i8** %72, align 8
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = getelementptr inbounds [2 x %struct.TYPE_8__], [2 x %struct.TYPE_8__]* %14, i64 0, i64 1
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 16
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = inttoptr i64 %80 to i8*
  %82 = getelementptr inbounds [2 x %struct.TYPE_8__], [2 x %struct.TYPE_8__]* %14, i64 0, i64 1
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 1
  store i8* %81, i8** %83, align 8
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = getelementptr inbounds [2 x %struct.TYPE_8__], [2 x %struct.TYPE_8__]* %14, i64 0, i64 0
  %88 = call i32 @WSASend(i64 %86, %struct.TYPE_8__* %87, i32 2, i32* %15, i32 0, i32* null, i32* null)
  store i32 %88, i32* %13, align 4
  %89 = load i32, i32* %13, align 4
  %90 = load i32, i32* @SOCKET_ERROR, align 4
  %91 = icmp eq i32 %89, %90
  br i1 %91, label %92, label %96

92:                                               ; preds = %58
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %94 = call i32 @NetBIOSHangupSession(%struct.TYPE_9__* %93)
  %95 = load i64, i64* @NRC_SABORT, align 8
  store i64 %95, i64* %12, align 8
  br label %122

96:                                               ; preds = %58
  %97 = load i32, i32* %15, align 4
  %98 = load i32, i32* @NBSS_HDRSIZE, align 4
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = add nsw i32 %98, %101
  %103 = icmp slt i32 %97, %102
  br i1 %103, label %104, label %115

104:                                              ; preds = %96
  %105 = load i32, i32* %15, align 4
  %106 = load i32, i32* @NBSS_HDRSIZE, align 4
  %107 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = add nsw i32 %106, %109
  %111 = call i32 @FIXME(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %105, i32 %110)
  %112 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %113 = call i32 @NetBIOSHangupSession(%struct.TYPE_9__* %112)
  %114 = load i64, i64* @NRC_SABORT, align 8
  store i64 %114, i64* %12, align 8
  br label %121

115:                                              ; preds = %96
  %116 = load i64, i64* @NRC_GOODRET, align 8
  store i64 %116, i64* %12, align 8
  %117 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %118 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %118, align 4
  br label %121

121:                                              ; preds = %115, %104
  br label %122

122:                                              ; preds = %121, %92
  %123 = load i64, i64* %12, align 8
  %124 = inttoptr i64 %123 to i8*
  %125 = call i32 (i8*, i8*, ...) @TRACE(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i8* %124)
  %126 = load i64, i64* %12, align 8
  store i64 %126, i64* %4, align 8
  store i32 1, i32* %16, align 4
  br label %127

127:                                              ; preds = %122, %56, %48, %43, %36, %31
  %128 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %128)
  %129 = load i64, i64* %4, align 8
  ret i64 %129
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @TRACE(i8*, i8*, ...) #2

declare dso_local i32 @NBR_ADDWORD(i64*, i32) #2

declare dso_local i32 @WSASend(i64, %struct.TYPE_8__*, i32, i32*, i32, i32*, i32*) #2

declare dso_local i32 @NetBIOSHangupSession(%struct.TYPE_9__*) #2

declare dso_local i32 @FIXME(i8*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
