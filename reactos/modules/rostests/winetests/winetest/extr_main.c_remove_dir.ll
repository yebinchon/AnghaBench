; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/winetest/extr_main.c_remove_dir.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/winetest/extr_main.c_remove_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i8*, i32 }

@MAX_PATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"\\*\00", align 1
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@FILE_ATTRIBUTE_DIRECTORY = common dso_local global i32 0, align 4
@R_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Can't delete file %s: error %d\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"Can't remove directory %s: error %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @remove_dir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @remove_dir(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_4__, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %10 = load i32, i32* @MAX_PATH, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %5, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %6, align 8
  %14 = load i8*, i8** %2, align 8
  %15 = call i64 @strlen(i8* %14)
  store i64 %15, i64* %7, align 8
  %16 = load i8*, i8** %2, align 8
  %17 = load i64, i64* %7, align 8
  %18 = call i32 @memcpy(i8* %13, i8* %16, i64 %17)
  %19 = load i64, i64* %7, align 8
  %20 = add i64 %19, 1
  store i64 %20, i64* %7, align 8
  %21 = getelementptr inbounds i8, i8* %13, i64 %19
  %22 = call i32 @strcpy(i8* %21, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %23 = call i64 @FindFirstFile(i8* %13, %struct.TYPE_4__* %4)
  store i64 %23, i64* %3, align 8
  %24 = load i64, i64* %3, align 8
  %25 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %1
  store i32 1, i32* %8, align 4
  br label %80

28:                                               ; preds = %1
  br label %29

29:                                               ; preds = %64, %28
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  store i8* %31, i8** %9, align 8
  %32 = load i8*, i8** %9, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 0
  %34 = load i8, i8* %33, align 1
  %35 = icmp ne i8 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %29
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 1
  %38 = load i8*, i8** %37, align 8
  store i8* %38, i8** %9, align 8
  br label %39

39:                                               ; preds = %36, %29
  %40 = load i8*, i8** %9, align 8
  %41 = call i64 @is_dot_dir(i8* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  br label %64

44:                                               ; preds = %39
  %45 = load i64, i64* %7, align 8
  %46 = getelementptr inbounds i8, i8* %13, i64 %45
  %47 = load i8*, i8** %9, align 8
  %48 = call i32 @strcpy(i8* %46, i8* %47)
  %49 = load i32, i32* @FILE_ATTRIBUTE_DIRECTORY, align 4
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = and i32 %49, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %44
  call void @remove_dir(i8* %13)
  br label %63

55:                                               ; preds = %44
  %56 = call i32 @DeleteFile(i8* %13)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %62, label %58

58:                                               ; preds = %55
  %59 = load i32, i32* @R_WARNING, align 4
  %60 = call i32 (...) @GetLastError()
  %61 = call i32 @report(i32 %59, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i8* %13, i32 %60)
  br label %62

62:                                               ; preds = %58, %55
  br label %63

63:                                               ; preds = %62, %54
  br label %64

64:                                               ; preds = %63, %43
  %65 = load i64, i64* %3, align 8
  %66 = call i64 @FindNextFile(i64 %65, %struct.TYPE_4__* %4)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %29, label %68

68:                                               ; preds = %64
  %69 = load i64, i64* %3, align 8
  %70 = call i32 @FindClose(i64 %69)
  %71 = load i8*, i8** %2, align 8
  %72 = call i32 @RemoveDirectory(i8* %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %79, label %74

74:                                               ; preds = %68
  %75 = load i32, i32* @R_WARNING, align 4
  %76 = load i8*, i8** %2, align 8
  %77 = call i32 (...) @GetLastError()
  %78 = call i32 @report(i32 %75, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i8* %76, i32 %77)
  br label %79

79:                                               ; preds = %74, %68
  store i32 0, i32* %8, align 4
  br label %80

80:                                               ; preds = %79, %27
  %81 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %81)
  %82 = load i32, i32* %8, align 4
  switch i32 %82, label %84 [
    i32 0, label %83
    i32 1, label %83
  ]

83:                                               ; preds = %80, %80
  ret void

84:                                               ; preds = %80
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @strlen(i8*) #2

declare dso_local i32 @memcpy(i8*, i8*, i64) #2

declare dso_local i32 @strcpy(i8*, i8*) #2

declare dso_local i64 @FindFirstFile(i8*, %struct.TYPE_4__*) #2

declare dso_local i64 @is_dot_dir(i8*) #2

declare dso_local i32 @DeleteFile(i8*) #2

declare dso_local i32 @report(i32, i8*, i8*, i32) #2

declare dso_local i32 @GetLastError(...) #2

declare dso_local i64 @FindNextFile(i64, %struct.TYPE_4__*) #2

declare dso_local i32 @FindClose(i64) #2

declare dso_local i32 @RemoveDirectory(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
