; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_module.c_testGetModuleFileName.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_module.c_testGetModuleFileName.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_PATH = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"LastError was not reset: %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"Getting module filename for handle %p\0A\00", align 1
@is_unicode_enabled = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [49 x i8] c"Unexpected length of GetModuleFilenameA (%d/%d)\0A\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"Unexpected length of GetModuleFilenameW (%d/%d)\0A\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"Comparing GetModuleFilenameAW results\0A\00", align 1
@.str.5 = private unnamed_addr constant [61 x i8] c"Comparing GetModuleFilenameAW results with buffer too small\0A\00", align 1
@.str.6 = private unnamed_addr constant [68 x i8] c"Correct length in GetModuleFilenameW with buffer too small (%d/%d)\0A\00", align 1
@.str.7 = private unnamed_addr constant [68 x i8] c"Correct length in GetModuleFilenameA with buffer too small (%d/%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @testGetModuleFileName to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @testGetModuleFileName(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %11 = load i32, i32* @MAX_PATH, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %4, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %5, align 8
  %15 = load i32, i32* @MAX_PATH, align 4
  %16 = zext i32 %15 to i64
  %17 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %6, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %10, align 4
  %18 = load i8*, i8** %2, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %1
  %21 = load i8*, i8** %2, align 8
  %22 = call i32* @GetModuleHandleA(i8* %21)
  br label %24

23:                                               ; preds = %1
  br label %24

24:                                               ; preds = %23, %20
  %25 = phi i32* [ %22, %20 ], [ null, %23 ]
  store i32* %25, i32** %3, align 8
  %26 = trunc i64 %12 to i32
  %27 = call i32 @memset(i8* %14, i8 signext 45, i32 %26)
  %28 = call i32 @SetLastError(i32 -559038737)
  %29 = load i32*, i32** %3, align 8
  %30 = trunc i64 %12 to i32
  %31 = call i32 @GetModuleFileNameA(i32* %29, i8* %14, i32 %30)
  store i32 %31, i32* %7, align 4
  %32 = call i32 (...) @GetLastError()
  %33 = load i32, i32* @ERROR_SUCCESS, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %41, label %35

35:                                               ; preds = %24
  %36 = call i32 (...) @GetLastError()
  %37 = icmp eq i32 %36, -559038737
  %38 = zext i1 %37 to i32
  %39 = call i64 @broken(i32 %38)
  %40 = icmp ne i64 %39, 0
  br label %41

41:                                               ; preds = %35, %24
  %42 = phi i1 [ true, %24 ], [ %40, %35 ]
  %43 = zext i1 %42 to i32
  %44 = call i32 (...) @GetLastError()
  %45 = call i32 (i32, i8*, ...) @ok(i32 %43, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %44)
  %46 = load i32, i32* %7, align 4
  %47 = icmp sgt i32 %46, 0
  %48 = zext i1 %47 to i32
  %49 = load i32*, i32** %3, align 8
  %50 = call i32 (i32, i8*, ...) @ok(i32 %48, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32* %49)
  %51 = load i64, i64* @is_unicode_enabled, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %80

53:                                               ; preds = %41
  %54 = trunc i64 %16 to i32
  %55 = call i32 @memset(i8* %17, i8 signext 45, i32 %54)
  %56 = call i32 @SetLastError(i32 -559038737)
  %57 = load i32*, i32** %3, align 8
  %58 = udiv i64 %16, 1
  %59 = trunc i64 %58 to i32
  %60 = call i32 @GetModuleFileNameW(i32* %57, i8* %17, i32 %59)
  store i32 %60, i32* %8, align 4
  %61 = call i32 (...) @GetLastError()
  %62 = load i32, i32* @ERROR_SUCCESS, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %70, label %64

64:                                               ; preds = %53
  %65 = call i32 (...) @GetLastError()
  %66 = icmp eq i32 %65, -559038737
  %67 = zext i1 %66 to i32
  %68 = call i64 @broken(i32 %67)
  %69 = icmp ne i64 %68, 0
  br label %70

70:                                               ; preds = %64, %53
  %71 = phi i1 [ true, %53 ], [ %69, %64 ]
  %72 = zext i1 %71 to i32
  %73 = call i32 (...) @GetLastError()
  %74 = call i32 (i32, i8*, ...) @ok(i32 %72, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %73)
  %75 = load i32, i32* %8, align 4
  %76 = icmp sgt i32 %75, 0
  %77 = zext i1 %76 to i32
  %78 = load i32*, i32** %3, align 8
  %79 = call i32 (i32, i8*, ...) @ok(i32 %77, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32* %78)
  br label %80

80:                                               ; preds = %70, %41
  %81 = load i32, i32* %7, align 4
  %82 = call i32 @strlen(i8* %14)
  %83 = icmp eq i32 %81, %82
  %84 = zext i1 %83 to i32
  %85 = load i32, i32* %7, align 4
  %86 = call i32 @lstrlenA(i8* %14)
  %87 = call i32 (i32, i8*, ...) @ok(i32 %84, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i32 %85, i32 %86)
  %88 = load i64, i64* @is_unicode_enabled, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %102

90:                                               ; preds = %80
  %91 = load i32, i32* %8, align 4
  %92 = call i32 @lstrlenW(i8* %17)
  %93 = icmp eq i32 %91, %92
  %94 = zext i1 %93 to i32
  %95 = load i32, i32* %8, align 4
  %96 = call i32 @lstrlenW(i8* %17)
  %97 = call i32 (i32, i8*, ...) @ok(i32 %94, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0), i32 %95, i32 %96)
  %98 = load i32, i32* %7, align 4
  %99 = load i32, i32* %8, align 4
  %100 = call i32 @cmpStrAW(i8* %14, i8* %17, i32 %98, i32 %99)
  %101 = call i32 (i32, i8*, ...) @ok(i32 %100, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0))
  br label %102

102:                                              ; preds = %90, %80
  %103 = trunc i64 %12 to i32
  %104 = call i32 @memset(i8* %14, i8 signext 45, i32 %103)
  %105 = load i32*, i32** %3, align 8
  %106 = load i32, i32* %7, align 4
  %107 = sdiv i32 %106, 2
  %108 = call i32 @GetModuleFileNameA(i32* %105, i8* %14, i32 %107)
  store i32 %108, i32* %9, align 4
  %109 = load i32, i32* %9, align 4
  %110 = icmp sgt i32 %109, 0
  %111 = zext i1 %110 to i32
  %112 = load i32*, i32** %3, align 8
  %113 = call i32 (i32, i8*, ...) @ok(i32 %111, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32* %112)
  %114 = load i64, i64* @is_unicode_enabled, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %141

116:                                              ; preds = %102
  %117 = trunc i64 %16 to i32
  %118 = call i32 @memset(i8* %17, i8 signext 45, i32 %117)
  %119 = load i32*, i32** %3, align 8
  %120 = load i32, i32* %8, align 4
  %121 = sdiv i32 %120, 2
  %122 = call i32 @GetModuleFileNameW(i32* %119, i8* %17, i32 %121)
  store i32 %122, i32* %10, align 4
  %123 = load i32, i32* %10, align 4
  %124 = icmp sgt i32 %123, 0
  %125 = zext i1 %124 to i32
  %126 = load i32*, i32** %3, align 8
  %127 = call i32 (i32, i8*, ...) @ok(i32 %125, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32* %126)
  %128 = load i32, i32* %9, align 4
  %129 = load i32, i32* %10, align 4
  %130 = call i32 @cmpStrAW(i8* %14, i8* %17, i32 %128, i32 %129)
  %131 = call i32 (i32, i8*, ...) @ok(i32 %130, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.5, i64 0, i64 0))
  %132 = load i32, i32* %8, align 4
  %133 = sdiv i32 %132, 2
  %134 = load i32, i32* %10, align 4
  %135 = icmp eq i32 %133, %134
  %136 = zext i1 %135 to i32
  %137 = load i32, i32* %8, align 4
  %138 = sdiv i32 %137, 2
  %139 = load i32, i32* %10, align 4
  %140 = call i32 (i32, i8*, ...) @ok(i32 %136, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.6, i64 0, i64 0), i32 %138, i32 %139)
  br label %141

141:                                              ; preds = %116, %102
  %142 = load i32, i32* %7, align 4
  %143 = sdiv i32 %142, 2
  %144 = load i32, i32* %9, align 4
  %145 = icmp eq i32 %143, %144
  %146 = zext i1 %145 to i32
  %147 = load i32, i32* %7, align 4
  %148 = sdiv i32 %147, 2
  %149 = load i32, i32* %9, align 4
  %150 = call i32 (i32, i8*, ...) @ok(i32 %146, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.7, i64 0, i64 0), i32 %148, i32 %149)
  %151 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %151)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @GetModuleHandleA(i8*) #2

declare dso_local i32 @memset(i8*, i8 signext, i32) #2

declare dso_local i32 @SetLastError(i32) #2

declare dso_local i32 @GetModuleFileNameA(i32*, i8*, i32) #2

declare dso_local i32 @ok(i32, i8*, ...) #2

declare dso_local i32 @GetLastError(...) #2

declare dso_local i64 @broken(i32) #2

declare dso_local i32 @GetModuleFileNameW(i32*, i8*, i32) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @lstrlenA(i8*) #2

declare dso_local i32 @lstrlenW(i8*) #2

declare dso_local i32 @cmpStrAW(i8*, i8*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
