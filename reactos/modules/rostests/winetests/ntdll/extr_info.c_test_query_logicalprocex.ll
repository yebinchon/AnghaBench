; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/ntdll/extr_info.c_test_query_logicalprocex.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/ntdll/extr_info.c_test_query_logicalprocex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { i32, i64, %struct.TYPE_23__, %struct.TYPE_21__, %struct.TYPE_19__, %struct.TYPE_17__ }
%struct.TYPE_23__ = type { i32, %struct.TYPE_22__*, i32 }
%struct.TYPE_22__ = type { i32, i32, i32 }
%struct.TYPE_21__ = type { %struct.TYPE_20__, i32, i32, i32, i32, i32 }
%struct.TYPE_20__ = type { i32, i32 }
%struct.TYPE_19__ = type { %struct.TYPE_18__, i32 }
%struct.TYPE_18__ = type { i32, i32 }
%struct.TYPE_17__ = type { i32, %struct.TYPE_16__*, i32, i32 }
%struct.TYPE_16__ = type { i32, i32 }

@SystemLogicalProcessorInformationEx = common dso_local global i32 0, align 4
@STATUS_INFO_LENGTH_MISMATCH = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [12 x i8] c"got 0x%08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"got %u\0A\00", align 1
@RelationAll = common dso_local global i64 0, align 8
@ERROR_INSUFFICIENT_BUFFER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"got %d, error %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"got %u, expected %u\0A\00", align 1
@HEAP_ZERO_MEMORY = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [29 x i8] c"returned info data mismatch\0A\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"Got invalid relationship value: 0x%x\0A\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"got infoex[%u].Size=0\0A\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"infoex[%u].Size: %u\0A\00", align 1
@.str.8 = private unnamed_addr constant [63 x i8] c"infoex[%u].Relationship: 0x%x (Core == 0x0 or Package == 0x3)\0A\00", align 1
@.str.9 = private unnamed_addr constant [34 x i8] c"infoex[%u].Processor.Flags: 0x%x\0A\00", align 1
@.str.10 = private unnamed_addr constant [44 x i8] c"infoex[%u].Processor.EfficiencyClass: 0x%x\0A\00", align 1
@.str.11 = private unnamed_addr constant [39 x i8] c"infoex[%u].Processor.GroupCount: 0x%x\0A\00", align 1
@.str.12 = private unnamed_addr constant [48 x i8] c"infoex[%u].Processor.GroupMask[%u].Mask: 0x%lx\0A\00", align 1
@.str.13 = private unnamed_addr constant [48 x i8] c"infoex[%u].Processor.GroupMask[%u].Group: 0x%x\0A\00", align 1
@.str.14 = private unnamed_addr constant [42 x i8] c"infoex[%u].Relationship: 0x%x (NumaNode)\0A\00", align 1
@.str.15 = private unnamed_addr constant [38 x i8] c"infoex[%u].NumaNode.NodeNumber: 0x%x\0A\00", align 1
@.str.16 = private unnamed_addr constant [43 x i8] c"infoex[%u].NumaNode.GroupMask.Mask: 0x%lx\0A\00", align 1
@.str.17 = private unnamed_addr constant [43 x i8] c"infoex[%u].NumaNode.GroupMask.Group: 0x%x\0A\00", align 1
@.str.18 = private unnamed_addr constant [39 x i8] c"infoex[%u].Relationship: 0x%x (Cache)\0A\00", align 1
@.str.19 = private unnamed_addr constant [30 x i8] c"infoex[%u].Cache.Level: 0x%x\0A\00", align 1
@.str.20 = private unnamed_addr constant [38 x i8] c"infoex[%u].Cache.Associativity: 0x%x\0A\00", align 1
@.str.21 = private unnamed_addr constant [33 x i8] c"infoex[%u].Cache.LineSize: 0x%x\0A\00", align 1
@.str.22 = private unnamed_addr constant [34 x i8] c"infoex[%u].Cache.CacheSize: 0x%x\0A\00", align 1
@.str.23 = private unnamed_addr constant [29 x i8] c"infoex[%u].Cache.Type: 0x%x\0A\00", align 1
@.str.24 = private unnamed_addr constant [40 x i8] c"infoex[%u].Cache.GroupMask.Mask: 0x%lx\0A\00", align 1
@.str.25 = private unnamed_addr constant [40 x i8] c"infoex[%u].Cache.GroupMask.Group: 0x%x\0A\00", align 1
@.str.26 = private unnamed_addr constant [39 x i8] c"infoex[%u].Relationship: 0x%x (Group)\0A\00", align 1
@.str.27 = private unnamed_addr constant [42 x i8] c"infoex[%u].Group.MaximumGroupCount: 0x%x\0A\00", align 1
@.str.28 = private unnamed_addr constant [41 x i8] c"infoex[%u].Group.ActiveGroupCount: 0x%x\0A\00", align 1
@.str.29 = private unnamed_addr constant [60 x i8] c"infoex[%u].Group.GroupInfo[%u].MaximumProcessorCount: 0x%x\0A\00", align 1
@.str.30 = private unnamed_addr constant [59 x i8] c"infoex[%u].Group.GroupInfo[%u].ActiveProcessorCount: 0x%x\0A\00", align 1
@.str.31 = private unnamed_addr constant [59 x i8] c"infoex[%u].Group.GroupInfo[%u].ActiveProcessorMask: 0x%lx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_query_logicalprocex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_query_logicalprocex() #0 {
  %1 = alloca %struct.TYPE_24__*, align 8
  %2 = alloca %struct.TYPE_24__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_24__*, align 8
  store i64 0, i64* %5, align 8
  store i64 129, i64* %3, align 8
  %11 = load i32, i32* @SystemLogicalProcessorInformationEx, align 4
  %12 = call i64 @pNtQuerySystemInformationEx(i32 %11, i64* %3, i32 8, %struct.TYPE_24__* null, i64 0, i64* %5)
  store i64 %12, i64* %6, align 8
  %13 = load i64, i64* %6, align 8
  %14 = load i64, i64* @STATUS_INFO_LENGTH_MISMATCH, align 8
  %15 = icmp eq i64 %13, %14
  %16 = zext i1 %15 to i32
  %17 = load i64, i64* %6, align 8
  %18 = call i32 (i32, i8*, ...) @ok(i32 %16, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 %17)
  %19 = load i64, i64* %5, align 8
  %20 = icmp sgt i64 %19, 0
  %21 = zext i1 %20 to i32
  %22 = load i64, i64* %5, align 8
  %23 = call i32 (i32, i8*, ...) @ok(i32 %21, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i64 %22)
  store i64 0, i64* %5, align 8
  %24 = load i64, i64* @RelationAll, align 8
  store i64 %24, i64* %3, align 8
  %25 = load i32, i32* @SystemLogicalProcessorInformationEx, align 4
  %26 = call i64 @pNtQuerySystemInformationEx(i32 %25, i64* %3, i32 8, %struct.TYPE_24__* null, i64 0, i64* %5)
  store i64 %26, i64* %6, align 8
  %27 = load i64, i64* %6, align 8
  %28 = load i64, i64* @STATUS_INFO_LENGTH_MISMATCH, align 8
  %29 = icmp eq i64 %27, %28
  %30 = zext i1 %29 to i32
  %31 = load i64, i64* %6, align 8
  %32 = call i32 (i32, i8*, ...) @ok(i32 %30, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 %31)
  %33 = load i64, i64* %5, align 8
  %34 = icmp sgt i64 %33, 0
  %35 = zext i1 %34 to i32
  %36 = load i64, i64* %5, align 8
  %37 = call i32 (i32, i8*, ...) @ok(i32 %35, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i64 %36)
  store i64 0, i64* %4, align 8
  %38 = load i64, i64* @RelationAll, align 8
  %39 = call i32 @pGetLogicalProcessorInformationEx(i64 %38, %struct.TYPE_24__* null, i64* %4)
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %7, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %0
  %43 = call i32 (...) @GetLastError()
  %44 = load i32, i32* @ERROR_INSUFFICIENT_BUFFER, align 4
  %45 = icmp eq i32 %43, %44
  br label %46

46:                                               ; preds = %42, %0
  %47 = phi i1 [ false, %0 ], [ %45, %42 ]
  %48 = zext i1 %47 to i32
  %49 = load i32, i32* %7, align 4
  %50 = call i32 (...) @GetLastError()
  %51 = call i32 (i32, i8*, ...) @ok(i32 %48, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %49, i32 %50)
  %52 = load i64, i64* %5, align 8
  %53 = load i64, i64* %4, align 8
  %54 = icmp eq i64 %52, %53
  %55 = zext i1 %54 to i32
  %56 = load i64, i64* %4, align 8
  %57 = load i64, i64* %5, align 8
  %58 = call i32 (i32, i8*, ...) @ok(i32 %55, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i64 %56, i64 %57)
  %59 = load i64, i64* %5, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %368

61:                                               ; preds = %46
  %62 = load i64, i64* %5, align 8
  %63 = load i64, i64* %4, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %368

65:                                               ; preds = %61
  %66 = call i32 (...) @GetProcessHeap()
  %67 = load i32, i32* @HEAP_ZERO_MEMORY, align 4
  %68 = load i64, i64* %5, align 8
  %69 = call %struct.TYPE_24__* @HeapAlloc(i32 %66, i32 %67, i64 %68)
  store %struct.TYPE_24__* %69, %struct.TYPE_24__** %1, align 8
  %70 = call i32 (...) @GetProcessHeap()
  %71 = load i32, i32* @HEAP_ZERO_MEMORY, align 4
  %72 = load i64, i64* %5, align 8
  %73 = call %struct.TYPE_24__* @HeapAlloc(i32 %70, i32 %71, i64 %72)
  store %struct.TYPE_24__* %73, %struct.TYPE_24__** %2, align 8
  %74 = load i32, i32* @SystemLogicalProcessorInformationEx, align 4
  %75 = load %struct.TYPE_24__*, %struct.TYPE_24__** %1, align 8
  %76 = load i64, i64* %5, align 8
  %77 = call i64 @pNtQuerySystemInformationEx(i32 %74, i64* %3, i32 8, %struct.TYPE_24__* %75, i64 %76, i64* %5)
  store i64 %77, i64* %6, align 8
  %78 = load i64, i64* %6, align 8
  %79 = load i64, i64* @STATUS_SUCCESS, align 8
  %80 = icmp eq i64 %78, %79
  %81 = zext i1 %80 to i32
  %82 = load i64, i64* %6, align 8
  %83 = call i32 (i32, i8*, ...) @ok(i32 %81, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 %82)
  %84 = load i64, i64* @RelationAll, align 8
  %85 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %86 = call i32 @pGetLogicalProcessorInformationEx(i64 %84, %struct.TYPE_24__* %85, i64* %4)
  store i32 %86, i32* %7, align 4
  %87 = load i32, i32* %7, align 4
  %88 = load i32, i32* %7, align 4
  %89 = call i32 (...) @GetLastError()
  %90 = call i32 (i32, i8*, ...) @ok(i32 %87, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %88, i32 %89)
  %91 = load %struct.TYPE_24__*, %struct.TYPE_24__** %1, align 8
  %92 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %93 = load i64, i64* %5, align 8
  %94 = call i32 @memcmp(%struct.TYPE_24__* %91, %struct.TYPE_24__* %92, i64 %93)
  %95 = icmp ne i32 %94, 0
  %96 = xor i1 %95, true
  %97 = zext i1 %96 to i32
  %98 = call i32 (i32, i8*, ...) @ok(i32 %97, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %9, align 4
  br label %99

99:                                               ; preds = %353, %65
  %100 = load i64, i64* %6, align 8
  %101 = load i64, i64* @STATUS_SUCCESS, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %103, label %108

103:                                              ; preds = %99
  %104 = load i32, i32* %9, align 4
  %105 = sext i32 %104 to i64
  %106 = load i64, i64* %5, align 8
  %107 = icmp slt i64 %105, %106
  br label %108

108:                                              ; preds = %103, %99
  %109 = phi i1 [ false, %99 ], [ %107, %103 ]
  br i1 %109, label %110, label %361

110:                                              ; preds = %108
  %111 = load %struct.TYPE_24__*, %struct.TYPE_24__** %1, align 8
  %112 = bitcast %struct.TYPE_24__* %111 to i8*
  %113 = load i32, i32* %9, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i8, i8* %112, i64 %114
  %116 = bitcast i8* %115 to %struct.TYPE_24__*
  store %struct.TYPE_24__* %116, %struct.TYPE_24__** %10, align 8
  %117 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %118 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = icmp sge i32 %119, 129
  br i1 %120, label %121, label %126

121:                                              ; preds = %110
  %122 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %123 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = icmp sle i32 %124, 131
  br label %126

126:                                              ; preds = %121, %110
  %127 = phi i1 [ false, %110 ], [ %125, %121 ]
  %128 = zext i1 %127 to i32
  %129 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %130 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = call i32 (i32, i8*, ...) @ok(i32 %128, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0), i32 %131)
  %133 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %134 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %133, i32 0, i32 1
  %135 = load i64, i64* %134, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %140, label %137

137:                                              ; preds = %126
  %138 = load i32, i32* %9, align 4
  %139 = call i32 (i32, i8*, ...) @ok(i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0), i32 %138)
  br label %361

140:                                              ; preds = %126
  %141 = load i32, i32* %9, align 4
  %142 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %143 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %142, i32 0, i32 1
  %144 = load i64, i64* %143, align 8
  %145 = trunc i64 %144 to i32
  %146 = call i32 (i8*, i32, i32, ...) @trace(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), i32 %141, i32 %145)
  %147 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %148 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  switch i32 %149, label %352 [
    i32 129, label %150
    i32 128, label %150
    i32 130, label %210
    i32 132, label %236
    i32 131, label %286
  ]

150:                                              ; preds = %140, %140
  %151 = load i32, i32* %9, align 4
  %152 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %153 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = call i32 (i8*, i32, i32, ...) @trace(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.8, i64 0, i64 0), i32 %151, i32 %154)
  %156 = load i32, i32* %9, align 4
  %157 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %158 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %157, i32 0, i32 5
  %159 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %158, i32 0, i32 3
  %160 = load i32, i32* %159, align 4
  %161 = call i32 (i8*, i32, i32, ...) @trace(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.9, i64 0, i64 0), i32 %156, i32 %160)
  %162 = load i32, i32* %9, align 4
  %163 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %164 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %163, i32 0, i32 5
  %165 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %164, i32 0, i32 2
  %166 = load i32, i32* %165, align 8
  %167 = call i32 (i8*, i32, i32, ...) @trace(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10, i64 0, i64 0), i32 %162, i32 %166)
  %168 = load i32, i32* %9, align 4
  %169 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %170 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %169, i32 0, i32 5
  %171 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = call i32 (i8*, i32, i32, ...) @trace(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.11, i64 0, i64 0), i32 %168, i32 %172)
  store i32 0, i32* %8, align 4
  br label %174

174:                                              ; preds = %206, %150
  %175 = load i32, i32* %8, align 4
  %176 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %177 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %176, i32 0, i32 5
  %178 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = icmp slt i32 %175, %179
  br i1 %180, label %181, label %209

181:                                              ; preds = %174
  %182 = load i32, i32* %9, align 4
  %183 = load i32, i32* %8, align 4
  %184 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %185 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %184, i32 0, i32 5
  %186 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %185, i32 0, i32 1
  %187 = load %struct.TYPE_16__*, %struct.TYPE_16__** %186, align 8
  %188 = load i32, i32* %8, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %187, i64 %189
  %191 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 4
  %193 = call i32 (i8*, i32, i32, ...) @trace(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.12, i64 0, i64 0), i32 %182, i32 %183, i32 %192)
  %194 = load i32, i32* %9, align 4
  %195 = load i32, i32* %8, align 4
  %196 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %197 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %196, i32 0, i32 5
  %198 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %197, i32 0, i32 1
  %199 = load %struct.TYPE_16__*, %struct.TYPE_16__** %198, align 8
  %200 = load i32, i32* %8, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %199, i64 %201
  %203 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 4
  %205 = call i32 (i8*, i32, i32, ...) @trace(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.13, i64 0, i64 0), i32 %194, i32 %195, i32 %204)
  br label %206

206:                                              ; preds = %181
  %207 = load i32, i32* %8, align 4
  %208 = add nsw i32 %207, 1
  store i32 %208, i32* %8, align 4
  br label %174

209:                                              ; preds = %174
  br label %353

210:                                              ; preds = %140
  %211 = load i32, i32* %9, align 4
  %212 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %213 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 8
  %215 = call i32 (i8*, i32, i32, ...) @trace(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.14, i64 0, i64 0), i32 %211, i32 %214)
  %216 = load i32, i32* %9, align 4
  %217 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %218 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %217, i32 0, i32 4
  %219 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %218, i32 0, i32 1
  %220 = load i32, i32* %219, align 4
  %221 = call i32 (i8*, i32, i32, ...) @trace(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.15, i64 0, i64 0), i32 %216, i32 %220)
  %222 = load i32, i32* %9, align 4
  %223 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %224 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %223, i32 0, i32 4
  %225 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %224, i32 0, i32 0
  %226 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %225, i32 0, i32 1
  %227 = load i32, i32* %226, align 4
  %228 = call i32 (i8*, i32, i32, ...) @trace(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.16, i64 0, i64 0), i32 %222, i32 %227)
  %229 = load i32, i32* %9, align 4
  %230 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %231 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %230, i32 0, i32 4
  %232 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %231, i32 0, i32 0
  %233 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 4
  %235 = call i32 (i8*, i32, i32, ...) @trace(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.17, i64 0, i64 0), i32 %229, i32 %234)
  br label %353

236:                                              ; preds = %140
  %237 = load i32, i32* %9, align 4
  %238 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %239 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 8
  %241 = call i32 (i8*, i32, i32, ...) @trace(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.18, i64 0, i64 0), i32 %237, i32 %240)
  %242 = load i32, i32* %9, align 4
  %243 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %244 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %243, i32 0, i32 3
  %245 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %244, i32 0, i32 5
  %246 = load i32, i32* %245, align 8
  %247 = call i32 (i8*, i32, i32, ...) @trace(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.19, i64 0, i64 0), i32 %242, i32 %246)
  %248 = load i32, i32* %9, align 4
  %249 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %250 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %249, i32 0, i32 3
  %251 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %250, i32 0, i32 4
  %252 = load i32, i32* %251, align 4
  %253 = call i32 (i8*, i32, i32, ...) @trace(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.20, i64 0, i64 0), i32 %248, i32 %252)
  %254 = load i32, i32* %9, align 4
  %255 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %256 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %255, i32 0, i32 3
  %257 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %256, i32 0, i32 3
  %258 = load i32, i32* %257, align 8
  %259 = call i32 (i8*, i32, i32, ...) @trace(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.21, i64 0, i64 0), i32 %254, i32 %258)
  %260 = load i32, i32* %9, align 4
  %261 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %262 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %261, i32 0, i32 3
  %263 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %262, i32 0, i32 2
  %264 = load i32, i32* %263, align 4
  %265 = call i32 (i8*, i32, i32, ...) @trace(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.22, i64 0, i64 0), i32 %260, i32 %264)
  %266 = load i32, i32* %9, align 4
  %267 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %268 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %267, i32 0, i32 3
  %269 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %268, i32 0, i32 1
  %270 = load i32, i32* %269, align 8
  %271 = call i32 (i8*, i32, i32, ...) @trace(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.23, i64 0, i64 0), i32 %266, i32 %270)
  %272 = load i32, i32* %9, align 4
  %273 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %274 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %273, i32 0, i32 3
  %275 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %274, i32 0, i32 0
  %276 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %275, i32 0, i32 1
  %277 = load i32, i32* %276, align 4
  %278 = call i32 (i8*, i32, i32, ...) @trace(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.24, i64 0, i64 0), i32 %272, i32 %277)
  %279 = load i32, i32* %9, align 4
  %280 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %281 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %280, i32 0, i32 3
  %282 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %281, i32 0, i32 0
  %283 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %282, i32 0, i32 0
  %284 = load i32, i32* %283, align 8
  %285 = call i32 (i8*, i32, i32, ...) @trace(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.25, i64 0, i64 0), i32 %279, i32 %284)
  br label %353

286:                                              ; preds = %140
  %287 = load i32, i32* %9, align 4
  %288 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %289 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %288, i32 0, i32 0
  %290 = load i32, i32* %289, align 8
  %291 = call i32 (i8*, i32, i32, ...) @trace(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.26, i64 0, i64 0), i32 %287, i32 %290)
  %292 = load i32, i32* %9, align 4
  %293 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %294 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %293, i32 0, i32 2
  %295 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %294, i32 0, i32 2
  %296 = load i32, i32* %295, align 8
  %297 = call i32 (i8*, i32, i32, ...) @trace(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.27, i64 0, i64 0), i32 %292, i32 %296)
  %298 = load i32, i32* %9, align 4
  %299 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %300 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %299, i32 0, i32 2
  %301 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %300, i32 0, i32 0
  %302 = load i32, i32* %301, align 8
  %303 = call i32 (i8*, i32, i32, ...) @trace(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.28, i64 0, i64 0), i32 %298, i32 %302)
  store i32 0, i32* %8, align 4
  br label %304

304:                                              ; preds = %348, %286
  %305 = load i32, i32* %8, align 4
  %306 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %307 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %306, i32 0, i32 2
  %308 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %307, i32 0, i32 0
  %309 = load i32, i32* %308, align 8
  %310 = icmp slt i32 %305, %309
  br i1 %310, label %311, label %351

311:                                              ; preds = %304
  %312 = load i32, i32* %9, align 4
  %313 = load i32, i32* %8, align 4
  %314 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %315 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %314, i32 0, i32 2
  %316 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %315, i32 0, i32 1
  %317 = load %struct.TYPE_22__*, %struct.TYPE_22__** %316, align 8
  %318 = load i32, i32* %8, align 4
  %319 = sext i32 %318 to i64
  %320 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %317, i64 %319
  %321 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %320, i32 0, i32 2
  %322 = load i32, i32* %321, align 4
  %323 = call i32 (i8*, i32, i32, ...) @trace(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.29, i64 0, i64 0), i32 %312, i32 %313, i32 %322)
  %324 = load i32, i32* %9, align 4
  %325 = load i32, i32* %8, align 4
  %326 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %327 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %326, i32 0, i32 2
  %328 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %327, i32 0, i32 1
  %329 = load %struct.TYPE_22__*, %struct.TYPE_22__** %328, align 8
  %330 = load i32, i32* %8, align 4
  %331 = sext i32 %330 to i64
  %332 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %329, i64 %331
  %333 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %332, i32 0, i32 1
  %334 = load i32, i32* %333, align 4
  %335 = call i32 (i8*, i32, i32, ...) @trace(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.30, i64 0, i64 0), i32 %324, i32 %325, i32 %334)
  %336 = load i32, i32* %9, align 4
  %337 = load i32, i32* %8, align 4
  %338 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %339 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %338, i32 0, i32 2
  %340 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %339, i32 0, i32 1
  %341 = load %struct.TYPE_22__*, %struct.TYPE_22__** %340, align 8
  %342 = load i32, i32* %8, align 4
  %343 = sext i32 %342 to i64
  %344 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %341, i64 %343
  %345 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %344, i32 0, i32 0
  %346 = load i32, i32* %345, align 4
  %347 = call i32 (i8*, i32, i32, ...) @trace(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.31, i64 0, i64 0), i32 %336, i32 %337, i32 %346)
  br label %348

348:                                              ; preds = %311
  %349 = load i32, i32* %8, align 4
  %350 = add nsw i32 %349, 1
  store i32 %350, i32* %8, align 4
  br label %304

351:                                              ; preds = %304
  br label %353

352:                                              ; preds = %140
  br label %353

353:                                              ; preds = %352, %351, %236, %210, %209
  %354 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %355 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %354, i32 0, i32 1
  %356 = load i64, i64* %355, align 8
  %357 = load i32, i32* %9, align 4
  %358 = sext i32 %357 to i64
  %359 = add nsw i64 %358, %356
  %360 = trunc i64 %359 to i32
  store i32 %360, i32* %9, align 4
  br label %99

361:                                              ; preds = %137, %108
  %362 = call i32 (...) @GetProcessHeap()
  %363 = load %struct.TYPE_24__*, %struct.TYPE_24__** %1, align 8
  %364 = call i32 @HeapFree(i32 %362, i32 0, %struct.TYPE_24__* %363)
  %365 = call i32 (...) @GetProcessHeap()
  %366 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %367 = call i32 @HeapFree(i32 %365, i32 0, %struct.TYPE_24__* %366)
  br label %368

368:                                              ; preds = %361, %61, %46
  ret void
}

declare dso_local i64 @pNtQuerySystemInformationEx(i32, i64*, i32, %struct.TYPE_24__*, i64, i64*) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @pGetLogicalProcessorInformationEx(i64, %struct.TYPE_24__*, i64*) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local %struct.TYPE_24__* @HeapAlloc(i32, i32, i64) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @memcmp(%struct.TYPE_24__*, %struct.TYPE_24__*, i64) #1

declare dso_local i32 @trace(i8*, i32, i32, ...) #1

declare dso_local i32 @HeapFree(i32, i32, %struct.TYPE_24__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
