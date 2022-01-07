; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/shell32/extr_brsfolder.c_get_number_of_folders.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/shell32/extr_brsfolder.c_get_number_of_folders.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@MAX_PATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"*\00", align 1
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@FILE_ATTRIBUTE_DIRECTORY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @get_number_of_folders to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_number_of_folders(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_4__, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %10 = load i32, i32* @MAX_PATH, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %5, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %6, align 8
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @MAX_PATH, align 4
  %16 = sub nsw i32 %15, 1
  %17 = call i32 @lstrcpynA(i8* %13, i32 %14, i32 %16)
  %18 = call i32 @strcat(i8* %13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %19 = call i64 @FindFirstFileA(i8* %13, %struct.TYPE_4__* %7)
  store i64 %19, i64* %8, align 8
  %20 = load i64, i64* %8, align 8
  %21 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %53

24:                                               ; preds = %1
  br label %25

25:                                               ; preds = %45, %24
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @FILE_ATTRIBUTE_DIRECTORY, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %44

31:                                               ; preds = %25
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @strcmp(i32 %33, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @strcmp(i32 %38, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %36
  %42 = load i32, i32* %4, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %4, align 4
  br label %44

44:                                               ; preds = %41, %36, %31, %25
  br label %45

45:                                               ; preds = %44
  %46 = load i64, i64* %8, align 8
  %47 = call i64 @FindNextFileA(i64 %46, %struct.TYPE_4__* %7)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %25, label %49

49:                                               ; preds = %45
  %50 = load i64, i64* %8, align 8
  %51 = call i32 @FindClose(i64 %50)
  %52 = load i32, i32* %4, align 4
  store i32 %52, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %53

53:                                               ; preds = %49, %23
  %54 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %54)
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @lstrcpynA(i8*, i32, i32) #2

declare dso_local i32 @strcat(i8*, i8*) #2

declare dso_local i64 @FindFirstFileA(i8*, %struct.TYPE_4__*) #2

declare dso_local i64 @strcmp(i32, i8*) #2

declare dso_local i64 @FindNextFileA(i64, %struct.TYPE_4__*) #2

declare dso_local i32 @FindClose(i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
