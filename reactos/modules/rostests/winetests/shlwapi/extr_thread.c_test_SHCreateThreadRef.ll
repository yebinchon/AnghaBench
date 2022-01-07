; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/shlwapi/extr_thread.c_test_SHCreateThreadRef.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/shlwapi/extr_thread.c_test_SHCreateThreadRef.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@S_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"got 0x%x (expected S_OK)\0A\00", align 1
@.str.1 = private unnamed_addr constant [62 x i8] c"got 0x%x and %p with %d (expected S_OK and '!= NULL' with 1)\0A\00", align 1
@E_NOINTERFACE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [51 x i8] c"got 0x%x and %p (expected E_NOINTERFACE and NULL)\0A\00", align 1
@.str.3 = private unnamed_addr constant [55 x i8] c"got 0x%x and %p with %d (expected S_OK and %p with 2)\0A\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"got %d with %d (expected 1 with 1)\0A\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"got %d with %d (expected 0 with 0)\0A\00", align 1
@E_INVALIDARG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_SHCreateThreadRef to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_SHCreateThreadRef() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = call i32 @pSHSetThreadRef(i32* null)
  store i32 %5, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @S_OK, align 4
  %8 = icmp eq i32 %6, %7
  %9 = zext i1 %8 to i32
  %10 = load i32, i32* %4, align 4
  %11 = call i32 (i32, i8*, i32, ...) @ok(i32 %9, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %10)
  store i32* null, i32** %1, align 8
  store i32 -559038737, i32* %3, align 4
  %12 = call i32 @pSHCreateThreadRef(i32* %3, i32** %1)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @S_OK, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %22

16:                                               ; preds = %0
  %17 = load i32*, i32** %1, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = load i32, i32* %3, align 4
  %21 = icmp eq i32 %20, 1
  br label %22

22:                                               ; preds = %19, %16, %0
  %23 = phi i1 [ false, %16 ], [ false, %0 ], [ %21, %19 ]
  %24 = zext i1 %23 to i32
  %25 = load i32, i32* %4, align 4
  %26 = load i32*, i32** %1, align 8
  %27 = load i32, i32* %3, align 4
  %28 = call i32 (i32, i8*, i32, ...) @ok(i32 %24, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.1, i64 0, i64 0), i32 %25, i32* %26, i32 %27)
  store i32* null, i32** %2, align 8
  %29 = call i32 @pSHGetThreadRef(i32** %2)
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* @E_NOINTERFACE, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %22
  %34 = load i32*, i32** %2, align 8
  %35 = icmp eq i32* %34, null
  br label %36

36:                                               ; preds = %33, %22
  %37 = phi i1 [ false, %22 ], [ %35, %33 ]
  %38 = zext i1 %37 to i32
  %39 = load i32, i32* %4, align 4
  %40 = load i32*, i32** %2, align 8
  %41 = call i32 (i32, i8*, i32, ...) @ok(i32 %38, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0), i32 %39, i32* %40)
  %42 = load i32*, i32** %1, align 8
  %43 = call i32 @pSHSetThreadRef(i32* %42)
  store i32 %43, i32* %4, align 4
  %44 = load i32, i32* %4, align 4
  %45 = load i32, i32* @S_OK, align 4
  %46 = icmp eq i32 %44, %45
  %47 = zext i1 %46 to i32
  %48 = load i32, i32* %4, align 4
  %49 = call i32 (i32, i8*, i32, ...) @ok(i32 %47, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %48)
  store i32* null, i32** %2, align 8
  %50 = call i32 @pSHGetThreadRef(i32** %2)
  store i32 %50, i32* %4, align 4
  %51 = load i32, i32* %4, align 4
  %52 = load i32, i32* @S_OK, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %61

54:                                               ; preds = %36
  %55 = load i32*, i32** %2, align 8
  %56 = load i32*, i32** %1, align 8
  %57 = icmp eq i32* %55, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %54
  %59 = load i32, i32* %3, align 4
  %60 = icmp eq i32 %59, 2
  br label %61

61:                                               ; preds = %58, %54, %36
  %62 = phi i1 [ false, %54 ], [ false, %36 ], [ %60, %58 ]
  %63 = zext i1 %62 to i32
  %64 = load i32, i32* %4, align 4
  %65 = load i32*, i32** %2, align 8
  %66 = load i32, i32* %3, align 4
  %67 = load i32*, i32** %1, align 8
  %68 = call i32 (i32, i8*, i32, ...) @ok(i32 %63, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i64 0, i64 0), i32 %64, i32* %65, i32 %66, i32* %67)
  %69 = load i32, i32* %4, align 4
  %70 = call i64 @SUCCEEDED(i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %87

72:                                               ; preds = %61
  %73 = load i32*, i32** %1, align 8
  %74 = call i32 @IUnknown_Release(i32* %73)
  store i32 %74, i32* %4, align 4
  %75 = load i32, i32* %4, align 4
  %76 = icmp eq i32 %75, 1
  br i1 %76, label %77, label %81

77:                                               ; preds = %72
  %78 = load i32, i32* %4, align 4
  %79 = load i32, i32* %3, align 4
  %80 = icmp eq i32 %78, %79
  br label %81

81:                                               ; preds = %77, %72
  %82 = phi i1 [ false, %72 ], [ %80, %77 ]
  %83 = zext i1 %82 to i32
  %84 = load i32, i32* %4, align 4
  %85 = load i32, i32* %3, align 4
  %86 = call i32 (i32, i8*, i32, ...) @ok(i32 %83, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i32 %84, i32 %85)
  br label %87

87:                                               ; preds = %81, %61
  %88 = load i32*, i32** %1, align 8
  %89 = icmp ne i32* %88, null
  br i1 %89, label %90, label %105

90:                                               ; preds = %87
  %91 = load i32*, i32** %1, align 8
  %92 = call i32 @IUnknown_Release(i32* %91)
  store i32 %92, i32* %4, align 4
  %93 = load i32, i32* %4, align 4
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %90
  %96 = load i32, i32* %4, align 4
  %97 = load i32, i32* %3, align 4
  %98 = icmp eq i32 %96, %97
  br label %99

99:                                               ; preds = %95, %90
  %100 = phi i1 [ false, %90 ], [ %98, %95 ]
  %101 = zext i1 %100 to i32
  %102 = load i32, i32* %4, align 4
  %103 = load i32, i32* %3, align 4
  %104 = call i32 (i32, i8*, i32, ...) @ok(i32 %101, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0), i32 %102, i32 %103)
  br label %105

105:                                              ; preds = %99, %87
  %106 = call i32 @pSHSetThreadRef(i32* null)
  store i32 %106, i32* %4, align 4
  %107 = load i32, i32* %4, align 4
  %108 = load i32, i32* @S_OK, align 4
  %109 = icmp eq i32 %107, %108
  %110 = zext i1 %109 to i32
  %111 = load i32, i32* %4, align 4
  %112 = call i32 (i32, i8*, i32, ...) @ok(i32 %110, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %111)
  ret void
}

declare dso_local i32 @pSHSetThreadRef(i32*) #1

declare dso_local i32 @ok(i32, i8*, i32, ...) #1

declare dso_local i32 @pSHCreateThreadRef(i32*, i32**) #1

declare dso_local i32 @pSHGetThreadRef(i32**) #1

declare dso_local i64 @SUCCEEDED(i32) #1

declare dso_local i32 @IUnknown_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
