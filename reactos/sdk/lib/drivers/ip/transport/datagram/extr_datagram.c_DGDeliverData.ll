; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/drivers/ip/transport/datagram/extr_datagram.c_DGDeliverData.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/drivers/ip/transport/datagram/extr_datagram.c_DGDeliverData.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i64, i64, i64 (i32*, i32, i32*, i32, i32*, i32, i64, i64, i32*, i32*, i32*)*, i32*, i64, %struct.TYPE_33__, %struct.TYPE_31__, i64 }
%struct.TYPE_33__ = type { i64, %struct.TYPE_29__ }
%struct.TYPE_29__ = type { i32*, i32 }
%struct.TYPE_31__ = type { %struct.TYPE_31__* }
%struct.TYPE_32__ = type { i64, i32*, i32* }
%struct.TYPE_34__ = type { i32, i32 (i32, i64, i64)*, i64, %struct.TYPE_26__*, i32, i32 }
%struct.TYPE_26__ = type { i64 }
%struct.TYPE_30__ = type { i32, %struct.TYPE_28__* }
%struct.TYPE_28__ = type { %struct.TYPE_27__*, i32, i32 }
%struct.TYPE_27__ = type { i32, i32, i64 }

@MAX_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"Called.\0A\00", align 1
@IPPROTO_UDP = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [29 x i8] c"There is a receive request.\0A\00", align 1
@DATAGRAM_RECEIVE_REQUEST = common dso_local global i32 0, align 4
@ListEntry = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"Suitable receive request found.\0A\00", align 1
@.str.3 = private unnamed_addr constant [47 x i8] c"Target Buffer: %x, Source Buffer: %x, Size %d\0A\00", align 1
@TDI_ADDRESS_TYPE_IP = common dso_local global i32 0, align 4
@TDI_ADDRESS_LENGTH_IP = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [31 x i8] c"(A: %08x) Addr %08x Port %04x\0A\00", align 1
@STATUS_BUFFER_OVERFLOW = common dso_local global i64 0, align 8
@STATUS_SUCCESS = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [32 x i8] c"Calling receive event handler.\0A\00", align 1
@IP_ADDRESS_V4 = common dso_local global i64 0, align 8
@TDI_RECEIVE_ENTIRE_MESSAGE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [51 x i8] c"receive handler signaled failure with Status 0x%x\0A\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"Discarding datagram.\0A\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"Leaving.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @DGDeliverData(%struct.TYPE_25__* %0, %struct.TYPE_33__* %1, %struct.TYPE_33__* %2, i64 %3, i64 %4, %struct.TYPE_32__* %5, i64 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_25__*, align 8
  %10 = alloca %struct.TYPE_33__*, align 8
  %11 = alloca %struct.TYPE_33__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_32__*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64 (i32*, i32, i32*, i32, i32*, i32, i64, i64, i32*, i32*, i32*)*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  %23 = alloca i32*, align 8
  %24 = alloca %struct.TYPE_31__*, align 8
  %25 = alloca %struct.TYPE_34__*, align 8
  %26 = alloca %struct.TYPE_30__*, align 8
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %9, align 8
  store %struct.TYPE_33__* %1, %struct.TYPE_33__** %10, align 8
  store %struct.TYPE_33__* %2, %struct.TYPE_33__** %11, align 8
  store i64 %3, i64* %12, align 8
  store i64 %4, i64* %13, align 8
  store %struct.TYPE_32__* %5, %struct.TYPE_32__** %14, align 8
  store i64 %6, i64* %15, align 8
  %27 = load i32, i32* @MAX_TRACE, align 4
  %28 = call i32 @TI_DbgPrint(i32 %27, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %29 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %30 = call i32 @LockObject(%struct.TYPE_25__* %29, i32* %16)
  %31 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @IPPROTO_UDP, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %7
  %37 = load %struct.TYPE_32__*, %struct.TYPE_32__** %14, align 8
  %38 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  store i32* %39, i32** %23, align 8
  br label %59

40:                                               ; preds = %7
  %41 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %41, i32 0, i32 7
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %40
  %46 = load %struct.TYPE_32__*, %struct.TYPE_32__** %14, align 8
  %47 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %46, i32 0, i32 2
  %48 = load i32*, i32** %47, align 8
  store i32* %48, i32** %23, align 8
  br label %58

49:                                               ; preds = %40
  %50 = load %struct.TYPE_32__*, %struct.TYPE_32__** %14, align 8
  %51 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  store i32* %52, i32** %23, align 8
  %53 = load %struct.TYPE_32__*, %struct.TYPE_32__** %14, align 8
  %54 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* %15, align 8
  %57 = sub nsw i64 %56, %55
  store i64 %57, i64* %15, align 8
  br label %58

58:                                               ; preds = %49, %45
  br label %59

59:                                               ; preds = %58, %36
  %60 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %61 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %60, i32 0, i32 6
  %62 = call i32 @IsListEmpty(%struct.TYPE_31__* %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %222, label %64

64:                                               ; preds = %59
  store %struct.TYPE_34__* null, %struct.TYPE_34__** %25, align 8
  %65 = load i32, i32* @MAX_TRACE, align 4
  %66 = call i32 @TI_DbgPrint(i32 %65, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %67 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %68 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %67, i32 0, i32 6
  %69 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_31__*, %struct.TYPE_31__** %69, align 8
  store %struct.TYPE_31__* %70, %struct.TYPE_31__** %24, align 8
  br label %71

71:                                               ; preds = %217, %64
  %72 = load %struct.TYPE_31__*, %struct.TYPE_31__** %24, align 8
  %73 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %74 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %73, i32 0, i32 6
  %75 = icmp ne %struct.TYPE_31__* %72, %74
  br i1 %75, label %76, label %218

76:                                               ; preds = %71
  %77 = load %struct.TYPE_31__*, %struct.TYPE_31__** %24, align 8
  %78 = load i32, i32* @DATAGRAM_RECEIVE_REQUEST, align 4
  %79 = load i32, i32* @ListEntry, align 4
  %80 = call %struct.TYPE_34__* @CONTAINING_RECORD(%struct.TYPE_31__* %77, i32 %78, i32 %79)
  store %struct.TYPE_34__* %80, %struct.TYPE_34__** %25, align 8
  %81 = load %struct.TYPE_31__*, %struct.TYPE_31__** %24, align 8
  %82 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_31__*, %struct.TYPE_31__** %82, align 8
  store %struct.TYPE_31__* %83, %struct.TYPE_31__** %24, align 8
  %84 = load i64, i64* %13, align 8
  %85 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %86 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = icmp eq i64 %84, %87
  br i1 %88, label %89, label %217

89:                                               ; preds = %76
  %90 = load %struct.TYPE_33__*, %struct.TYPE_33__** %11, align 8
  %91 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %92 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %91, i32 0, i32 5
  %93 = call i64 @AddrIsEqual(%struct.TYPE_33__* %90, %struct.TYPE_33__* %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %104, label %95

95:                                               ; preds = %89
  %96 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %97 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %96, i32 0, i32 5
  %98 = call i64 @AddrIsUnspecified(%struct.TYPE_33__* %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %104, label %100

100:                                              ; preds = %95
  %101 = load %struct.TYPE_33__*, %struct.TYPE_33__** %11, align 8
  %102 = call i64 @AddrIsUnspecified(%struct.TYPE_33__* %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %217

104:                                              ; preds = %100, %95, %89
  %105 = load %struct.TYPE_34__*, %struct.TYPE_34__** %25, align 8
  %106 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %105, i32 0, i32 5
  %107 = call i32 @RemoveEntryList(i32* %106)
  %108 = load i32, i32* @MAX_TRACE, align 4
  %109 = call i32 @TI_DbgPrint(i32 %108, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %110 = load i32, i32* @MAX_TRACE, align 4
  %111 = load %struct.TYPE_34__*, %struct.TYPE_34__** %25, align 8
  %112 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %111, i32 0, i32 4
  %113 = load i32, i32* %112, align 8
  %114 = load i32*, i32** %23, align 8
  %115 = load i64, i64* %15, align 8
  %116 = inttoptr i64 %115 to i8*
  %117 = call i32 @TI_DbgPrint(i32 %110, i8* %116)
  %118 = load %struct.TYPE_34__*, %struct.TYPE_34__** %25, align 8
  %119 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %118, i32 0, i32 4
  %120 = load i32, i32* %119, align 8
  %121 = load i32*, i32** %23, align 8
  %122 = load %struct.TYPE_34__*, %struct.TYPE_34__** %25, align 8
  %123 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %122, i32 0, i32 2
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* %15, align 8
  %126 = call i32 @MIN(i64 %124, i64 %125)
  %127 = call i32 @RtlCopyMemory(i32 %120, i32* %121, i32 %126)
  %128 = load %struct.TYPE_34__*, %struct.TYPE_34__** %25, align 8
  %129 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %128, i32 0, i32 3
  %130 = load %struct.TYPE_26__*, %struct.TYPE_26__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = inttoptr i64 %132 to %struct.TYPE_30__*
  store %struct.TYPE_30__* %133, %struct.TYPE_30__** %26, align 8
  %134 = load %struct.TYPE_30__*, %struct.TYPE_30__** %26, align 8
  %135 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %134, i32 0, i32 0
  store i32 1, i32* %135, align 8
  %136 = load i32, i32* @TDI_ADDRESS_TYPE_IP, align 4
  %137 = load %struct.TYPE_30__*, %struct.TYPE_30__** %26, align 8
  %138 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %137, i32 0, i32 1
  %139 = load %struct.TYPE_28__*, %struct.TYPE_28__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %139, i32 0, i32 2
  store i32 %136, i32* %140, align 4
  %141 = load i32, i32* @TDI_ADDRESS_LENGTH_IP, align 4
  %142 = load %struct.TYPE_30__*, %struct.TYPE_30__** %26, align 8
  %143 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %142, i32 0, i32 1
  %144 = load %struct.TYPE_28__*, %struct.TYPE_28__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %144, i32 0, i32 1
  store i32 %141, i32* %145, align 8
  %146 = load i64, i64* %12, align 8
  %147 = load %struct.TYPE_30__*, %struct.TYPE_30__** %26, align 8
  %148 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %147, i32 0, i32 1
  %149 = load %struct.TYPE_28__*, %struct.TYPE_28__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %149, i32 0, i32 0
  %151 = load %struct.TYPE_27__*, %struct.TYPE_27__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %151, i32 0, i32 2
  store i64 %146, i64* %152, align 8
  %153 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %154 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %153, i32 0, i32 1
  %155 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 8
  %157 = load %struct.TYPE_30__*, %struct.TYPE_30__** %26, align 8
  %158 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %157, i32 0, i32 1
  %159 = load %struct.TYPE_28__*, %struct.TYPE_28__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %159, i32 0, i32 0
  %161 = load %struct.TYPE_27__*, %struct.TYPE_27__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %161, i32 0, i32 1
  store i32 %156, i32* %162, align 4
  %163 = load %struct.TYPE_30__*, %struct.TYPE_30__** %26, align 8
  %164 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %163, i32 0, i32 1
  %165 = load %struct.TYPE_28__*, %struct.TYPE_28__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %165, i32 0, i32 0
  %167 = load %struct.TYPE_27__*, %struct.TYPE_27__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = call i32 @RtlZeroMemory(i32 %169, i32 8)
  %171 = load i32, i32* @MAX_TRACE, align 4
  %172 = load %struct.TYPE_30__*, %struct.TYPE_30__** %26, align 8
  %173 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %174 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %173, i32 0, i32 1
  %175 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 8
  %177 = load i64, i64* %12, align 8
  %178 = inttoptr i64 %177 to i8*
  %179 = call i32 @TI_DbgPrint(i32 %171, i8* %178)
  %180 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %181 = call i32 @ReferenceObject(%struct.TYPE_25__* %180)
  %182 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %183 = load i32, i32* %16, align 4
  %184 = call i32 @UnlockObject(%struct.TYPE_25__* %182, i32 %183)
  %185 = load %struct.TYPE_34__*, %struct.TYPE_34__** %25, align 8
  %186 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %185, i32 0, i32 2
  %187 = load i64, i64* %186, align 8
  %188 = load i64, i64* %15, align 8
  %189 = icmp slt i64 %187, %188
  br i1 %189, label %190, label %202

190:                                              ; preds = %104
  %191 = load %struct.TYPE_34__*, %struct.TYPE_34__** %25, align 8
  %192 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %191, i32 0, i32 1
  %193 = load i32 (i32, i64, i64)*, i32 (i32, i64, i64)** %192, align 8
  %194 = load %struct.TYPE_34__*, %struct.TYPE_34__** %25, align 8
  %195 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = load i64, i64* @STATUS_BUFFER_OVERFLOW, align 8
  %198 = load %struct.TYPE_34__*, %struct.TYPE_34__** %25, align 8
  %199 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %198, i32 0, i32 2
  %200 = load i64, i64* %199, align 8
  %201 = call i32 %193(i32 %196, i64 %197, i64 %200)
  br label %212

202:                                              ; preds = %104
  %203 = load %struct.TYPE_34__*, %struct.TYPE_34__** %25, align 8
  %204 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %203, i32 0, i32 1
  %205 = load i32 (i32, i64, i64)*, i32 (i32, i64, i64)** %204, align 8
  %206 = load %struct.TYPE_34__*, %struct.TYPE_34__** %25, align 8
  %207 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 8
  %209 = load i64, i64* @STATUS_SUCCESS, align 8
  %210 = load i64, i64* %15, align 8
  %211 = call i32 %205(i32 %208, i64 %209, i64 %210)
  br label %212

212:                                              ; preds = %202, %190
  %213 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %214 = call i32 @LockObject(%struct.TYPE_25__* %213, i32* %16)
  %215 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %216 = call i32 @DereferenceObject(%struct.TYPE_25__* %215)
  br label %217

217:                                              ; preds = %212, %100, %76
  br label %71

218:                                              ; preds = %71
  %219 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %220 = load i32, i32* %16, align 4
  %221 = call i32 @UnlockObject(%struct.TYPE_25__* %219, i32 %220)
  br label %283

222:                                              ; preds = %59
  %223 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %224 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %223, i32 0, i32 4
  %225 = load i64, i64* %224, align 8
  %226 = icmp ne i64 %225, 0
  br i1 %226, label %227, label %276

227:                                              ; preds = %222
  %228 = load i32, i32* @MAX_TRACE, align 4
  %229 = call i32 @TI_DbgPrint(i32 %228, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0))
  %230 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %231 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %230, i32 0, i32 2
  %232 = load i64 (i32*, i32, i32*, i32, i32*, i32, i64, i64, i32*, i32*, i32*)*, i64 (i32*, i32, i32*, i32, i32*, i32, i64, i64, i32*, i32*, i32*)** %231, align 8
  store i64 (i32*, i32, i32*, i32, i32*, i32, i64, i64, i32*, i32*, i32*)* %232, i64 (i32*, i32, i32*, i32, i32*, i32, i64, i64, i32*, i32*, i32*)** %17, align 8
  %233 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %234 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %233, i32 0, i32 3
  %235 = load i32*, i32** %234, align 8
  store i32* %235, i32** %18, align 8
  %236 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %237 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %236, i32 0, i32 0
  %238 = load i64, i64* %237, align 8
  %239 = load i64, i64* @IP_ADDRESS_V4, align 8
  %240 = icmp eq i64 %238, %239
  br i1 %240, label %241, label %245

241:                                              ; preds = %227
  store i32 4, i32* %19, align 4
  %242 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %243 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %242, i32 0, i32 1
  %244 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %243, i32 0, i32 1
  store i32* %244, i32** %20, align 8
  br label %250

245:                                              ; preds = %227
  store i32 4, i32* %19, align 4
  %246 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %247 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %246, i32 0, i32 1
  %248 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %247, i32 0, i32 0
  %249 = load i32*, i32** %248, align 8
  store i32* %249, i32** %20, align 8
  br label %250

250:                                              ; preds = %245, %241
  %251 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %252 = call i32 @ReferenceObject(%struct.TYPE_25__* %251)
  %253 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %254 = load i32, i32* %16, align 4
  %255 = call i32 @UnlockObject(%struct.TYPE_25__* %253, i32 %254)
  %256 = load i64 (i32*, i32, i32*, i32, i32*, i32, i64, i64, i32*, i32*, i32*)*, i64 (i32*, i32, i32*, i32, i32*, i32, i64, i64, i32*, i32*, i32*)** %17, align 8
  %257 = load i32*, i32** %18, align 8
  %258 = load i32, i32* %19, align 4
  %259 = load i32*, i32** %20, align 8
  %260 = load i32, i32* @TDI_RECEIVE_ENTIRE_MESSAGE, align 4
  %261 = load i64, i64* %15, align 8
  %262 = load i64, i64* %15, align 8
  %263 = load i32*, i32** %23, align 8
  %264 = call i64 %256(i32* %257, i32 %258, i32* %259, i32 0, i32* null, i32 %260, i64 %261, i64 %262, i32* %21, i32* %263, i32* null)
  store i64 %264, i64* %22, align 8
  %265 = load i64, i64* @STATUS_SUCCESS, align 8
  %266 = load i64, i64* %22, align 8
  %267 = icmp ne i64 %265, %266
  br i1 %267, label %268, label %273

268:                                              ; preds = %250
  %269 = load i32, i32* @MAX_TRACE, align 4
  %270 = load i64, i64* %22, align 8
  %271 = inttoptr i64 %270 to i8*
  %272 = call i32 @TI_DbgPrint(i32 %269, i8* %271)
  br label %273

273:                                              ; preds = %268, %250
  %274 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %275 = call i32 @DereferenceObject(%struct.TYPE_25__* %274)
  br label %282

276:                                              ; preds = %222
  %277 = load %struct.TYPE_25__*, %struct.TYPE_25__** %9, align 8
  %278 = load i32, i32* %16, align 4
  %279 = call i32 @UnlockObject(%struct.TYPE_25__* %277, i32 %278)
  %280 = load i32, i32* @MAX_TRACE, align 4
  %281 = call i32 @TI_DbgPrint(i32 %280, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0))
  br label %282

282:                                              ; preds = %276, %273
  br label %283

283:                                              ; preds = %282, %218
  %284 = load i32, i32* @MAX_TRACE, align 4
  %285 = call i32 @TI_DbgPrint(i32 %284, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0))
  %286 = load i32, i32* %8, align 4
  ret i32 %286
}

declare dso_local i32 @TI_DbgPrint(i32, i8*) #1

declare dso_local i32 @LockObject(%struct.TYPE_25__*, i32*) #1

declare dso_local i32 @IsListEmpty(%struct.TYPE_31__*) #1

declare dso_local %struct.TYPE_34__* @CONTAINING_RECORD(%struct.TYPE_31__*, i32, i32) #1

declare dso_local i64 @AddrIsEqual(%struct.TYPE_33__*, %struct.TYPE_33__*) #1

declare dso_local i64 @AddrIsUnspecified(%struct.TYPE_33__*) #1

declare dso_local i32 @RemoveEntryList(i32*) #1

declare dso_local i32 @RtlCopyMemory(i32, i32*, i32) #1

declare dso_local i32 @MIN(i64, i64) #1

declare dso_local i32 @RtlZeroMemory(i32, i32) #1

declare dso_local i32 @ReferenceObject(%struct.TYPE_25__*) #1

declare dso_local i32 @UnlockObject(%struct.TYPE_25__*, i32) #1

declare dso_local i32 @DereferenceObject(%struct.TYPE_25__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
