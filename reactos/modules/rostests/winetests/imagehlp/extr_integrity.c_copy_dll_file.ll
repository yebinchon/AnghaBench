; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/imagehlp/extr_integrity.c_copy_dll_file.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/imagehlp/extr_integrity.c_copy_dll_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_PATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [70 x i8] c"Failed to get system directory. Skipping certificate/PE image tests.\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"\\\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"imagehlp.dll\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"img\00", align 1
@test_dll_path = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [50 x i8] c"Unable to create copy of imagehlp.dll for tests.\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @copy_dll_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @copy_dll_file() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = load i32, i32* @MAX_PATH, align 4
  %7 = add nsw i32 %6, 15
  %8 = zext i32 %7 to i64
  %9 = call i8* @llvm.stacksave()
  store i8* %9, i8** %2, align 8
  %10 = alloca i8, i64 %8, align 16
  store i64 %8, i64* %3, align 8
  %11 = load i32, i32* @MAX_PATH, align 4
  %12 = zext i32 %11 to i64
  %13 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %4, align 8
  %14 = load i32, i32* @MAX_PATH, align 4
  %15 = call i64 @GetSystemDirectoryA(i8* %10, i32 %14)
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %0
  %18 = call i32 @skip(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @FALSE, align 4
  store i32 %19, i32* %1, align 4
  store i32 1, i32* %5, align 4
  br label %45

20:                                               ; preds = %0
  %21 = call i32 @lstrlenA(i8* %10)
  %22 = sub nsw i32 %21, 1
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8, i8* %10, i64 %23
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp ne i32 %26, 92
  br i1 %27, label %28, label %30

28:                                               ; preds = %20
  %29 = call i32 @lstrcatA(i8* %10, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %30

30:                                               ; preds = %28, %20
  %31 = call i32 @lstrcatA(i8* %10, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %32 = load i32, i32* @MAX_PATH, align 4
  %33 = call i32 @GetTempPathA(i32 %32, i8* %13)
  %34 = load i32, i32* @test_dll_path, align 4
  %35 = call i32 @GetTempFileNameA(i8* %13, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 0, i32 %34)
  %36 = load i32, i32* @test_dll_path, align 4
  %37 = load i32, i32* @FALSE, align 4
  %38 = call i64 @CopyFileA(i8* %10, i32 %36, i32 %37)
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %30
  %41 = call i32 @skip(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i64 0, i64 0))
  %42 = load i32, i32* @FALSE, align 4
  store i32 %42, i32* %1, align 4
  store i32 1, i32* %5, align 4
  br label %45

43:                                               ; preds = %30
  %44 = load i32, i32* @TRUE, align 4
  store i32 %44, i32* %1, align 4
  store i32 1, i32* %5, align 4
  br label %45

45:                                               ; preds = %43, %40, %17
  %46 = load i8*, i8** %2, align 8
  call void @llvm.stackrestore(i8* %46)
  %47 = load i32, i32* %1, align 4
  ret i32 %47
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @GetSystemDirectoryA(i8*, i32) #2

declare dso_local i32 @skip(i8*) #2

declare dso_local i32 @lstrlenA(i8*) #2

declare dso_local i32 @lstrcatA(i8*, i8*) #2

declare dso_local i32 @GetTempPathA(i32, i8*) #2

declare dso_local i32 @GetTempFileNameA(i8*, i8*, i32, i32) #2

declare dso_local i64 @CopyFileA(i8*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
