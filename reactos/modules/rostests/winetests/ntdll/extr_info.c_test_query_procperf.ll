; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/ntdll/extr_info.c_test_query_procperf.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/ntdll/extr_info.c_test_query_procperf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, %struct.TYPE_13__, %struct.TYPE_12__, %struct.TYPE_11__ }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32 }

@SystemBasicInformation = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Expected STATUS_SUCCESS, got %08x\0A\00", align 1
@SystemProcessorPerformanceInformation = common dso_local global i32 0, align 4
@STATUS_INFO_LENGTH_MISMATCH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"Expected STATUS_INFO_LENGTH_MISMATCH, got %08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"Inconsistent length %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"KernelTime unchanged\0A\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"UserTime unchanged\0A\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"IdleTime unchanged\0A\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"Inconsistent length (%d) <-> (%d)\0A\00", align 1
@.str.7 = private unnamed_addr constant [66 x i8] c"Expected STATUS_SUCCESS or STATUS_INFO_LENGTH_MISMATCH, got %08x\0A\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"KernelTime changed\0A\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"UserTime changed\0A\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"IdleTime changed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_query_procperf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_query_procperf() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_14__, align 4
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = load i32, i32* @SystemBasicInformation, align 4
  %7 = call i32 @pNtQuerySystemInformation(i32 %6, %struct.TYPE_14__* %4, i32 16, i32* %2)
  store i32 %7, i32* %1, align 4
  %8 = load i32, i32* %1, align 4
  %9 = load i32, i32* @STATUS_SUCCESS, align 4
  %10 = icmp eq i32 %8, %9
  %11 = zext i1 %10 to i32
  %12 = load i32, i32* %1, align 4
  %13 = call i32 (i32, i8*, ...) @ok(i32 %11, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %4, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = sext i32 %15 to i64
  %17 = mul i64 %16, 16
  %18 = trunc i64 %17 to i32
  store i32 %18, i32* %3, align 4
  %19 = call i32 (...) @GetProcessHeap()
  %20 = load i32, i32* %3, align 4
  %21 = call %struct.TYPE_14__* @HeapAlloc(i32 %19, i32 0, i32 %20)
  store %struct.TYPE_14__* %21, %struct.TYPE_14__** %5, align 8
  %22 = load i32, i32* @SystemProcessorPerformanceInformation, align 4
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %24 = call i32 @pNtQuerySystemInformation(i32 %22, %struct.TYPE_14__* %23, i32 0, i32* %2)
  store i32 %24, i32* %1, align 4
  %25 = load i32, i32* %1, align 4
  %26 = load i32, i32* @STATUS_INFO_LENGTH_MISMATCH, align 4
  %27 = icmp eq i32 %25, %26
  %28 = zext i1 %27 to i32
  %29 = load i32, i32* %1, align 4
  %30 = call i32 (i32, i8*, ...) @ok(i32 %28, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %29)
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 3
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 0
  store i32 -559030611, i32* %33, align 4
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 0
  store i32 -559030611, i32* %36, align 4
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 0
  store i32 -559030611, i32* %39, align 4
  %40 = load i32, i32* @SystemProcessorPerformanceInformation, align 4
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %42 = call i32 @pNtQuerySystemInformation(i32 %40, %struct.TYPE_14__* %41, i32 16, i32* %2)
  store i32 %42, i32* %1, align 4
  %43 = load i32, i32* %1, align 4
  %44 = load i32, i32* @STATUS_SUCCESS, align 4
  %45 = icmp eq i32 %43, %44
  %46 = zext i1 %45 to i32
  %47 = load i32, i32* %1, align 4
  %48 = call i32 (i32, i8*, ...) @ok(i32 %46, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %47)
  %49 = load i32, i32* %2, align 4
  %50 = sext i32 %49 to i64
  %51 = icmp eq i64 16, %50
  %52 = zext i1 %51 to i32
  %53 = load i32, i32* %2, align 4
  %54 = call i32 (i32, i8*, ...) @ok(i32 %52, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %53)
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i32 0, i32 3
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = icmp ne i32 %58, -559030611
  %60 = zext i1 %59 to i32
  %61 = call i32 (i32, i8*, ...) @ok(i32 %60, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %62 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = icmp ne i32 %65, -559030611
  %67 = zext i1 %66 to i32
  %68 = call i32 (i32, i8*, ...) @ok(i32 %67, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  %69 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = icmp ne i32 %72, -559030611
  %74 = zext i1 %73 to i32
  %75 = call i32 (i32, i8*, ...) @ok(i32 %74, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0))
  %76 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %76, i32 0, i32 3
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 0
  store i32 -559030611, i32* %78, align 4
  %79 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 0
  store i32 -559030611, i32* %81, align 4
  %82 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %83, i32 0, i32 0
  store i32 -559030611, i32* %84, align 4
  %85 = load i32, i32* @SystemProcessorPerformanceInformation, align 4
  %86 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %87 = load i32, i32* %3, align 4
  %88 = call i32 @pNtQuerySystemInformation(i32 %85, %struct.TYPE_14__* %86, i32 %87, i32* %2)
  store i32 %88, i32* %1, align 4
  %89 = load i32, i32* %1, align 4
  %90 = load i32, i32* @STATUS_SUCCESS, align 4
  %91 = icmp eq i32 %89, %90
  %92 = zext i1 %91 to i32
  %93 = load i32, i32* %1, align 4
  %94 = call i32 (i32, i8*, ...) @ok(i32 %92, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %93)
  %95 = load i32, i32* %3, align 4
  %96 = load i32, i32* %2, align 4
  %97 = icmp eq i32 %95, %96
  %98 = zext i1 %97 to i32
  %99 = load i32, i32* %3, align 4
  %100 = load i32, i32* %2, align 4
  %101 = call i32 (i32, i8*, ...) @ok(i32 %98, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0), i32 %99, i32 %100)
  %102 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %102, i32 0, i32 3
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = icmp ne i32 %105, -559030611
  %107 = zext i1 %106 to i32
  %108 = call i32 (i32, i8*, ...) @ok(i32 %107, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %109 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %109, i32 0, i32 2
  %111 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = icmp ne i32 %112, -559030611
  %114 = zext i1 %113 to i32
  %115 = call i32 (i32, i8*, ...) @ok(i32 %114, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  %116 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = icmp ne i32 %119, -559030611
  %121 = zext i1 %120 to i32
  %122 = call i32 (i32, i8*, ...) @ok(i32 %121, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0))
  %123 = call i32 (...) @GetProcessHeap()
  %124 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %125 = load i32, i32* %3, align 4
  %126 = add nsw i32 %125, 2
  %127 = call %struct.TYPE_14__* @HeapReAlloc(i32 %123, i32 0, %struct.TYPE_14__* %124, i32 %126)
  store %struct.TYPE_14__* %127, %struct.TYPE_14__** %5, align 8
  %128 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %129 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %128, i32 0, i32 3
  %130 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %129, i32 0, i32 0
  store i32 -559030611, i32* %130, align 4
  %131 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %132 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %131, i32 0, i32 2
  %133 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %132, i32 0, i32 0
  store i32 -559030611, i32* %133, align 4
  %134 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %135 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %135, i32 0, i32 0
  store i32 -559030611, i32* %136, align 4
  %137 = load i32, i32* @SystemProcessorPerformanceInformation, align 4
  %138 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %139 = load i32, i32* %3, align 4
  %140 = add nsw i32 %139, 2
  %141 = call i32 @pNtQuerySystemInformation(i32 %137, %struct.TYPE_14__* %138, i32 %140, i32* %2)
  store i32 %141, i32* %1, align 4
  %142 = load i32, i32* %1, align 4
  %143 = load i32, i32* @STATUS_SUCCESS, align 4
  %144 = icmp eq i32 %142, %143
  br i1 %144, label %149, label %145

145:                                              ; preds = %0
  %146 = load i32, i32* %1, align 4
  %147 = load i32, i32* @STATUS_INFO_LENGTH_MISMATCH, align 4
  %148 = icmp eq i32 %146, %147
  br label %149

149:                                              ; preds = %145, %0
  %150 = phi i1 [ true, %0 ], [ %148, %145 ]
  %151 = zext i1 %150 to i32
  %152 = load i32, i32* %1, align 4
  %153 = call i32 (i32, i8*, ...) @ok(i32 %151, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.7, i64 0, i64 0), i32 %152)
  %154 = load i32, i32* %3, align 4
  %155 = load i32, i32* %2, align 4
  %156 = icmp eq i32 %154, %155
  %157 = zext i1 %156 to i32
  %158 = load i32, i32* %3, align 4
  %159 = load i32, i32* %2, align 4
  %160 = call i32 (i32, i8*, ...) @ok(i32 %157, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0), i32 %158, i32 %159)
  %161 = load i32, i32* %1, align 4
  %162 = load i32, i32* @STATUS_SUCCESS, align 4
  %163 = icmp eq i32 %161, %162
  br i1 %163, label %164, label %186

164:                                              ; preds = %149
  %165 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %166 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %165, i32 0, i32 3
  %167 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = icmp ne i32 %168, -559030611
  %170 = zext i1 %169 to i32
  %171 = call i32 (i32, i8*, ...) @ok(i32 %170, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %172 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %173 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %172, i32 0, i32 2
  %174 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = icmp ne i32 %175, -559030611
  %177 = zext i1 %176 to i32
  %178 = call i32 (i32, i8*, ...) @ok(i32 %177, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  %179 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %180 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %179, i32 0, i32 1
  %181 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = icmp ne i32 %182, -559030611
  %184 = zext i1 %183 to i32
  %185 = call i32 (i32, i8*, ...) @ok(i32 %184, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0))
  br label %208

186:                                              ; preds = %149
  %187 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %188 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %187, i32 0, i32 3
  %189 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  %191 = icmp eq i32 %190, -559030611
  %192 = zext i1 %191 to i32
  %193 = call i32 (i32, i8*, ...) @ok(i32 %192, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0))
  %194 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %195 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %194, i32 0, i32 2
  %196 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 4
  %198 = icmp eq i32 %197, -559030611
  %199 = zext i1 %198 to i32
  %200 = call i32 (i32, i8*, ...) @ok(i32 %199, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0))
  %201 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %202 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %201, i32 0, i32 1
  %203 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 4
  %205 = icmp eq i32 %204, -559030611
  %206 = zext i1 %205 to i32
  %207 = call i32 (i32, i8*, ...) @ok(i32 %206, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i64 0, i64 0))
  br label %208

208:                                              ; preds = %186, %164
  %209 = call i32 (...) @GetProcessHeap()
  %210 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %211 = call i32 @HeapFree(i32 %209, i32 0, %struct.TYPE_14__* %210)
  ret void
}

declare dso_local i32 @pNtQuerySystemInformation(i32, %struct.TYPE_14__*, i32, i32*) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local %struct.TYPE_14__* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local %struct.TYPE_14__* @HeapReAlloc(i32, i32, %struct.TYPE_14__*, i32) #1

declare dso_local i32 @HeapFree(i32, i32, %struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
