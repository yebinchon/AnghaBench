; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/wscript/extr_run.c_run_script_file.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/wscript/extr_run.c_run_script_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32 }

@MAX_PATH = common dso_local global i32 0, align 4
@__const.run_script_file.si = private unnamed_addr constant %struct.TYPE_5__ { i32 4 }, align 4
@script_name = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [26 x i8] c"wscript.exe %s arg1 2 ar3\00", align 1
@reportSuccess = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"script.exe is not available\0A\00", align 1
@wscript_process = common dso_local global i32 0, align 4
@INFINITE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"GetExitCodeProcess failed: %u\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"exit_code = %u, expected %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @run_script_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @run_script_file(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_5__, align 4
  %8 = alloca %struct.TYPE_6__, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load i32, i32* @MAX_PATH, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %5, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %6, align 8
  %16 = bitcast %struct.TYPE_5__* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %16, i8* align 4 bitcast (%struct.TYPE_5__* @__const.run_script_file.si to i8*), i64 4, i1 false)
  %17 = load i8*, i8** %3, align 8
  store i8* %17, i8** @script_name, align 8
  %18 = load i8*, i8** %3, align 8
  %19 = call i32 @sprintf(i8* %15, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* %18)
  %20 = load i32, i32* @reportSuccess, align 4
  %21 = call i32 @SET_EXPECT(i32 %20)
  %22 = load i32, i32* @TRUE, align 4
  %23 = call i64 @CreateProcessA(i32* null, i8* %15, i32* null, i32* null, i32 %22, i32 0, i32* null, i32* null, %struct.TYPE_5__* %7, %struct.TYPE_6__* %8)
  store i64 %23, i64* %10, align 8
  %24 = load i64, i64* %10, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %2
  %27 = call i32 @win_skip(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %28 = load i32, i32* @reportSuccess, align 4
  %29 = call i32 @CLEAR_CALLED(i32 %28)
  store i32 1, i32* %11, align 4
  br label %59

30:                                               ; preds = %2
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* @wscript_process, align 4
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @INFINITE, align 4
  %36 = call i32 @WaitForSingleObject(i32 %34, i32 %35)
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @GetExitCodeProcess(i32 %38, i32* %9)
  store i64 %39, i64* %10, align 8
  %40 = load i64, i64* %10, align 8
  %41 = trunc i64 %40 to i32
  %42 = call i32 (...) @GetLastError()
  %43 = call i32 (i32, i8*, i32, ...) @ok(i32 %41, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %42)
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* %4, align 4
  %46 = icmp eq i32 %44, %45
  %47 = zext i1 %46 to i32
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* %4, align 4
  %50 = call i32 (i32, i8*, i32, ...) @ok(i32 %47, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %48, i32 %49)
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @CloseHandle(i32 %52)
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @CloseHandle(i32 %55)
  %57 = load i32, i32* @reportSuccess, align 4
  %58 = call i32 @CHECK_CALLED(i32 %57)
  store i32 0, i32* %11, align 4
  br label %59

59:                                               ; preds = %30, %26
  %60 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %60)
  %61 = load i32, i32* %11, align 4
  switch i32 %61, label %63 [
    i32 0, label %62
    i32 1, label %62
  ]

62:                                               ; preds = %59, %59
  ret void

63:                                               ; preds = %59
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @sprintf(i8*, i8*, i8*) #3

declare dso_local i32 @SET_EXPECT(i32) #3

declare dso_local i64 @CreateProcessA(i32*, i8*, i32*, i32*, i32, i32, i32*, i32*, %struct.TYPE_5__*, %struct.TYPE_6__*) #3

declare dso_local i32 @win_skip(i8*) #3

declare dso_local i32 @CLEAR_CALLED(i32) #3

declare dso_local i32 @WaitForSingleObject(i32, i32) #3

declare dso_local i64 @GetExitCodeProcess(i32, i32*) #3

declare dso_local i32 @ok(i32, i8*, i32, ...) #3

declare dso_local i32 @GetLastError(...) #3

declare dso_local i32 @CloseHandle(i32) #3

declare dso_local i32 @CHECK_CALLED(i32) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
