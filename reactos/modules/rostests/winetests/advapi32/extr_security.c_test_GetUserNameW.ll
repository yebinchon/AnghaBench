; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/advapi32/extr_security.c_test_GetUserNameW.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/advapi32/extr_security.c_test_GetUserNameW.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@UNLEN = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"GetUserNameW returned %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Outputted buffer length was %u\0A\00", align 1
@ERROR_INSUFFICIENT_BUFFER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"Last error was %u\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"Output buffer was altered\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [41 x i8] c"GetUserNameW returned %d, last error %u\0A\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"Output buffer was untouched\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_GetUserNameW to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_GetUserNameW() #0 {
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
  %11 = alloca i32, i64 %9, align 16
  store i64 %9, i64* %2, align 8
  %12 = load i32, i32* @UNLEN, align 4
  %13 = add nsw i32 %12, 1
  %14 = zext i32 %13 to i64
  %15 = alloca i32, i64 %14, align 16
  store i64 %14, i64* %3, align 8
  %16 = call i32 @SetLastError(i32 -559038737)
  store i32 0, i32* %4, align 4
  %17 = call i32 @GetUserNameW(i32* null, i32* %4)
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
  %36 = call i32 @GetUserNameW(i32* null, i32* %4)
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
  %59 = mul nuw i64 4, %14
  %60 = trunc i64 %59 to i32
  %61 = call i32 @memset(i32* %15, i8 signext 120, i32 %60)
  %62 = call i32 @SetLastError(i32 -559038737)
  %63 = mul nuw i64 4, %14
  %64 = trunc i64 %63 to i32
  %65 = call i32 @memcpy(i32* %11, i32* %15, i32 %64)
  store i32 0, i32* %4, align 4
  %66 = call i32 @GetUserNameW(i32* %11, i32* %4)
  store i32 %66, i32* %6, align 4
  %67 = load i32, i32* %6, align 4
  %68 = load i32, i32* @FALSE, align 4
  %69 = icmp eq i32 %67, %68
  %70 = zext i1 %69 to i32
  %71 = load i32, i32* %6, align 4
  %72 = call i32 (i32, i8*, ...) @ok(i32 %70, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %71)
  %73 = mul nuw i64 4, %14
  %74 = trunc i64 %73 to i32
  %75 = call i64 @memcmp(i32* %11, i32* %15, i32 %74)
  %76 = icmp ne i64 %75, 0
  %77 = xor i1 %76, true
  %78 = zext i1 %77 to i32
  %79 = call i32 (i32, i8*, ...) @ok(i32 %78, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %80 = load i32, i32* %4, align 4
  %81 = icmp ne i32 %80, 0
  %82 = zext i1 %81 to i32
  %83 = load i32, i32* %4, align 4
  %84 = call i32 (i32, i8*, ...) @ok(i32 %82, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %83)
  %85 = call i32 (...) @GetLastError()
  %86 = load i32, i32* @ERROR_INSUFFICIENT_BUFFER, align 4
  %87 = icmp eq i32 %85, %86
  %88 = zext i1 %87 to i32
  %89 = call i32 (...) @GetLastError()
  %90 = call i32 (i32, i8*, ...) @ok(i32 %88, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %89)
  %91 = call i32 @SetLastError(i32 -559038737)
  %92 = mul nuw i64 4, %14
  %93 = trunc i64 %92 to i32
  %94 = call i32 @memcpy(i32* %11, i32* %15, i32 %93)
  %95 = load i32, i32* %4, align 4
  store i32 %95, i32* %5, align 4
  %96 = call i32 @GetUserNameW(i32* %11, i32* %5)
  store i32 %96, i32* %6, align 4
  %97 = load i32, i32* %6, align 4
  %98 = load i32, i32* @TRUE, align 4
  %99 = icmp eq i32 %97, %98
  %100 = zext i1 %99 to i32
  %101 = load i32, i32* %6, align 4
  %102 = call i32 (...) @GetLastError()
  %103 = call i32 (i32, i8*, ...) @ok(i32 %100, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i32 %101, i32 %102)
  %104 = mul nuw i64 4, %14
  %105 = trunc i64 %104 to i32
  %106 = call i64 @memcmp(i32* %11, i32* %15, i32 %105)
  %107 = icmp ne i64 %106, 0
  %108 = zext i1 %107 to i32
  %109 = call i32 (i32, i8*, ...) @ok(i32 %108, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  %110 = load i32, i32* %5, align 4
  %111 = load i32, i32* %4, align 4
  %112 = icmp eq i32 %110, %111
  %113 = zext i1 %112 to i32
  %114 = load i32, i32* %5, align 4
  %115 = call i32 (i32, i8*, ...) @ok(i32 %113, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %114)
  %116 = call i32 @SetLastError(i32 -559038737)
  %117 = mul nuw i64 4, %14
  %118 = trunc i64 %117 to i32
  %119 = call i32 @memcpy(i32* %11, i32* %15, i32 %118)
  %120 = load i32, i32* %5, align 4
  %121 = add nsw i32 %120, -1
  store i32 %121, i32* %5, align 4
  %122 = call i32 @GetUserNameW(i32* %11, i32* %5)
  store i32 %122, i32* %6, align 4
  %123 = load i32, i32* %6, align 4
  %124 = load i32, i32* @FALSE, align 4
  %125 = icmp eq i32 %123, %124
  %126 = zext i1 %125 to i32
  %127 = load i32, i32* %6, align 4
  %128 = call i32 (i32, i8*, ...) @ok(i32 %126, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %127)
  %129 = mul nuw i64 4, %14
  %130 = trunc i64 %129 to i32
  %131 = call i64 @memcmp(i32* %11, i32* %15, i32 %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %141

133:                                              ; preds = %48
  %134 = mul nuw i64 4, %14
  %135 = trunc i64 %134 to i32
  %136 = call i64 @memcmp(i32* %11, i32* %15, i32 %135)
  %137 = icmp ne i64 %136, 0
  %138 = zext i1 %137 to i32
  %139 = call i64 @broken(i32 %138)
  %140 = icmp ne i64 %139, 0
  br label %141

141:                                              ; preds = %133, %48
  %142 = phi i1 [ true, %48 ], [ %140, %133 ]
  %143 = zext i1 %142 to i32
  %144 = call i32 (i32, i8*, ...) @ok(i32 %143, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %145 = load i32, i32* %5, align 4
  %146 = load i32, i32* %4, align 4
  %147 = icmp eq i32 %145, %146
  %148 = zext i1 %147 to i32
  %149 = load i32, i32* %5, align 4
  %150 = call i32 (i32, i8*, ...) @ok(i32 %148, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %149)
  %151 = call i32 (...) @GetLastError()
  %152 = load i32, i32* @ERROR_INSUFFICIENT_BUFFER, align 4
  %153 = icmp eq i32 %151, %152
  %154 = zext i1 %153 to i32
  %155 = call i32 (...) @GetLastError()
  %156 = call i32 (i32, i8*, ...) @ok(i32 %154, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %155)
  %157 = load i8*, i8** %1, align 8
  call void @llvm.stackrestore(i8* %157)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @SetLastError(i32) #2

declare dso_local i32 @GetUserNameW(i32*, i32*) #2

declare dso_local i32 @ok(i32, i8*, ...) #2

declare dso_local i32 @GetLastError(...) #2

declare dso_local i32 @memset(i32*, i8 signext, i32) #2

declare dso_local i32 @memcpy(i32*, i32*, i32) #2

declare dso_local i64 @memcmp(i32*, i32*, i32) #2

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
