; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/netapi32/extr_nbt.c_NetBTSessionReq.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/netapi32/extr_nbt.c_NetBTSessionReq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i8* }

@NBSS_HDRSIZE = common dso_local global i32 0, align 4
@MAX_DOMAIN_NAME_LEN = common dso_local global i32 0, align 4
@NBSS_REQ = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c"send failed\0A\00", align 1
@NRC_SABORT = common dso_local global i64 0, align 8
@NBSS_NACK = common dso_local global i64 0, align 8
@NRC_REMTFUL = common dso_local global i64 0, align 8
@NRC_NOCALL = common dso_local global i64 0, align 8
@NBSS_RETARGET = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [36 x i8] c"Got a session retarget, can't deal\0A\00", align 1
@NBSS_ACK = common dso_local global i64 0, align 8
@NRC_GOODRET = common dso_local global i64 0, align 8
@NRC_SYSTEM = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [18 x i8] c"returning 0x%02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i64*, i64*)* @NetBTSessionReq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @NetBTSessionReq(i32 %0, i64* %1, i64* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_4__, align 8
  %17 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i64* %1, i64** %6, align 8
  store i64* %2, i64** %7, align 8
  %18 = load i32, i32* @NBSS_HDRSIZE, align 4
  %19 = load i32, i32* @MAX_DOMAIN_NAME_LEN, align 4
  %20 = mul nsw i32 %19, 2
  %21 = add nsw i32 %18, %20
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %8, align 8
  %24 = alloca i64, i64 %22, align 16
  store i64 %22, i64* %9, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %15, align 4
  %25 = load i64, i64* @NBSS_REQ, align 8
  %26 = getelementptr inbounds i64, i64* %24, i64 0
  store i64 %25, i64* %26, align 16
  %27 = getelementptr inbounds i64, i64* %24, i64 1
  store i64 0, i64* %27, align 8
  %28 = load i64*, i64** %6, align 8
  %29 = load i32, i32* @NBSS_HDRSIZE, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i64, i64* %24, i64 %30
  %32 = call i64 @NetBTNameEncode(i64* %28, i64* %31)
  %33 = load i32, i32* %12, align 4
  %34 = zext i32 %33 to i64
  %35 = add nsw i64 %34, %32
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %12, align 4
  %37 = load i64*, i64** %7, align 8
  %38 = load i32, i32* @NBSS_HDRSIZE, align 4
  %39 = load i32, i32* %12, align 4
  %40 = add i32 %38, %39
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds i64, i64* %24, i64 %41
  %43 = call i64 @NetBTNameEncode(i64* %37, i64* %42)
  %44 = load i32, i32* %12, align 4
  %45 = zext i32 %44 to i64
  %46 = add nsw i64 %45, %43
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* %12, align 4
  %48 = getelementptr inbounds i64, i64* %24, i64 2
  %49 = load i32, i32* %12, align 4
  %50 = call i32 @NBR_ADDWORD(i64* %48, i32 %49)
  %51 = load i32, i32* %12, align 4
  %52 = load i32, i32* @NBSS_HDRSIZE, align 4
  %53 = add i32 %51, %52
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  store i32 %53, i32* %54, align 8
  %55 = bitcast i64* %24 to i8*
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  store i8* %55, i8** %56, align 8
  %57 = load i32, i32* %5, align 4
  %58 = call i32 @WSASend(i32 %57, %struct.TYPE_4__* %16, i32 1, i32* %13, i32 0, i32* null, i32* null)
  store i32 %58, i32* %11, align 4
  %59 = load i32, i32* %11, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %67, label %61

61:                                               ; preds = %3
  %62 = load i32, i32* %13, align 4
  %63 = load i32, i32* %12, align 4
  %64 = load i32, i32* @NBSS_HDRSIZE, align 4
  %65 = add i32 %63, %64
  %66 = icmp ult i32 %62, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %61, %3
  %68 = call i32 @ERR(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %69 = load i64, i64* @NRC_SABORT, align 8
  store i64 %69, i64* %4, align 8
  store i32 1, i32* %17, align 4
  br label %131

70:                                               ; preds = %61
  %71 = load i32, i32* @NBSS_HDRSIZE, align 4
  %72 = add nsw i32 %71, 1
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  store i32 %72, i32* %73, align 8
  %74 = load i32, i32* %5, align 4
  %75 = call i32 @WSARecv(i32 %74, %struct.TYPE_4__* %16, i32 1, i32* %14, i32* %15, i32* null, i32* null)
  store i32 %75, i32* %11, align 4
  %76 = load i32, i32* %11, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %82, label %78

78:                                               ; preds = %70
  %79 = load i32, i32* %14, align 4
  %80 = load i32, i32* @NBSS_HDRSIZE, align 4
  %81 = icmp ult i32 %79, %80
  br i1 %81, label %82, label %84

82:                                               ; preds = %78, %70
  %83 = load i64, i64* @NRC_SABORT, align 8
  store i64 %83, i64* %10, align 8
  br label %127

84:                                               ; preds = %78
  %85 = getelementptr inbounds i64, i64* %24, i64 0
  %86 = load i64, i64* %85, align 16
  %87 = load i64, i64* @NBSS_NACK, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %107

89:                                               ; preds = %84
  %90 = load i32, i32* %11, align 4
  %91 = load i32, i32* @NBSS_HDRSIZE, align 4
  %92 = add nsw i32 %91, 1
  %93 = icmp eq i32 %90, %92
  br i1 %93, label %94, label %104

94:                                               ; preds = %89
  %95 = load i32, i32* @NBSS_HDRSIZE, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i64, i64* %24, i64 %96
  %98 = load i64, i64* %97, align 8
  switch i64 %98, label %101 [
    i64 128, label %99
  ]

99:                                               ; preds = %94
  %100 = load i64, i64* @NRC_REMTFUL, align 8
  store i64 %100, i64* %10, align 8
  br label %103

101:                                              ; preds = %94
  %102 = load i64, i64* @NRC_NOCALL, align 8
  store i64 %102, i64* %10, align 8
  br label %103

103:                                              ; preds = %101, %99
  br label %106

104:                                              ; preds = %89
  %105 = load i64, i64* @NRC_NOCALL, align 8
  store i64 %105, i64* %10, align 8
  br label %106

106:                                              ; preds = %104, %103
  br label %126

107:                                              ; preds = %84
  %108 = getelementptr inbounds i64, i64* %24, i64 0
  %109 = load i64, i64* %108, align 16
  %110 = load i64, i64* @NBSS_RETARGET, align 8
  %111 = icmp eq i64 %109, %110
  br i1 %111, label %112, label %115

112:                                              ; preds = %107
  %113 = call i32 @FIXME(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %114 = load i64, i64* @NRC_NOCALL, align 8
  store i64 %114, i64* %10, align 8
  br label %125

115:                                              ; preds = %107
  %116 = getelementptr inbounds i64, i64* %24, i64 0
  %117 = load i64, i64* %116, align 16
  %118 = load i64, i64* @NBSS_ACK, align 8
  %119 = icmp eq i64 %117, %118
  br i1 %119, label %120, label %122

120:                                              ; preds = %115
  %121 = load i64, i64* @NRC_GOODRET, align 8
  store i64 %121, i64* %10, align 8
  br label %124

122:                                              ; preds = %115
  %123 = load i64, i64* @NRC_SYSTEM, align 8
  store i64 %123, i64* %10, align 8
  br label %124

124:                                              ; preds = %122, %120
  br label %125

125:                                              ; preds = %124, %112
  br label %126

126:                                              ; preds = %125, %106
  br label %127

127:                                              ; preds = %126, %82
  %128 = load i64, i64* %10, align 8
  %129 = call i32 @TRACE(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i64 %128)
  %130 = load i64, i64* %10, align 8
  store i64 %130, i64* %4, align 8
  store i32 1, i32* %17, align 4
  br label %131

131:                                              ; preds = %127, %67
  %132 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %132)
  %133 = load i64, i64* %4, align 8
  ret i64 %133
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @NetBTNameEncode(i64*, i64*) #2

declare dso_local i32 @NBR_ADDWORD(i64*, i32) #2

declare dso_local i32 @WSASend(i32, %struct.TYPE_4__*, i32, i32*, i32, i32*, i32*) #2

declare dso_local i32 @ERR(i8*) #2

declare dso_local i32 @WSARecv(i32, %struct.TYPE_4__*, i32, i32*, i32*, i32*, i32*) #2

declare dso_local i32 @FIXME(i8*) #2

declare dso_local i32 @TRACE(i8*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
