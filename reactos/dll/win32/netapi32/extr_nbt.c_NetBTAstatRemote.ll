; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/netapi32/extr_nbt.c_NetBTAstatRemote.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/netapi32/extr_nbt.c_NetBTAstatRemote.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32 }
%struct.TYPE_15__ = type { i32, i32, i32 }
%struct.TYPE_19__ = type { i64, i32* }
%struct.TYPE_17__ = type { i32, i32, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i64 }

@NRC_GOODRET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"adapter %p, NCB %p\0A\00", align 1
@NRC_BADDR = common dso_local global i32 0, align 4
@NRC_INVADDRESS = common dso_local global i32 0, align 4
@PF_INET = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i32 0, align 4
@IPPROTO_UDP = common dso_local global i32 0, align 4
@WSA_FLAG_OVERLAPPED = common dso_local global i32 0, align 4
@INVALID_SOCKET = common dso_local global i64 0, align 8
@NRC_OSRESNOTAV = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@gWINSQueries = common dso_local global i64 0, align 8
@NBNS_TYPE_NBSTAT = common dso_local global i32 0, align 4
@gWINSQueryTimeout = common dso_local global i64 0, align 8
@NetBTNodeStatusAnswerCallback = common dso_local global i32 0, align 4
@NRC_SYSTEM = common dso_local global i32 0, align 4
@NRC_CMDCAN = common dso_local global i32 0, align 4
@NRC_CMDTMO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"returning 0x%02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_18__*, %struct.TYPE_15__*)* @NetBTAstatRemote to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @NetBTAstatRemote(%struct.TYPE_18__* %0, %struct.TYPE_15__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_19__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_17__, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_16__*, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %4, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %5, align 8
  %13 = load i32, i32* @NRC_GOODRET, align 4
  store i32 %13, i32* %6, align 4
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %7, align 8
  %14 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %15 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %16 = call i32 (i8*, %struct.TYPE_18__*, ...) @TRACE(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), %struct.TYPE_18__* %14, %struct.TYPE_15__* %15)
  %17 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %18 = icmp ne %struct.TYPE_18__* %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* @NRC_BADDR, align 4
  store i32 %20, i32* %3, align 4
  br label %142

21:                                               ; preds = %2
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %23 = icmp ne %struct.TYPE_15__* %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %21
  %25 = load i32, i32* @NRC_INVADDRESS, align 4
  store i32 %25, i32* %3, align 4
  br label %142

26:                                               ; preds = %21
  %27 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %28 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %29 = call i32 @NetBTInternalFindName(%struct.TYPE_18__* %27, %struct.TYPE_15__* %28, %struct.TYPE_19__** %7)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @NRC_GOODRET, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %128

33:                                               ; preds = %26
  %34 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %35 = icmp ne %struct.TYPE_19__* %34, null
  br i1 %35, label %36, label %128

36:                                               ; preds = %33
  %37 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp sgt i64 %39, 0
  br i1 %40, label %41, label %125

41:                                               ; preds = %36
  %42 = load i32, i32* @PF_INET, align 4
  %43 = load i32, i32* @SOCK_DGRAM, align 4
  %44 = load i32, i32* @IPPROTO_UDP, align 4
  %45 = load i32, i32* @WSA_FLAG_OVERLAPPED, align 4
  %46 = call i64 @WSASocketA(i32 %42, i32 %43, i32 %44, i32* null, i32 0, i32 %45)
  store i64 %46, i64* %8, align 8
  %47 = load i64, i64* %8, align 8
  %48 = load i64, i64* @INVALID_SOCKET, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %41
  %51 = load i32, i32* @NRC_OSRESNOTAV, align 4
  store i32 %51, i32* %6, align 4
  br label %124

52:                                               ; preds = %41
  %53 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = sext i32 %55 to i64
  %57 = inttoptr i64 %56 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %57, %struct.TYPE_16__** %11, align 8
  %58 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %59, align 4
  %62 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %63 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %62, i32 0, i32 0
  store i64 0, i64* %63, align 8
  %64 = load i32, i32* @FALSE, align 4
  %65 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %9, i32 0, i32 0
  store i32 %64, i32* %65, align 8
  %66 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %67 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %9, i32 0, i32 2
  store %struct.TYPE_16__* %66, %struct.TYPE_16__** %67, align 8
  %68 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %9, i32 0, i32 1
  store i32 %70, i32* %71, align 4
  store i64 0, i64* %10, align 8
  br label %72

72:                                               ; preds = %118, %52
  %73 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %9, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %80, label %76

76:                                               ; preds = %72
  %77 = load i64, i64* %10, align 8
  %78 = load i64, i64* @gWINSQueries, align 8
  %79 = icmp slt i64 %77, %78
  br label %80

80:                                               ; preds = %76, %72
  %81 = phi i1 [ false, %72 ], [ %79, %76 ]
  br i1 %81, label %82, label %121

82:                                               ; preds = %80
  %83 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %84 = call i32 @NCB_CANCELLED(%struct.TYPE_15__* %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %115, label %86

86:                                               ; preds = %82
  %87 = load i64, i64* %8, align 8
  %88 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @NBNS_TYPE_NBSTAT, align 4
  %95 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %96 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %95, i32 0, i32 1
  %97 = load i32*, i32** %96, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 0
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @FALSE, align 4
  %101 = call i32 @NetBTSendNameQuery(i64 %87, i32 %90, i32 %93, i32 %94, i32 %99, i32 %100)
  store i32 %101, i32* %12, align 4
  %102 = load i32, i32* %12, align 4
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %112

104:                                              ; preds = %86
  %105 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %106 = load i64, i64* %8, align 8
  %107 = call i64 (...) @GetTickCount()
  %108 = load i64, i64* @gWINSQueryTimeout, align 8
  %109 = add nsw i64 %107, %108
  %110 = load i32, i32* @NetBTNodeStatusAnswerCallback, align 4
  %111 = call i32 @NetBTWaitForNameResponse(%struct.TYPE_18__* %105, i64 %106, i64 %109, i32 %110, %struct.TYPE_17__* %9)
  store i32 %111, i32* %6, align 4
  br label %114

112:                                              ; preds = %86
  %113 = load i32, i32* @NRC_SYSTEM, align 4
  store i32 %113, i32* %6, align 4
  br label %114

114:                                              ; preds = %112, %104
  br label %117

115:                                              ; preds = %82
  %116 = load i32, i32* @NRC_CMDCAN, align 4
  store i32 %116, i32* %6, align 4
  br label %117

117:                                              ; preds = %115, %114
  br label %118

118:                                              ; preds = %117
  %119 = load i64, i64* %10, align 8
  %120 = add nsw i64 %119, 1
  store i64 %120, i64* %10, align 8
  br label %72

121:                                              ; preds = %80
  %122 = load i64, i64* %8, align 8
  %123 = call i32 @closesocket(i64 %122)
  br label %124

124:                                              ; preds = %121, %50
  br label %127

125:                                              ; preds = %36
  %126 = load i32, i32* @NRC_CMDTMO, align 4
  store i32 %126, i32* %6, align 4
  br label %127

127:                                              ; preds = %125, %124
  br label %136

128:                                              ; preds = %33, %26
  %129 = load i32, i32* %6, align 4
  %130 = load i32, i32* @NRC_CMDCAN, align 4
  %131 = icmp eq i32 %129, %130
  br i1 %131, label %132, label %133

132:                                              ; preds = %128
  br label %135

133:                                              ; preds = %128
  %134 = load i32, i32* @NRC_CMDTMO, align 4
  store i32 %134, i32* %6, align 4
  br label %135

135:                                              ; preds = %133, %132
  br label %136

136:                                              ; preds = %135, %127
  %137 = load i32, i32* %6, align 4
  %138 = sext i32 %137 to i64
  %139 = inttoptr i64 %138 to %struct.TYPE_18__*
  %140 = call i32 (i8*, %struct.TYPE_18__*, ...) @TRACE(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_18__* %139)
  %141 = load i32, i32* %6, align 4
  store i32 %141, i32* %3, align 4
  br label %142

142:                                              ; preds = %136, %24, %19
  %143 = load i32, i32* %3, align 4
  ret i32 %143
}

declare dso_local i32 @TRACE(i8*, %struct.TYPE_18__*, ...) #1

declare dso_local i32 @NetBTInternalFindName(%struct.TYPE_18__*, %struct.TYPE_15__*, %struct.TYPE_19__**) #1

declare dso_local i64 @WSASocketA(i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @NCB_CANCELLED(%struct.TYPE_15__*) #1

declare dso_local i32 @NetBTSendNameQuery(i64, i32, i32, i32, i32, i32) #1

declare dso_local i32 @NetBTWaitForNameResponse(%struct.TYPE_18__*, i64, i64, i32, %struct.TYPE_17__*) #1

declare dso_local i64 @GetTickCount(...) #1

declare dso_local i32 @closesocket(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
