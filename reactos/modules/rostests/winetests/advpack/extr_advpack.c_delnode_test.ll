; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/advpack/extr_advpack.c_delnode_test.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/advpack/extr_advpack.c_delnode_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_PATH = common dso_local global i32 0, align 4
@E_FAIL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [56 x i8] c"DelNode called with NULL pathname should return E_FAIL\0A\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [57 x i8] c"DelNode called with empty pathname should return E_FAIL\0A\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"DelNodeTestFile1\00", align 1
@GENERIC_WRITE = common dso_local global i32 0, align 4
@CREATE_ALWAYS = common dso_local global i32 0, align 4
@FILE_ATTRIBUTE_NORMAL = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [18 x i8] c"\\DelNodeTestFile1\00", align 1
@S_OK = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [39 x i8] c"DelNode failed deleting a single file\0A\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"DelNodeTestDir\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"\\DelNodeTestDir\00", align 1
@.str.8 = private unnamed_addr constant [44 x i8] c"DelNode failed deleting an empty directory\0A\00", align 1
@.str.9 = private unnamed_addr constant [32 x i8] c"DelNodeTestDir\\DelNodeTestFile1\00", align 1
@.str.10 = private unnamed_addr constant [57 x i8] c"DelNode failed deleting a directory containing one file\0A\00", align 1
@.str.11 = private unnamed_addr constant [32 x i8] c"DelNodeTestDir\\DelNodeTestFile2\00", align 1
@.str.12 = private unnamed_addr constant [32 x i8] c"DelNodeTestDir\\DelNodeTestFile3\00", align 1
@.str.13 = private unnamed_addr constant [63 x i8] c"DelNode failed deleting a directory containing multiple files\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @delnode_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @delnode_test() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = load i32, i32* @MAX_PATH, align 4
  %7 = zext i32 %6 to i64
  %8 = call i8* @llvm.stacksave()
  store i8* %8, i8** %3, align 8
  %9 = alloca i8, i64 %7, align 16
  store i64 %7, i64* %4, align 8
  %10 = call i32 @ARRAY_SIZE(i8* %9)
  %11 = call i32 @GetCurrentDirectoryA(i32 %10, i8* %9)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %0
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @ARRAY_SIZE(i8* %9)
  %17 = icmp slt i32 %15, %16
  br label %18

18:                                               ; preds = %14, %0
  %19 = phi i1 [ false, %0 ], [ %17, %14 ]
  %20 = zext i1 %19 to i32
  %21 = call i32 @assert(i32 %20)
  %22 = load i32, i32* %5, align 4
  %23 = sub nsw i32 %22, 1
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8, i8* %9, i64 %24
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp eq i32 %27, 92
  br i1 %28, label %29, label %34

29:                                               ; preds = %18
  %30 = load i32, i32* %5, align 4
  %31 = add nsw i32 %30, -1
  store i32 %31, i32* %5, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8, i8* %9, i64 %32
  store i8 0, i8* %33, align 1
  br label %34

34:                                               ; preds = %29, %18
  %35 = call i64 @pDelNode(i8* null, i32 0)
  store i64 %35, i64* %1, align 8
  %36 = load i64, i64* %1, align 8
  %37 = load i64, i64* @E_FAIL, align 8
  %38 = icmp eq i64 %36, %37
  %39 = zext i1 %38 to i32
  %40 = call i32 @ok(i32 %39, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0))
  %41 = call i64 @pDelNode(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i32 0)
  store i64 %41, i64* %1, align 8
  %42 = load i64, i64* %1, align 8
  %43 = load i64, i64* @E_FAIL, align 8
  %44 = icmp eq i64 %42, %43
  %45 = zext i1 %44 to i32
  %46 = call i32 @ok(i32 %45, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i64 0, i64 0))
  %47 = load i32, i32* @GENERIC_WRITE, align 4
  %48 = load i32, i32* @CREATE_ALWAYS, align 4
  %49 = load i32, i32* @FILE_ATTRIBUTE_NORMAL, align 4
  %50 = call i64 @CreateFileA(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 %47, i32 0, i32* null, i32 %48, i32 %49, i32* null)
  store i64 %50, i64* %2, align 8
  %51 = load i64, i64* %2, align 8
  %52 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %53 = icmp ne i64 %51, %52
  %54 = zext i1 %53 to i32
  %55 = call i32 @assert(i32 %54)
  %56 = load i64, i64* %2, align 8
  %57 = call i32 @CloseHandle(i64 %56)
  %58 = call i8* @lstrcatA(i8* %9, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  %59 = call i64 @pDelNode(i8* %58, i32 0)
  store i64 %59, i64* %1, align 8
  %60 = load i64, i64* %1, align 8
  %61 = load i64, i64* @S_OK, align 8
  %62 = icmp eq i64 %60, %61
  %63 = zext i1 %62 to i32
  %64 = call i32 @ok(i32 %63, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0))
  %65 = load i32, i32* %5, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i8, i8* %9, i64 %66
  store i8 0, i8* %67, align 1
  %68 = call i32 @CreateDirectoryA(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i32* null)
  %69 = call i8* @lstrcatA(i8* %9, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0))
  %70 = call i64 @pDelNode(i8* %69, i32 0)
  store i64 %70, i64* %1, align 8
  %71 = load i64, i64* %1, align 8
  %72 = load i64, i64* @S_OK, align 8
  %73 = icmp eq i64 %71, %72
  %74 = zext i1 %73 to i32
  %75 = call i32 @ok(i32 %74, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.8, i64 0, i64 0))
  %76 = load i32, i32* %5, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i8, i8* %9, i64 %77
  store i8 0, i8* %78, align 1
  %79 = call i32 @CreateDirectoryA(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i32* null)
  %80 = load i32, i32* @GENERIC_WRITE, align 4
  %81 = load i32, i32* @CREATE_ALWAYS, align 4
  %82 = load i32, i32* @FILE_ATTRIBUTE_NORMAL, align 4
  %83 = call i64 @CreateFileA(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i64 0, i64 0), i32 %80, i32 0, i32* null, i32 %81, i32 %82, i32* null)
  store i64 %83, i64* %2, align 8
  %84 = load i64, i64* %2, align 8
  %85 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %86 = icmp ne i64 %84, %85
  %87 = zext i1 %86 to i32
  %88 = call i32 @assert(i32 %87)
  %89 = load i64, i64* %2, align 8
  %90 = call i32 @CloseHandle(i64 %89)
  %91 = call i8* @lstrcatA(i8* %9, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0))
  %92 = call i64 @pDelNode(i8* %91, i32 0)
  store i64 %92, i64* %1, align 8
  %93 = load i64, i64* %1, align 8
  %94 = load i64, i64* @S_OK, align 8
  %95 = icmp eq i64 %93, %94
  %96 = zext i1 %95 to i32
  %97 = call i32 @ok(i32 %96, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.10, i64 0, i64 0))
  %98 = load i32, i32* %5, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i8, i8* %9, i64 %99
  store i8 0, i8* %100, align 1
  %101 = call i32 @CreateDirectoryA(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i32* null)
  %102 = load i32, i32* @GENERIC_WRITE, align 4
  %103 = load i32, i32* @CREATE_ALWAYS, align 4
  %104 = load i32, i32* @FILE_ATTRIBUTE_NORMAL, align 4
  %105 = call i64 @CreateFileA(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i64 0, i64 0), i32 %102, i32 0, i32* null, i32 %103, i32 %104, i32* null)
  store i64 %105, i64* %2, align 8
  %106 = load i64, i64* %2, align 8
  %107 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %108 = icmp ne i64 %106, %107
  %109 = zext i1 %108 to i32
  %110 = call i32 @assert(i32 %109)
  %111 = load i64, i64* %2, align 8
  %112 = call i32 @CloseHandle(i64 %111)
  %113 = load i32, i32* @GENERIC_WRITE, align 4
  %114 = load i32, i32* @CREATE_ALWAYS, align 4
  %115 = load i32, i32* @FILE_ATTRIBUTE_NORMAL, align 4
  %116 = call i64 @CreateFileA(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.11, i64 0, i64 0), i32 %113, i32 0, i32* null, i32 %114, i32 %115, i32* null)
  store i64 %116, i64* %2, align 8
  %117 = load i64, i64* %2, align 8
  %118 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %119 = icmp ne i64 %117, %118
  %120 = zext i1 %119 to i32
  %121 = call i32 @assert(i32 %120)
  %122 = load i64, i64* %2, align 8
  %123 = call i32 @CloseHandle(i64 %122)
  %124 = load i32, i32* @GENERIC_WRITE, align 4
  %125 = load i32, i32* @CREATE_ALWAYS, align 4
  %126 = load i32, i32* @FILE_ATTRIBUTE_NORMAL, align 4
  %127 = call i64 @CreateFileA(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.12, i64 0, i64 0), i32 %124, i32 0, i32* null, i32 %125, i32 %126, i32* null)
  store i64 %127, i64* %2, align 8
  %128 = load i64, i64* %2, align 8
  %129 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %130 = icmp ne i64 %128, %129
  %131 = zext i1 %130 to i32
  %132 = call i32 @assert(i32 %131)
  %133 = load i64, i64* %2, align 8
  %134 = call i32 @CloseHandle(i64 %133)
  %135 = call i8* @lstrcatA(i8* %9, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0))
  %136 = call i64 @pDelNode(i8* %135, i32 0)
  store i64 %136, i64* %1, align 8
  %137 = load i64, i64* %1, align 8
  %138 = load i64, i64* @S_OK, align 8
  %139 = icmp eq i64 %137, %138
  %140 = zext i1 %139 to i32
  %141 = call i32 @ok(i32 %140, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.13, i64 0, i64 0))
  %142 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %142)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @GetCurrentDirectoryA(i32, i8*) #2

declare dso_local i32 @ARRAY_SIZE(i8*) #2

declare dso_local i32 @assert(i32) #2

declare dso_local i64 @pDelNode(i8*, i32) #2

declare dso_local i32 @ok(i32, i8*) #2

declare dso_local i64 @CreateFileA(i8*, i32, i32, i32*, i32, i32, i32*) #2

declare dso_local i32 @CloseHandle(i64) #2

declare dso_local i8* @lstrcatA(i8*, i8*) #2

declare dso_local i32 @CreateDirectoryA(i8*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
