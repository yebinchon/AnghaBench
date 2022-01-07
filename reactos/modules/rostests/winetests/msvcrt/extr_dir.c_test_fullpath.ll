; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/msvcrt/extr_dir.c_test_fullpath.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/msvcrt/extr_dir.c_test_fullpath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_PATH = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c"msvcrt-test\\\00", align 1
@ERROR_ALREADY_EXISTS = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"nextlevel\\\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"test\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"_fullpath failed\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"Invalid Path returned %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"\\test\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"..\\test\00", align 1
@.str.7 = private unnamed_addr constant [36 x i8] c"_fullpath failed to generate error\0A\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"No path returned\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_fullpath to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_fullpath() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = load i32, i32* @MAX_PATH, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %1, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %2, align 8
  %16 = load i32, i32* @MAX_PATH, align 4
  %17 = zext i32 %16 to i64
  %18 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %3, align 8
  %19 = load i32, i32* @MAX_PATH, align 4
  %20 = zext i32 %19 to i64
  %21 = alloca i8, i64 %20, align 16
  store i64 %20, i64* %4, align 8
  %22 = load i32, i32* @MAX_PATH, align 4
  %23 = zext i32 %22 to i64
  %24 = alloca i8, i64 %23, align 16
  store i64 %23, i64* %5, align 8
  %25 = load i32, i32* @MAX_PATH, align 4
  %26 = zext i32 %25 to i64
  %27 = alloca i8, i64 %26, align 16
  store i64 %26, i64* %6, align 8
  %28 = load i32, i32* @MAX_PATH, align 4
  %29 = zext i32 %28 to i64
  %30 = alloca i8, i64 %29, align 16
  store i64 %29, i64* %7, align 8
  %31 = load i64, i64* @TRUE, align 8
  store i64 %31, i64* %11, align 8
  store i64 %31, i64* %10, align 8
  %32 = load i32, i32* @MAX_PATH, align 4
  %33 = call i32 @GetCurrentDirectoryA(i32 %32, i8* %21)
  %34 = load i32, i32* @MAX_PATH, align 4
  %35 = call i32 @GetTempPathA(i32 %34, i8* %18)
  %36 = call i32 @strcpy(i8* %24, i8* %18)
  %37 = call i32 @strcat(i8* %24, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %38 = call i64 @CreateDirectoryA(i8* %24, i32* null)
  store i64 %38, i64* %9, align 8
  %39 = load i64, i64* %9, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %47, label %41

41:                                               ; preds = %0
  %42 = call i64 (...) @GetLastError()
  %43 = load i64, i64* @ERROR_ALREADY_EXISTS, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %41
  %46 = load i64, i64* @FALSE, align 8
  store i64 %46, i64* %10, align 8
  br label %47

47:                                               ; preds = %45, %41, %0
  %48 = call i32 @strcpy(i8* %27, i8* %24)
  %49 = call i32 @strcat(i8* %27, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %50 = call i64 @CreateDirectoryA(i8* %27, i32* null)
  store i64 %50, i64* %9, align 8
  %51 = load i64, i64* %9, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %59, label %53

53:                                               ; preds = %47
  %54 = call i64 (...) @GetLastError()
  %55 = load i64, i64* @ERROR_ALREADY_EXISTS, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %53
  %58 = load i64, i64* @FALSE, align 8
  store i64 %58, i64* %11, align 8
  br label %59

59:                                               ; preds = %57, %53, %47
  %60 = call i32 @SetCurrentDirectoryA(i8* %27)
  %61 = load i32, i32* @MAX_PATH, align 4
  %62 = call i8* @_fullpath(i8* %15, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %61)
  %63 = icmp ne i8* %62, null
  %64 = zext i1 %63 to i32
  %65 = call i32 (i32, i8*, ...) @ok(i32 %64, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %66 = call i32 @strcpy(i8* %30, i8* %27)
  %67 = call i32 @strcat(i8* %30, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %68 = call i64 @strcmp(i8* %15, i8* %30)
  %69 = icmp eq i64 %68, 0
  %70 = zext i1 %69 to i32
  %71 = call i32 (i32, i8*, ...) @ok(i32 %70, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i8* %15)
  %72 = load i32, i32* @MAX_PATH, align 4
  %73 = call i8* @_fullpath(i8* %15, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 %72)
  %74 = icmp ne i8* %73, null
  %75 = zext i1 %74 to i32
  %76 = call i32 (i32, i8*, ...) @ok(i32 %75, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %77 = call i32 @memcpy(i8* %30, i8* %27, i32 3)
  %78 = getelementptr inbounds i8, i8* %30, i64 3
  store i8 0, i8* %78, align 1
  %79 = call i32 @strcat(i8* %30, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %80 = call i64 @strcmp(i8* %15, i8* %30)
  %81 = icmp eq i64 %80, 0
  %82 = zext i1 %81 to i32
  %83 = call i32 (i32, i8*, ...) @ok(i32 %82, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i8* %15)
  %84 = load i32, i32* @MAX_PATH, align 4
  %85 = call i8* @_fullpath(i8* %15, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32 %84)
  %86 = icmp ne i8* %85, null
  %87 = zext i1 %86 to i32
  %88 = call i32 (i32, i8*, ...) @ok(i32 %87, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %89 = call i32 @strcpy(i8* %30, i8* %24)
  %90 = call i32 @strcat(i8* %30, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %91 = call i64 @strcmp(i8* %15, i8* %30)
  %92 = icmp eq i64 %91, 0
  %93 = zext i1 %92 to i32
  %94 = call i32 (i32, i8*, ...) @ok(i32 %93, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i8* %15)
  %95 = call i8* @_fullpath(i8* %15, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32 10)
  %96 = icmp eq i8* %95, null
  %97 = zext i1 %96 to i32
  %98 = call i32 (i32, i8*, ...) @ok(i32 %97, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i64 0, i64 0))
  %99 = call i8* @_fullpath(i8* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 0)
  store i8* %99, i8** %8, align 8
  %100 = load i8*, i8** %8, align 8
  %101 = icmp ne i8* %100, null
  %102 = zext i1 %101 to i32
  %103 = call i32 (i32, i8*, ...) @ok(i32 %102, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0))
  %104 = call i32 @strcpy(i8* %30, i8* %27)
  %105 = call i32 @strcat(i8* %30, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %106 = load i8*, i8** %8, align 8
  %107 = call i64 @strcmp(i8* %106, i8* %30)
  %108 = icmp eq i64 %107, 0
  %109 = zext i1 %108 to i32
  %110 = load i8*, i8** %8, align 8
  %111 = call i32 (i32, i8*, ...) @ok(i32 %109, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i8* %110)
  %112 = load i8*, i8** %8, align 8
  %113 = call i32 @free(i8* %112)
  %114 = call i32 @SetCurrentDirectoryA(i8* %21)
  %115 = load i64, i64* %11, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %59
  %118 = call i32 @RemoveDirectoryA(i8* %27)
  br label %119

119:                                              ; preds = %117, %59
  %120 = load i64, i64* %10, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %119
  %123 = call i32 @RemoveDirectoryA(i8* %24)
  br label %124

124:                                              ; preds = %122, %119
  %125 = load i8*, i8** %1, align 8
  call void @llvm.stackrestore(i8* %125)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @GetCurrentDirectoryA(i32, i8*) #2

declare dso_local i32 @GetTempPathA(i32, i8*) #2

declare dso_local i32 @strcpy(i8*, i8*) #2

declare dso_local i32 @strcat(i8*, i8*) #2

declare dso_local i64 @CreateDirectoryA(i8*, i32*) #2

declare dso_local i64 @GetLastError(...) #2

declare dso_local i32 @SetCurrentDirectoryA(i8*) #2

declare dso_local i32 @ok(i32, i8*, ...) #2

declare dso_local i8* @_fullpath(i8*, i8*, i32) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i32 @memcpy(i8*, i8*, i32) #2

declare dso_local i32 @free(i8*) #2

declare dso_local i32 @RemoveDirectoryA(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
