; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/user32/extr_resource.c_test_LoadStringW.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/user32/extr_resource.c_test_LoadStringW.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ERROR_CALL_NOT_IMPLEMENTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"LoadStringW not implemented\0A\00", align 1
@.str.1 = private unnamed_addr constant [55 x i8] c"LoadStringW does not return a pointer to the resource\0A\00", align 1
@.str.2 = private unnamed_addr constant [55 x i8] c"LoadStringW failed to load resource 2, ret %d, err %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [77 x i8] c"LoadStringW returned different values dependent on buflen. ret1 %d, ret2 %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [65 x i8] c"LoadStringW failed to get pointer to resource 2, ret %d, err %d\0A\00", align 1
@CP_ACP = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [61 x i8] c"strings don't match: returnedstring = %s, copiedstring = %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [85 x i8] c"LoadStringW returned a non-zero value when called with buffer = NULL, retvalue = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_LoadStringW to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_LoadStringW() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [128 x i8], align 16
  %3 = alloca [128 x i8], align 16
  %4 = alloca i8*, align 8
  %5 = alloca [128 x i8], align 16
  %6 = alloca [128 x i8], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = call i32 @GetModuleHandleA(i32* null)
  store i32 %10, i32* %1, align 4
  store i8* null, i8** %4, align 8
  %11 = call i32 @SetLastError(i32 -559038737)
  %12 = load i32, i32* %1, align 4
  %13 = bitcast i8** %4 to i8*
  %14 = call i32 @LoadStringW(i32 %12, i32 2, i8* %13, i32 0)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %26, label %17

17:                                               ; preds = %0
  %18 = call i32 (...) @GetLastError()
  %19 = load i32, i32* @ERROR_CALL_NOT_IMPLEMENTED, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = call i32 @win_skip(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %25

23:                                               ; preds = %17
  %24 = call i32 @win_skip(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0))
  br label %25

25:                                               ; preds = %23, %21
  br label %106

26:                                               ; preds = %0
  %27 = load i32, i32* %1, align 4
  %28 = getelementptr inbounds [128 x i8], [128 x i8]* %3, i64 0, i64 0
  %29 = call i32 @LoadStringW(i32 %27, i32 2, i8* %28, i32 128)
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp sgt i32 %30, 0
  %32 = zext i1 %31 to i32
  %33 = load i32, i32* %8, align 4
  %34 = call i32 (...) @GetLastError()
  %35 = call i32 (i32, i8*, ...) @ok(i32 %32, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0), i32 %33, i32 %34)
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* %8, align 4
  %38 = icmp eq i32 %36, %37
  %39 = zext i1 %38 to i32
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* %8, align 4
  %42 = call i32 (i32, i8*, ...) @ok(i32 %39, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.3, i64 0, i64 0), i32 %40, i32 %41)
  %43 = load i32, i32* %7, align 4
  %44 = icmp sgt i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %26
  %46 = load i8*, i8** %4, align 8
  %47 = icmp ne i8* %46, null
  br label %48

48:                                               ; preds = %45, %26
  %49 = phi i1 [ false, %26 ], [ %47, %45 ]
  %50 = zext i1 %49 to i32
  %51 = load i32, i32* %7, align 4
  %52 = call i32 (...) @GetLastError()
  %53 = call i32 (i32, i8*, ...) @ok(i32 %50, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.4, i64 0, i64 0), i32 %51, i32 %52)
  %54 = load i8*, i8** %4, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %56, label %89

56:                                               ; preds = %48
  %57 = getelementptr inbounds [128 x i8], [128 x i8]* %2, i64 0, i64 0
  %58 = load i8*, i8** %4, align 8
  %59 = load i32, i32* %7, align 4
  %60 = sext i32 %59 to i64
  %61 = mul i64 %60, 1
  %62 = trunc i64 %61 to i32
  %63 = call i32 @memcpy(i8* %57, i8* %58, i32 %62)
  %64 = load i32, i32* %7, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds [128 x i8], [128 x i8]* %2, i64 0, i64 %65
  store i8 0, i8* %66, align 1
  %67 = load i32, i32* @CP_ACP, align 4
  %68 = getelementptr inbounds [128 x i8], [128 x i8]* %3, i64 0, i64 0
  %69 = getelementptr inbounds [128 x i8], [128 x i8]* %6, i64 0, i64 0
  %70 = call i32 @WideCharToMultiByte(i32 %67, i32 0, i8* %68, i32 -1, i8* %69, i32 128, i32* null, i32* null)
  %71 = load i32, i32* @CP_ACP, align 4
  %72 = getelementptr inbounds [128 x i8], [128 x i8]* %2, i64 0, i64 0
  %73 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %74 = call i32 @WideCharToMultiByte(i32 %71, i32 0, i8* %72, i32 -1, i8* %73, i32 128, i32* null, i32* null)
  %75 = getelementptr inbounds [128 x i8], [128 x i8]* %2, i64 0, i64 0
  %76 = getelementptr inbounds [128 x i8], [128 x i8]* %3, i64 0, i64 0
  %77 = load i32, i32* %8, align 4
  %78 = add nsw i32 %77, 1
  %79 = sext i32 %78 to i64
  %80 = mul i64 %79, 1
  %81 = trunc i64 %80 to i32
  %82 = call i32 @memcmp(i8* %75, i8* %76, i32 %81)
  %83 = icmp ne i32 %82, 0
  %84 = xor i1 %83, true
  %85 = zext i1 %84 to i32
  %86 = getelementptr inbounds [128 x i8], [128 x i8]* %6, i64 0, i64 0
  %87 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %88 = call i32 (i32, i8*, ...) @ok(i32 %85, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.5, i64 0, i64 0), i8* %86, i8* %87)
  br label %89

89:                                               ; preds = %56, %48
  %90 = load i32, i32* %1, align 4
  %91 = call i32 @LoadStringW(i32 %90, i32 2, i8* null, i32 0)
  store i32 %91, i32* %9, align 4
  %92 = load i32, i32* %9, align 4
  %93 = icmp ne i32 %92, 0
  %94 = xor i1 %93, true
  %95 = zext i1 %94 to i32
  %96 = load i32, i32* %9, align 4
  %97 = call i32 (i32, i8*, ...) @ok(i32 %95, i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.6, i64 0, i64 0), i32 %96)
  %98 = load i32, i32* %1, align 4
  %99 = call i32 @LoadStringW(i32 %98, i32 2, i8* null, i32 128)
  store i32 %99, i32* %9, align 4
  %100 = load i32, i32* %9, align 4
  %101 = icmp ne i32 %100, 0
  %102 = xor i1 %101, true
  %103 = zext i1 %102 to i32
  %104 = load i32, i32* %9, align 4
  %105 = call i32 (i32, i8*, ...) @ok(i32 %103, i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.6, i64 0, i64 0), i32 %104)
  br label %106

106:                                              ; preds = %89, %25
  ret void
}

declare dso_local i32 @GetModuleHandleA(i32*) #1

declare dso_local i32 @SetLastError(i32) #1

declare dso_local i32 @LoadStringW(i32, i32, i8*, i32) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i32 @win_skip(i8*) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @WideCharToMultiByte(i32, i32, i8*, i32, i8*, i32, i32*, i32*) #1

declare dso_local i32 @memcmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
