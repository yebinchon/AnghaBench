; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/cmd/extr_batch.c_run_cmd.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/cmd/extr_batch.c_run_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i64, i64, i32 }
%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.TYPE_9__ = type { i64, i64 }

@TRUE = common dso_local global i32 0, align 4
@__const.run_cmd.command = private unnamed_addr constant [9 x i8] c"test.cmd\00", align 1
@__const.run_cmd.si = private unnamed_addr constant %struct.TYPE_7__ { i32 32, i64 0, i64 0, i32 0 }, align 8
@.str = private unnamed_addr constant [9 x i8] c"test.cmd\00", align 1
@GENERIC_WRITE = common dso_local global i32 0, align 4
@CREATE_ALWAYS = common dso_local global i32 0, align 4
@FILE_ATTRIBUTE_NORMAL = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [19 x i8] c"CreateFile failed\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"Could not write to file: %u\0A\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"test.out\00", align 1
@FILE_SHARE_WRITE = common dso_local global i32 0, align 4
@FILE_SHARE_READ = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [9 x i8] c"test.err\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"CreateFile stderr failed\0A\00", align 1
@STARTF_USESTDHANDLES = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [26 x i8] c"CreateProcess failed: %u\0A\00", align 1
@INFINITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @run_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @run_cmd(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_8__, align 4
  %7 = alloca [9 x i8], align 1
  %8 = alloca %struct.TYPE_7__, align 8
  %9 = alloca %struct.TYPE_9__, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  store i32 12, i32* %14, align 4
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 1
  store i32 0, i32* %15, align 4
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 2
  %17 = load i32, i32* @TRUE, align 4
  store i32 %17, i32* %16, align 4
  %18 = bitcast [9 x i8]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %18, i8* align 1 getelementptr inbounds ([9 x i8], [9 x i8]* @__const.run_cmd.command, i32 0, i32 0), i64 9, i1 false)
  %19 = bitcast %struct.TYPE_7__* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %19, i8* align 8 bitcast (%struct.TYPE_7__* @__const.run_cmd.si to i8*), i64 32, i1 false)
  %20 = load i32, i32* @GENERIC_WRITE, align 4
  %21 = load i32, i32* @CREATE_ALWAYS, align 4
  %22 = load i32, i32* @FILE_ATTRIBUTE_NORMAL, align 4
  %23 = call i64 @CreateFileA(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %20, i32 0, %struct.TYPE_8__* null, i32 %21, i32 %22, i32* null)
  store i64 %23, i64* %10, align 8
  %24 = load i64, i64* %10, align 8
  %25 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %26 = icmp ne i64 %24, %25
  %27 = zext i1 %26 to i32
  %28 = call i32 (i32, i8*, ...) @ok(i32 %27, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %29 = load i64, i64* %10, align 8
  %30 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %2
  %33 = load i32, i32* @FALSE, align 4
  store i32 %33, i32* %3, align 4
  br label %119

34:                                               ; preds = %2
  %35 = load i64, i64* %10, align 8
  %36 = load i8*, i8** %4, align 8
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @WriteFile(i64 %35, i8* %36, i32 %37, i32* %12, i32* null)
  store i32 %38, i32* %13, align 4
  %39 = load i64, i64* %10, align 8
  %40 = call i32 @CloseHandle(i64 %39)
  %41 = load i32, i32* %13, align 4
  %42 = call i32 (...) @GetLastError()
  %43 = call i32 (i32, i8*, ...) @ok(i32 %41, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %42)
  %44 = load i32, i32* %13, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %34
  %47 = load i32, i32* @FALSE, align 4
  store i32 %47, i32* %3, align 4
  br label %119

48:                                               ; preds = %34
  %49 = load i32, i32* @GENERIC_WRITE, align 4
  %50 = load i32, i32* @FILE_SHARE_WRITE, align 4
  %51 = load i32, i32* @FILE_SHARE_READ, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* @CREATE_ALWAYS, align 4
  %54 = load i32, i32* @FILE_ATTRIBUTE_NORMAL, align 4
  %55 = call i64 @CreateFileA(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 %49, i32 %52, %struct.TYPE_8__* %6, i32 %53, i32 %54, i32* null)
  store i64 %55, i64* %10, align 8
  %56 = load i64, i64* %10, align 8
  %57 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %58 = icmp ne i64 %56, %57
  %59 = zext i1 %58 to i32
  %60 = call i32 (i32, i8*, ...) @ok(i32 %59, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %61 = load i64, i64* %10, align 8
  %62 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %48
  %65 = load i32, i32* @FALSE, align 4
  store i32 %65, i32* %3, align 4
  br label %119

66:                                               ; preds = %48
  %67 = load i32, i32* @GENERIC_WRITE, align 4
  %68 = load i32, i32* @FILE_SHARE_WRITE, align 4
  %69 = load i32, i32* @FILE_SHARE_READ, align 4
  %70 = or i32 %68, %69
  %71 = load i32, i32* @CREATE_ALWAYS, align 4
  %72 = load i32, i32* @FILE_ATTRIBUTE_NORMAL, align 4
  %73 = call i64 @CreateFileA(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 %67, i32 %70, %struct.TYPE_8__* %6, i32 %71, i32 %72, i32* null)
  store i64 %73, i64* %11, align 8
  %74 = load i64, i64* %11, align 8
  %75 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %76 = icmp ne i64 %74, %75
  %77 = zext i1 %76 to i32
  %78 = call i32 (i32, i8*, ...) @ok(i32 %77, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0))
  %79 = load i64, i64* %11, align 8
  %80 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %84

82:                                               ; preds = %66
  %83 = load i32, i32* @FALSE, align 4
  store i32 %83, i32* %3, align 4
  br label %119

84:                                               ; preds = %66
  %85 = load i32, i32* @STARTF_USESTDHANDLES, align 4
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 3
  store i32 %85, i32* %86, align 8
  %87 = load i64, i64* %10, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 2
  store i64 %87, i64* %88, align 8
  %89 = load i64, i64* %11, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 1
  store i64 %89, i64* %90, align 8
  %91 = getelementptr inbounds [9 x i8], [9 x i8]* %7, i64 0, i64 0
  %92 = load i32, i32* @TRUE, align 4
  %93 = call i32 @CreateProcessA(i32* null, i8* %91, i32* null, i32* null, i32 %92, i32 0, i32* null, i32* null, %struct.TYPE_7__* %8, %struct.TYPE_9__* %9)
  store i32 %93, i32* %13, align 4
  %94 = load i32, i32* %13, align 4
  %95 = call i32 (...) @GetLastError()
  %96 = call i32 (i32, i8*, ...) @ok(i32 %94, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i32 %95)
  %97 = load i32, i32* %13, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %102, label %99

99:                                               ; preds = %84
  %100 = call i32 @DeleteFileA(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %101 = load i32, i32* @FALSE, align 4
  store i32 %101, i32* %3, align 4
  br label %119

102:                                              ; preds = %84
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load i32, i32* @INFINITE, align 4
  %106 = call i32 @WaitForSingleObject(i64 %104, i32 %105)
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = call i32 @CloseHandle(i64 %108)
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = call i32 @CloseHandle(i64 %111)
  %113 = load i64, i64* %10, align 8
  %114 = call i32 @CloseHandle(i64 %113)
  %115 = load i64, i64* %11, align 8
  %116 = call i32 @CloseHandle(i64 %115)
  %117 = call i32 @DeleteFileA(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %118 = load i32, i32* @TRUE, align 4
  store i32 %118, i32* %3, align 4
  br label %119

119:                                              ; preds = %102, %99, %82, %64, %46, %32
  %120 = load i32, i32* %3, align 4
  ret i32 %120
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @CreateFileA(i8*, i32, i32, %struct.TYPE_8__*, i32, i32, i32*) #2

declare dso_local i32 @ok(i32, i8*, ...) #2

declare dso_local i32 @WriteFile(i64, i8*, i32, i32*, i32*) #2

declare dso_local i32 @CloseHandle(i64) #2

declare dso_local i32 @GetLastError(...) #2

declare dso_local i32 @CreateProcessA(i32*, i8*, i32*, i32*, i32, i32, i32*, i32*, %struct.TYPE_7__*, %struct.TYPE_9__*) #2

declare dso_local i32 @DeleteFileA(i8*) #2

declare dso_local i32 @WaitForSingleObject(i64, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
