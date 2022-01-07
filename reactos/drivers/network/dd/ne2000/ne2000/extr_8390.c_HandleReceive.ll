; ModuleID = '/home/carl/AnghaBench/reactos/drivers/network/dd/ne2000/ne2000/extr_8390.c_HandleReceive.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/network/dd/ne2000/ne2000/extr_8390.c_HandleReceive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i64, i64, i32, i32, i8*, i8*, i8*, i8*, i64 }

@MAX_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"Called.\0A\00", align 1
@FALSE = common dso_local global i8* null, align 8
@MID_TRACE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Receive ring overflow.\0A\00", align 1
@PG0_CR = common dso_local global i64 0, align 8
@CR_STP = common dso_local global i32 0, align 4
@CR_RD2 = common dso_local global i32 0, align 4
@CR_PAGE0 = common dso_local global i32 0, align 4
@PG0_RBCR0 = common dso_local global i64 0, align 8
@PG0_RBCR1 = common dso_local global i64 0, align 8
@PG0_ISR = common dso_local global i64 0, align 8
@ISR_RST = common dso_local global i32 0, align 4
@ISR_PTX = common dso_local global i32 0, align 4
@ISR_TXE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i8* null, align 8
@PG0_TCR = common dso_local global i64 0, align 8
@TCR_LOOP = common dso_local global i32 0, align 4
@CR_STA = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"Receive error.\0A\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"Current page (0x%X)  NextPacket (0x%X).\0A\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"No more packets.\0A\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"Got a packet in the receive ring.\0A\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"Adapter->MiniportAdapterHandle: %x\0A\00", align 1
@.str.7 = private unnamed_addr constant [40 x i8] c"Retransmitting current packet at (%d).\0A\00", align 1
@MIN_TRACE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*)* @HandleReceive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @HandleReceive(%struct.TYPE_8__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  %7 = load i32, i32* @MAX_TRACE, align 4
  %8 = call i32 @NDIS_DbgPrint(i32 %7, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %9 = load i8*, i8** @FALSE, align 8
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 5
  store i8* %9, i8** %11, align 8
  store i32 0, i32* %6, align 4
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %13 = call i32 @NICGetCurrentPage(%struct.TYPE_8__* %12)
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 8
  %16 = load i8*, i8** %15, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %99

18:                                               ; preds = %1
  %19 = load i32, i32* @MID_TRACE, align 4
  %20 = call i32 @NDIS_DbgPrint(i32 %19, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 9
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @PG0_CR, align 8
  %25 = add nsw i64 %23, %24
  %26 = load i32, i32* @CR_STP, align 4
  %27 = load i32, i32* @CR_RD2, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @CR_PAGE0, align 4
  %30 = or i32 %28, %29
  %31 = call i32 @NdisRawWritePortUchar(i64 %25, i32 %30)
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 9
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @PG0_RBCR0, align 8
  %36 = add nsw i64 %34, %35
  %37 = call i32 @NdisRawWritePortUchar(i64 %36, i32 0)
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 9
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @PG0_RBCR1, align 8
  %42 = add nsw i64 %40, %41
  %43 = call i32 @NdisRawWritePortUchar(i64 %42, i32 0)
  store i32 0, i32* %4, align 4
  br label %44

44:                                               ; preds = %61, %18
  %45 = load i32, i32* %4, align 4
  %46 = icmp slt i32 %45, 4
  br i1 %46, label %47, label %64

47:                                               ; preds = %44
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 9
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @PG0_ISR, align 8
  %52 = add nsw i64 %50, %51
  %53 = call i32 @NdisRawReadPortUchar(i64 %52, i32* %5)
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* @ISR_RST, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %47
  br label %64

59:                                               ; preds = %47
  %60 = call i32 @NdisStallExecution(i32 500)
  br label %61

61:                                               ; preds = %59
  %62 = load i32, i32* %4, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %4, align 4
  br label %44

64:                                               ; preds = %58, %44
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @ISR_PTX, align 4
  %69 = load i32, i32* @ISR_TXE, align 4
  %70 = or i32 %68, %69
  %71 = and i32 %67, %70
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %64
  %74 = load i8*, i8** @TRUE, align 8
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 6
  store i8* %74, i8** %76, align 8
  br label %77

77:                                               ; preds = %73, %64
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 9
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @PG0_TCR, align 8
  %82 = add nsw i64 %80, %81
  %83 = load i32, i32* @TCR_LOOP, align 4
  %84 = call i32 @NdisRawWritePortUchar(i64 %82, i32 %83)
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 9
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @PG0_CR, align 8
  %89 = add nsw i64 %87, %88
  %90 = load i32, i32* @CR_STA, align 4
  %91 = load i32, i32* @CR_RD2, align 4
  %92 = or i32 %90, %91
  %93 = call i32 @NdisRawWritePortUchar(i64 %89, i32 %92)
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %95 = call i32 @NICStart(%struct.TYPE_8__* %94)
  %96 = load i8*, i8** @FALSE, align 8
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 8
  store i8* %96, i8** %98, align 8
  br label %99

99:                                               ; preds = %77, %1
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 7
  %102 = load i8*, i8** %101, align 8
  %103 = icmp ne i8* %102, null
  br i1 %103, label %104, label %117

104:                                              ; preds = %99
  %105 = load i32, i32* @MID_TRACE, align 4
  %106 = call i32 @NDIS_DbgPrint(i32 %105, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 2
  %109 = load i64, i64* %108, align 8
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 1
  store i64 %109, i64* %111, align 8
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %113 = call i32 @NICSetBoundaryPage(%struct.TYPE_8__* %112)
  %114 = load i8*, i8** @FALSE, align 8
  %115 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 7
  store i8* %114, i8** %116, align 8
  br label %117

117:                                              ; preds = %104, %99
  br label %118

118:                                              ; preds = %161, %117
  %119 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %120 = call i32 @NICGetCurrentPage(%struct.TYPE_8__* %119)
  %121 = load i32, i32* @MID_TRACE, align 4
  %122 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 2
  %124 = load i64, i64* %123, align 8
  %125 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = inttoptr i64 %127 to i8*
  %129 = call i32 @NDIS_DbgPrint(i32 %121, i8* %128)
  %130 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 2
  %132 = load i64, i64* %131, align 8
  %133 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 0, i32 1
  %135 = load i64, i64* %134, align 8
  %136 = icmp eq i64 %132, %135
  br i1 %136, label %137, label %140

137:                                              ; preds = %118
  %138 = load i32, i32* @MID_TRACE, align 4
  %139 = call i32 @NDIS_DbgPrint(i32 %138, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  br label %162

140:                                              ; preds = %118
  %141 = load i32, i32* @MID_TRACE, align 4
  %142 = call i32 @NDIS_DbgPrint(i32 %141, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0))
  %143 = load i32, i32* @MAX_TRACE, align 4
  %144 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %145 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %144, i32 0, i32 4
  %146 = load i32, i32* %145, align 4
  %147 = sext i32 %146 to i64
  %148 = inttoptr i64 %147 to i8*
  %149 = call i32 @NDIS_DbgPrint(i32 %143, i8* %148)
  %150 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %151 = call i32 @NICReadPacket(%struct.TYPE_8__* %150)
  %152 = load i8*, i8** @TRUE, align 8
  %153 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %154 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %153, i32 0, i32 5
  store i8* %152, i8** %154, align 8
  %155 = load i32, i32* %6, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %6, align 4
  %157 = load i32, i32* %6, align 4
  %158 = icmp eq i32 %157, 10
  br i1 %158, label %159, label %160

159:                                              ; preds = %140
  br label %162

160:                                              ; preds = %140
  br label %161

161:                                              ; preds = %160
  br label %118

162:                                              ; preds = %159, %137
  %163 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %164 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %163, i32 0, i32 6
  %165 = load i8*, i8** %164, align 8
  %166 = icmp ne i8* %165, null
  br i1 %166, label %167, label %185

167:                                              ; preds = %162
  %168 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %169 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %168, i32 0, i32 3
  %170 = load i32, i32* %169, align 8
  %171 = icmp ne i32 %170, -1
  br i1 %171, label %172, label %185

172:                                              ; preds = %167
  %173 = load i32, i32* @MID_TRACE, align 4
  %174 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %175 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %174, i32 0, i32 3
  %176 = load i32, i32* %175, align 8
  %177 = sext i32 %176 to i64
  %178 = inttoptr i64 %177 to i8*
  %179 = call i32 @NDIS_DbgPrint(i32 %173, i8* %178)
  %180 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %181 = call i32 @NICStartTransmit(%struct.TYPE_8__* %180)
  %182 = load i8*, i8** @FALSE, align 8
  %183 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %184 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %183, i32 0, i32 6
  store i8* %182, i8** %184, align 8
  br label %185

185:                                              ; preds = %172, %167, %162
  %186 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %187 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %186, i32 0, i32 5
  %188 = load i8*, i8** %187, align 8
  %189 = icmp ne i8* %188, null
  br i1 %189, label %190, label %195

190:                                              ; preds = %185
  %191 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %192 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %191, i32 0, i32 4
  %193 = load i32, i32* %192, align 4
  %194 = call i32 @NdisMEthIndicateReceiveComplete(i32 %193)
  br label %195

195:                                              ; preds = %190, %185
  %196 = load i32, i32* %2, align 4
  ret i32 %196
}

declare dso_local i32 @NDIS_DbgPrint(i32, i8*) #1

declare dso_local i32 @NICGetCurrentPage(%struct.TYPE_8__*) #1

declare dso_local i32 @NdisRawWritePortUchar(i64, i32) #1

declare dso_local i32 @NdisRawReadPortUchar(i64, i32*) #1

declare dso_local i32 @NdisStallExecution(i32) #1

declare dso_local i32 @NICStart(%struct.TYPE_8__*) #1

declare dso_local i32 @NICSetBoundaryPage(%struct.TYPE_8__*) #1

declare dso_local i32 @NICReadPacket(%struct.TYPE_8__*) #1

declare dso_local i32 @NICStartTransmit(%struct.TYPE_8__*) #1

declare dso_local i32 @NdisMEthIndicateReceiveComplete(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
