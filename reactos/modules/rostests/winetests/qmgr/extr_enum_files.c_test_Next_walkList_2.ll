; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/qmgr/extr_enum_files.c_test_Next_walkList_2.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/qmgr/extr_enum_files.c_test_Next_walkList_2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NUM_FILES = common dso_local global i32 0, align 4
@test_fileCount = common dso_local global i64 0, align 8
@test_enumFiles = common dso_local global i32 0, align 4
@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"Next failed: %08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"Next returned the incorrect number of files: %08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"Next returned NULL\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_Next_walkList_2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_Next_walkList_2() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = load i32, i32* @NUM_FILES, align 4
  %7 = zext i32 %6 to i64
  %8 = call i8* @llvm.stacksave()
  store i8* %8, i8** %2, align 8
  %9 = alloca i32*, i64 %7, align 16
  store i64 %7, i64* %3, align 8
  store i64 0, i64* %5, align 8
  br label %10

10:                                               ; preds = %17, %0
  %11 = load i64, i64* %5, align 8
  %12 = load i64, i64* @test_fileCount, align 8
  %13 = icmp ult i64 %11, %12
  br i1 %13, label %14, label %20

14:                                               ; preds = %10
  %15 = load i64, i64* %5, align 8
  %16 = getelementptr inbounds i32*, i32** %9, i64 %15
  store i32* null, i32** %16, align 8
  br label %17

17:                                               ; preds = %14
  %18 = load i64, i64* %5, align 8
  %19 = add i64 %18, 1
  store i64 %19, i64* %5, align 8
  br label %10

20:                                               ; preds = %10
  store i64 0, i64* %4, align 8
  %21 = load i32, i32* @test_enumFiles, align 4
  %22 = load i64, i64* @test_fileCount, align 8
  %23 = call i64 @IEnumBackgroundCopyFiles_Next(i32 %21, i64 %22, i32** %9, i64* %4)
  store i64 %23, i64* %1, align 8
  %24 = load i64, i64* %1, align 8
  %25 = load i64, i64* @S_OK, align 8
  %26 = icmp eq i64 %24, %25
  %27 = zext i1 %26 to i32
  %28 = load i64, i64* %1, align 8
  %29 = call i32 (i32, i8*, ...) @ok(i32 %27, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i64 %28)
  %30 = load i64, i64* %4, align 8
  %31 = load i64, i64* @test_fileCount, align 8
  %32 = icmp eq i64 %30, %31
  %33 = zext i1 %32 to i32
  %34 = load i64, i64* %1, align 8
  %35 = call i32 (i32, i8*, ...) @ok(i32 %33, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i64 %34)
  store i64 0, i64* %5, align 8
  br label %36

36:                                               ; preds = %57, %20
  %37 = load i64, i64* %5, align 8
  %38 = load i64, i64* @test_fileCount, align 8
  %39 = icmp ult i64 %37, %38
  br i1 %39, label %40, label %60

40:                                               ; preds = %36
  %41 = load i64, i64* %5, align 8
  %42 = getelementptr inbounds i32*, i32** %9, i64 %41
  %43 = load i32*, i32** %42, align 8
  %44 = icmp ne i32* %43, null
  %45 = zext i1 %44 to i32
  %46 = call i32 (i32, i8*, ...) @ok(i32 %45, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %47 = load i64, i64* %5, align 8
  %48 = getelementptr inbounds i32*, i32** %9, i64 %47
  %49 = load i32*, i32** %48, align 8
  %50 = icmp ne i32* %49, null
  br i1 %50, label %51, label %56

51:                                               ; preds = %40
  %52 = load i64, i64* %5, align 8
  %53 = getelementptr inbounds i32*, i32** %9, i64 %52
  %54 = load i32*, i32** %53, align 8
  %55 = call i32 @IBackgroundCopyFile_Release(i32* %54)
  br label %56

56:                                               ; preds = %51, %40
  br label %57

57:                                               ; preds = %56
  %58 = load i64, i64* %5, align 8
  %59 = add i64 %58, 1
  store i64 %59, i64* %5, align 8
  br label %36

60:                                               ; preds = %36
  %61 = load i8*, i8** %2, align 8
  call void @llvm.stackrestore(i8* %61)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @IEnumBackgroundCopyFiles_Next(i32, i64, i32**, i64*) #2

declare dso_local i32 @ok(i32, i8*, ...) #2

declare dso_local i32 @IBackgroundCopyFile_Release(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
