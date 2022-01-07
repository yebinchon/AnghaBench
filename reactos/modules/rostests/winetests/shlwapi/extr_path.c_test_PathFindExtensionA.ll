; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/shlwapi/extr_path.c_test_PathFindExtensionA.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/shlwapi/extr_path.c_test_PathFindExtensionA.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_PATH = common dso_local global i32 0, align 4
@LONG_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Expected NULL, got %p\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Expected 0xdeadbeef, got %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"Expected ext == path, got %p\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"Expected length 0, got %i\0A\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"file\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"file.txt\00", align 1
@.str.6 = private unnamed_addr constant [49 x i8] c"Expected ext == path + lstrlenA(\22file\22), got %p\0A\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c".txt\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"Expected .txt, got %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"file.txt.doc\00", align 1
@.str.10 = private unnamed_addr constant [53 x i8] c"Expected ext == path + lstrlenA(\22file.txt\22), got %p\0A\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c".doc\00", align 1
@.str.12 = private unnamed_addr constant [49 x i8] c"Expected ext == too_long + LONG_LEN - 1, got %p\0A\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c".abcde\00", align 1
@.str.14 = private unnamed_addr constant [40 x i8] c"Expected ext == too_long + 300, got %p\0A\00", align 1
@.str.15 = private unnamed_addr constant [33 x i8] c"Expected LONG_LEN - 301, got %i\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_PathFindExtensionA to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_PathFindExtensionA() #0 {
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
  %13 = call i8* @PathFindExtensionA(i8* null)
  store i8* %13, i8** %1, align 8
  %14 = load i8*, i8** %1, align 8
  %15 = icmp eq i8* %14, null
  %16 = zext i1 %15 to i32
  %17 = load i8*, i8** %1, align 8
  %18 = call i32 (i32, i8*, ...) @ok(i32 %16, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* %17)
  %19 = call i32 (...) @GetLastError()
  %20 = icmp eq i32 %19, -559038737
  %21 = zext i1 %20 to i32
  %22 = call i32 (...) @GetLastError()
  %23 = call i32 (i32, i8*, ...) @ok(i32 %21, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %22)
  %24 = getelementptr inbounds i8, i8* %8, i64 0
  store i8 0, i8* %24, align 16
  %25 = call i32 @SetLastError(i32 -559038737)
  %26 = call i8* @PathFindExtensionA(i8* %8)
  store i8* %26, i8** %1, align 8
  %27 = load i8*, i8** %1, align 8
  %28 = icmp eq i8* %27, %8
  %29 = zext i1 %28 to i32
  %30 = load i8*, i8** %1, align 8
  %31 = call i32 (i32, i8*, ...) @ok(i32 %29, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i8* %30)
  %32 = load i8*, i8** %1, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 0
  %34 = load i8, i8* %33, align 1
  %35 = icmp ne i8 %34, 0
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  %38 = load i8*, i8** %1, align 8
  %39 = call i32 @lstrlenA(i8* %38)
  %40 = call i32 (i32, i8*, ...) @ok(i32 %37, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %39)
  %41 = call i32 (...) @GetLastError()
  %42 = icmp eq i32 %41, -559038737
  %43 = zext i1 %42 to i32
  %44 = call i32 (...) @GetLastError()
  %45 = call i32 (i32, i8*, ...) @ok(i32 %43, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %44)
  %46 = call i32 @lstrcpyA(i8* %8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %47 = call i32 @SetLastError(i32 -559038737)
  %48 = call i8* @PathFindExtensionA(i8* %8)
  store i8* %48, i8** %1, align 8
  %49 = load i8*, i8** %1, align 8
  %50 = call i32 @lstrlenA(i8* %8)
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8, i8* %8, i64 %51
  %53 = icmp eq i8* %49, %52
  %54 = zext i1 %53 to i32
  %55 = load i8*, i8** %1, align 8
  %56 = call i32 (i32, i8*, ...) @ok(i32 %54, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i8* %55)
  %57 = load i8*, i8** %1, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 0
  %59 = load i8, i8* %58, align 1
  %60 = icmp ne i8 %59, 0
  %61 = xor i1 %60, true
  %62 = zext i1 %61 to i32
  %63 = load i8*, i8** %1, align 8
  %64 = call i32 @lstrlenA(i8* %63)
  %65 = call i32 (i32, i8*, ...) @ok(i32 %62, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %64)
  %66 = call i32 (...) @GetLastError()
  %67 = icmp eq i32 %66, -559038737
  %68 = zext i1 %67 to i32
  %69 = call i32 (...) @GetLastError()
  %70 = call i32 (i32, i8*, ...) @ok(i32 %68, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %69)
  %71 = call i32 @lstrcpyA(i8* %8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  %72 = call i32 @SetLastError(i32 -559038737)
  %73 = call i8* @PathFindExtensionA(i8* %8)
  store i8* %73, i8** %1, align 8
  %74 = load i8*, i8** %1, align 8
  %75 = call i32 @lstrlenA(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i8, i8* %8, i64 %76
  %78 = icmp eq i8* %74, %77
  %79 = zext i1 %78 to i32
  %80 = load i8*, i8** %1, align 8
  %81 = call i32 (i32, i8*, ...) @ok(i32 %79, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.6, i64 0, i64 0), i8* %80)
  %82 = load i8*, i8** %1, align 8
  %83 = call i32 @lstrcmpA(i8* %82, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  %84 = icmp ne i32 %83, 0
  %85 = xor i1 %84, true
  %86 = zext i1 %85 to i32
  %87 = load i8*, i8** %1, align 8
  %88 = call i32 (i32, i8*, ...) @ok(i32 %86, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0), i8* %87)
  %89 = call i32 (...) @GetLastError()
  %90 = icmp eq i32 %89, -559038737
  %91 = zext i1 %90 to i32
  %92 = call i32 (...) @GetLastError()
  %93 = call i32 (i32, i8*, ...) @ok(i32 %91, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %92)
  %94 = call i32 @lstrcpyA(i8* %8, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0))
  %95 = call i32 @SetLastError(i32 -559038737)
  %96 = call i8* @PathFindExtensionA(i8* %8)
  store i8* %96, i8** %1, align 8
  %97 = load i8*, i8** %1, align 8
  %98 = call i32 @lstrlenA(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i8, i8* %8, i64 %99
  %101 = icmp eq i8* %97, %100
  %102 = zext i1 %101 to i32
  %103 = load i8*, i8** %1, align 8
  %104 = call i32 (i32, i8*, ...) @ok(i32 %102, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.10, i64 0, i64 0), i8* %103)
  %105 = load i8*, i8** %1, align 8
  %106 = call i32 @lstrcmpA(i8* %105, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0))
  %107 = icmp ne i32 %106, 0
  %108 = xor i1 %107, true
  %109 = zext i1 %108 to i32
  %110 = load i8*, i8** %1, align 8
  %111 = call i32 (i32, i8*, ...) @ok(i32 %109, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0), i8* %110)
  %112 = call i32 (...) @GetLastError()
  %113 = icmp eq i32 %112, -559038737
  %114 = zext i1 %113 to i32
  %115 = call i32 (...) @GetLastError()
  %116 = call i32 (i32, i8*, ...) @ok(i32 %114, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %115)
  %117 = load i32, i32* @LONG_LEN, align 4
  %118 = call i32 @memset(i8* %11, i8 signext 97, i32 %117)
  %119 = load i32, i32* @LONG_LEN, align 4
  %120 = sub nsw i32 %119, 1
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i8, i8* %11, i64 %121
  store i8 0, i8* %122, align 1
  %123 = call i32 @SetLastError(i32 -559038737)
  %124 = call i8* @PathFindExtensionA(i8* %11)
  store i8* %124, i8** %1, align 8
  %125 = load i8*, i8** %1, align 8
  %126 = load i32, i32* @LONG_LEN, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i8, i8* %11, i64 %127
  %129 = getelementptr inbounds i8, i8* %128, i64 -1
  %130 = icmp eq i8* %125, %129
  %131 = zext i1 %130 to i32
  %132 = load i8*, i8** %1, align 8
  %133 = call i32 (i32, i8*, ...) @ok(i32 %131, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.12, i64 0, i64 0), i8* %132)
  %134 = call i32 (...) @GetLastError()
  %135 = icmp eq i32 %134, -559038737
  %136 = zext i1 %135 to i32
  %137 = call i32 (...) @GetLastError()
  %138 = call i32 (i32, i8*, ...) @ok(i32 %136, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %137)
  %139 = load i32, i32* @LONG_LEN, align 4
  %140 = call i32 @memset(i8* %11, i8 signext 97, i32 %139)
  %141 = load i32, i32* @LONG_LEN, align 4
  %142 = sub nsw i32 %141, 1
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i8, i8* %11, i64 %143
  store i8 0, i8* %144, align 1
  %145 = getelementptr inbounds i8, i8* %11, i64 300
  %146 = call i32 @lstrcpyA(i8* %145, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0))
  %147 = call i32 @lstrlenA(i8* %11)
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i8, i8* %11, i64 %148
  store i8 97, i8* %149, align 1
  %150 = call i32 @SetLastError(i32 -559038737)
  %151 = call i8* @PathFindExtensionA(i8* %11)
  store i8* %151, i8** %1, align 8
  %152 = load i8*, i8** %1, align 8
  %153 = getelementptr inbounds i8, i8* %11, i64 300
  %154 = icmp eq i8* %152, %153
  %155 = zext i1 %154 to i32
  %156 = load i8*, i8** %1, align 8
  %157 = call i32 (i32, i8*, ...) @ok(i32 %155, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.14, i64 0, i64 0), i8* %156)
  %158 = load i8*, i8** %1, align 8
  %159 = call i32 @lstrlenA(i8* %158)
  %160 = load i32, i32* @LONG_LEN, align 4
  %161 = sub nsw i32 %160, 301
  %162 = icmp eq i32 %159, %161
  %163 = zext i1 %162 to i32
  %164 = load i8*, i8** %1, align 8
  %165 = call i32 @lstrlenA(i8* %164)
  %166 = call i32 (i32, i8*, ...) @ok(i32 %163, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.15, i64 0, i64 0), i32 %165)
  %167 = call i32 (...) @GetLastError()
  %168 = icmp eq i32 %167, -559038737
  %169 = zext i1 %168 to i32
  %170 = call i32 (...) @GetLastError()
  %171 = call i32 (i32, i8*, ...) @ok(i32 %169, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %170)
  %172 = load i8*, i8** %2, align 8
  call void @llvm.stackrestore(i8* %172)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @SetLastError(i32) #2

declare dso_local i8* @PathFindExtensionA(i8*) #2

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
