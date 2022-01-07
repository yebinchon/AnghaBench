; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_time.c_test_GetSystemTimes.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_time.c_test_GetSystemTimes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32, i32 }
%struct.TYPE_18__ = type { i32, i32, i32 }
%struct.TYPE_19__ = type { i32, %struct.TYPE_17__, %struct.TYPE_16__, %struct.TYPE_15__ }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"GetSystemTimes failed unexpectedly\0A\00", align 1
@SystemBasicInformation = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"NtQuerySystemInformation failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"Inconsistent length %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"Number of Processors : %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"Expected more than 0 processors, got %d\0A\00", align 1
@SystemProcessorPerformanceInformation = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [22 x i8] c"test idletime failed\0A\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"test kerneltime failed\0A\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"test usertime failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_GetSystemTimes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_GetSystemTimes() #0 {
  %1 = alloca %struct.TYPE_20__, align 4
  %2 = alloca %struct.TYPE_20__, align 4
  %3 = alloca %struct.TYPE_20__, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_18__, align 4
  %6 = alloca %struct.TYPE_18__, align 4
  %7 = alloca %struct.TYPE_18__, align 4
  %8 = alloca %struct.TYPE_19__*, align 8
  %9 = alloca %struct.TYPE_19__, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_18__, align 4
  %12 = alloca %struct.TYPE_18__, align 4
  %13 = alloca %struct.TYPE_18__, align 4
  %14 = call i32 @pGetSystemTimes(%struct.TYPE_20__* null, %struct.TYPE_20__* null, %struct.TYPE_20__* null)
  %15 = call i32 (i32, i8*, ...) @ok(i32 %14, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %16 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 0
  store i32 0, i32* %16, align 4
  %17 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %12, i32 0, i32 0
  store i32 0, i32* %17, align 4
  %18 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 0
  store i32 0, i32* %18, align 4
  %19 = call i32 @memset(%struct.TYPE_20__* %1, i32 17, i32 8)
  %20 = call i32 @memset(%struct.TYPE_20__* %2, i32 17, i32 8)
  %21 = call i32 @memset(%struct.TYPE_20__* %3, i32 17, i32 8)
  %22 = call i32 @pGetSystemTimes(%struct.TYPE_20__* %1, %struct.TYPE_20__* %2, %struct.TYPE_20__* %3)
  %23 = call i32 (i32, i8*, ...) @ok(i32 %22, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %24 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %1, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %5, i32 0, i32 2
  store i32 %25, i32* %26, align 4
  %27 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %1, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %5, i32 0, i32 1
  store i32 %28, i32* %29, align 4
  %30 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %2, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %6, i32 0, i32 2
  store i32 %31, i32* %32, align 4
  %33 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %2, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %6, i32 0, i32 1
  store i32 %34, i32* %35, align 4
  %36 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %3, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %7, i32 0, i32 2
  store i32 %37, i32* %38, align 4
  %39 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %3, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %7, i32 0, i32 1
  store i32 %40, i32* %41, align 4
  %42 = load i32, i32* @SystemBasicInformation, align 4
  %43 = call i32 @NtQuerySystemInformation(i32 %42, %struct.TYPE_19__* %9, i32 16, i32* %10)
  %44 = icmp ne i32 %43, 0
  %45 = xor i1 %44, true
  %46 = zext i1 %45 to i32
  %47 = call i32 (i32, i8*, ...) @ok(i32 %46, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %48 = load i32, i32* %10, align 4
  %49 = sext i32 %48 to i64
  %50 = icmp eq i64 16, %49
  %51 = zext i1 %50 to i32
  %52 = load i32, i32* %10, align 4
  %53 = call i32 (i32, i8*, ...) @ok(i32 %51, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %52)
  %54 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %9, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @trace(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %55)
  %57 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %9, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = icmp sgt i32 %58, 0
  %60 = zext i1 %59 to i32
  %61 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %9, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 (i32, i8*, ...) @ok(i32 %60, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i32 %62)
  %64 = call i32 (...) @GetProcessHeap()
  %65 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %9, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = sext i32 %66 to i64
  %68 = mul i64 16, %67
  %69 = trunc i64 %68 to i32
  %70 = call %struct.TYPE_19__* @HeapAlloc(i32 %64, i32 0, i32 %69)
  store %struct.TYPE_19__* %70, %struct.TYPE_19__** %8, align 8
  %71 = load i32, i32* @SystemProcessorPerformanceInformation, align 4
  %72 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %9, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = sext i32 %74 to i64
  %76 = mul i64 16, %75
  %77 = trunc i64 %76 to i32
  %78 = call i32 @NtQuerySystemInformation(i32 %71, %struct.TYPE_19__* %72, i32 %77, i32* %10)
  %79 = icmp ne i32 %78, 0
  %80 = xor i1 %79, true
  %81 = zext i1 %80 to i32
  %82 = call i32 (i32, i8*, ...) @ok(i32 %81, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %83

83:                                               ; preds = %119, %0
  %84 = load i32, i32* %4, align 4
  %85 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %9, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = icmp slt i32 %84, %86
  br i1 %87, label %88, label %122

88:                                               ; preds = %83
  %89 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %90 = load i32, i32* %4, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %92, i32 0, i32 3
  %94 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = add nsw i32 %97, %95
  store i32 %98, i32* %96, align 4
  %99 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %100 = load i32, i32* %4, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %99, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %102, i32 0, i32 2
  %104 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %12, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = add nsw i32 %107, %105
  store i32 %108, i32* %106, align 4
  %109 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %110 = load i32, i32* %4, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %109, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = add nsw i32 %117, %115
  store i32 %118, i32* %116, align 4
  br label %119

119:                                              ; preds = %88
  %120 = load i32, i32* %4, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %4, align 4
  br label %83

122:                                              ; preds = %83
  %123 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %5, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = sub nsw i32 %124, %126
  %128 = icmp slt i32 %127, 10000000
  %129 = zext i1 %128 to i32
  %130 = call i32 (i32, i8*, ...) @ok(i32 %129, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  %131 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %12, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %6, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = sub nsw i32 %132, %134
  %136 = icmp slt i32 %135, 10000000
  %137 = zext i1 %136 to i32
  %138 = call i32 (i32, i8*, ...) @ok(i32 %137, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0))
  %139 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %7, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = sub nsw i32 %140, %142
  %144 = icmp slt i32 %143, 10000000
  %145 = zext i1 %144 to i32
  %146 = call i32 (i32, i8*, ...) @ok(i32 %145, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0))
  %147 = call i32 (...) @GetProcessHeap()
  %148 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %149 = call i32 @HeapFree(i32 %147, i32 0, %struct.TYPE_19__* %148)
  ret void
}

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @pGetSystemTimes(%struct.TYPE_20__*, %struct.TYPE_20__*, %struct.TYPE_20__*) #1

declare dso_local i32 @memset(%struct.TYPE_20__*, i32, i32) #1

declare dso_local i32 @NtQuerySystemInformation(i32, %struct.TYPE_19__*, i32, i32*) #1

declare dso_local i32 @trace(i8*, i32) #1

declare dso_local %struct.TYPE_19__* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @HeapFree(i32, i32, %struct.TYPE_19__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
