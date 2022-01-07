; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/apitests/kernel32/extr_TunnelCache.c_Test_LongTests.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/apitests/kernel32/extr_TunnelCache.c_Test_LongTests.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.Test_LongTests.TestDir = private unnamed_addr constant [20 x i8] c"XTestDirTunnelCache\00", align 16
@MAX_PATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"No test directory available\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"file1\00", align 1
@GENERIC_READ = common dso_local global i32 0, align 4
@GENERIC_WRITE = common dso_local global i32 0, align 4
@CREATE_NEW = common dso_local global i32 0, align 4
@FILE_ATTRIBUTE_NORMAL = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [21 x i8] c"CreateFile() failed\0A\00", align 1
@FALSE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [22 x i8] c"GetFileTime() failed\0A\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"file2\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"file\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"MoveFile() failed\0A\00", align 1
@OPEN_EXISTING = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [21 x i8] c"Tunnel cache failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @Test_LongTests to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Test_LongTests() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca [20 x i8], align 16
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %9 = bitcast [20 x i8]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %9, i8* align 16 getelementptr inbounds ([20 x i8], [20 x i8]* @__const.Test_LongTests.TestDir, i32 0, i32 0), i64 20, i1 false)
  %10 = load i32, i32* @MAX_PATH, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %4, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %5, align 8
  %14 = load i32, i32* @MAX_PATH, align 4
  %15 = call i64 @GetCurrentDirectory(i32 %14, i8* %13)
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %0
  %18 = call i32 @win_skip(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %8, align 4
  br label %121

19:                                               ; preds = %0
  br label %20

20:                                               ; preds = %41, %19
  %21 = load i32, i32* %1, align 4
  %22 = icmp slt i32 %21, 10
  br i1 %22, label %23, label %44

23:                                               ; preds = %20
  %24 = load i32, i32* %1, align 4
  %25 = add nsw i32 48, %24
  %26 = trunc i32 %25 to i8
  %27 = getelementptr inbounds [20 x i8], [20 x i8]* %3, i64 0, i64 0
  store i8 %26, i8* %27, align 16
  %28 = getelementptr inbounds [20 x i8], [20 x i8]* %3, i64 0, i64 0
  %29 = call i64 @CreateDirectory(i8* %28, i32* null)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %23
  %32 = getelementptr inbounds [20 x i8], [20 x i8]* %3, i64 0, i64 0
  %33 = call i64 @SetCurrentDirectory(i8* %32)
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %31
  %36 = getelementptr inbounds [20 x i8], [20 x i8]* %3, i64 0, i64 0
  %37 = call i32 @RemoveDirectory(i8* %36)
  %38 = call i32 @win_skip(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %8, align 4
  br label %121

39:                                               ; preds = %31
  br label %44

40:                                               ; preds = %23
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %1, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %1, align 4
  br label %20

44:                                               ; preds = %39, %20
  %45 = load i32, i32* %1, align 4
  %46 = icmp eq i32 %45, 10
  br i1 %46, label %47, label %49

47:                                               ; preds = %44
  %48 = call i32 @win_skip(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %8, align 4
  br label %121

49:                                               ; preds = %44
  %50 = load i32, i32* @GENERIC_READ, align 4
  %51 = load i32, i32* @GENERIC_WRITE, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* @CREATE_NEW, align 4
  %54 = load i32, i32* @FILE_ATTRIBUTE_NORMAL, align 4
  %55 = call i64 @CreateFile(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %52, i32 0, i32* null, i32 %53, i32 %54, i32* null)
  store i64 %55, i64* %2, align 8
  %56 = load i64, i64* %2, align 8
  %57 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %58 = icmp ne i64 %56, %57
  %59 = zext i1 %58 to i32
  %60 = call i32 @ok(i32 %59, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %61 = load i64, i64* %2, align 8
  %62 = call i64 @GetFileTime(i64 %61, i32* %6, i32* null, i32* null)
  %63 = load i64, i64* @FALSE, align 8
  %64 = icmp ne i64 %62, %63
  %65 = zext i1 %64 to i32
  %66 = call i32 @ok(i32 %65, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %67 = load i64, i64* %2, align 8
  %68 = call i32 @CloseHandle(i64 %67)
  %69 = call i32 @Sleep(i32 1000)
  %70 = load i32, i32* @GENERIC_READ, align 4
  %71 = load i32, i32* @GENERIC_WRITE, align 4
  %72 = or i32 %70, %71
  %73 = load i32, i32* @CREATE_NEW, align 4
  %74 = load i32, i32* @FILE_ATTRIBUTE_NORMAL, align 4
  %75 = call i64 @CreateFile(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 %72, i32 0, i32* null, i32 %73, i32 %74, i32* null)
  store i64 %75, i64* %2, align 8
  %76 = load i64, i64* %2, align 8
  %77 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %78 = icmp ne i64 %76, %77
  %79 = zext i1 %78 to i32
  %80 = call i32 @ok(i32 %79, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %81 = load i64, i64* %2, align 8
  %82 = call i32 @CloseHandle(i64 %81)
  %83 = call i64 @MoveFile(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %84 = load i64, i64* @FALSE, align 8
  %85 = icmp ne i64 %83, %84
  %86 = zext i1 %85 to i32
  %87 = call i32 @ok(i32 %86, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0))
  %88 = call i64 @MoveFile(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %89 = load i64, i64* @FALSE, align 8
  %90 = icmp ne i64 %88, %89
  %91 = zext i1 %90 to i32
  %92 = call i32 @ok(i32 %91, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0))
  %93 = load i32, i32* @GENERIC_READ, align 4
  %94 = load i32, i32* @OPEN_EXISTING, align 4
  %95 = load i32, i32* @FILE_ATTRIBUTE_NORMAL, align 4
  %96 = call i64 @CreateFile(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %93, i32 0, i32* null, i32 %94, i32 %95, i32* null)
  store i64 %96, i64* %2, align 8
  %97 = load i64, i64* %2, align 8
  %98 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %99 = icmp ne i64 %97, %98
  %100 = zext i1 %99 to i32
  %101 = call i32 @ok(i32 %100, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %102 = load i64, i64* %2, align 8
  %103 = call i64 @GetFileTime(i64 %102, i32* %7, i32* null, i32* null)
  %104 = load i64, i64* @FALSE, align 8
  %105 = icmp ne i64 %103, %104
  %106 = zext i1 %105 to i32
  %107 = call i32 @ok(i32 %106, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %108 = load i64, i64* %2, align 8
  %109 = call i32 @CloseHandle(i64 %108)
  %110 = call i32 @RtlCompareMemory(i32* %6, i32* %7, i32 4)
  %111 = sext i32 %110 to i64
  %112 = icmp eq i64 %111, 4
  %113 = zext i1 %112 to i32
  %114 = call i32 @ok(i32 %113, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0))
  %115 = call i32 @DeleteFile(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %116 = call i32 @DeleteFile(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %117 = call i32 @DeleteFile(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %118 = call i64 @SetCurrentDirectory(i8* %13)
  %119 = getelementptr inbounds [20 x i8], [20 x i8]* %3, i64 0, i64 0
  %120 = call i32 @RemoveDirectory(i8* %119)
  store i32 0, i32* %8, align 4
  br label %121

121:                                              ; preds = %49, %47, %35, %17
  %122 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %122)
  %123 = load i32, i32* %8, align 4
  switch i32 %123, label %125 [
    i32 0, label %124
    i32 1, label %124
  ]

124:                                              ; preds = %121, %121
  ret void

125:                                              ; preds = %121
  unreachable
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i64 @GetCurrentDirectory(i32, i8*) #3

declare dso_local i32 @win_skip(i8*) #3

declare dso_local i64 @CreateDirectory(i8*, i32*) #3

declare dso_local i64 @SetCurrentDirectory(i8*) #3

declare dso_local i32 @RemoveDirectory(i8*) #3

declare dso_local i64 @CreateFile(i8*, i32, i32, i32*, i32, i32, i32*) #3

declare dso_local i32 @ok(i32, i8*) #3

declare dso_local i64 @GetFileTime(i64, i32*, i32*, i32*) #3

declare dso_local i32 @CloseHandle(i64) #3

declare dso_local i32 @Sleep(i32) #3

declare dso_local i64 @MoveFile(i8*, i8*) #3

declare dso_local i32 @RtlCompareMemory(i32*, i32*, i32) #3

declare dso_local i32 @DeleteFile(i8*) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
