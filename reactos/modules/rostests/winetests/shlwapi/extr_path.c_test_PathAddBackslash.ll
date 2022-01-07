; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/shlwapi/extr_path.c_test_PathAddBackslash.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/shlwapi/extr_path.c_test_PathAddBackslash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_PATH = common dso_local global i32 0, align 4
@LONG_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Expected str == NULL, got %p\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Expected 0xdeadbeef, got %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"Expected str to point to end of path, got %p\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"Expected empty string, got %i\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"one\\two\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"one\\two\\\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"Expected one\\two\\, got %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"one\\..\\two\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"one\\..\\two\\\00", align 1
@.str.9 = private unnamed_addr constant [30 x i8] c"Expected one\\..\\two\\, got %s\0A\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c" \\\00", align 1
@.str.12 = private unnamed_addr constant [21 x i8] c"Expected  \\, got %s\0A\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"C:\\one\\\00", align 1
@.str.14 = private unnamed_addr constant [26 x i8] c"Expected C:\\one\\, got %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_PathAddBackslash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_PathAddBackslash() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = load i32, i32* @MAX_PATH, align 4
  %6 = zext i32 %5 to i64
  %7 = call i8* @llvm.stacksave()
  store i8* %7, i8** %2, align 8
  %8 = alloca i8, i64 %6, align 16
  store i64 %6, i64* %3, align 8
  %9 = load i32, i32* @LONG_LEN, align 4
  %10 = zext i32 %9 to i64
  %11 = alloca i8, i64 %10, align 16
  store i64 %10, i64* %4, align 8
  %12 = call i32 @SetLastError(i32 -559038737)
  %13 = call i8* @PathAddBackslashA(i8* null)
  store i8* %13, i8** %1, align 8
  %14 = load i8*, i8** %1, align 8
  %15 = icmp eq i8* %14, null
  %16 = zext i1 %15 to i32
  %17 = load i8*, i8** %1, align 8
  %18 = call i32 (i32, i8*, ...) @ok(i32 %16, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8* %17)
  %19 = call i32 (...) @GetLastError()
  %20 = icmp eq i32 %19, -559038737
  %21 = zext i1 %20 to i32
  %22 = call i32 (...) @GetLastError()
  %23 = call i32 (i32, i8*, ...) @ok(i32 %21, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %22)
  %24 = getelementptr inbounds i8, i8* %8, i64 0
  store i8 0, i8* %24, align 16
  %25 = call i32 @SetLastError(i32 -559038737)
  %26 = call i8* @PathAddBackslashA(i8* %8)
  store i8* %26, i8** %1, align 8
  %27 = load i8*, i8** %1, align 8
  %28 = call i32 @lstrlenA(i8* %8)
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8, i8* %8, i64 %29
  %31 = icmp eq i8* %27, %30
  %32 = zext i1 %31 to i32
  %33 = load i8*, i8** %1, align 8
  %34 = call i32 (i32, i8*, ...) @ok(i32 %32, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i8* %33)
  %35 = getelementptr inbounds i8, i8* %8, i64 0
  %36 = load i8, i8* %35, align 16
  %37 = icmp ne i8 %36, 0
  %38 = xor i1 %37, true
  %39 = zext i1 %38 to i32
  %40 = call i32 @lstrlenA(i8* %8)
  %41 = call i32 (i32, i8*, ...) @ok(i32 %39, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %40)
  %42 = call i32 (...) @GetLastError()
  %43 = icmp eq i32 %42, -559038737
  %44 = zext i1 %43 to i32
  %45 = call i32 (...) @GetLastError()
  %46 = call i32 (i32, i8*, ...) @ok(i32 %44, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %45)
  %47 = call i32 @lstrcpyA(i8* %8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %48 = call i32 @SetLastError(i32 -559038737)
  %49 = call i8* @PathAddBackslashA(i8* %8)
  store i8* %49, i8** %1, align 8
  %50 = load i8*, i8** %1, align 8
  %51 = call i32 @lstrlenA(i8* %8)
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8, i8* %8, i64 %52
  %54 = icmp eq i8* %50, %53
  %55 = zext i1 %54 to i32
  %56 = load i8*, i8** %1, align 8
  %57 = call i32 (i32, i8*, ...) @ok(i32 %55, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i8* %56)
  %58 = call i32 @lstrcmpA(i8* %8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  %59 = icmp ne i32 %58, 0
  %60 = xor i1 %59, true
  %61 = zext i1 %60 to i32
  %62 = call i32 (i32, i8*, ...) @ok(i32 %61, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), i8* %8)
  %63 = call i32 (...) @GetLastError()
  %64 = icmp eq i32 %63, -559038737
  %65 = zext i1 %64 to i32
  %66 = call i32 (...) @GetLastError()
  %67 = call i32 (i32, i8*, ...) @ok(i32 %65, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %66)
  %68 = call i32 @lstrcpyA(i8* %8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0))
  %69 = call i32 @SetLastError(i32 -559038737)
  %70 = call i8* @PathAddBackslashA(i8* %8)
  store i8* %70, i8** %1, align 8
  %71 = load i8*, i8** %1, align 8
  %72 = call i32 @lstrlenA(i8* %8)
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i8, i8* %8, i64 %73
  %75 = icmp eq i8* %71, %74
  %76 = zext i1 %75 to i32
  %77 = load i8*, i8** %1, align 8
  %78 = call i32 (i32, i8*, ...) @ok(i32 %76, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i8* %77)
  %79 = call i32 @lstrcmpA(i8* %8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0))
  %80 = icmp ne i32 %79, 0
  %81 = xor i1 %80, true
  %82 = zext i1 %81 to i32
  %83 = call i32 (i32, i8*, ...) @ok(i32 %82, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i64 0, i64 0), i8* %8)
  %84 = call i32 (...) @GetLastError()
  %85 = icmp eq i32 %84, -559038737
  %86 = zext i1 %85 to i32
  %87 = call i32 (...) @GetLastError()
  %88 = call i32 (i32, i8*, ...) @ok(i32 %86, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %87)
  %89 = call i32 @lstrcpyA(i8* %8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0))
  %90 = call i32 @SetLastError(i32 -559038737)
  %91 = call i8* @PathAddBackslashA(i8* %8)
  store i8* %91, i8** %1, align 8
  %92 = load i8*, i8** %1, align 8
  %93 = call i32 @lstrlenA(i8* %8)
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i8, i8* %8, i64 %94
  %96 = icmp eq i8* %92, %95
  %97 = zext i1 %96 to i32
  %98 = load i8*, i8** %1, align 8
  %99 = call i32 (i32, i8*, ...) @ok(i32 %97, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i8* %98)
  %100 = call i32 @lstrcmpA(i8* %8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0))
  %101 = icmp ne i32 %100, 0
  %102 = xor i1 %101, true
  %103 = zext i1 %102 to i32
  %104 = call i32 (i32, i8*, ...) @ok(i32 %103, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i64 0, i64 0), i8* %8)
  %105 = call i32 (...) @GetLastError()
  %106 = icmp eq i32 %105, -559038737
  %107 = zext i1 %106 to i32
  %108 = call i32 (...) @GetLastError()
  %109 = call i32 (i32, i8*, ...) @ok(i32 %107, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %108)
  %110 = call i32 @lstrcpyA(i8* %8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0))
  %111 = call i32 @SetLastError(i32 -559038737)
  %112 = call i8* @PathAddBackslashA(i8* %8)
  store i8* %112, i8** %1, align 8
  %113 = load i8*, i8** %1, align 8
  %114 = call i32 @lstrlenA(i8* %8)
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i8, i8* %8, i64 %115
  %117 = icmp eq i8* %113, %116
  %118 = zext i1 %117 to i32
  %119 = load i8*, i8** %1, align 8
  %120 = call i32 (i32, i8*, ...) @ok(i32 %118, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i8* %119)
  %121 = call i32 @lstrcmpA(i8* %8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0))
  %122 = icmp ne i32 %121, 0
  %123 = xor i1 %122, true
  %124 = zext i1 %123 to i32
  %125 = call i32 (i32, i8*, ...) @ok(i32 %124, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.14, i64 0, i64 0), i8* %8)
  %126 = call i32 (...) @GetLastError()
  %127 = icmp eq i32 %126, -559038737
  %128 = zext i1 %127 to i32
  %129 = call i32 (...) @GetLastError()
  %130 = call i32 (i32, i8*, ...) @ok(i32 %128, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %129)
  %131 = load i32, i32* @LONG_LEN, align 4
  %132 = call i32 @memset(i8* %11, i8 signext 97, i32 %131)
  %133 = load i32, i32* @LONG_LEN, align 4
  %134 = sub nsw i32 %133, 1
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i8, i8* %11, i64 %135
  store i8 0, i8* %136, align 1
  %137 = call i32 @SetLastError(i32 -559038737)
  %138 = call i8* @PathAddBackslashA(i8* %11)
  store i8* %138, i8** %1, align 8
  %139 = load i8*, i8** %1, align 8
  %140 = icmp eq i8* %139, null
  %141 = zext i1 %140 to i32
  %142 = load i8*, i8** %1, align 8
  %143 = call i32 (i32, i8*, ...) @ok(i32 %141, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8* %142)
  %144 = call i32 (...) @GetLastError()
  %145 = icmp eq i32 %144, -559038737
  %146 = zext i1 %145 to i32
  %147 = call i32 (...) @GetLastError()
  %148 = call i32 (i32, i8*, ...) @ok(i32 %146, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %147)
  %149 = load i8*, i8** %2, align 8
  call void @llvm.stackrestore(i8* %149)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @SetLastError(i32) #2

declare dso_local i8* @PathAddBackslashA(i8*) #2

declare dso_local i32 @ok(i32, i8*, ...) #2

declare dso_local i32 @GetLastError(...) #2

declare dso_local i32 @lstrlenA(i8*) #2

declare dso_local i32 @lstrcpyA(i8*, i8*) #2

declare dso_local i32 @lstrcmpA(i8*, i8*) #2

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
