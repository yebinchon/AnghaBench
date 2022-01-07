; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/comctl32/extr_misc.c_test_Alloc.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/comctl32/extr_misc.c_test_Alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [23 x i8] c"Expected non-NULL ptr\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Expected TRUE, got %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"Expected 1, got %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"Expected 2, got %d\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_Alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_Alloc() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = call i32* @pAlloc(i32 0)
  store i32* %5, i32** %1, align 8
  %6 = load i32*, i32** %1, align 8
  %7 = icmp ne i32* %6, null
  %8 = zext i1 %7 to i32
  %9 = call i32 (i32, i8*, ...) @ok(i32 %8, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %10 = load i32*, i32** %1, align 8
  %11 = call i32 @pGetSize(i32* %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32*, i32** %1, align 8
  %13 = call i32 @pFree(i32* %12)
  store i32 %13, i32* %2, align 4
  %14 = load i32, i32* %2, align 4
  %15 = load i32, i32* @TRUE, align 4
  %16 = icmp eq i32 %14, %15
  %17 = zext i1 %16 to i32
  %18 = load i32, i32* %2, align 4
  %19 = call i32 (i32, i8*, ...) @ok(i32 %17, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %18)
  %20 = call i32* @pAlloc(i32 1)
  store i32* %20, i32** %1, align 8
  %21 = load i32*, i32** %1, align 8
  %22 = icmp ne i32* %21, null
  %23 = zext i1 %22 to i32
  %24 = call i32 (i32, i8*, ...) @ok(i32 %23, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %25 = load i32*, i32** %1, align 8
  %26 = call i32 @pGetSize(i32* %25)
  store i32 %26, i32* %3, align 4
  %27 = load i32, i32* %3, align 4
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %36, label %29

29:                                               ; preds = %0
  %30 = load i32, i32* %3, align 4
  %31 = load i32, i32* %4, align 4
  %32 = icmp eq i32 %30, %31
  %33 = zext i1 %32 to i32
  %34 = call i64 @broken(i32 %33)
  %35 = icmp ne i64 %34, 0
  br label %36

36:                                               ; preds = %29, %0
  %37 = phi i1 [ true, %0 ], [ %35, %29 ]
  %38 = zext i1 %37 to i32
  %39 = load i32, i32* %3, align 4
  %40 = call i32 (i32, i8*, ...) @ok(i32 %38, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %39)
  %41 = load i32*, i32** %1, align 8
  %42 = call i32* @pReAlloc(i32* %41, i32 2)
  store i32* %42, i32** %1, align 8
  %43 = load i32*, i32** %1, align 8
  %44 = icmp ne i32* %43, null
  %45 = zext i1 %44 to i32
  %46 = call i32 (i32, i8*, ...) @ok(i32 %45, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %47 = load i32*, i32** %1, align 8
  %48 = call i32 @pGetSize(i32* %47)
  store i32 %48, i32* %3, align 4
  %49 = load i32, i32* %3, align 4
  %50 = icmp eq i32 %49, 2
  br i1 %50, label %58, label %51

51:                                               ; preds = %36
  %52 = load i32, i32* %3, align 4
  %53 = load i32, i32* %4, align 4
  %54 = icmp eq i32 %52, %53
  %55 = zext i1 %54 to i32
  %56 = call i64 @broken(i32 %55)
  %57 = icmp ne i64 %56, 0
  br label %58

58:                                               ; preds = %51, %36
  %59 = phi i1 [ true, %36 ], [ %57, %51 ]
  %60 = zext i1 %59 to i32
  %61 = load i32, i32* %3, align 4
  %62 = call i32 (i32, i8*, ...) @ok(i32 %60, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 %61)
  %63 = load i32*, i32** %1, align 8
  %64 = call i32 @pFree(i32* %63)
  store i32 %64, i32* %2, align 4
  %65 = load i32, i32* %2, align 4
  %66 = load i32, i32* @TRUE, align 4
  %67 = icmp eq i32 %65, %66
  %68 = zext i1 %67 to i32
  %69 = load i32, i32* %2, align 4
  %70 = call i32 (i32, i8*, ...) @ok(i32 %68, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %69)
  %71 = call i32 @pFree(i32* null)
  store i32 %71, i32* %2, align 4
  %72 = load i32, i32* %2, align 4
  %73 = load i32, i32* @TRUE, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %82, label %75

75:                                               ; preds = %58
  %76 = load i32, i32* %2, align 4
  %77 = load i32, i32* @FALSE, align 4
  %78 = icmp eq i32 %76, %77
  %79 = zext i1 %78 to i32
  %80 = call i64 @broken(i32 %79)
  %81 = icmp ne i64 %80, 0
  br label %82

82:                                               ; preds = %75, %58
  %83 = phi i1 [ true, %58 ], [ %81, %75 ]
  %84 = zext i1 %83 to i32
  %85 = load i32, i32* %2, align 4
  %86 = call i32 (i32, i8*, ...) @ok(i32 %84, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %85)
  %87 = call i32* @pReAlloc(i32* null, i32 2)
  store i32* %87, i32** %1, align 8
  %88 = load i32*, i32** %1, align 8
  %89 = icmp ne i32* %88, null
  %90 = zext i1 %89 to i32
  %91 = call i32 (i32, i8*, ...) @ok(i32 %90, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %92 = load i32*, i32** %1, align 8
  %93 = call i32 @pFree(i32* %92)
  store i32 %93, i32* %2, align 4
  %94 = load i32, i32* %2, align 4
  %95 = load i32, i32* @TRUE, align 4
  %96 = icmp eq i32 %94, %95
  %97 = zext i1 %96 to i32
  %98 = load i32, i32* %2, align 4
  %99 = call i32 (i32, i8*, ...) @ok(i32 %97, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %98)
  ret void
}

declare dso_local i32* @pAlloc(i32) #1

declare dso_local i32 @ok(i32, i8*, ...) #1

declare dso_local i32 @pGetSize(i32*) #1

declare dso_local i32 @pFree(i32*) #1

declare dso_local i64 @broken(i32) #1

declare dso_local i32* @pReAlloc(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
