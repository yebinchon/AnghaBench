; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/apitests/ntdll/extr_SystemInfo.c_Test_KernelDebugger.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/apitests/ntdll/extr_SystemInfo.c_Test_KernelDebugger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }

@SystemKernelDebuggerInformation = common dso_local global i32 0, align 4
@STATUS_INFO_LENGTH_MISMATCH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"NtQuerySystemInformation returned %lx\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"ReturnLength = %lu\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"Buffer[0] = %lx\0A\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"Buffer[1] = %lx\0A\00", align 1
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [28 x i8] c"KernelDebuggerEnabled = %u\0A\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"KernelDebuggerNotPresent = %u\0A\00", align 1
@STATUS_INVALID_INFO_CLASS = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [37 x i8] c"NtSetSystemInformation returned %lx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @Test_KernelDebugger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Test_KernelDebugger() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca [2 x i32], align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  %6 = bitcast i32* %5 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %6, %struct.TYPE_6__** %4, align 8
  store i32 1431655765, i32* %2, align 4
  %7 = load i32, i32* @SystemKernelDebuggerInformation, align 4
  %8 = call i32 @NtQuerySystemInformation(i32 %7, %struct.TYPE_6__* null, i32 0, i32* %2)
  store i32 %8, i32* %1, align 4
  %9 = load i32, i32* %1, align 4
  %10 = load i32, i32* @STATUS_INFO_LENGTH_MISMATCH, align 4
  %11 = icmp eq i32 %9, %10
  %12 = zext i1 %11 to i32
  %13 = load i32, i32* %1, align 4
  %14 = call i32 @ok(i32 %12, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load i32, i32* %2, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %24, label %17

17:                                               ; preds = %0
  %18 = load i32, i32* %2, align 4
  %19 = sext i32 %18 to i64
  %20 = icmp eq i64 %19, 4
  %21 = zext i1 %20 to i32
  %22 = call i64 @ntv6(i32 %21)
  %23 = icmp ne i64 %22, 0
  br label %24

24:                                               ; preds = %17, %0
  %25 = phi i1 [ true, %0 ], [ %23, %17 ]
  %26 = zext i1 %25 to i32
  %27 = load i32, i32* %2, align 4
  %28 = call i32 @ok(i32 %26, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %27)
  store i32 1431655765, i32* %2, align 4
  %29 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  %30 = call i32 @RtlFillMemory(i32* %29, i32 8, i32 85)
  %31 = load i32, i32* @SystemKernelDebuggerInformation, align 4
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %33 = call i32 @NtQuerySystemInformation(i32 %31, %struct.TYPE_6__* %32, i32 3, i32* %2)
  store i32 %33, i32* %1, align 4
  %34 = load i32, i32* %1, align 4
  %35 = load i32, i32* @STATUS_INFO_LENGTH_MISMATCH, align 4
  %36 = icmp eq i32 %34, %35
  %37 = zext i1 %36 to i32
  %38 = load i32, i32* %1, align 4
  %39 = call i32 @ok(i32 %37, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %38)
  %40 = load i32, i32* %2, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %49, label %42

42:                                               ; preds = %24
  %43 = load i32, i32* %2, align 4
  %44 = sext i32 %43 to i64
  %45 = icmp eq i64 %44, 4
  %46 = zext i1 %45 to i32
  %47 = call i64 @ntv6(i32 %46)
  %48 = icmp ne i64 %47, 0
  br label %49

49:                                               ; preds = %42, %24
  %50 = phi i1 [ true, %24 ], [ %48, %42 ]
  %51 = zext i1 %50 to i32
  %52 = load i32, i32* %2, align 4
  %53 = call i32 @ok(i32 %51, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %52)
  %54 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  %55 = load i32, i32* %54, align 4
  %56 = icmp eq i32 %55, 1431655765
  %57 = zext i1 %56 to i32
  %58 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @ok(i32 %57, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %59)
  %61 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 1
  %62 = load i32, i32* %61, align 4
  %63 = icmp eq i32 %62, 1431655765
  %64 = zext i1 %63 to i32
  %65 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @ok(i32 %64, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 %66)
  store i32 1431655765, i32* %2, align 4
  %68 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  %69 = call i32 @RtlFillMemory(i32* %68, i32 8, i32 85)
  %70 = load i32, i32* @SystemKernelDebuggerInformation, align 4
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i64 1
  %73 = call i32 @NtQuerySystemInformation(i32 %70, %struct.TYPE_6__* %72, i32 4, i32* %2)
  store i32 %73, i32* %1, align 4
  %74 = load i32, i32* %1, align 4
  %75 = load i32, i32* @STATUS_SUCCESS, align 4
  %76 = icmp eq i32 %74, %75
  %77 = zext i1 %76 to i32
  %78 = load i32, i32* %1, align 4
  %79 = call i32 @ok(i32 %77, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %78)
  %80 = load i32, i32* %2, align 4
  %81 = sext i32 %80 to i64
  %82 = icmp eq i64 %81, 4
  %83 = zext i1 %82 to i32
  %84 = load i32, i32* %2, align 4
  %85 = call i32 @ok(i32 %83, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %84)
  %86 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  %87 = load i32, i32* %86, align 4
  %88 = and i32 %87, 1442774613
  %89 = icmp eq i32 %88, 1426063445
  %90 = zext i1 %89 to i32
  %91 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @ok(i32 %90, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %92)
  %94 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 1
  %95 = load i32, i32* %94, align 4
  %96 = icmp eq i32 %95, 1431655765
  %97 = zext i1 %96 to i32
  %98 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 1
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @ok(i32 %97, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 %99)
  store i32 1431655765, i32* %2, align 4
  %101 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0
  %102 = call i32 @RtlFillMemory(i32* %101, i32 8, i32 85)
  %103 = load i32, i32* @SystemKernelDebuggerInformation, align 4
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %105 = call i32 @NtQuerySystemInformation(i32 %103, %struct.TYPE_6__* %104, i32 4, i32* %2)
  store i32 %105, i32* %1, align 4
  %106 = load i32, i32* %1, align 4
  %107 = load i32, i32* @STATUS_SUCCESS, align 4
  %108 = icmp eq i32 %106, %107
  %109 = zext i1 %108 to i32
  %110 = load i32, i32* %1, align 4
  %111 = call i32 @ok(i32 %109, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %110)
  %112 = load i32, i32* %2, align 4
  %113 = sext i32 %112 to i64
  %114 = icmp eq i64 %113, 4
  %115 = zext i1 %114 to i32
  %116 = load i32, i32* %2, align 4
  %117 = call i32 @ok(i32 %115, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %116)
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* @FALSE, align 4
  %122 = icmp eq i32 %120, %121
  br i1 %122, label %129, label %123

123:                                              ; preds = %49
  %124 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* @TRUE, align 4
  %128 = icmp eq i32 %126, %127
  br label %129

129:                                              ; preds = %123, %49
  %130 = phi i1 [ true, %49 ], [ %128, %123 ]
  %131 = zext i1 %130 to i32
  %132 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @ok(i32 %131, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 %134)
  %136 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* @FALSE, align 4
  %140 = icmp eq i32 %138, %139
  br i1 %140, label %147, label %141

141:                                              ; preds = %129
  %142 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* @TRUE, align 4
  %146 = icmp eq i32 %144, %145
  br label %147

147:                                              ; preds = %141, %129
  %148 = phi i1 [ true, %129 ], [ %146, %141 ]
  %149 = zext i1 %148 to i32
  %150 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @ok(i32 %149, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i32 %152)
  %154 = load i32, i32* @FALSE, align 4
  %155 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %156 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %155, i32 0, i32 0
  store i32 %154, i32* %156, align 4
  %157 = load i32, i32* @TRUE, align 4
  %158 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %159 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %158, i32 0, i32 1
  store i32 %157, i32* %159, align 4
  %160 = load i32, i32* @SystemKernelDebuggerInformation, align 4
  %161 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %162 = call i32 @NtSetSystemInformation(i32 %160, %struct.TYPE_6__* %161, i32 4)
  store i32 %162, i32* %1, align 4
  %163 = load i32, i32* %1, align 4
  %164 = load i32, i32* @STATUS_INVALID_INFO_CLASS, align 4
  %165 = icmp eq i32 %163, %164
  %166 = zext i1 %165 to i32
  %167 = load i32, i32* %1, align 4
  %168 = call i32 @ok(i32 %166, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0), i32 %167)
  ret void
}

declare dso_local i32 @NtQuerySystemInformation(i32, %struct.TYPE_6__*, i32, i32*) #1

declare dso_local i32 @ok(i32, i8*, i32) #1

declare dso_local i64 @ntv6(i32) #1

declare dso_local i32 @RtlFillMemory(i32*, i32, i32) #1

declare dso_local i32 @NtSetSystemInformation(i32, %struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
