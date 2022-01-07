; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/localspl/extr_localmon.c_test_XcvDataPort_MonitorUI.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/localspl/extr_localmon.c_test_XcvDataPort_MonitorUI.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_PATH = common dso_local global i32 0, align 4
@hXcv = common dso_local global i32* null, align 8
@cmd_MonitorUIW = common dso_local global i32* null, align 8
@ERROR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"'MonitorUI' nor supported\0A\00", align 1
@ERROR_INSUFFICIENT_BUFFER = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [88 x i8] c"returned %d with %u and 0x%x (expected 'ERROR_INSUFFICIENT_BUFFER'  and '<= MAX_PATH')\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"buffer overflow (%u)\0A\00", align 1
@emptyW = common dso_local global i32* null, align 8
@.str.3 = private unnamed_addr constant [67 x i8] c"returned %d with %u and 0x%x (expected 'ERROR_INVALID_PARAMETER')\0A\00", align 1
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [57 x i8] c"returned %d with %u and 0x%x (expected 'ERROR_SUCCESS')\0A\00", align 1
@cmd_MonitorUI_lcaseW = common dso_local global i32* null, align 8
@.str.5 = private unnamed_addr constant [69 x i8] c"returned %d with %u and 0x%x (expected 'ERROR_INSUFFICIENT_BUFFER')\0A\00", align 1
@hXcv_noaccess = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_XcvDataPort_MonitorUI to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_XcvDataPort_MonitorUI() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = load i32, i32* @MAX_PATH, align 4
  %8 = add nsw i32 %7, 2
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %2, align 8
  %11 = alloca i32, i64 %9, align 16
  store i64 %9, i64* %3, align 8
  store i64 3735928559, i64* %4, align 8
  %12 = call i32 @SetLastError(i32 -559038737)
  %13 = load i32*, i32** @hXcv, align 8
  %14 = load i32*, i32** @cmd_MonitorUIW, align 8
  %15 = call i64 @pXcvDataPort(i32* %13, i32* %14, i32* null, i32 0, i32* null, i32 0, i64* %4)
  store i64 %15, i64* %1, align 8
  %16 = load i64, i64* %1, align 8
  %17 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %0
  %20 = call i32 (i8*, ...) @skip(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %6, align 4
  br label %153

21:                                               ; preds = %0
  %22 = load i64, i64* %1, align 8
  %23 = load i64, i64* @ERROR_INSUFFICIENT_BUFFER, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %30

25:                                               ; preds = %21
  %26 = load i64, i64* %4, align 8
  %27 = load i32, i32* @MAX_PATH, align 4
  %28 = sext i32 %27 to i64
  %29 = icmp sle i64 %26, %28
  br label %30

30:                                               ; preds = %25, %21
  %31 = phi i1 [ false, %21 ], [ %29, %25 ]
  %32 = zext i1 %31 to i32
  %33 = load i64, i64* %1, align 8
  %34 = call i32 (...) @GetLastError()
  %35 = load i64, i64* %4, align 8
  %36 = call i32 @ok(i32 %32, i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.1, i64 0, i64 0), i64 %33, i32 %34, i64 %35)
  %37 = load i64, i64* %4, align 8
  %38 = load i32, i32* @MAX_PATH, align 4
  %39 = sext i32 %38 to i64
  %40 = icmp sgt i64 %37, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %30
  %42 = load i64, i64* %4, align 8
  %43 = call i32 (i8*, ...) @skip(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i64 %42)
  store i32 1, i32* %6, align 4
  br label %153

44:                                               ; preds = %30
  %45 = load i64, i64* %4, align 8
  store i64 %45, i64* %5, align 8
  store i64 3735928559, i64* %4, align 8
  %46 = call i32 @SetLastError(i32 -559038737)
  %47 = load i32*, i32** @hXcv, align 8
  %48 = load i32*, i32** @emptyW, align 8
  %49 = call i64 @pXcvDataPort(i32* %47, i32* %48, i32* null, i32 0, i32* null, i32 0, i64* %4)
  store i64 %49, i64* %1, align 8
  %50 = load i64, i64* %1, align 8
  %51 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  %52 = icmp eq i64 %50, %51
  %53 = zext i1 %52 to i32
  %54 = load i64, i64* %1, align 8
  %55 = call i32 (...) @GetLastError()
  %56 = load i64, i64* %4, align 8
  %57 = call i32 @ok(i32 %53, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.3, i64 0, i64 0), i64 %54, i32 %55, i64 %56)
  store i64 3735928559, i64* %4, align 8
  %58 = call i32 @SetLastError(i32 -559038737)
  %59 = load i32*, i32** @cmd_MonitorUIW, align 8
  %60 = load i64, i64* %5, align 8
  %61 = trunc i64 %60 to i32
  %62 = call i64 @pXcvDataPort(i32* null, i32* %59, i32* null, i32 0, i32* %11, i32 %61, i64* %4)
  store i64 %62, i64* %1, align 8
  %63 = load i64, i64* %1, align 8
  %64 = load i64, i64* @ERROR_SUCCESS, align 8
  %65 = icmp eq i64 %63, %64
  %66 = zext i1 %65 to i32
  %67 = load i64, i64* %1, align 8
  %68 = call i32 (...) @GetLastError()
  %69 = load i64, i64* %4, align 8
  %70 = call i32 @ok(i32 %66, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.4, i64 0, i64 0), i64 %67, i32 %68, i64 %69)
  %71 = load i64, i64* %5, align 8
  %72 = call i32 @memset(i32* %11, i32 0, i64 %71)
  store i64 3735928559, i64* %4, align 8
  %73 = call i32 @SetLastError(i32 -559038737)
  %74 = load i32*, i32** @hXcv, align 8
  %75 = load i32*, i32** @cmd_MonitorUI_lcaseW, align 8
  %76 = load i64, i64* %5, align 8
  %77 = trunc i64 %76 to i32
  %78 = call i64 @pXcvDataPort(i32* %74, i32* %75, i32* null, i32 0, i32* %11, i32 %77, i64* %4)
  store i64 %78, i64* %1, align 8
  %79 = load i64, i64* %1, align 8
  %80 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  %81 = icmp eq i64 %79, %80
  %82 = zext i1 %81 to i32
  %83 = load i64, i64* %1, align 8
  %84 = call i32 (...) @GetLastError()
  %85 = load i64, i64* %4, align 8
  %86 = call i32 @ok(i32 %82, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.3, i64 0, i64 0), i64 %83, i32 %84, i64 %85)
  store i64 3735928559, i64* %4, align 8
  %87 = call i32 @SetLastError(i32 -559038737)
  %88 = load i32*, i32** @hXcv, align 8
  %89 = load i32*, i32** @cmd_MonitorUIW, align 8
  %90 = load i64, i64* %5, align 8
  %91 = add nsw i64 %90, 1
  %92 = trunc i64 %91 to i32
  %93 = call i64 @pXcvDataPort(i32* %88, i32* %89, i32* null, i32 0, i32* %11, i32 %92, i64* %4)
  store i64 %93, i64* %1, align 8
  %94 = load i64, i64* %1, align 8
  %95 = load i64, i64* @ERROR_SUCCESS, align 8
  %96 = icmp eq i64 %94, %95
  %97 = zext i1 %96 to i32
  %98 = load i64, i64* %1, align 8
  %99 = call i32 (...) @GetLastError()
  %100 = load i64, i64* %4, align 8
  %101 = call i32 @ok(i32 %97, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.4, i64 0, i64 0), i64 %98, i32 %99, i64 %100)
  store i64 3735928559, i64* %4, align 8
  %102 = call i32 @SetLastError(i32 -559038737)
  %103 = load i32*, i32** @hXcv, align 8
  %104 = load i32*, i32** @cmd_MonitorUIW, align 8
  %105 = load i64, i64* %5, align 8
  %106 = sub nsw i64 %105, 1
  %107 = trunc i64 %106 to i32
  %108 = call i64 @pXcvDataPort(i32* %103, i32* %104, i32* null, i32 0, i32* %11, i32 %107, i64* %4)
  store i64 %108, i64* %1, align 8
  %109 = load i64, i64* %1, align 8
  %110 = load i64, i64* @ERROR_INSUFFICIENT_BUFFER, align 8
  %111 = icmp eq i64 %109, %110
  %112 = zext i1 %111 to i32
  %113 = load i64, i64* %1, align 8
  %114 = call i32 (...) @GetLastError()
  %115 = load i64, i64* %4, align 8
  %116 = call i32 @ok(i32 %112, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.5, i64 0, i64 0), i64 %113, i32 %114, i64 %115)
  %117 = load i64, i64* %5, align 8
  %118 = call i32 @memset(i32* %11, i32 0, i64 %117)
  store i64 3735928559, i64* %4, align 8
  %119 = call i32 @SetLastError(i32 -559038737)
  %120 = load i32*, i32** @hXcv, align 8
  %121 = load i32*, i32** @cmd_MonitorUIW, align 8
  %122 = load i64, i64* %5, align 8
  %123 = trunc i64 %122 to i32
  %124 = call i64 @pXcvDataPort(i32* %120, i32* %121, i32* null, i32 0, i32* %11, i32 %123, i64* %4)
  store i64 %124, i64* %1, align 8
  %125 = load i64, i64* %1, align 8
  %126 = load i64, i64* @ERROR_SUCCESS, align 8
  %127 = icmp eq i64 %125, %126
  %128 = zext i1 %127 to i32
  %129 = load i64, i64* %1, align 8
  %130 = call i32 (...) @GetLastError()
  %131 = load i64, i64* %4, align 8
  %132 = call i32 @ok(i32 %128, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.4, i64 0, i64 0), i64 %129, i32 %130, i64 %131)
  %133 = load i32*, i32** @hXcv_noaccess, align 8
  %134 = icmp ne i32* %133, null
  br i1 %134, label %136, label %135

135:                                              ; preds = %44
  store i32 1, i32* %6, align 4
  br label %153

136:                                              ; preds = %44
  %137 = load i64, i64* %5, align 8
  %138 = call i32 @memset(i32* %11, i32 0, i64 %137)
  store i64 3735928559, i64* %4, align 8
  %139 = call i32 @SetLastError(i32 -559038737)
  %140 = load i32*, i32** @hXcv_noaccess, align 8
  %141 = load i32*, i32** @cmd_MonitorUIW, align 8
  %142 = mul nuw i64 4, %9
  %143 = trunc i64 %142 to i32
  %144 = call i64 @pXcvDataPort(i32* %140, i32* %141, i32* null, i32 0, i32* %11, i32 %143, i64* %4)
  store i64 %144, i64* %1, align 8
  %145 = load i64, i64* %1, align 8
  %146 = load i64, i64* @ERROR_SUCCESS, align 8
  %147 = icmp eq i64 %145, %146
  %148 = zext i1 %147 to i32
  %149 = load i64, i64* %1, align 8
  %150 = call i32 (...) @GetLastError()
  %151 = load i64, i64* %4, align 8
  %152 = call i32 @ok(i32 %148, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.4, i64 0, i64 0), i64 %149, i32 %150, i64 %151)
  store i32 0, i32* %6, align 4
  br label %153

153:                                              ; preds = %136, %135, %41, %19
  %154 = load i8*, i8** %2, align 8
  call void @llvm.stackrestore(i8* %154)
  %155 = load i32, i32* %6, align 4
  switch i32 %155, label %157 [
    i32 0, label %156
    i32 1, label %156
  ]

156:                                              ; preds = %153, %153
  ret void

157:                                              ; preds = %153
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @SetLastError(i32) #2

declare dso_local i64 @pXcvDataPort(i32*, i32*, i32*, i32, i32*, i32, i64*) #2

declare dso_local i32 @skip(i8*, ...) #2

declare dso_local i32 @ok(i32, i8*, i64, i32, i64) #2

declare dso_local i32 @GetLastError(...) #2

declare dso_local i32 @memset(i32*, i32, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
