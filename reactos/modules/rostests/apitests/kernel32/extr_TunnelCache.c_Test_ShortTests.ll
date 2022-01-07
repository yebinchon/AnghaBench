; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/apitests/kernel32/extr_TunnelCache.c_Test_ShortTests.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/apitests/kernel32/extr_TunnelCache.c_Test_ShortTests.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@__const.Test_ShortTests.TestDir = private unnamed_addr constant [20 x i8] c"XTestDirTunnelCache\00", align 16
@MAX_PATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"No test directory available\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"verylongfilename\00", align 1
@GENERIC_READ = common dso_local global i32 0, align 4
@GENERIC_WRITE = common dso_local global i32 0, align 4
@CREATE_NEW = common dso_local global i32 0, align 4
@FILE_ATTRIBUTE_NORMAL = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [21 x i8] c"CreateFile() failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"FindFirstFile() failed\0A\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"verylongfilename2\00", align 1
@FALSE = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [19 x i8] c"MoveFile() failed\0A\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"strcmp() failed\0A\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"randomfilename\00", align 1
@MOVEFILE_REPLACE_EXISTING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @Test_ShortTests to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Test_ShortTests() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [14 x i8], align 1
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_3__, align 4
  %6 = alloca [20 x i8], align 16
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %10 = bitcast [20 x i8]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %10, i8* align 16 getelementptr inbounds ([20 x i8], [20 x i8]* @__const.Test_ShortTests.TestDir, i32 0, i32 0), i64 20, i1 false)
  %11 = load i32, i32* @MAX_PATH, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %7, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %8, align 8
  %15 = load i32, i32* @MAX_PATH, align 4
  %16 = call i64 @GetCurrentDirectory(i32 %15, i8* %14)
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %0
  %19 = call i32 @win_skip(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %9, align 4
  br label %136

20:                                               ; preds = %0
  br label %21

21:                                               ; preds = %42, %20
  %22 = load i32, i32* %1, align 4
  %23 = icmp slt i32 %22, 10
  br i1 %23, label %24, label %45

24:                                               ; preds = %21
  %25 = load i32, i32* %1, align 4
  %26 = add nsw i32 48, %25
  %27 = trunc i32 %26 to i8
  %28 = getelementptr inbounds [20 x i8], [20 x i8]* %6, i64 0, i64 0
  store i8 %27, i8* %28, align 16
  %29 = getelementptr inbounds [20 x i8], [20 x i8]* %6, i64 0, i64 0
  %30 = call i64 @CreateDirectory(i8* %29, i32* null)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %41

32:                                               ; preds = %24
  %33 = getelementptr inbounds [20 x i8], [20 x i8]* %6, i64 0, i64 0
  %34 = call i64 @SetCurrentDirectory(i8* %33)
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %32
  %37 = getelementptr inbounds [20 x i8], [20 x i8]* %6, i64 0, i64 0
  %38 = call i32 @RemoveDirectory(i8* %37)
  %39 = call i32 @win_skip(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %9, align 4
  br label %136

40:                                               ; preds = %32
  br label %45

41:                                               ; preds = %24
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %1, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %1, align 4
  br label %21

45:                                               ; preds = %40, %21
  %46 = load i32, i32* %1, align 4
  %47 = icmp eq i32 %46, 10
  br i1 %47, label %48, label %50

48:                                               ; preds = %45
  %49 = call i32 @win_skip(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %9, align 4
  br label %136

50:                                               ; preds = %45
  %51 = load i32, i32* @GENERIC_READ, align 4
  %52 = load i32, i32* @GENERIC_WRITE, align 4
  %53 = or i32 %51, %52
  %54 = load i32, i32* @CREATE_NEW, align 4
  %55 = load i32, i32* @FILE_ATTRIBUTE_NORMAL, align 4
  %56 = call i64 @CreateFile(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %53, i32 0, i32* null, i32 %54, i32 %55, i32* null)
  store i64 %56, i64* %3, align 8
  %57 = load i64, i64* %3, align 8
  %58 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %59 = icmp ne i64 %57, %58
  %60 = zext i1 %59 to i32
  %61 = call i32 @ok(i32 %60, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %62 = load i64, i64* %3, align 8
  %63 = call i32 @CloseHandle(i64 %62)
  %64 = call i64 @FindFirstFile(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_3__* %5)
  store i64 %64, i64* %4, align 8
  %65 = load i64, i64* %4, align 8
  %66 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %67 = icmp ne i64 %65, %66
  %68 = zext i1 %67 to i32
  %69 = call i32 @ok(i32 %68, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %70 = load i64, i64* %4, align 8
  %71 = call i32 @FindClose(i64 %70)
  %72 = getelementptr inbounds [14 x i8], [14 x i8]* %2, i64 0, i64 0
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @RtlCopyMemory(i8* %72, i32 %74, i32 14)
  %76 = call i64 @MoveFile(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  %77 = load i64, i64* @FALSE, align 8
  %78 = icmp ne i64 %76, %77
  %79 = zext i1 %78 to i32
  %80 = call i32 @ok(i32 %79, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  %81 = call i64 @FindFirstFile(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), %struct.TYPE_3__* %5)
  store i64 %81, i64* %4, align 8
  %82 = load i64, i64* %4, align 8
  %83 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %84 = icmp ne i64 %82, %83
  %85 = zext i1 %84 to i32
  %86 = call i32 @ok(i32 %85, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %87 = load i64, i64* %4, align 8
  %88 = call i32 @FindClose(i64 %87)
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = getelementptr inbounds [14 x i8], [14 x i8]* %2, i64 0, i64 0
  %92 = call i64 @strcmp(i32 %90, i8* %91)
  %93 = icmp eq i64 %92, 0
  %94 = zext i1 %93 to i32
  %95 = call i32 @ok(i32 %94, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0))
  %96 = load i32, i32* @GENERIC_READ, align 4
  %97 = load i32, i32* @GENERIC_WRITE, align 4
  %98 = or i32 %96, %97
  %99 = load i32, i32* @CREATE_NEW, align 4
  %100 = load i32, i32* @FILE_ATTRIBUTE_NORMAL, align 4
  %101 = call i64 @CreateFile(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0), i32 %98, i32 0, i32* null, i32 %99, i32 %100, i32* null)
  store i64 %101, i64* %3, align 8
  %102 = load i64, i64* %3, align 8
  %103 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %104 = icmp ne i64 %102, %103
  %105 = zext i1 %104 to i32
  %106 = call i32 @ok(i32 %105, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %107 = load i64, i64* %3, align 8
  %108 = call i32 @CloseHandle(i64 %107)
  %109 = load i32, i32* @MOVEFILE_REPLACE_EXISTING, align 4
  %110 = call i64 @MoveFileEx(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 %109)
  %111 = load i64, i64* @FALSE, align 8
  %112 = icmp ne i64 %110, %111
  %113 = zext i1 %112 to i32
  %114 = call i32 @ok(i32 %113, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  %115 = call i64 @FindFirstFile(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), %struct.TYPE_3__* %5)
  store i64 %115, i64* %4, align 8
  %116 = load i64, i64* %4, align 8
  %117 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %118 = icmp ne i64 %116, %117
  %119 = zext i1 %118 to i32
  %120 = call i32 @ok(i32 %119, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %121 = load i64, i64* %4, align 8
  %122 = call i32 @FindClose(i64 %121)
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = getelementptr inbounds [14 x i8], [14 x i8]* %2, i64 0, i64 0
  %126 = call i64 @strcmp(i32 %124, i8* %125)
  %127 = icmp eq i64 %126, 0
  %128 = zext i1 %127 to i32
  %129 = call i32 @ok(i32 %128, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0))
  %130 = call i32 @DeleteFile(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0))
  %131 = call i32 @DeleteFile(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %132 = call i32 @DeleteFile(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  %133 = call i64 @SetCurrentDirectory(i8* %14)
  %134 = getelementptr inbounds [20 x i8], [20 x i8]* %6, i64 0, i64 0
  %135 = call i32 @RemoveDirectory(i8* %134)
  store i32 0, i32* %9, align 4
  br label %136

136:                                              ; preds = %50, %48, %36, %18
  %137 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %137)
  %138 = load i32, i32* %9, align 4
  switch i32 %138, label %140 [
    i32 0, label %139
    i32 1, label %139
  ]

139:                                              ; preds = %136, %136
  ret void

140:                                              ; preds = %136
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

declare dso_local i32 @CloseHandle(i64) #3

declare dso_local i64 @FindFirstFile(i8*, %struct.TYPE_3__*) #3

declare dso_local i32 @FindClose(i64) #3

declare dso_local i32 @RtlCopyMemory(i8*, i32, i32) #3

declare dso_local i64 @MoveFile(i8*, i8*) #3

declare dso_local i64 @strcmp(i32, i8*) #3

declare dso_local i64 @MoveFileEx(i8*, i8*, i32) #3

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
