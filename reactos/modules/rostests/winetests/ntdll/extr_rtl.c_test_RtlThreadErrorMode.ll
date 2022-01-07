; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/ntdll/extr_rtl.c_test_RtlThreadErrorMode.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/ntdll/extr_rtl.c_test_RtlThreadErrorMode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@STATUS_WAIT_1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"RtlSetThreadErrorMode failed with error 0x%08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [57 x i8] c"RtlSetThreadErrorMode returned mode 0x%x, expected 0x%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [52 x i8] c"RtlGetThreadErrorMode returned 0x%x, expected 0x%x\0A\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"The TEB contains 0x%x, expected 0x%x\0A\00", align 1
@.str.4 = private unnamed_addr constant [57 x i8] c"RtlSetThreadErrorMode(%x,NULL) failed with error 0x%08x\0A\00", align 1
@STATUS_INVALID_PARAMETER_1 = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [84 x i8] c"RtlSetThreadErrorMode(%x,NULL) returns 0x%08x, expected STATUS_INVALID_PARAMETER_1\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_RtlThreadErrorMode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_RtlThreadErrorMode() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = call i32 (...) @GetCurrentProcess()
  %6 = call i32 @pIsWow64Process(i32 %5, i32* %2)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %0
  %9 = load i32, i32* @FALSE, align 4
  store i32 %9, i32* %2, align 4
  br label %10

10:                                               ; preds = %8, %0
  %11 = call i32 (...) @pRtlGetThreadErrorMode()
  store i32 %11, i32* %1, align 4
  %12 = call i32 @pRtlSetThreadErrorMode(i32 112, i32* %3)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @STATUS_SUCCESS, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %20, label %16

16:                                               ; preds = %10
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @STATUS_WAIT_1, align 4
  %19 = icmp eq i32 %17, %18
  br label %20

20:                                               ; preds = %16, %10
  %21 = phi i1 [ true, %10 ], [ %19, %16 ]
  %22 = zext i1 %21 to i32
  %23 = load i32, i32* %4, align 4
  %24 = call i32 (i32, i8*, i32, ...) @ok(i32 %22, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* %1, align 4
  %27 = icmp eq i32 %25, %26
  %28 = zext i1 %27 to i32
  %29 = load i32, i32* %3, align 4
  %30 = load i32, i32* %1, align 4
  %31 = call i32 (i32, i8*, i32, ...) @ok(i32 %28, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0), i32 %29, i32 %30)
  %32 = call i32 (...) @pRtlGetThreadErrorMode()
  %33 = icmp eq i32 %32, 112
  %34 = zext i1 %33 to i32
  %35 = load i32, i32* %3, align 4
  %36 = call i32 (i32, i8*, i32, ...) @ok(i32 %34, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0), i32 %35, i32 112)
  %37 = load i32, i32* %2, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %49, label %39

39:                                               ; preds = %20
  %40 = call %struct.TYPE_2__* (...) @NtCurrentTeb()
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp eq i32 %42, 112
  %44 = zext i1 %43 to i32
  %45 = call %struct.TYPE_2__* (...) @NtCurrentTeb()
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 (i32, i8*, i32, ...) @ok(i32 %44, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i32 %47, i32 112)
  br label %49

49:                                               ; preds = %39, %20
  %50 = call i32 @pRtlSetThreadErrorMode(i32 0, i32* %3)
  store i32 %50, i32* %4, align 4
  %51 = load i32, i32* %4, align 4
  %52 = load i32, i32* @STATUS_SUCCESS, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %58, label %54

54:                                               ; preds = %49
  %55 = load i32, i32* %4, align 4
  %56 = load i32, i32* @STATUS_WAIT_1, align 4
  %57 = icmp eq i32 %55, %56
  br label %58

58:                                               ; preds = %54, %49
  %59 = phi i1 [ true, %49 ], [ %57, %54 ]
  %60 = zext i1 %59 to i32
  %61 = load i32, i32* %4, align 4
  %62 = call i32 (i32, i8*, i32, ...) @ok(i32 %60, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %61)
  %63 = load i32, i32* %3, align 4
  %64 = icmp eq i32 %63, 112
  %65 = zext i1 %64 to i32
  %66 = load i32, i32* %3, align 4
  %67 = call i32 (i32, i8*, i32, ...) @ok(i32 %65, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0), i32 %66, i32 112)
  %68 = call i32 (...) @pRtlGetThreadErrorMode()
  %69 = icmp eq i32 %68, 0
  %70 = zext i1 %69 to i32
  %71 = load i32, i32* %3, align 4
  %72 = call i32 (i32, i8*, i32, ...) @ok(i32 %70, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0), i32 %71, i32 0)
  %73 = load i32, i32* %2, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %85, label %75

75:                                               ; preds = %58
  %76 = call %struct.TYPE_2__* (...) @NtCurrentTeb()
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = icmp eq i32 %78, 0
  %80 = zext i1 %79 to i32
  %81 = call %struct.TYPE_2__* (...) @NtCurrentTeb()
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 (i32, i8*, i32, ...) @ok(i32 %80, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i32 %83, i32 0)
  br label %85

85:                                               ; preds = %75, %58
  store i32 1, i32* %3, align 4
  br label %86

86:                                               ; preds = %118, %85
  %87 = load i32, i32* %3, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %121

89:                                               ; preds = %86
  %90 = load i32, i32* %3, align 4
  %91 = call i32 @pRtlSetThreadErrorMode(i32 %90, i32* null)
  store i32 %91, i32* %4, align 4
  %92 = load i32, i32* %3, align 4
  %93 = and i32 %92, 112
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %109

95:                                               ; preds = %89
  %96 = load i32, i32* %4, align 4
  %97 = load i32, i32* @STATUS_SUCCESS, align 4
  %98 = icmp eq i32 %96, %97
  br i1 %98, label %103, label %99

99:                                               ; preds = %95
  %100 = load i32, i32* %4, align 4
  %101 = load i32, i32* @STATUS_WAIT_1, align 4
  %102 = icmp eq i32 %100, %101
  br label %103

103:                                              ; preds = %99, %95
  %104 = phi i1 [ true, %95 ], [ %102, %99 ]
  %105 = zext i1 %104 to i32
  %106 = load i32, i32* %3, align 4
  %107 = load i32, i32* %4, align 4
  %108 = call i32 (i32, i8*, i32, ...) @ok(i32 %105, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.4, i64 0, i64 0), i32 %106, i32 %107)
  br label %117

109:                                              ; preds = %89
  %110 = load i32, i32* %4, align 4
  %111 = load i32, i32* @STATUS_INVALID_PARAMETER_1, align 4
  %112 = icmp eq i32 %110, %111
  %113 = zext i1 %112 to i32
  %114 = load i32, i32* %3, align 4
  %115 = load i32, i32* %4, align 4
  %116 = call i32 (i32, i8*, i32, ...) @ok(i32 %113, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.5, i64 0, i64 0), i32 %114, i32 %115)
  br label %117

117:                                              ; preds = %109, %103
  br label %118

118:                                              ; preds = %117
  %119 = load i32, i32* %3, align 4
  %120 = shl i32 %119, 1
  store i32 %120, i32* %3, align 4
  br label %86

121:                                              ; preds = %86
  %122 = load i32, i32* %1, align 4
  %123 = call i32 @pRtlSetThreadErrorMode(i32 %122, i32* null)
  ret void
}

declare dso_local i32 @pIsWow64Process(i32, i32*) #1

declare dso_local i32 @GetCurrentProcess(...) #1

declare dso_local i32 @pRtlGetThreadErrorMode(...) #1

declare dso_local i32 @pRtlSetThreadErrorMode(i32, i32*) #1

declare dso_local i32 @ok(i32, i8*, i32, ...) #1

declare dso_local %struct.TYPE_2__* @NtCurrentTeb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
