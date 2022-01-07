; ModuleID = '/home/carl/AnghaBench/reactos/drivers/network/tcpip/tcpip/extr_info.c_InfoTdiQueryInformationEx.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/network/tcpip/tcpip/extr_info.c_InfoTdiQueryInformationEx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, %struct.TYPE_12__, i32 }
%struct.TYPE_12__ = type { i32, i32 }

@DEBUG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"InfoEx Req: %x %x %x!%04x:%d\0A\00", align 1
@INFO_TYPE_PROVIDER = common dso_local global i32 0, align 4
@TDI_INVALID_PARAMETER = common dso_local global i32 0, align 4
@TDI_INVALID_REQUEST = common dso_local global i32 0, align 4
@INFO_TYPE_ADDRESS_OBJECT = common dso_local global i32 0, align 4
@IF_ENTITY = common dso_local global i32 0, align 4
@CL_NL_ENTITY = common dso_local global i32 0, align 4
@CO_NL_ENTITY = common dso_local global i32 0, align 4
@AT_ENTITY = common dso_local global i32 0, align 4
@CO_TL_ENTITY = common dso_local global i32 0, align 4
@TcpUdpClassOwnerPid = common dso_local global i32 0, align 4
@CL_TL_ENTITY = common dso_local global i32 0, align 4
@TcpUdpClassBasic = common dso_local global i32 0, align 4
@TcpUdpClassOwner = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @InfoTdiQueryInformationEx(i32 %0, %struct.TYPE_11__* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %13 = load i32, i32* @DEBUG_INFO, align 4
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = sext i32 %30 to i64
  %32 = inttoptr i64 %31 to i8*
  %33 = call i32 @TI_DbgPrint(i32 %13, i8* %32)
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  switch i32 %36, label %427 [
    i32 133, label %37
    i32 132, label %71
  ]

37:                                               ; preds = %5
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  switch i32 %40, label %69 [
    i32 136, label %41
    i32 135, label %53
  ]

41:                                               ; preds = %37
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @INFO_TYPE_PROVIDER, align 4
  %46 = icmp ne i32 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %41
  %48 = load i32, i32* @TDI_INVALID_PARAMETER, align 4
  store i32 %48, i32* %6, align 4
  br label %429

49:                                               ; preds = %41
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* %10, align 4
  %52 = call i32 @InfoTdiQueryListEntities(i32 %50, i32 %51)
  store i32 %52, i32* %6, align 4
  br label %429

53:                                               ; preds = %37
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @INFO_TYPE_PROVIDER, align 4
  %58 = icmp ne i32 %56, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %53
  %60 = load i32, i32* @TDI_INVALID_PARAMETER, align 4
  store i32 %60, i32* %6, align 4
  br label %429

61:                                               ; preds = %53
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 2
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* %10, align 4
  %66 = bitcast %struct.TYPE_12__* %63 to i64*
  %67 = load i64, i64* %66, align 4
  %68 = call i32 @InfoTdiQueryEntityType(i64 %67, i32 %64, i32 %65)
  store i32 %68, i32* %6, align 4
  br label %429

69:                                               ; preds = %37
  %70 = load i32, i32* @TDI_INVALID_REQUEST, align 4
  store i32 %70, i32* %6, align 4
  br label %429

71:                                               ; preds = %5
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @INFO_TYPE_ADDRESS_OBJECT, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %77, label %92

77:                                               ; preds = %71
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 2
  %80 = bitcast %struct.TYPE_12__* %79 to i64*
  %81 = load i64, i64* %80, align 4
  %82 = call i32 @GetContext(i64 %81)
  store i32 %82, i32* %12, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %77
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %86 = load i32, i32* %12, align 4
  %87 = load i32, i32* %9, align 4
  %88 = load i32, i32* %10, align 4
  %89 = call i32 @GetAddressFileInfo(%struct.TYPE_11__* %85, i32 %86, i32 %87, i32 %88)
  store i32 %89, i32* %6, align 4
  br label %429

90:                                               ; preds = %77
  %91 = load i32, i32* @TDI_INVALID_PARAMETER, align 4
  store i32 %91, i32* %6, align 4
  br label %429

92:                                               ; preds = %71
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 4
  switch i32 %95, label %425 [
    i32 134, label %96
    i32 130, label %188
    i32 129, label %264
    i32 128, label %371
  ]

96:                                               ; preds = %92
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @INFO_TYPE_PROVIDER, align 4
  %101 = icmp ne i32 %99, %100
  br i1 %101, label %102, label %104

102:                                              ; preds = %96
  %103 = load i32, i32* @TDI_INVALID_PARAMETER, align 4
  store i32 %103, i32* %6, align 4
  br label %429

104:                                              ; preds = %96
  %105 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %105, i32 0, i32 2
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @IF_ENTITY, align 4
  %110 = icmp eq i32 %108, %109
  br i1 %110, label %111, label %129

111:                                              ; preds = %104
  %112 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %112, i32 0, i32 2
  %114 = bitcast %struct.TYPE_12__* %113 to i64*
  %115 = load i64, i64* %114, align 4
  %116 = call i32 @GetContext(i64 %115)
  store i32 %116, i32* %12, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %127

118:                                              ; preds = %111
  %119 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %120 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %119, i32 0, i32 2
  %121 = load i32, i32* %12, align 4
  %122 = load i32, i32* %9, align 4
  %123 = load i32, i32* %10, align 4
  %124 = bitcast %struct.TYPE_12__* %120 to i64*
  %125 = load i64, i64* %124, align 4
  %126 = call i32 @InfoTdiQueryGetInterfaceMIB(i64 %125, i32 %121, i32 %122, i32 %123)
  store i32 %126, i32* %6, align 4
  br label %429

127:                                              ; preds = %111
  %128 = load i32, i32* @TDI_INVALID_PARAMETER, align 4
  store i32 %128, i32* %6, align 4
  br label %429

129:                                              ; preds = %104
  %130 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %131 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %130, i32 0, i32 2
  %132 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* @CL_NL_ENTITY, align 4
  %135 = icmp eq i32 %133, %134
  br i1 %135, label %143, label %136

136:                                              ; preds = %129
  %137 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %138 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %137, i32 0, i32 2
  %139 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* @CO_NL_ENTITY, align 4
  %142 = icmp eq i32 %140, %141
  br i1 %142, label %143, label %161

143:                                              ; preds = %136, %129
  %144 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %145 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %144, i32 0, i32 2
  %146 = bitcast %struct.TYPE_12__* %145 to i64*
  %147 = load i64, i64* %146, align 4
  %148 = call i32 @GetContext(i64 %147)
  store i32 %148, i32* %12, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %159

150:                                              ; preds = %143
  %151 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %152 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %151, i32 0, i32 2
  %153 = load i32, i32* %12, align 4
  %154 = load i32, i32* %9, align 4
  %155 = load i32, i32* %10, align 4
  %156 = bitcast %struct.TYPE_12__* %152 to i64*
  %157 = load i64, i64* %156, align 4
  %158 = call i32 @InfoTdiQueryGetIPSnmpInfo(i64 %157, i32 %153, i32 %154, i32 %155)
  store i32 %158, i32* %6, align 4
  br label %429

159:                                              ; preds = %143
  %160 = load i32, i32* @TDI_INVALID_PARAMETER, align 4
  store i32 %160, i32* %6, align 4
  br label %429

161:                                              ; preds = %136
  %162 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %163 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %162, i32 0, i32 2
  %164 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = load i32, i32* @AT_ENTITY, align 4
  %167 = icmp eq i32 %165, %166
  br i1 %167, label %168, label %186

168:                                              ; preds = %161
  %169 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %170 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %169, i32 0, i32 2
  %171 = bitcast %struct.TYPE_12__* %170 to i64*
  %172 = load i64, i64* %171, align 4
  %173 = call i32 @GetContext(i64 %172)
  store i32 %173, i32* %12, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %184

175:                                              ; preds = %168
  %176 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %177 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %176, i32 0, i32 2
  %178 = load i32, i32* %12, align 4
  %179 = load i32, i32* %9, align 4
  %180 = load i32, i32* %10, align 4
  %181 = bitcast %struct.TYPE_12__* %177 to i64*
  %182 = load i64, i64* %181, align 4
  %183 = call i32 @InfoTdiQueryGetATInfo(i64 %182, i32 %178, i32 %179, i32 %180)
  store i32 %183, i32* %6, align 4
  br label %429

184:                                              ; preds = %168
  %185 = load i32, i32* @TDI_INVALID_PARAMETER, align 4
  store i32 %185, i32* %6, align 4
  br label %429

186:                                              ; preds = %161
  %187 = load i32, i32* @TDI_INVALID_PARAMETER, align 4
  store i32 %187, i32* %6, align 4
  br label %429

188:                                              ; preds = %92
  %189 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %190 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 4
  %192 = load i32, i32* @INFO_TYPE_PROVIDER, align 4
  %193 = icmp ne i32 %191, %192
  br i1 %193, label %194, label %196

194:                                              ; preds = %188
  %195 = load i32, i32* @TDI_INVALID_PARAMETER, align 4
  store i32 %195, i32* %6, align 4
  br label %429

196:                                              ; preds = %188
  %197 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %198 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %197, i32 0, i32 2
  %199 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 4
  %201 = load i32, i32* @CL_NL_ENTITY, align 4
  %202 = icmp eq i32 %200, %201
  br i1 %202, label %210, label %203

203:                                              ; preds = %196
  %204 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %205 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %204, i32 0, i32 2
  %206 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 4
  %208 = load i32, i32* @CO_NL_ENTITY, align 4
  %209 = icmp eq i32 %207, %208
  br i1 %209, label %210, label %218

210:                                              ; preds = %203, %196
  %211 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %212 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %211, i32 0, i32 2
  %213 = load i32, i32* %9, align 4
  %214 = load i32, i32* %10, align 4
  %215 = bitcast %struct.TYPE_12__* %212 to i64*
  %216 = load i64, i64* %215, align 4
  %217 = call i32 @InfoTdiQueryGetAddrTable(i64 %216, i32 %213, i32 %214)
  store i32 %217, i32* %6, align 4
  br label %429

218:                                              ; preds = %203
  %219 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %220 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %219, i32 0, i32 2
  %221 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 4
  %223 = load i32, i32* @CO_TL_ENTITY, align 4
  %224 = icmp eq i32 %222, %223
  br i1 %224, label %225, label %240

225:                                              ; preds = %218
  %226 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %227 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %226, i32 0, i32 2
  %228 = bitcast %struct.TYPE_12__* %227 to i64*
  %229 = load i64, i64* %228, align 4
  %230 = call i32 @GetContext(i64 %229)
  store i32 %230, i32* %12, align 4
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %238

232:                                              ; preds = %225
  %233 = load i32, i32* %12, align 4
  %234 = load i32, i32* %9, align 4
  %235 = load i32, i32* %10, align 4
  %236 = load i32, i32* @TcpUdpClassOwnerPid, align 4
  %237 = call i32 @InfoTdiQueryGetConnectionTcpTable(i32 %233, i32 %234, i32 %235, i32 %236)
  store i32 %237, i32* %6, align 4
  br label %429

238:                                              ; preds = %225
  %239 = load i32, i32* @TDI_INVALID_PARAMETER, align 4
  store i32 %239, i32* %6, align 4
  br label %429

240:                                              ; preds = %218
  %241 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %242 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %241, i32 0, i32 2
  %243 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 4
  %245 = load i32, i32* @CL_TL_ENTITY, align 4
  %246 = icmp eq i32 %244, %245
  br i1 %246, label %247, label %262

247:                                              ; preds = %240
  %248 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %249 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %248, i32 0, i32 2
  %250 = bitcast %struct.TYPE_12__* %249 to i64*
  %251 = load i64, i64* %250, align 4
  %252 = call i32 @GetContext(i64 %251)
  store i32 %252, i32* %12, align 4
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %254, label %260

254:                                              ; preds = %247
  %255 = load i32, i32* %12, align 4
  %256 = load i32, i32* %9, align 4
  %257 = load i32, i32* %10, align 4
  %258 = load i32, i32* @TcpUdpClassOwnerPid, align 4
  %259 = call i32 @InfoTdiQueryGetConnectionUdpTable(i32 %255, i32 %256, i32 %257, i32 %258)
  store i32 %259, i32* %6, align 4
  br label %429

260:                                              ; preds = %247
  %261 = load i32, i32* @TDI_INVALID_PARAMETER, align 4
  store i32 %261, i32* %6, align 4
  br label %429

262:                                              ; preds = %240
  %263 = load i32, i32* @TDI_INVALID_PARAMETER, align 4
  store i32 %263, i32* %6, align 4
  br label %429

264:                                              ; preds = %92
  %265 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %266 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %265, i32 0, i32 1
  %267 = load i32, i32* %266, align 4
  %268 = load i32, i32* @INFO_TYPE_PROVIDER, align 4
  %269 = icmp ne i32 %267, %268
  br i1 %269, label %270, label %272

270:                                              ; preds = %264
  %271 = load i32, i32* @TDI_INVALID_PARAMETER, align 4
  store i32 %271, i32* %6, align 4
  br label %429

272:                                              ; preds = %264
  %273 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %274 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %273, i32 0, i32 2
  %275 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %274, i32 0, i32 0
  %276 = load i32, i32* %275, align 4
  %277 = load i32, i32* @AT_ENTITY, align 4
  %278 = icmp eq i32 %276, %277
  br i1 %278, label %279, label %297

279:                                              ; preds = %272
  %280 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %281 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %280, i32 0, i32 2
  %282 = bitcast %struct.TYPE_12__* %281 to i64*
  %283 = load i64, i64* %282, align 4
  %284 = call i32 @GetContext(i64 %283)
  store i32 %284, i32* %12, align 4
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %286, label %295

286:                                              ; preds = %279
  %287 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %288 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %287, i32 0, i32 2
  %289 = load i32, i32* %12, align 4
  %290 = load i32, i32* %9, align 4
  %291 = load i32, i32* %10, align 4
  %292 = bitcast %struct.TYPE_12__* %288 to i64*
  %293 = load i64, i64* %292, align 4
  %294 = call i32 @InfoTdiQueryGetArptableMIB(i64 %293, i32 %289, i32 %290, i32 %291)
  store i32 %294, i32* %6, align 4
  br label %429

295:                                              ; preds = %279
  %296 = load i32, i32* @TDI_INVALID_PARAMETER, align 4
  store i32 %296, i32* %6, align 4
  br label %429

297:                                              ; preds = %272
  %298 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %299 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %298, i32 0, i32 2
  %300 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %299, i32 0, i32 0
  %301 = load i32, i32* %300, align 4
  %302 = load i32, i32* @CO_NL_ENTITY, align 4
  %303 = icmp eq i32 %301, %302
  br i1 %303, label %311, label %304

304:                                              ; preds = %297
  %305 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %306 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %305, i32 0, i32 2
  %307 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %306, i32 0, i32 0
  %308 = load i32, i32* %307, align 4
  %309 = load i32, i32* @CL_NL_ENTITY, align 4
  %310 = icmp eq i32 %308, %309
  br i1 %310, label %311, label %325

311:                                              ; preds = %304, %297
  %312 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %313 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %312, i32 0, i32 2
  %314 = bitcast %struct.TYPE_12__* %313 to i64*
  %315 = load i64, i64* %314, align 4
  %316 = call i32 @GetContext(i64 %315)
  store i32 %316, i32* %12, align 4
  %317 = icmp ne i32 %316, 0
  br i1 %317, label %318, label %323

318:                                              ; preds = %311
  %319 = load i32, i32* %12, align 4
  %320 = load i32, i32* %9, align 4
  %321 = load i32, i32* %10, align 4
  %322 = call i32 @InfoTdiQueryGetRouteTable(i32 %319, i32 %320, i32 %321)
  store i32 %322, i32* %6, align 4
  br label %429

323:                                              ; preds = %311
  %324 = load i32, i32* @TDI_INVALID_PARAMETER, align 4
  store i32 %324, i32* %6, align 4
  br label %429

325:                                              ; preds = %304
  %326 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %327 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %326, i32 0, i32 2
  %328 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %327, i32 0, i32 0
  %329 = load i32, i32* %328, align 4
  %330 = load i32, i32* @CO_TL_ENTITY, align 4
  %331 = icmp eq i32 %329, %330
  br i1 %331, label %332, label %347

332:                                              ; preds = %325
  %333 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %334 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %333, i32 0, i32 2
  %335 = bitcast %struct.TYPE_12__* %334 to i64*
  %336 = load i64, i64* %335, align 4
  %337 = call i32 @GetContext(i64 %336)
  store i32 %337, i32* %12, align 4
  %338 = icmp ne i32 %337, 0
  br i1 %338, label %339, label %345

339:                                              ; preds = %332
  %340 = load i32, i32* %12, align 4
  %341 = load i32, i32* %9, align 4
  %342 = load i32, i32* %10, align 4
  %343 = load i32, i32* @TcpUdpClassBasic, align 4
  %344 = call i32 @InfoTdiQueryGetConnectionTcpTable(i32 %340, i32 %341, i32 %342, i32 %343)
  store i32 %344, i32* %6, align 4
  br label %429

345:                                              ; preds = %332
  %346 = load i32, i32* @TDI_INVALID_PARAMETER, align 4
  store i32 %346, i32* %6, align 4
  br label %429

347:                                              ; preds = %325
  %348 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %349 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %348, i32 0, i32 2
  %350 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %349, i32 0, i32 0
  %351 = load i32, i32* %350, align 4
  %352 = load i32, i32* @CL_TL_ENTITY, align 4
  %353 = icmp eq i32 %351, %352
  br i1 %353, label %354, label %369

354:                                              ; preds = %347
  %355 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %356 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %355, i32 0, i32 2
  %357 = bitcast %struct.TYPE_12__* %356 to i64*
  %358 = load i64, i64* %357, align 4
  %359 = call i32 @GetContext(i64 %358)
  store i32 %359, i32* %12, align 4
  %360 = icmp ne i32 %359, 0
  br i1 %360, label %361, label %367

361:                                              ; preds = %354
  %362 = load i32, i32* %12, align 4
  %363 = load i32, i32* %9, align 4
  %364 = load i32, i32* %10, align 4
  %365 = load i32, i32* @TcpUdpClassBasic, align 4
  %366 = call i32 @InfoTdiQueryGetConnectionUdpTable(i32 %362, i32 %363, i32 %364, i32 %365)
  store i32 %366, i32* %6, align 4
  br label %429

367:                                              ; preds = %354
  %368 = load i32, i32* @TDI_INVALID_PARAMETER, align 4
  store i32 %368, i32* %6, align 4
  br label %429

369:                                              ; preds = %347
  %370 = load i32, i32* @TDI_INVALID_PARAMETER, align 4
  store i32 %370, i32* %6, align 4
  br label %429

371:                                              ; preds = %92
  %372 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %373 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %372, i32 0, i32 1
  %374 = load i32, i32* %373, align 4
  %375 = load i32, i32* @INFO_TYPE_PROVIDER, align 4
  %376 = icmp ne i32 %374, %375
  br i1 %376, label %377, label %379

377:                                              ; preds = %371
  %378 = load i32, i32* @TDI_INVALID_PARAMETER, align 4
  store i32 %378, i32* %6, align 4
  br label %429

379:                                              ; preds = %371
  %380 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %381 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %380, i32 0, i32 2
  %382 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %381, i32 0, i32 0
  %383 = load i32, i32* %382, align 4
  %384 = load i32, i32* @CO_TL_ENTITY, align 4
  %385 = icmp eq i32 %383, %384
  br i1 %385, label %386, label %401

386:                                              ; preds = %379
  %387 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %388 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %387, i32 0, i32 2
  %389 = bitcast %struct.TYPE_12__* %388 to i64*
  %390 = load i64, i64* %389, align 4
  %391 = call i32 @GetContext(i64 %390)
  store i32 %391, i32* %12, align 4
  %392 = icmp ne i32 %391, 0
  br i1 %392, label %393, label %399

393:                                              ; preds = %386
  %394 = load i32, i32* %12, align 4
  %395 = load i32, i32* %9, align 4
  %396 = load i32, i32* %10, align 4
  %397 = load i32, i32* @TcpUdpClassOwner, align 4
  %398 = call i32 @InfoTdiQueryGetConnectionTcpTable(i32 %394, i32 %395, i32 %396, i32 %397)
  store i32 %398, i32* %6, align 4
  br label %429

399:                                              ; preds = %386
  %400 = load i32, i32* @TDI_INVALID_PARAMETER, align 4
  store i32 %400, i32* %6, align 4
  br label %429

401:                                              ; preds = %379
  %402 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %403 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %402, i32 0, i32 2
  %404 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %403, i32 0, i32 0
  %405 = load i32, i32* %404, align 4
  %406 = load i32, i32* @CL_TL_ENTITY, align 4
  %407 = icmp eq i32 %405, %406
  br i1 %407, label %408, label %423

408:                                              ; preds = %401
  %409 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %410 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %409, i32 0, i32 2
  %411 = bitcast %struct.TYPE_12__* %410 to i64*
  %412 = load i64, i64* %411, align 4
  %413 = call i32 @GetContext(i64 %412)
  store i32 %413, i32* %12, align 4
  %414 = icmp ne i32 %413, 0
  br i1 %414, label %415, label %421

415:                                              ; preds = %408
  %416 = load i32, i32* %12, align 4
  %417 = load i32, i32* %9, align 4
  %418 = load i32, i32* %10, align 4
  %419 = load i32, i32* @TcpUdpClassOwner, align 4
  %420 = call i32 @InfoTdiQueryGetConnectionUdpTable(i32 %416, i32 %417, i32 %418, i32 %419)
  store i32 %420, i32* %6, align 4
  br label %429

421:                                              ; preds = %408
  %422 = load i32, i32* @TDI_INVALID_PARAMETER, align 4
  store i32 %422, i32* %6, align 4
  br label %429

423:                                              ; preds = %401
  %424 = load i32, i32* @TDI_INVALID_PARAMETER, align 4
  store i32 %424, i32* %6, align 4
  br label %429

425:                                              ; preds = %92
  %426 = load i32, i32* @TDI_INVALID_REQUEST, align 4
  store i32 %426, i32* %6, align 4
  br label %429

427:                                              ; preds = %5
  %428 = load i32, i32* @TDI_INVALID_REQUEST, align 4
  store i32 %428, i32* %6, align 4
  br label %429

429:                                              ; preds = %427, %425, %423, %421, %415, %399, %393, %377, %369, %367, %361, %345, %339, %323, %318, %295, %286, %270, %262, %260, %254, %238, %232, %210, %194, %186, %184, %175, %159, %150, %127, %118, %102, %90, %84, %69, %61, %59, %49, %47
  %430 = load i32, i32* %6, align 4
  ret i32 %430
}

declare dso_local i32 @TI_DbgPrint(i32, i8*) #1

declare dso_local i32 @InfoTdiQueryListEntities(i32, i32) #1

declare dso_local i32 @InfoTdiQueryEntityType(i64, i32, i32) #1

declare dso_local i32 @GetContext(i64) #1

declare dso_local i32 @GetAddressFileInfo(%struct.TYPE_11__*, i32, i32, i32) #1

declare dso_local i32 @InfoTdiQueryGetInterfaceMIB(i64, i32, i32, i32) #1

declare dso_local i32 @InfoTdiQueryGetIPSnmpInfo(i64, i32, i32, i32) #1

declare dso_local i32 @InfoTdiQueryGetATInfo(i64, i32, i32, i32) #1

declare dso_local i32 @InfoTdiQueryGetAddrTable(i64, i32, i32) #1

declare dso_local i32 @InfoTdiQueryGetConnectionTcpTable(i32, i32, i32, i32) #1

declare dso_local i32 @InfoTdiQueryGetConnectionUdpTable(i32, i32, i32, i32) #1

declare dso_local i32 @InfoTdiQueryGetArptableMIB(i64, i32, i32, i32) #1

declare dso_local i32 @InfoTdiQueryGetRouteTable(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
