; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/netapi32/extr_wksta.c_run_wkstausergetinfo_tests.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/netapi32/extr_wksta.c_run_wkstausergetinfo_tests.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32 }

@NERR_WkstaNotStarted = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"Workstation service not running\0A\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"got %d and %p (expected NERR_Success and != NULL\0A\00", align 1
@user_name = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"This is really user name\0A\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"Is allocated with NetApiBufferAllocate\0A\00", align 1
@NERR_Success = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [35 x i8] c"NetWkstaUserGetInfo is successful\0A\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"the same name as returned for level 0\0A\00", align 1
@.str.6 = private unnamed_addr constant [46 x i8] c"the same oth_domains as returned for level 1\0A\00", align 1
@ERROR_INVALID_LEVEL = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [15 x i8] c"Invalid level\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @run_wkstausergetinfo_tests to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @run_wkstausergetinfo_tests() #0 {
  %1 = alloca %struct.TYPE_6__*, align 8
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %1, align 8
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %2, align 8
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %3, align 8
  %6 = bitcast %struct.TYPE_6__** %1 to i32*
  %7 = call i64 @pNetWkstaUserGetInfo(i32* null, i32 0, i32* %6)
  store i64 %7, i64* %5, align 8
  %8 = load i64, i64* %5, align 8
  %9 = load i64, i64* @NERR_WkstaNotStarted, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %0
  %12 = call i32 @skip(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %139

13:                                               ; preds = %0
  %14 = load i64, i64* %5, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %13
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %18 = icmp ne %struct.TYPE_6__* %17, null
  br label %19

19:                                               ; preds = %16, %13
  %20 = phi i1 [ false, %13 ], [ %18, %16 ]
  %21 = zext i1 %20 to i32
  %22 = load i64, i64* %5, align 8
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %24 = call i32 (i32, i8*, ...) @ok(i32 %21, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i64 %22, %struct.TYPE_6__* %23)
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %26 = icmp ne %struct.TYPE_6__* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %19
  br label %139

28:                                               ; preds = %19
  %29 = load i32, i32* @user_name, align 4
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 5
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @lstrcmpW(i32 %29, i32 %32)
  %34 = icmp ne i64 %33, 0
  %35 = xor i1 %34, true
  %36 = zext i1 %35 to i32
  %37 = call i32 (i32, i8*, ...) @ok(i32 %36, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %39 = call i32 @pNetApiBufferSize(%struct.TYPE_6__* %38, i32* %4)
  %40 = load i32, i32* %4, align 4
  %41 = sext i32 %40 to i64
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 5
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @lstrlenW(i32 %44)
  %46 = sext i32 %45 to i64
  %47 = mul i64 %46, 4
  %48 = add i64 4, %47
  %49 = icmp uge i64 %41, %48
  %50 = zext i1 %49 to i32
  %51 = call i32 (i32, i8*, ...) @ok(i32 %50, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  %52 = bitcast %struct.TYPE_6__** %2 to i32*
  %53 = call i64 @pNetWkstaUserGetInfo(i32* null, i32 1, i32* %52)
  %54 = load i64, i64* @NERR_Success, align 8
  %55 = icmp eq i64 %53, %54
  %56 = zext i1 %55 to i32
  %57 = call i32 (i32, i8*, ...) @ok(i32 %56, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0))
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 5
  %63 = load i32, i32* %62, align 4
  %64 = call i64 @lstrcmpW(i32 %60, i32 %63)
  %65 = icmp eq i64 %64, 0
  %66 = zext i1 %65 to i32
  %67 = call i32 (i32, i8*, ...) @ok(i32 %66, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0))
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %69 = call i32 @pNetApiBufferSize(%struct.TYPE_6__* %68, i32* %4)
  %70 = load i32, i32* %4, align 4
  %71 = sext i32 %70 to i64
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 4
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @lstrlenW(i32 %74)
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @lstrlenW(i32 %78)
  %80 = add nsw i32 %75, %79
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @lstrlenW(i32 %83)
  %85 = add nsw i32 %80, %84
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @lstrlenW(i32 %88)
  %90 = add nsw i32 %85, %89
  %91 = sext i32 %90 to i64
  %92 = mul i64 %91, 4
  %93 = add i64 4, %92
  %94 = icmp uge i64 %71, %93
  %95 = zext i1 %94 to i32
  %96 = call i32 (i32, i8*, ...) @ok(i32 %95, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  %97 = bitcast %struct.TYPE_6__** %3 to i32*
  %98 = call i64 @pNetWkstaUserGetInfo(i32* null, i32 1101, i32* %97)
  %99 = load i64, i64* @NERR_Success, align 8
  %100 = icmp eq i64 %98, %99
  %101 = zext i1 %100 to i32
  %102 = call i32 (i32, i8*, ...) @ok(i32 %101, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0))
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = call i64 @lstrcmpW(i32 %105, i32 %108)
  %110 = icmp eq i64 %109, 0
  %111 = zext i1 %110 to i32
  %112 = call i32 (i32, i8*, ...) @ok(i32 %111, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.6, i64 0, i64 0))
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %114 = call i32 @pNetApiBufferSize(%struct.TYPE_6__* %113, i32* %4)
  %115 = load i32, i32* %4, align 4
  %116 = sext i32 %115 to i64
  %117 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @lstrlenW(i32 %119)
  %121 = sext i32 %120 to i64
  %122 = mul i64 %121, 4
  %123 = add i64 4, %122
  %124 = icmp uge i64 %116, %123
  %125 = zext i1 %124 to i32
  %126 = call i32 (i32, i8*, ...) @ok(i32 %125, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  %127 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %128 = call i32 @pNetApiBufferFree(%struct.TYPE_6__* %127)
  %129 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %130 = call i32 @pNetApiBufferFree(%struct.TYPE_6__* %129)
  %131 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %132 = call i32 @pNetApiBufferFree(%struct.TYPE_6__* %131)
  %133 = bitcast %struct.TYPE_6__** %1 to i32*
  %134 = call i64 @pNetWkstaUserGetInfo(i32* null, i32 10000, i32* %133)
  %135 = load i64, i64* @ERROR_INVALID_LEVEL, align 8
  %136 = icmp eq i64 %134, %135
  %137 = zext i1 %136 to i32
  %138 = call i32 (i32, i8*, ...) @ok(i32 %137, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0))
  br label %139

139:                                              ; preds = %28, %27, %11
  ret void
}

declare dso_local i64 @pNetWkstaUserGetInfo(i32*, i32, i32*) #1

declare dso_local i32 @skip(i8*) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i64 @lstrcmpW(i32, i32) #1

declare dso_local i32 @pNetApiBufferSize(%struct.TYPE_6__*, i32*) #1

declare dso_local i32 @lstrlenW(i32) #1

declare dso_local i32 @pNetApiBufferFree(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
