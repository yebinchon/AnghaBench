; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/apitests/apphelp/extr_apphelp.c_test_ApphelpCheckShellObject.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/apitests/apphelp/extr_apphelp.c_test_ApphelpCheckShellObject.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@objects = common dso_local global i32** null, align 8
@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"%s 0: got %d and 0x%x%08x with 0x%x (expected TRUE and 0)\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [59 x i8] c"%s 1: got %d and 0x%x%08x with 0x%x (expected TRUE and 0)\0A\00", align 1
@GUID_NULL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"%s 0: got %d with 0x%x (expected != FALSE)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_ApphelpCheckShellObject to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_ApphelpCheckShellObject() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %68, %0
  %5 = load i32**, i32*** @objects, align 8
  %6 = load i32, i32* %3, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds i32*, i32** %5, i64 %7
  %9 = load i32*, i32** %8, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %71

11:                                               ; preds = %4
  store i32 -559038737, i32* %1, align 4
  %12 = call i32 @SetLastError(i32 -559038737)
  %13 = load i32**, i32*** @objects, align 8
  %14 = load i32, i32* %3, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32*, i32** %13, i64 %15
  %17 = load i32*, i32** %16, align 8
  %18 = load i32, i32* @FALSE, align 4
  %19 = call i32 @pApphelpCheckShellObject(i32* %17, i32 %18, i32* %1)
  store i32 %19, i32* %2, align 4
  %20 = load i32, i32* %2, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %11
  %23 = load i32, i32* %1, align 4
  %24 = icmp eq i32 %23, 0
  br label %25

25:                                               ; preds = %22, %11
  %26 = phi i1 [ false, %11 ], [ %24, %22 ]
  %27 = zext i1 %26 to i32
  %28 = load i32**, i32*** @objects, align 8
  %29 = load i32, i32* %3, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32*, i32** %28, i64 %30
  %32 = load i32*, i32** %31, align 8
  %33 = call i32 @wine_dbgstr_guid(i32* %32)
  %34 = load i32, i32* %2, align 4
  %35 = load i32, i32* %1, align 4
  %36 = ashr i32 %35, 32
  %37 = load i32, i32* %1, align 4
  %38 = call i32 (...) @GetLastError()
  %39 = call i32 (i32, i8*, i32, i32, i32, ...) @ok(i32 %27, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i32 %33, i32 %34, i32 %36, i32 %37, i32 %38)
  store i32 -559038737, i32* %1, align 4
  %40 = call i32 @SetLastError(i32 -559038737)
  %41 = load i32**, i32*** @objects, align 8
  %42 = load i32, i32* %3, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32*, i32** %41, i64 %43
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* @TRUE, align 4
  %47 = call i32 @pApphelpCheckShellObject(i32* %45, i32 %46, i32* %1)
  store i32 %47, i32* %2, align 4
  %48 = load i32, i32* %2, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %25
  %51 = load i32, i32* %1, align 4
  %52 = icmp eq i32 %51, 0
  br label %53

53:                                               ; preds = %50, %25
  %54 = phi i1 [ false, %25 ], [ %52, %50 ]
  %55 = zext i1 %54 to i32
  %56 = load i32**, i32*** @objects, align 8
  %57 = load i32, i32* %3, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32*, i32** %56, i64 %58
  %60 = load i32*, i32** %59, align 8
  %61 = call i32 @wine_dbgstr_guid(i32* %60)
  %62 = load i32, i32* %2, align 4
  %63 = load i32, i32* %1, align 4
  %64 = ashr i32 %63, 32
  %65 = load i32, i32* %1, align 4
  %66 = call i32 (...) @GetLastError()
  %67 = call i32 (i32, i8*, i32, i32, i32, ...) @ok(i32 %55, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0), i32 %61, i32 %62, i32 %64, i32 %65, i32 %66)
  br label %68

68:                                               ; preds = %53
  %69 = load i32, i32* %3, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %3, align 4
  br label %4

71:                                               ; preds = %4
  %72 = call i32 @SetLastError(i32 -559038737)
  %73 = load i32, i32* @FALSE, align 4
  %74 = call i32 @pApphelpCheckShellObject(i32* @GUID_NULL, i32 %73, i32* null)
  store i32 %74, i32* %2, align 4
  %75 = load i32, i32* %2, align 4
  %76 = call i32 @wine_dbgstr_guid(i32* @GUID_NULL)
  %77 = load i32, i32* %2, align 4
  %78 = call i32 (...) @GetLastError()
  %79 = call i32 (i32, i8*, i32, i32, i32, ...) @ok(i32 %75, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %76, i32 %77, i32 %78)
  ret void
}

declare dso_local i32 @SetLastError(i32) #1

declare dso_local i32 @pApphelpCheckShellObject(i32*, i32, i32*) #1

declare dso_local i32 @ok(i32, i8*, i32, i32, i32, ...) #1

declare dso_local i32 @wine_dbgstr_guid(i32*) #1

declare dso_local i32 @GetLastError(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
