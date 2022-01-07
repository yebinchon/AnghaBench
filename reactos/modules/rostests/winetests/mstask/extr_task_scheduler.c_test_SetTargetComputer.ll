; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/mstask/extr_task_scheduler.c_test_SetTargetComputer.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/mstask/extr_task_scheduler.c_test_SetTargetComputer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_COMPUTERNAME_LENGTH = common dso_local global i32 0, align 4
@CLSID_CTaskScheduler = common dso_local global i32 0, align 4
@CLSCTX_INPROC_SERVER = common dso_local global i32 0, align 4
@IID_ITaskScheduler = common dso_local global i32 0, align 4
@test_task_scheduler = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [46 x i8] c"CTaskScheduler CoCreateInstance failed: %08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"Failed to create task scheduler.  Skipping tests.\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"got 0x%x and %s (expected S_OK)\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"got 0x%x (expected S_OK)\0A\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"got 0x%x with %s (expected S_OK and %s)\0A\00", align 1
@does_not_existW = common dso_local global i8* null, align 8
@ERROR_BAD_NETPATH = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [32 x i8] c"got 0x%x (expected 0x80070035)\0A\00", align 1
@E_ACCESSDENIED = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [67 x i8] c"SetTargetComputer failed with E_ACCESSDENIED (needs admin rights)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_SetTargetComputer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_SetTargetComputer() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = load i32, i32* @MAX_COMPUTERNAME_LENGTH, align 4
  %9 = add nsw i32 %8, 3
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %1, align 8
  %12 = alloca i8, i64 %10, align 16
  store i64 %10, i64* %2, align 8
  %13 = load i32, i32* @MAX_COMPUTERNAME_LENGTH, align 4
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* %3, align 4
  store i8* null, i8** %4, align 8
  store i8* null, i8** %5, align 8
  %15 = getelementptr inbounds i8, i8* %12, i64 0
  store i8 92, i8* %15, align 16
  %16 = getelementptr inbounds i8, i8* %12, i64 1
  store i8 92, i8* %16, align 1
  %17 = getelementptr inbounds i8, i8* %12, i64 2
  %18 = call i32 @GetComputerNameW(i8* %17, i32* %3)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %0
  store i32 1, i32* %7, align 4
  br label %152

21:                                               ; preds = %0
  %22 = load i32, i32* @CLSCTX_INPROC_SERVER, align 4
  %23 = call i64 @CoCreateInstance(i32* @CLSID_CTaskScheduler, i32* null, i32 %22, i32* @IID_ITaskScheduler, i8** bitcast (i32* @test_task_scheduler to i8**))
  store i64 %23, i64* %6, align 8
  %24 = load i64, i64* %6, align 8
  %25 = load i64, i64* @S_OK, align 8
  %26 = icmp eq i64 %24, %25
  %27 = zext i1 %26 to i32
  %28 = load i64, i64* %6, align 8
  %29 = call i32 (i32, i8*, i64, ...) @ok(i32 %27, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i64 %28)
  %30 = load i64, i64* %6, align 8
  %31 = load i64, i64* @S_OK, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %21
  %34 = call i32 @skip(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %7, align 4
  br label %152

35:                                               ; preds = %21
  %36 = load i32, i32* @test_task_scheduler, align 4
  %37 = call i64 @ITaskScheduler_GetTargetComputer(i32 %36, i8** %4)
  store i64 %37, i64* %6, align 8
  %38 = load i64, i64* %6, align 8
  %39 = load i64, i64* @S_OK, align 8
  %40 = icmp eq i64 %38, %39
  %41 = zext i1 %40 to i32
  %42 = load i64, i64* %6, align 8
  %43 = load i8*, i8** %4, align 8
  %44 = call i32 @wine_dbgstr_w(i8* %43)
  %45 = call i32 (i32, i8*, i64, ...) @ok(i32 %41, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i64 %42, i32 %44)
  %46 = load i32, i32* @test_task_scheduler, align 4
  %47 = call i64 @ITaskScheduler_SetTargetComputer(i32 %46, i8* null)
  store i64 %47, i64* %6, align 8
  %48 = load i64, i64* %6, align 8
  %49 = load i64, i64* @S_OK, align 8
  %50 = icmp eq i64 %48, %49
  %51 = zext i1 %50 to i32
  %52 = load i64, i64* %6, align 8
  %53 = call i32 (i32, i8*, i64, ...) @ok(i32 %51, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i64 %52)
  %54 = load i32, i32* @test_task_scheduler, align 4
  %55 = call i64 @ITaskScheduler_GetTargetComputer(i32 %54, i8** %5)
  store i64 %55, i64* %6, align 8
  %56 = load i64, i64* %6, align 8
  %57 = load i64, i64* @S_OK, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %64

59:                                               ; preds = %35
  %60 = load i8*, i8** %5, align 8
  %61 = call i32 @lstrcmpiW(i8* %60, i8* %12)
  %62 = icmp ne i32 %61, 0
  %63 = xor i1 %62, true
  br label %64

64:                                               ; preds = %59, %35
  %65 = phi i1 [ false, %35 ], [ %63, %59 ]
  %66 = zext i1 %65 to i32
  %67 = load i64, i64* %6, align 8
  %68 = load i8*, i8** %5, align 8
  %69 = call i32 @wine_dbgstr_w(i8* %68)
  %70 = call i32 @wine_dbgstr_w(i8* %12)
  %71 = call i32 (i32, i8*, i64, ...) @ok(i32 %66, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i64 %67, i32 %69, i32 %70)
  %72 = load i8*, i8** %5, align 8
  %73 = call i32 @CoTaskMemFree(i8* %72)
  %74 = load i32, i32* @test_task_scheduler, align 4
  %75 = load i8*, i8** @does_not_existW, align 8
  %76 = call i64 @ITaskScheduler_SetTargetComputer(i32 %74, i8* %75)
  store i64 %76, i64* %6, align 8
  %77 = load i64, i64* %6, align 8
  %78 = load i32, i32* @ERROR_BAD_NETPATH, align 4
  %79 = call i64 @HRESULT_FROM_WIN32(i32 %78)
  %80 = icmp eq i64 %77, %79
  %81 = zext i1 %80 to i32
  %82 = load i64, i64* %6, align 8
  %83 = call i32 (i32, i8*, i64, ...) @ok(i32 %81, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i64 %82)
  %84 = load i32, i32* @test_task_scheduler, align 4
  %85 = call i64 @ITaskScheduler_GetTargetComputer(i32 %84, i8** %5)
  store i64 %85, i64* %6, align 8
  %86 = load i64, i64* %6, align 8
  %87 = load i64, i64* @S_OK, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %94

89:                                               ; preds = %64
  %90 = load i8*, i8** %5, align 8
  %91 = call i32 @lstrcmpiW(i8* %90, i8* %12)
  %92 = icmp ne i32 %91, 0
  %93 = xor i1 %92, true
  br label %94

94:                                               ; preds = %89, %64
  %95 = phi i1 [ false, %64 ], [ %93, %89 ]
  %96 = zext i1 %95 to i32
  %97 = load i64, i64* %6, align 8
  %98 = load i8*, i8** %5, align 8
  %99 = call i32 @wine_dbgstr_w(i8* %98)
  %100 = call i32 @wine_dbgstr_w(i8* %12)
  %101 = call i32 (i32, i8*, i64, ...) @ok(i32 %96, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i64 %97, i32 %99, i32 %100)
  %102 = load i8*, i8** %5, align 8
  %103 = call i32 @CoTaskMemFree(i8* %102)
  %104 = load i32, i32* @test_task_scheduler, align 4
  %105 = load i8*, i8** %4, align 8
  %106 = getelementptr inbounds i8, i8* %105, i64 2
  %107 = call i64 @ITaskScheduler_SetTargetComputer(i32 %104, i8* %106)
  store i64 %107, i64* %6, align 8
  %108 = load i64, i64* %6, align 8
  %109 = load i64, i64* @E_ACCESSDENIED, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %111, label %113

111:                                              ; preds = %94
  %112 = call i32 @skip(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.6, i64 0, i64 0))
  br label %147

113:                                              ; preds = %94
  %114 = load i64, i64* %6, align 8
  %115 = load i64, i64* @S_OK, align 8
  %116 = icmp eq i64 %114, %115
  %117 = zext i1 %116 to i32
  %118 = load i64, i64* %6, align 8
  %119 = call i32 (i32, i8*, i64, ...) @ok(i32 %117, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i64 %118)
  %120 = call i32 @CharUpperW(i8* %12)
  %121 = load i32, i32* @test_task_scheduler, align 4
  %122 = call i64 @ITaskScheduler_SetTargetComputer(i32 %121, i8* %12)
  store i64 %122, i64* %6, align 8
  %123 = load i64, i64* %6, align 8
  %124 = load i64, i64* @S_OK, align 8
  %125 = icmp eq i64 %123, %124
  %126 = zext i1 %125 to i32
  %127 = load i64, i64* %6, align 8
  %128 = call i32 (i32, i8*, i64, ...) @ok(i32 %126, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i64 %127)
  %129 = call i32 @CharLowerW(i8* %12)
  %130 = load i32, i32* @test_task_scheduler, align 4
  %131 = call i64 @ITaskScheduler_SetTargetComputer(i32 %130, i8* %12)
  store i64 %131, i64* %6, align 8
  %132 = load i64, i64* %6, align 8
  %133 = load i64, i64* @S_OK, align 8
  %134 = icmp eq i64 %132, %133
  %135 = zext i1 %134 to i32
  %136 = load i64, i64* %6, align 8
  %137 = call i32 (i32, i8*, i64, ...) @ok(i32 %135, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i64 %136)
  %138 = load i32, i32* @test_task_scheduler, align 4
  %139 = load i8*, i8** %4, align 8
  %140 = call i64 @ITaskScheduler_SetTargetComputer(i32 %138, i8* %139)
  store i64 %140, i64* %6, align 8
  %141 = load i64, i64* %6, align 8
  %142 = load i64, i64* @S_OK, align 8
  %143 = icmp eq i64 %141, %142
  %144 = zext i1 %143 to i32
  %145 = load i64, i64* %6, align 8
  %146 = call i32 (i32, i8*, i64, ...) @ok(i32 %144, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i64 %145)
  br label %147

147:                                              ; preds = %113, %111
  %148 = load i8*, i8** %4, align 8
  %149 = call i32 @CoTaskMemFree(i8* %148)
  %150 = load i32, i32* @test_task_scheduler, align 4
  %151 = call i32 @ITaskScheduler_Release(i32 %150)
  store i32 1, i32* %7, align 4
  br label %152

152:                                              ; preds = %147, %33, %20
  %153 = load i8*, i8** %1, align 8
  call void @llvm.stackrestore(i8* %153)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @GetComputerNameW(i8*, i32*) #2

declare dso_local i64 @CoCreateInstance(i32*, i32*, i32, i32*, i8**) #2

declare dso_local i32 @ok(i32, i8*, i64, ...) #2

declare dso_local i32 @skip(i8*) #2

declare dso_local i64 @ITaskScheduler_GetTargetComputer(i32, i8**) #2

declare dso_local i32 @wine_dbgstr_w(i8*) #2

declare dso_local i64 @ITaskScheduler_SetTargetComputer(i32, i8*) #2

declare dso_local i32 @lstrcmpiW(i8*, i8*) #2

declare dso_local i32 @CoTaskMemFree(i8*) #2

declare dso_local i64 @HRESULT_FROM_WIN32(i32) #2

declare dso_local i32 @CharUpperW(i8*) #2

declare dso_local i32 @CharLowerW(i8*) #2

declare dso_local i32 @ITaskScheduler_Release(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
