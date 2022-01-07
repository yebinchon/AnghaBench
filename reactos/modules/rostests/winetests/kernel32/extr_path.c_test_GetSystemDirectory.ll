; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_path.c_test_GetSystemDirectory.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_path.c_test_GetSystemDirectory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_PATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"returned %d with %d (expected '>0')\0A\00", align 1
@ERROR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [74 x i8] c"returned %d with %d (expected '%d' or: '0' with ERROR_INVALID_PARAMETER)\0A\00", align 1
@.str.2 = private unnamed_addr constant [59 x i8] c"returned %d with %d and '%s' (expected '%d' and a string)\0A\00", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"returned %d with %d and '%s' (expected '%d')\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_GetSystemDirectory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_GetSystemDirectory() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = load i32, i32* @MAX_PATH, align 4
  %7 = add nsw i32 %6, 4
  %8 = zext i32 %7 to i64
  %9 = call i8* @llvm.stacksave()
  store i8* %9, i8** %1, align 8
  %10 = alloca i8, i64 %8, align 16
  store i64 %8, i64* %2, align 8
  %11 = call i32 @SetLastError(i32 -559038737)
  %12 = call i32 @GetSystemDirectoryA(i8* null, i32 0)
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* %3, align 4
  %14 = icmp sgt i32 %13, 0
  %15 = zext i1 %14 to i32
  %16 = load i32, i32* %3, align 4
  %17 = call i64 (...) @GetLastError()
  %18 = call i32 (i32, i8*, i32, i64, ...) @ok(i32 %15, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %16, i64 %17)
  %19 = load i32, i32* %3, align 4
  store i32 %19, i32* %4, align 4
  %20 = call i32 @SetLastError(i32 -559038737)
  %21 = load i32, i32* %4, align 4
  %22 = sub nsw i32 %21, 1
  %23 = call i32 @GetSystemDirectoryA(i8* null, i32 %22)
  store i32 %23, i32* %3, align 4
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* %4, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %36, label %27

27:                                               ; preds = %0
  %28 = load i32, i32* %3, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %27
  %31 = call i64 (...) @GetLastError()
  %32 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  %33 = icmp eq i64 %31, %32
  br label %34

34:                                               ; preds = %30, %27
  %35 = phi i1 [ false, %27 ], [ %33, %30 ]
  br label %36

36:                                               ; preds = %34, %0
  %37 = phi i1 [ true, %0 ], [ %35, %34 ]
  %38 = zext i1 %37 to i32
  %39 = load i32, i32* %3, align 4
  %40 = call i64 (...) @GetLastError()
  %41 = load i32, i32* %4, align 4
  %42 = call i32 (i32, i8*, i32, i64, ...) @ok(i32 %38, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i32 %39, i64 %40, i32 %41)
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* @MAX_PATH, align 4
  %45 = icmp sgt i32 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %36
  store i32 1, i32* %5, align 4
  br label %129

47:                                               ; preds = %36
  %48 = getelementptr inbounds i8, i8* %10, i64 0
  store i8 0, i8* %48, align 16
  %49 = call i32 @SetLastError(i32 -559038737)
  %50 = load i32, i32* %4, align 4
  %51 = call i32 @GetSystemDirectoryA(i8* %10, i32 %50)
  store i32 %51, i32* %3, align 4
  %52 = load i32, i32* %3, align 4
  %53 = load i32, i32* %4, align 4
  %54 = sub nsw i32 %53, 1
  %55 = icmp eq i32 %52, %54
  br i1 %55, label %56, label %61

56:                                               ; preds = %47
  %57 = getelementptr inbounds i8, i8* %10, i64 0
  %58 = load i8, i8* %57, align 16
  %59 = sext i8 %58 to i32
  %60 = icmp ne i32 %59, 0
  br label %61

61:                                               ; preds = %56, %47
  %62 = phi i1 [ false, %47 ], [ %60, %56 ]
  %63 = zext i1 %62 to i32
  %64 = load i32, i32* %3, align 4
  %65 = call i64 (...) @GetLastError()
  %66 = load i32, i32* %4, align 4
  %67 = sub nsw i32 %66, 1
  %68 = call i32 (i32, i8*, i32, i64, ...) @ok(i32 %63, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.2, i64 0, i64 0), i32 %64, i64 %65, i8* %10, i32 %67)
  %69 = getelementptr inbounds i8, i8* %10, i64 0
  store i8 0, i8* %69, align 16
  %70 = call i32 @SetLastError(i32 -559038737)
  %71 = load i32, i32* %4, align 4
  %72 = add nsw i32 %71, 1
  %73 = call i32 @GetSystemDirectoryA(i8* %10, i32 %72)
  store i32 %73, i32* %3, align 4
  %74 = load i32, i32* %3, align 4
  %75 = load i32, i32* %4, align 4
  %76 = sub nsw i32 %75, 1
  %77 = icmp eq i32 %74, %76
  br i1 %77, label %78, label %83

78:                                               ; preds = %61
  %79 = getelementptr inbounds i8, i8* %10, i64 0
  %80 = load i8, i8* %79, align 16
  %81 = sext i8 %80 to i32
  %82 = icmp ne i32 %81, 0
  br label %83

83:                                               ; preds = %78, %61
  %84 = phi i1 [ false, %61 ], [ %82, %78 ]
  %85 = zext i1 %84 to i32
  %86 = load i32, i32* %3, align 4
  %87 = call i64 (...) @GetLastError()
  %88 = load i32, i32* %4, align 4
  %89 = sub nsw i32 %88, 1
  %90 = call i32 (i32, i8*, i32, i64, ...) @ok(i32 %85, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.2, i64 0, i64 0), i32 %86, i64 %87, i8* %10, i32 %89)
  %91 = load i32, i32* %4, align 4
  %92 = add nsw i32 %91, 1
  %93 = call i32 @memset(i8* %10, i8 signext 35, i32 %92)
  %94 = load i32, i32* %4, align 4
  %95 = add nsw i32 %94, 2
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i8, i8* %10, i64 %96
  store i8 0, i8* %97, align 1
  %98 = call i32 @SetLastError(i32 -559038737)
  %99 = load i32, i32* %4, align 4
  %100 = sub nsw i32 %99, 1
  %101 = call i32 @GetSystemDirectoryA(i8* %10, i32 %100)
  store i32 %101, i32* %3, align 4
  %102 = load i32, i32* %3, align 4
  %103 = load i32, i32* %4, align 4
  %104 = icmp eq i32 %102, %103
  %105 = zext i1 %104 to i32
  %106 = load i32, i32* %3, align 4
  %107 = call i64 (...) @GetLastError()
  %108 = load i32, i32* %4, align 4
  %109 = call i32 (i32, i8*, i32, i64, ...) @ok(i32 %105, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0), i32 %106, i64 %107, i8* %10, i32 %108)
  %110 = load i32, i32* %4, align 4
  %111 = add nsw i32 %110, 1
  %112 = call i32 @memset(i8* %10, i8 signext 35, i32 %111)
  %113 = load i32, i32* %4, align 4
  %114 = add nsw i32 %113, 2
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i8, i8* %10, i64 %115
  store i8 0, i8* %116, align 1
  %117 = call i32 @SetLastError(i32 -559038737)
  %118 = load i32, i32* %4, align 4
  %119 = sub nsw i32 %118, 2
  %120 = call i32 @GetSystemDirectoryA(i8* %10, i32 %119)
  store i32 %120, i32* %3, align 4
  %121 = load i32, i32* %3, align 4
  %122 = load i32, i32* %4, align 4
  %123 = icmp eq i32 %121, %122
  %124 = zext i1 %123 to i32
  %125 = load i32, i32* %3, align 4
  %126 = call i64 (...) @GetLastError()
  %127 = load i32, i32* %4, align 4
  %128 = call i32 (i32, i8*, i32, i64, ...) @ok(i32 %124, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0), i32 %125, i64 %126, i8* %10, i32 %127)
  store i32 0, i32* %5, align 4
  br label %129

129:                                              ; preds = %83, %46
  %130 = load i8*, i8** %1, align 8
  call void @llvm.stackrestore(i8* %130)
  %131 = load i32, i32* %5, align 4
  switch i32 %131, label %133 [
    i32 0, label %132
    i32 1, label %132
  ]

132:                                              ; preds = %129, %129
  ret void

133:                                              ; preds = %129
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @SetLastError(i32) #2

declare dso_local i32 @GetSystemDirectoryA(i8*, i32) #2

declare dso_local i32 @ok(i32, i8*, i32, i64, ...) #2

declare dso_local i64 @GetLastError(...) #2

declare dso_local i32 @memset(i8*, i8 signext, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
