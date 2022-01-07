; ModuleID = '/home/carl/AnghaBench/reactos/drivers/network/afd/afd/extr_read.c_ReceiveActivity.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/network/afd/afd/extr_read.c_ReceiveActivity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { %struct.TYPE_23__ }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_30__ = type { i64, i64*, i32, i32, i32, i32*, %struct.TYPE_27__, i64 }
%struct.TYPE_27__ = type { i64, i64 }
%struct.TYPE_28__ = type { i64, %struct.TYPE_26__, %struct.TYPE_25__ }
%struct.TYPE_26__ = type { i64, i64 }
%struct.TYPE_25__ = type { %struct.TYPE_24__ }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_29__ = type { i32, i32 }

@STATUS_SUCCESS = common dso_local global i64 0, align 8
@STATUS_PENDING = common dso_local global i64 0, align 8
@MID_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"%p %p\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"FCB %p Receive data waiting %u\0A\00", align 1
@FUNCTION_RECV = common dso_local global i64 0, align 8
@IRP = common dso_local global i32 0, align 4
@Tail = common dso_local global %struct.TYPE_22__ zeroinitializer, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"Completing recv %p (%u)\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@STATUS_FILE_CLOSED = common dso_local global i64 0, align 8
@IO_NETWORK_INCREMENT = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [14 x i8] c"RecvReq @ %p\0A\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"Ran out of data for %p\0A\00", align 1
@AFD_EVENT_RECEIVE = common dso_local global i32 0, align 4
@FD_READ_BIT = common dso_local global i64 0, align 8
@AFD_EVENT_DISCONNECT = common dso_local global i32 0, align 4
@AFD_EVENT_CLOSE = common dso_local global i32 0, align 4
@FD_CLOSE_BIT = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [28 x i8] c"RetStatus for irp %p is %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_30__*, %struct.TYPE_28__*)* @ReceiveActivity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ReceiveActivity(%struct.TYPE_30__* %0, %struct.TYPE_28__* %1) #0 {
  %3 = alloca %struct.TYPE_30__*, align 8
  %4 = alloca %struct.TYPE_28__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_28__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_29__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.TYPE_30__* %0, %struct.TYPE_30__** %3, align 8
  store %struct.TYPE_28__* %1, %struct.TYPE_28__** %4, align 8
  store i64 0, i64* %9, align 8
  %12 = load i64, i64* @STATUS_SUCCESS, align 8
  store i64 %12, i64* %10, align 8
  %13 = load i64, i64* @STATUS_PENDING, align 8
  store i64 %13, i64* %11, align 8
  %14 = load i32, i32* @MID_TRACE, align 4
  %15 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %16 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %17 = bitcast %struct.TYPE_28__* %16 to i8*
  %18 = call i32 @AFD_DbgPrint(i32 %14, i8* %17)
  %19 = load i32, i32* @MID_TRACE, align 4
  %20 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %21 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %21, i32 0, i32 6
  %23 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to i8*
  %26 = call i32 @AFD_DbgPrint(i32 %19, i8* %25)
  %27 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %28 = call i64 @CantReadMore(%struct.TYPE_30__* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %118

30:                                               ; preds = %2
  br label %31

31:                                               ; preds = %108, %30
  %32 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %32, i32 0, i32 5
  %34 = load i32*, i32** %33, align 8
  %35 = load i64, i64* @FUNCTION_RECV, align 8
  %36 = getelementptr inbounds i32, i32* %34, i64 %35
  %37 = call i64 @IsListEmpty(i32* %36)
  %38 = icmp ne i64 %37, 0
  %39 = xor i1 %38, true
  br i1 %39, label %40, label %117

40:                                               ; preds = %31
  %41 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %41, i32 0, i32 5
  %43 = load i32*, i32** %42, align 8
  %44 = load i64, i64* @FUNCTION_RECV, align 8
  %45 = getelementptr inbounds i32, i32* %43, i64 %44
  %46 = call i32 @RemoveHeadList(i32* %45)
  store i32 %46, i32* %5, align 4
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* @IRP, align 4
  %49 = load i32, i32* getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @Tail, i32 0, i32 0, i32 0), align 4
  %50 = call %struct.TYPE_28__* @CONTAINING_RECORD(i32 %47, i32 %48, i32 %49)
  store %struct.TYPE_28__* %50, %struct.TYPE_28__** %6, align 8
  %51 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %52 = call i32 @IoGetCurrentIrpStackLocation(%struct.TYPE_28__* %51)
  store i32 %52, i32* %7, align 4
  %53 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %54 = load i32, i32* %7, align 4
  %55 = call %struct.TYPE_29__* @GetLockedData(%struct.TYPE_28__* %53, i32 %54)
  store %struct.TYPE_29__* %55, %struct.TYPE_29__** %8, align 8
  %56 = load i32, i32* @MID_TRACE, align 4
  %57 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %58 = load i64, i64* %9, align 8
  %59 = inttoptr i64 %58 to i8*
  %60 = call i32 @AFD_DbgPrint(i32 %56, i8* %59)
  %61 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @FALSE, align 4
  %68 = call i32 @UnlockBuffers(i32 %63, i32 %66, i32 %67)
  %69 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %69, i32 0, i32 7
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %81

73:                                               ; preds = %40
  %74 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @STATUS_SUCCESS, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %81

79:                                               ; preds = %73
  %80 = load i64, i64* @STATUS_FILE_CLOSED, align 8
  store i64 %80, i64* %10, align 8
  br label %85

81:                                               ; preds = %73, %40
  %82 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  store i64 %84, i64* %10, align 8
  br label %85

85:                                               ; preds = %81, %79
  %86 = load i64, i64* %10, align 8
  %87 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %88, i32 0, i32 1
  store i64 %86, i64* %89, align 8
  %90 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %91, i32 0, i32 0
  store i64 0, i64* %92, align 8
  %93 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %94 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %95 = icmp eq %struct.TYPE_28__* %93, %94
  br i1 %95, label %96, label %98

96:                                               ; preds = %85
  %97 = load i64, i64* %10, align 8
  store i64 %97, i64* %11, align 8
  br label %98

98:                                               ; preds = %96, %85
  %99 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %108

103:                                              ; preds = %98
  %104 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %105 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %106 = call i32 @IoGetCurrentIrpStackLocation(%struct.TYPE_28__* %105)
  %107 = call i32 @UnlockRequest(%struct.TYPE_28__* %104, i32 %106)
  br label %108

108:                                              ; preds = %103, %98
  %109 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %110 = call i32 @IoSetCancelRoutine(%struct.TYPE_28__* %109, i32* null)
  %111 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %112 = load i32, i32* @IO_NETWORK_INCREMENT, align 4
  %113 = call i32 @IoCompleteRequest(%struct.TYPE_28__* %111, i32 %112)
  %114 = load i64, i64* @TRUE, align 8
  %115 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %116 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %115, i32 0, i32 7
  store i64 %114, i64* %116, align 8
  br label %31

117:                                              ; preds = %31
  br label %222

118:                                              ; preds = %2
  %119 = load i32, i32* @MID_TRACE, align 4
  %120 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %121 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %122 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %121, i32 0, i32 6
  %123 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = inttoptr i64 %124 to i8*
  %126 = call i32 @AFD_DbgPrint(i32 %119, i8* %125)
  br label %127

127:                                              ; preds = %220, %118
  %128 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %129 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %128, i32 0, i32 5
  %130 = load i32*, i32** %129, align 8
  %131 = load i64, i64* @FUNCTION_RECV, align 8
  %132 = getelementptr inbounds i32, i32* %130, i64 %131
  %133 = call i64 @IsListEmpty(i32* %132)
  %134 = icmp ne i64 %133, 0
  %135 = xor i1 %134, true
  br i1 %135, label %136, label %221

136:                                              ; preds = %127
  %137 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %138 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %137, i32 0, i32 5
  %139 = load i32*, i32** %138, align 8
  %140 = load i64, i64* @FUNCTION_RECV, align 8
  %141 = getelementptr inbounds i32, i32* %139, i64 %140
  %142 = call i32 @RemoveHeadList(i32* %141)
  store i32 %142, i32* %5, align 4
  %143 = load i32, i32* %5, align 4
  %144 = load i32, i32* @IRP, align 4
  %145 = load i32, i32* getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @Tail, i32 0, i32 0, i32 0), align 4
  %146 = call %struct.TYPE_28__* @CONTAINING_RECORD(i32 %143, i32 %144, i32 %145)
  store %struct.TYPE_28__* %146, %struct.TYPE_28__** %6, align 8
  %147 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %148 = call i32 @IoGetCurrentIrpStackLocation(%struct.TYPE_28__* %147)
  store i32 %148, i32* %7, align 4
  %149 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %150 = load i32, i32* %7, align 4
  %151 = call %struct.TYPE_29__* @GetLockedData(%struct.TYPE_28__* %149, i32 %150)
  store %struct.TYPE_29__* %151, %struct.TYPE_29__** %8, align 8
  %152 = load i32, i32* @MID_TRACE, align 4
  %153 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %154 = bitcast %struct.TYPE_29__* %153 to i8*
  %155 = call i32 @AFD_DbgPrint(i32 %152, i8* %154)
  %156 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %157 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %158 = call i64 @TryToSatisfyRecvRequestFromBuffer(%struct.TYPE_30__* %156, %struct.TYPE_29__* %157, i64* %9)
  store i64 %158, i64* %10, align 8
  %159 = load i64, i64* %10, align 8
  %160 = load i64, i64* @STATUS_PENDING, align 8
  %161 = icmp eq i64 %159, %160
  br i1 %161, label %162, label %177

162:                                              ; preds = %136
  %163 = load i32, i32* @MID_TRACE, align 4
  %164 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %165 = bitcast %struct.TYPE_28__* %164 to i8*
  %166 = call i32 @AFD_DbgPrint(i32 %163, i8* %165)
  %167 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %168 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %167, i32 0, i32 5
  %169 = load i32*, i32** %168, align 8
  %170 = load i64, i64* @FUNCTION_RECV, align 8
  %171 = getelementptr inbounds i32, i32* %169, i64 %170
  %172 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %173 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %172, i32 0, i32 2
  %174 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %174, i32 0, i32 0
  %176 = call i32 @InsertHeadList(i32* %171, i32* %175)
  br label %221

177:                                              ; preds = %136
  %178 = load i32, i32* @MID_TRACE, align 4
  %179 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %180 = load i64, i64* %9, align 8
  %181 = inttoptr i64 %180 to i8*
  %182 = call i32 @AFD_DbgPrint(i32 %178, i8* %181)
  %183 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %184 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 4
  %186 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %187 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 4
  %189 = load i32, i32* @FALSE, align 4
  %190 = call i32 @UnlockBuffers(i32 %185, i32 %188, i32 %189)
  %191 = load i64, i64* %10, align 8
  %192 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %193 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %192, i32 0, i32 1
  %194 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %193, i32 0, i32 1
  store i64 %191, i64* %194, align 8
  %195 = load i64, i64* %9, align 8
  %196 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %197 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %196, i32 0, i32 1
  %198 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %197, i32 0, i32 0
  store i64 %195, i64* %198, align 8
  %199 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %200 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %201 = icmp eq %struct.TYPE_28__* %199, %200
  br i1 %201, label %202, label %204

202:                                              ; preds = %177
  %203 = load i64, i64* %10, align 8
  store i64 %203, i64* %11, align 8
  br label %204

204:                                              ; preds = %202, %177
  %205 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %206 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %205, i32 0, i32 0
  %207 = load i64, i64* %206, align 8
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %209, label %214

209:                                              ; preds = %204
  %210 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %211 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %212 = call i32 @IoGetCurrentIrpStackLocation(%struct.TYPE_28__* %211)
  %213 = call i32 @UnlockRequest(%struct.TYPE_28__* %210, i32 %212)
  br label %214

214:                                              ; preds = %209, %204
  %215 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %216 = call i32 @IoSetCancelRoutine(%struct.TYPE_28__* %215, i32* null)
  %217 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %218 = load i32, i32* @IO_NETWORK_INCREMENT, align 4
  %219 = call i32 @IoCompleteRequest(%struct.TYPE_28__* %217, i32 %218)
  br label %220

220:                                              ; preds = %214
  br label %127

221:                                              ; preds = %162, %127
  br label %222

222:                                              ; preds = %221, %117
  %223 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %224 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %223, i32 0, i32 6
  %225 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %224, i32 0, i32 1
  %226 = load i64, i64* %225, align 8
  %227 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %228 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %227, i32 0, i32 6
  %229 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %228, i32 0, i32 0
  %230 = load i64, i64* %229, align 8
  %231 = sub nsw i64 %226, %230
  %232 = icmp ne i64 %231, 0
  br i1 %232, label %233, label %260

233:                                              ; preds = %222
  %234 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %235 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %234, i32 0, i32 5
  %236 = load i32*, i32** %235, align 8
  %237 = load i64, i64* @FUNCTION_RECV, align 8
  %238 = getelementptr inbounds i32, i32* %236, i64 %237
  %239 = call i64 @IsListEmpty(i32* %238)
  %240 = icmp ne i64 %239, 0
  br i1 %240, label %241, label %260

241:                                              ; preds = %233
  %242 = load i32, i32* @AFD_EVENT_RECEIVE, align 4
  %243 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %244 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %243, i32 0, i32 4
  %245 = load i32, i32* %244, align 8
  %246 = or i32 %245, %242
  store i32 %246, i32* %244, align 8
  %247 = load i64, i64* @STATUS_SUCCESS, align 8
  %248 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %249 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %248, i32 0, i32 1
  %250 = load i64*, i64** %249, align 8
  %251 = load i64, i64* @FD_READ_BIT, align 8
  %252 = getelementptr inbounds i64, i64* %250, i64 %251
  store i64 %247, i64* %252, align 8
  %253 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %254 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %253, i32 0, i32 3
  %255 = load i32, i32* %254, align 4
  %256 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %257 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %256, i32 0, i32 2
  %258 = load i32, i32* %257, align 8
  %259 = call i32 @PollReeval(i32 %255, i32 %258)
  br label %267

260:                                              ; preds = %233, %222
  %261 = load i32, i32* @AFD_EVENT_RECEIVE, align 4
  %262 = xor i32 %261, -1
  %263 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %264 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %263, i32 0, i32 4
  %265 = load i32, i32* %264, align 8
  %266 = and i32 %265, %262
  store i32 %266, i32* %264, align 8
  br label %267

267:                                              ; preds = %260, %241
  %268 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %269 = call i64 @CantReadMore(%struct.TYPE_30__* %268)
  %270 = icmp ne i64 %269, 0
  br i1 %270, label %271, label %305

271:                                              ; preds = %267
  %272 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %273 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %272, i32 0, i32 0
  %274 = load i64, i64* %273, align 8
  %275 = load i64, i64* @STATUS_SUCCESS, align 8
  %276 = icmp eq i64 %274, %275
  br i1 %276, label %277, label %283

277:                                              ; preds = %271
  %278 = load i32, i32* @AFD_EVENT_DISCONNECT, align 4
  %279 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %280 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %279, i32 0, i32 4
  %281 = load i32, i32* %280, align 8
  %282 = or i32 %281, %278
  store i32 %282, i32* %280, align 8
  br label %289

283:                                              ; preds = %271
  %284 = load i32, i32* @AFD_EVENT_CLOSE, align 4
  %285 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %286 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %285, i32 0, i32 4
  %287 = load i32, i32* %286, align 8
  %288 = or i32 %287, %284
  store i32 %288, i32* %286, align 8
  br label %289

289:                                              ; preds = %283, %277
  %290 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %291 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %290, i32 0, i32 0
  %292 = load i64, i64* %291, align 8
  %293 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %294 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %293, i32 0, i32 1
  %295 = load i64*, i64** %294, align 8
  %296 = load i64, i64* @FD_CLOSE_BIT, align 8
  %297 = getelementptr inbounds i64, i64* %295, i64 %296
  store i64 %292, i64* %297, align 8
  %298 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %299 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %298, i32 0, i32 3
  %300 = load i32, i32* %299, align 4
  %301 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %302 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %301, i32 0, i32 2
  %303 = load i32, i32* %302, align 8
  %304 = call i32 @PollReeval(i32 %300, i32 %303)
  br label %305

305:                                              ; preds = %289, %267
  %306 = load i32, i32* @MID_TRACE, align 4
  %307 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %308 = load i64, i64* %11, align 8
  %309 = inttoptr i64 %308 to i8*
  %310 = call i32 @AFD_DbgPrint(i32 %306, i8* %309)
  %311 = load i64, i64* %11, align 8
  ret i64 %311
}

declare dso_local i32 @AFD_DbgPrint(i32, i8*) #1

declare dso_local i64 @CantReadMore(%struct.TYPE_30__*) #1

declare dso_local i64 @IsListEmpty(i32*) #1

declare dso_local i32 @RemoveHeadList(i32*) #1

declare dso_local %struct.TYPE_28__* @CONTAINING_RECORD(i32, i32, i32) #1

declare dso_local i32 @IoGetCurrentIrpStackLocation(%struct.TYPE_28__*) #1

declare dso_local %struct.TYPE_29__* @GetLockedData(%struct.TYPE_28__*, i32) #1

declare dso_local i32 @UnlockBuffers(i32, i32, i32) #1

declare dso_local i32 @UnlockRequest(%struct.TYPE_28__*, i32) #1

declare dso_local i32 @IoSetCancelRoutine(%struct.TYPE_28__*, i32*) #1

declare dso_local i32 @IoCompleteRequest(%struct.TYPE_28__*, i32) #1

declare dso_local i64 @TryToSatisfyRecvRequestFromBuffer(%struct.TYPE_30__*, %struct.TYPE_29__*, i64*) #1

declare dso_local i32 @InsertHeadList(i32*, i32*) #1

declare dso_local i32 @PollReeval(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
