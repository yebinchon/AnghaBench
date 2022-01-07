; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_codepage.c_test_destination_buffer.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_codepage.c_test_destination_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CP_ACP = common dso_local global i32 0, align 4
@foobarW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"returned %d with %u (expected '> 0')\0A\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"returned %d with %u and '%s' (expected '> 0')\0A\00", align 1
@ERROR_INSUFFICIENT_BUFFER = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [76 x i8] c"returned %d with %u and '%s' (expected '0' with ERROR_INSUFFICIENT_BUFFER)\0A\00", align 1
@ERROR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [65 x i8] c"returned %d with %u (expected '0' with ERROR_INVALID_PARAMETER)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_destination_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_destination_buffer() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = call i32 @SetLastError(i32 -559038737)
  %6 = load i32, i32* @CP_ACP, align 4
  %7 = load i32, i32* @foobarW, align 4
  %8 = call i32 @WideCharToMultiByte(i32 %6, i32 0, i32 %7, i32 -1, i8* null, i32 0, i32* null, i32* null)
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = icmp sgt i32 %9, 0
  %11 = zext i1 %10 to i32
  %12 = load i32, i32* %3, align 4
  %13 = call i64 (...) @GetLastError()
  %14 = call i32 (i32, i8*, i32, i64, ...) @ok(i32 %11, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %12, i64 %13)
  %15 = load i32, i32* %3, align 4
  %16 = mul nsw i32 %15, 2
  store i32 %16, i32* %2, align 4
  %17 = call i32 (...) @GetProcessHeap()
  %18 = load i32, i32* %2, align 4
  %19 = call i8* @HeapAlloc(i32 %17, i32 0, i32 %18)
  store i8* %19, i8** %1, align 8
  %20 = load i8*, i8** %1, align 8
  %21 = icmp eq i8* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %0
  br label %150

23:                                               ; preds = %0
  %24 = load i32, i32* %2, align 4
  %25 = add nsw i32 %24, -1
  store i32 %25, i32* %2, align 4
  %26 = load i8*, i8** %1, align 8
  %27 = load i32, i32* %2, align 4
  %28 = call i32 @memset(i8* %26, i8 signext 120, i32 %27)
  %29 = load i8*, i8** %1, align 8
  %30 = load i32, i32* %2, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8, i8* %29, i64 %31
  store i8 0, i8* %32, align 1
  %33 = call i32 @SetLastError(i32 -559038737)
  %34 = load i32, i32* @CP_ACP, align 4
  %35 = load i32, i32* @foobarW, align 4
  %36 = load i8*, i8** %1, align 8
  %37 = load i32, i32* %3, align 4
  %38 = add nsw i32 %37, 1
  %39 = call i32 @WideCharToMultiByte(i32 %34, i32 0, i32 %35, i32 -1, i8* %36, i32 %38, i32* null, i32* null)
  store i32 %39, i32* %4, align 4
  %40 = load i32, i32* %4, align 4
  %41 = icmp sgt i32 %40, 0
  %42 = zext i1 %41 to i32
  %43 = load i32, i32* %4, align 4
  %44 = call i64 (...) @GetLastError()
  %45 = load i8*, i8** %1, align 8
  %46 = call i32 (i32, i8*, i32, i64, ...) @ok(i32 %42, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %43, i64 %44, i8* %45)
  %47 = load i8*, i8** %1, align 8
  %48 = load i32, i32* %2, align 4
  %49 = call i32 @memset(i8* %47, i8 signext 120, i32 %48)
  %50 = load i8*, i8** %1, align 8
  %51 = load i32, i32* %2, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8, i8* %50, i64 %52
  store i8 0, i8* %53, align 1
  %54 = call i32 @SetLastError(i32 -559038737)
  %55 = load i32, i32* @CP_ACP, align 4
  %56 = load i32, i32* @foobarW, align 4
  %57 = load i8*, i8** %1, align 8
  %58 = load i32, i32* %3, align 4
  %59 = call i32 @WideCharToMultiByte(i32 %55, i32 0, i32 %56, i32 -1, i8* %57, i32 %58, i32* null, i32* null)
  store i32 %59, i32* %4, align 4
  %60 = load i32, i32* %4, align 4
  %61 = icmp sgt i32 %60, 0
  %62 = zext i1 %61 to i32
  %63 = load i32, i32* %4, align 4
  %64 = call i64 (...) @GetLastError()
  %65 = load i8*, i8** %1, align 8
  %66 = call i32 (i32, i8*, i32, i64, ...) @ok(i32 %62, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %63, i64 %64, i8* %65)
  %67 = load i8*, i8** %1, align 8
  %68 = load i32, i32* %2, align 4
  %69 = call i32 @memset(i8* %67, i8 signext 120, i32 %68)
  %70 = load i8*, i8** %1, align 8
  %71 = load i32, i32* %2, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i8, i8* %70, i64 %72
  store i8 0, i8* %73, align 1
  %74 = call i32 @SetLastError(i32 -559038737)
  %75 = load i32, i32* @CP_ACP, align 4
  %76 = load i32, i32* @foobarW, align 4
  %77 = load i8*, i8** %1, align 8
  %78 = load i32, i32* %3, align 4
  %79 = sub nsw i32 %78, 1
  %80 = call i32 @WideCharToMultiByte(i32 %75, i32 0, i32 %76, i32 -1, i8* %77, i32 %79, i32* null, i32* null)
  store i32 %80, i32* %4, align 4
  %81 = load i32, i32* %4, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %87, label %83

83:                                               ; preds = %23
  %84 = call i64 (...) @GetLastError()
  %85 = load i64, i64* @ERROR_INSUFFICIENT_BUFFER, align 8
  %86 = icmp eq i64 %84, %85
  br label %87

87:                                               ; preds = %83, %23
  %88 = phi i1 [ false, %23 ], [ %86, %83 ]
  %89 = zext i1 %88 to i32
  %90 = load i32, i32* %4, align 4
  %91 = call i64 (...) @GetLastError()
  %92 = load i8*, i8** %1, align 8
  %93 = call i32 (i32, i8*, i32, i64, ...) @ok(i32 %89, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.2, i64 0, i64 0), i32 %90, i64 %91, i8* %92)
  %94 = load i8*, i8** %1, align 8
  %95 = load i32, i32* %2, align 4
  %96 = call i32 @memset(i8* %94, i8 signext 120, i32 %95)
  %97 = load i8*, i8** %1, align 8
  %98 = load i32, i32* %2, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i8, i8* %97, i64 %99
  store i8 0, i8* %100, align 1
  %101 = call i32 @SetLastError(i32 -559038737)
  %102 = load i32, i32* @CP_ACP, align 4
  %103 = load i32, i32* @foobarW, align 4
  %104 = load i8*, i8** %1, align 8
  %105 = call i32 @WideCharToMultiByte(i32 %102, i32 0, i32 %103, i32 -1, i8* %104, i32 1, i32* null, i32* null)
  store i32 %105, i32* %4, align 4
  %106 = load i32, i32* %4, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %112, label %108

108:                                              ; preds = %87
  %109 = call i64 (...) @GetLastError()
  %110 = load i64, i64* @ERROR_INSUFFICIENT_BUFFER, align 8
  %111 = icmp eq i64 %109, %110
  br label %112

112:                                              ; preds = %108, %87
  %113 = phi i1 [ false, %87 ], [ %111, %108 ]
  %114 = zext i1 %113 to i32
  %115 = load i32, i32* %4, align 4
  %116 = call i64 (...) @GetLastError()
  %117 = load i8*, i8** %1, align 8
  %118 = call i32 (i32, i8*, i32, i64, ...) @ok(i32 %114, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.2, i64 0, i64 0), i32 %115, i64 %116, i8* %117)
  %119 = call i32 @SetLastError(i32 -559038737)
  %120 = load i32, i32* @CP_ACP, align 4
  %121 = load i32, i32* @foobarW, align 4
  %122 = load i8*, i8** %1, align 8
  %123 = call i32 @WideCharToMultiByte(i32 %120, i32 0, i32 %121, i32 -1, i8* %122, i32 0, i32* null, i32* null)
  store i32 %123, i32* %4, align 4
  %124 = load i32, i32* %4, align 4
  %125 = icmp sgt i32 %124, 0
  %126 = zext i1 %125 to i32
  %127 = load i32, i32* %4, align 4
  %128 = call i64 (...) @GetLastError()
  %129 = call i32 (i32, i8*, i32, i64, ...) @ok(i32 %126, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %127, i64 %128)
  %130 = call i32 @SetLastError(i32 -559038737)
  %131 = load i32, i32* @CP_ACP, align 4
  %132 = load i32, i32* @foobarW, align 4
  %133 = load i32, i32* %3, align 4
  %134 = call i32 @WideCharToMultiByte(i32 %131, i32 0, i32 %132, i32 -1, i8* null, i32 %133, i32* null, i32* null)
  store i32 %134, i32* %4, align 4
  %135 = load i32, i32* %4, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %141, label %137

137:                                              ; preds = %112
  %138 = call i64 (...) @GetLastError()
  %139 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  %140 = icmp eq i64 %138, %139
  br label %141

141:                                              ; preds = %137, %112
  %142 = phi i1 [ false, %112 ], [ %140, %137 ]
  %143 = zext i1 %142 to i32
  %144 = load i32, i32* %4, align 4
  %145 = call i64 (...) @GetLastError()
  %146 = call i32 (i32, i8*, i32, i64, ...) @ok(i32 %143, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.3, i64 0, i64 0), i32 %144, i64 %145)
  %147 = call i32 (...) @GetProcessHeap()
  %148 = load i8*, i8** %1, align 8
  %149 = call i32 @HeapFree(i32 %147, i32 0, i8* %148)
  br label %150

150:                                              ; preds = %141, %22
  ret void
}

declare dso_local i32 @SetLastError(i32) #1

declare dso_local i32 @WideCharToMultiByte(i32, i32, i32, i32, i8*, i32, i32*, i32*) #1

declare dso_local i32 @ok(i32, i8*, i32, i64, ...) #1

declare dso_local i64 @GetLastError(...) #1

declare dso_local i8* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @memset(i8*, i8 signext, i32) #1

declare dso_local i32 @HeapFree(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
