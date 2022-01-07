; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/ntdll/extr_info.c_test_query_timeofday.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/ntdll/extr_info.c_test_query_timeofday.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._SYSTEM_TIMEOFDAY_INFORMATION_PRIVATE = type { i32, i32, i32, i32, [5 x i32] }
%struct._SYSTEM_TIMEOFDAY_INFORMATION_PRIVATE.0 = type opaque

@SystemTimeOfDayInformation = common dso_local global i32 0, align 4
@STATUS_INFO_LENGTH_MISMATCH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [72 x i8] c"Windows version is NT, we have to cater for differences with W2K/WinXP\0A\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"Expected STATUS_INFO_LENGTH_MISMATCH, got %08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"ReturnLength should be 0, it is (%d)\0A\00", align 1
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"Expected STATUS_SUCCESS, got %08x\0A\00", align 1
@.str.4 = private unnamed_addr constant [53 x i8] c"This part of the buffer should not have been filled\0A\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"ReturnLength should be 24, it is (%d)\0A\00", align 1
@.str.6 = private unnamed_addr constant [39 x i8] c"ReturnLength should be 32, it is (%d)\0A\00", align 1
@.str.7 = private unnamed_addr constant [42 x i8] c"Buffer should have been partially filled\0A\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"Inconsistent length %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [27 x i8] c"uCurrentTimeZoneId : (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_query_timeofday to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_query_timeofday() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct._SYSTEM_TIMEOFDAY_INFORMATION_PRIVATE, align 4
  %4 = load i32, i32* @SystemTimeOfDayInformation, align 4
  %5 = bitcast %struct._SYSTEM_TIMEOFDAY_INFORMATION_PRIVATE* %3 to %struct._SYSTEM_TIMEOFDAY_INFORMATION_PRIVATE.0*
  %6 = call i32 @pNtQuerySystemInformation(i32 %4, %struct._SYSTEM_TIMEOFDAY_INFORMATION_PRIVATE.0* %5, i32 36, i32* %2)
  store i32 %6, i32* %1, align 4
  %7 = load i32, i32* %1, align 4
  %8 = load i32, i32* @STATUS_INFO_LENGTH_MISMATCH, align 4
  %9 = icmp eq i32 %7, %8
  br i1 %9, label %10, label %64

10:                                               ; preds = %0
  %11 = call i32 (i8*, ...) @trace(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str, i64 0, i64 0))
  %12 = load i32, i32* @SystemTimeOfDayInformation, align 4
  %13 = bitcast %struct._SYSTEM_TIMEOFDAY_INFORMATION_PRIVATE* %3 to %struct._SYSTEM_TIMEOFDAY_INFORMATION_PRIVATE.0*
  %14 = call i32 @pNtQuerySystemInformation(i32 %12, %struct._SYSTEM_TIMEOFDAY_INFORMATION_PRIVATE.0* %13, i32 0, i32* %2)
  store i32 %14, i32* %1, align 4
  %15 = load i32, i32* %1, align 4
  %16 = load i32, i32* @STATUS_INFO_LENGTH_MISMATCH, align 4
  %17 = icmp eq i32 %15, %16
  %18 = zext i1 %17 to i32
  %19 = load i32, i32* %1, align 4
  %20 = call i32 (i32, i8*, ...) @ok(i32 %18, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %19)
  %21 = load i32, i32* %2, align 4
  %22 = icmp eq i32 0, %21
  %23 = zext i1 %22 to i32
  %24 = load i32, i32* %2, align 4
  %25 = call i32 (i32, i8*, ...) @ok(i32 %23, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %24)
  %26 = getelementptr inbounds %struct._SYSTEM_TIMEOFDAY_INFORMATION_PRIVATE, %struct._SYSTEM_TIMEOFDAY_INFORMATION_PRIVATE* %3, i32 0, i32 3
  store i32 -559038737, i32* %26, align 4
  %27 = load i32, i32* @SystemTimeOfDayInformation, align 4
  %28 = bitcast %struct._SYSTEM_TIMEOFDAY_INFORMATION_PRIVATE* %3 to %struct._SYSTEM_TIMEOFDAY_INFORMATION_PRIVATE.0*
  %29 = call i32 @pNtQuerySystemInformation(i32 %27, %struct._SYSTEM_TIMEOFDAY_INFORMATION_PRIVATE.0* %28, i32 28, i32* %2)
  store i32 %29, i32* %1, align 4
  %30 = load i32, i32* %1, align 4
  %31 = load i32, i32* @STATUS_SUCCESS, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %40, label %33

33:                                               ; preds = %10
  %34 = load i32, i32* %1, align 4
  %35 = load i32, i32* @STATUS_INFO_LENGTH_MISMATCH, align 4
  %36 = icmp eq i32 %34, %35
  %37 = zext i1 %36 to i32
  %38 = call i64 @broken(i32 %37)
  %39 = icmp ne i64 %38, 0
  br label %40

40:                                               ; preds = %33, %10
  %41 = phi i1 [ true, %10 ], [ %39, %33 ]
  %42 = zext i1 %41 to i32
  %43 = load i32, i32* %1, align 4
  %44 = call i32 (i32, i8*, ...) @ok(i32 %42, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %43)
  %45 = getelementptr inbounds %struct._SYSTEM_TIMEOFDAY_INFORMATION_PRIVATE, %struct._SYSTEM_TIMEOFDAY_INFORMATION_PRIVATE* %3, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = icmp eq i32 -559038737, %46
  %48 = zext i1 %47 to i32
  %49 = call i32 (i32, i8*, ...) @ok(i32 %48, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.4, i64 0, i64 0))
  %50 = load i32, i32* @SystemTimeOfDayInformation, align 4
  %51 = bitcast %struct._SYSTEM_TIMEOFDAY_INFORMATION_PRIVATE* %3 to %struct._SYSTEM_TIMEOFDAY_INFORMATION_PRIVATE.0*
  %52 = call i32 @pNtQuerySystemInformation(i32 %50, %struct._SYSTEM_TIMEOFDAY_INFORMATION_PRIVATE.0* %51, i32 32, i32* %2)
  store i32 %52, i32* %1, align 4
  %53 = load i32, i32* %1, align 4
  %54 = load i32, i32* @STATUS_SUCCESS, align 4
  %55 = icmp eq i32 %53, %54
  %56 = zext i1 %55 to i32
  %57 = load i32, i32* %1, align 4
  %58 = call i32 (i32, i8*, ...) @ok(i32 %56, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %57)
  %59 = load i32, i32* %2, align 4
  %60 = icmp eq i32 32, %59
  %61 = zext i1 %60 to i32
  %62 = load i32, i32* %2, align 4
  %63 = call i32 (i32, i8*, ...) @ok(i32 %61, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %62)
  br label %154

64:                                               ; preds = %0
  %65 = load i32, i32* @SystemTimeOfDayInformation, align 4
  %66 = bitcast %struct._SYSTEM_TIMEOFDAY_INFORMATION_PRIVATE* %3 to %struct._SYSTEM_TIMEOFDAY_INFORMATION_PRIVATE.0*
  %67 = call i32 @pNtQuerySystemInformation(i32 %65, %struct._SYSTEM_TIMEOFDAY_INFORMATION_PRIVATE.0* %66, i32 0, i32* %2)
  store i32 %67, i32* %1, align 4
  %68 = load i32, i32* %1, align 4
  %69 = load i32, i32* @STATUS_SUCCESS, align 4
  %70 = icmp eq i32 %68, %69
  %71 = zext i1 %70 to i32
  %72 = load i32, i32* %1, align 4
  %73 = call i32 (i32, i8*, ...) @ok(i32 %71, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %72)
  %74 = load i32, i32* %2, align 4
  %75 = icmp eq i32 0, %74
  %76 = zext i1 %75 to i32
  %77 = load i32, i32* %2, align 4
  %78 = call i32 (i32, i8*, ...) @ok(i32 %76, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %77)
  %79 = getelementptr inbounds %struct._SYSTEM_TIMEOFDAY_INFORMATION_PRIVATE, %struct._SYSTEM_TIMEOFDAY_INFORMATION_PRIVATE* %3, i32 0, i32 3
  store i32 -559038737, i32* %79, align 4
  %80 = load i32, i32* @SystemTimeOfDayInformation, align 4
  %81 = bitcast %struct._SYSTEM_TIMEOFDAY_INFORMATION_PRIVATE* %3 to %struct._SYSTEM_TIMEOFDAY_INFORMATION_PRIVATE.0*
  %82 = call i32 @pNtQuerySystemInformation(i32 %80, %struct._SYSTEM_TIMEOFDAY_INFORMATION_PRIVATE.0* %81, i32 24, i32* %2)
  store i32 %82, i32* %1, align 4
  %83 = load i32, i32* %1, align 4
  %84 = load i32, i32* @STATUS_SUCCESS, align 4
  %85 = icmp eq i32 %83, %84
  %86 = zext i1 %85 to i32
  %87 = load i32, i32* %1, align 4
  %88 = call i32 (i32, i8*, ...) @ok(i32 %86, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %87)
  %89 = load i32, i32* %2, align 4
  %90 = icmp eq i32 24, %89
  %91 = zext i1 %90 to i32
  %92 = load i32, i32* %2, align 4
  %93 = call i32 (i32, i8*, ...) @ok(i32 %91, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0), i32 %92)
  %94 = getelementptr inbounds %struct._SYSTEM_TIMEOFDAY_INFORMATION_PRIVATE, %struct._SYSTEM_TIMEOFDAY_INFORMATION_PRIVATE* %3, i32 0, i32 3
  %95 = load i32, i32* %94, align 4
  %96 = icmp eq i32 -559038737, %95
  %97 = zext i1 %96 to i32
  %98 = call i32 (i32, i8*, ...) @ok(i32 %97, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.4, i64 0, i64 0))
  %99 = getelementptr inbounds %struct._SYSTEM_TIMEOFDAY_INFORMATION_PRIVATE, %struct._SYSTEM_TIMEOFDAY_INFORMATION_PRIVATE* %3, i32 0, i32 3
  store i32 -559038737, i32* %99, align 4
  %100 = load i32, i32* @SystemTimeOfDayInformation, align 4
  %101 = bitcast %struct._SYSTEM_TIMEOFDAY_INFORMATION_PRIVATE* %3 to %struct._SYSTEM_TIMEOFDAY_INFORMATION_PRIVATE.0*
  %102 = call i32 @pNtQuerySystemInformation(i32 %100, %struct._SYSTEM_TIMEOFDAY_INFORMATION_PRIVATE.0* %101, i32 32, i32* %2)
  store i32 %102, i32* %1, align 4
  %103 = load i32, i32* %1, align 4
  %104 = load i32, i32* @STATUS_SUCCESS, align 4
  %105 = icmp eq i32 %103, %104
  %106 = zext i1 %105 to i32
  %107 = load i32, i32* %1, align 4
  %108 = call i32 (i32, i8*, ...) @ok(i32 %106, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %107)
  %109 = load i32, i32* %2, align 4
  %110 = icmp eq i32 32, %109
  %111 = zext i1 %110 to i32
  %112 = load i32, i32* %2, align 4
  %113 = call i32 (i32, i8*, ...) @ok(i32 %111, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0), i32 %112)
  %114 = getelementptr inbounds %struct._SYSTEM_TIMEOFDAY_INFORMATION_PRIVATE, %struct._SYSTEM_TIMEOFDAY_INFORMATION_PRIVATE* %3, i32 0, i32 3
  %115 = load i32, i32* %114, align 4
  %116 = icmp ne i32 -559038737, %115
  %117 = zext i1 %116 to i32
  %118 = call i32 (i32, i8*, ...) @ok(i32 %117, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i64 0, i64 0))
  %119 = load i32, i32* @SystemTimeOfDayInformation, align 4
  %120 = bitcast %struct._SYSTEM_TIMEOFDAY_INFORMATION_PRIVATE* %3 to %struct._SYSTEM_TIMEOFDAY_INFORMATION_PRIVATE.0*
  %121 = call i32 @pNtQuerySystemInformation(i32 %119, %struct._SYSTEM_TIMEOFDAY_INFORMATION_PRIVATE.0* %120, i32 49, i32* %2)
  store i32 %121, i32* %1, align 4
  %122 = load i32, i32* %1, align 4
  %123 = load i32, i32* @STATUS_INFO_LENGTH_MISMATCH, align 4
  %124 = icmp eq i32 %122, %123
  %125 = zext i1 %124 to i32
  %126 = load i32, i32* %1, align 4
  %127 = call i32 (i32, i8*, ...) @ok(i32 %125, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %126)
  %128 = load i32, i32* %2, align 4
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %134, label %130

130:                                              ; preds = %64
  %131 = load i32, i32* %2, align 4
  %132 = sext i32 %131 to i64
  %133 = icmp eq i64 %132, 36
  br label %134

134:                                              ; preds = %130, %64
  %135 = phi i1 [ true, %64 ], [ %133, %130 ]
  %136 = zext i1 %135 to i32
  %137 = load i32, i32* %2, align 4
  %138 = call i32 (i32, i8*, ...) @ok(i32 %136, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %137)
  %139 = load i32, i32* @SystemTimeOfDayInformation, align 4
  %140 = bitcast %struct._SYSTEM_TIMEOFDAY_INFORMATION_PRIVATE* %3 to %struct._SYSTEM_TIMEOFDAY_INFORMATION_PRIVATE.0*
  %141 = call i32 @pNtQuerySystemInformation(i32 %139, %struct._SYSTEM_TIMEOFDAY_INFORMATION_PRIVATE.0* %140, i32 36, i32* %2)
  store i32 %141, i32* %1, align 4
  %142 = load i32, i32* %1, align 4
  %143 = load i32, i32* @STATUS_SUCCESS, align 4
  %144 = icmp eq i32 %142, %143
  %145 = zext i1 %144 to i32
  %146 = load i32, i32* %1, align 4
  %147 = call i32 (i32, i8*, ...) @ok(i32 %145, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %146)
  %148 = load i32, i32* %2, align 4
  %149 = sext i32 %148 to i64
  %150 = icmp eq i64 36, %149
  %151 = zext i1 %150 to i32
  %152 = load i32, i32* %2, align 4
  %153 = call i32 (i32, i8*, ...) @ok(i32 %151, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0), i32 %152)
  br label %154

154:                                              ; preds = %134, %40
  %155 = getelementptr inbounds %struct._SYSTEM_TIMEOFDAY_INFORMATION_PRIVATE, %struct._SYSTEM_TIMEOFDAY_INFORMATION_PRIVATE* %3, i32 0, i32 3
  %156 = load i32, i32* %155, align 4
  %157 = call i32 (i8*, ...) @trace(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0), i32 %156)
  ret void
}

declare dso_local i32 @pNtQuerySystemInformation(i32, %struct._SYSTEM_TIMEOFDAY_INFORMATION_PRIVATE.0*, i32, i32*) #1

declare dso_local i32 @trace(i8*, ...) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i64 @broken(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
