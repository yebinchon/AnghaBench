; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/advapi32/extr_security.c_test_GetUserNameA.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/advapi32/extr_security.c_test_GetUserNameA.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@UNLEN = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"GetUserNameA returned %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Outputted buffer length was %u\0A\00", align 1
@ERROR_INSUFFICIENT_BUFFER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"Last error was %u\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"Output buffer was altered\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [41 x i8] c"GetUserNameA returned %d, last error %u\0A\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"Output buffer was untouched\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_GetUserNameA to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_GetUserNameA() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = load i32, i32* @UNLEN, align 4
  %8 = add nsw i32 %7, 1
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %1, align 8
  %11 = alloca i8, i64 %9, align 16
  store i64 %9, i64* %2, align 8
  %12 = load i32, i32* @UNLEN, align 4
  %13 = add nsw i32 %12, 1
  %14 = zext i32 %13 to i64
  %15 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %3, align 8
  %16 = call i32 @SetLastError(i32 -559038737)
  store i32 0, i32* %4, align 4
  %17 = call i32 @GetUserNameA(i8* null, i32* %4)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @FALSE, align 4
  %20 = icmp eq i32 %18, %19
  %21 = zext i1 %20 to i32
  %22 = load i32, i32* %6, align 4
  %23 = call i32 (i32, i8*, ...) @ok(i32 %21, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load i32, i32* %4, align 4
  %25 = icmp ne i32 %24, 0
  %26 = zext i1 %25 to i32
  %27 = load i32, i32* %4, align 4
  %28 = call i32 (i32, i8*, ...) @ok(i32 %26, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %27)
  %29 = call i32 (...) @GetLastError()
  %30 = load i32, i32* @ERROR_INSUFFICIENT_BUFFER, align 4
  %31 = icmp eq i32 %29, %30
  %32 = zext i1 %31 to i32
  %33 = call i32 (...) @GetLastError()
  %34 = call i32 (i32, i8*, ...) @ok(i32 %32, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %33)
  %35 = call i32 @SetLastError(i32 -559038737)
  store i32 1, i32* %4, align 4
  %36 = call i32 @GetUserNameA(i8* null, i32* %4)
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* @FALSE, align 4
  %39 = icmp eq i32 %37, %38
  %40 = zext i1 %39 to i32
  %41 = load i32, i32* %6, align 4
  %42 = call i32 (i32, i8*, ...) @ok(i32 %40, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %41)
  %43 = load i32, i32* %4, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %0
  %46 = load i32, i32* %4, align 4
  %47 = icmp ne i32 %46, 1
  br label %48

48:                                               ; preds = %45, %0
  %49 = phi i1 [ false, %0 ], [ %47, %45 ]
  %50 = zext i1 %49 to i32
  %51 = load i32, i32* %4, align 4
  %52 = call i32 (i32, i8*, ...) @ok(i32 %50, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %51)
  %53 = call i32 (...) @GetLastError()
  %54 = load i32, i32* @ERROR_INSUFFICIENT_BUFFER, align 4
  %55 = icmp eq i32 %53, %54
  %56 = zext i1 %55 to i32
  %57 = call i32 (...) @GetLastError()
  %58 = call i32 (i32, i8*, ...) @ok(i32 %56, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %57)
  %59 = trunc i64 %14 to i32
  %60 = call i32 @memset(i8* %15, i8 signext 120, i32 %59)
  %61 = call i32 @SetLastError(i32 -559038737)
  %62 = trunc i64 %14 to i32
  %63 = call i32 @memcpy(i8* %11, i8* %15, i32 %62)
  store i32 0, i32* %4, align 4
  %64 = call i32 @GetUserNameA(i8* %11, i32* %4)
  store i32 %64, i32* %6, align 4
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* @FALSE, align 4
  %67 = icmp eq i32 %65, %66
  %68 = zext i1 %67 to i32
  %69 = load i32, i32* %6, align 4
  %70 = call i32 (i32, i8*, ...) @ok(i32 %68, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %69)
  %71 = trunc i64 %14 to i32
  %72 = call i64 @memcmp(i8* %11, i8* %15, i32 %71)
  %73 = icmp ne i64 %72, 0
  %74 = xor i1 %73, true
  %75 = zext i1 %74 to i32
  %76 = call i32 (i32, i8*, ...) @ok(i32 %75, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %77 = load i32, i32* %4, align 4
  %78 = icmp ne i32 %77, 0
  %79 = zext i1 %78 to i32
  %80 = load i32, i32* %4, align 4
  %81 = call i32 (i32, i8*, ...) @ok(i32 %79, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %80)
  %82 = call i32 (...) @GetLastError()
  %83 = load i32, i32* @ERROR_INSUFFICIENT_BUFFER, align 4
  %84 = icmp eq i32 %82, %83
  %85 = zext i1 %84 to i32
  %86 = call i32 (...) @GetLastError()
  %87 = call i32 (i32, i8*, ...) @ok(i32 %85, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %86)
  %88 = call i32 @SetLastError(i32 -559038737)
  %89 = trunc i64 %14 to i32
  %90 = call i32 @memcpy(i8* %11, i8* %15, i32 %89)
  %91 = load i32, i32* %4, align 4
  store i32 %91, i32* %5, align 4
  %92 = call i32 @GetUserNameA(i8* %11, i32* %5)
  store i32 %92, i32* %6, align 4
  %93 = load i32, i32* %6, align 4
  %94 = load i32, i32* @TRUE, align 4
  %95 = icmp eq i32 %93, %94
  %96 = zext i1 %95 to i32
  %97 = load i32, i32* %6, align 4
  %98 = call i32 (...) @GetLastError()
  %99 = call i32 (i32, i8*, ...) @ok(i32 %96, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i32 %97, i32 %98)
  %100 = trunc i64 %14 to i32
  %101 = call i64 @memcmp(i8* %11, i8* %15, i32 %100)
  %102 = icmp ne i64 %101, 0
  %103 = zext i1 %102 to i32
  %104 = call i32 (i32, i8*, ...) @ok(i32 %103, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  %105 = load i32, i32* %5, align 4
  %106 = load i32, i32* %4, align 4
  %107 = icmp eq i32 %105, %106
  br i1 %107, label %118, label %108

108:                                              ; preds = %48
  %109 = load i32, i32* %5, align 4
  %110 = sext i32 %109 to i64
  %111 = load i32, i32* %4, align 4
  %112 = sext i32 %111 to i64
  %113 = udiv i64 %112, 4
  %114 = icmp eq i64 %110, %113
  %115 = zext i1 %114 to i32
  %116 = call i64 @broken(i32 %115)
  %117 = icmp ne i64 %116, 0
  br label %118

118:                                              ; preds = %108, %48
  %119 = phi i1 [ true, %48 ], [ %117, %108 ]
  %120 = zext i1 %119 to i32
  %121 = load i32, i32* %5, align 4
  %122 = call i32 (i32, i8*, ...) @ok(i32 %120, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %121)
  %123 = call i32 @SetLastError(i32 -559038737)
  %124 = trunc i64 %14 to i32
  %125 = call i32 @memcpy(i8* %11, i8* %15, i32 %124)
  %126 = load i32, i32* %5, align 4
  %127 = add nsw i32 %126, -1
  store i32 %127, i32* %5, align 4
  %128 = call i32 @GetUserNameA(i8* %11, i32* %5)
  store i32 %128, i32* %6, align 4
  %129 = load i32, i32* %6, align 4
  %130 = load i32, i32* @FALSE, align 4
  %131 = icmp eq i32 %129, %130
  %132 = zext i1 %131 to i32
  %133 = load i32, i32* %6, align 4
  %134 = call i32 (i32, i8*, ...) @ok(i32 %132, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %133)
  %135 = trunc i64 %14 to i32
  %136 = call i64 @memcmp(i8* %11, i8* %15, i32 %135)
  %137 = icmp ne i64 %136, 0
  %138 = xor i1 %137, true
  %139 = zext i1 %138 to i32
  %140 = call i32 (i32, i8*, ...) @ok(i32 %139, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  %141 = load i32, i32* %5, align 4
  %142 = load i32, i32* %4, align 4
  %143 = icmp eq i32 %141, %142
  %144 = zext i1 %143 to i32
  %145 = load i32, i32* %5, align 4
  %146 = call i32 (i32, i8*, ...) @ok(i32 %144, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %145)
  %147 = call i32 (...) @GetLastError()
  %148 = load i32, i32* @ERROR_INSUFFICIENT_BUFFER, align 4
  %149 = icmp eq i32 %147, %148
  %150 = zext i1 %149 to i32
  %151 = call i32 (...) @GetLastError()
  %152 = call i32 (i32, i8*, ...) @ok(i32 %150, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %151)
  %153 = load i8*, i8** %1, align 8
  call void @llvm.stackrestore(i8* %153)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @SetLastError(i32) #2

declare dso_local i32 @GetUserNameA(i8*, i32*) #2

declare dso_local i32 @ok(i32, i8*, ...) #2

declare dso_local i32 @GetLastError(...) #2

declare dso_local i32 @memset(i8*, i8 signext, i32) #2

declare dso_local i32 @memcpy(i8*, i8*, i32) #2

declare dso_local i64 @memcmp(i8*, i8*, i32) #2

declare dso_local i64 @broken(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
