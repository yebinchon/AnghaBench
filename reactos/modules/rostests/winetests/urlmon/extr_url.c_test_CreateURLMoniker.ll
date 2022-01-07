; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/urlmon/extr_url.c_test_CreateURLMoniker.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/urlmon/extr_url.c_test_CreateURLMoniker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@E_INVALIDARG = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [62 x i8] c"Expected CreateURLMoniker to return E_INVALIDARG, got 0x%08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"Expected the output pointer to be NULL, got %p\0A\00", align 1
@emptyW = common dso_local global i32* null, align 8
@S_OK = common dso_local global i32* null, align 8
@MK_E_SYNTAX = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [54 x i8] c"Expected CreateURLMoniker to return S_OK, got 0x%08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"failed to create moniker: 0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*)* @test_CreateURLMoniker to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_CreateURLMoniker(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32* null, i32** %6, align 8
  store i32* null, i32** %7, align 8
  %8 = call i32* @CreateURLMoniker(i32* null, i32* null, i32** null)
  store i32* %8, i32** %5, align 8
  %9 = load i32*, i32** %5, align 8
  %10 = load i32*, i32** @E_INVALIDARG, align 8
  %11 = icmp eq i32* %9, %10
  %12 = zext i1 %11 to i32
  %13 = load i32*, i32** %5, align 8
  %14 = call i32 @ok(i32 %12, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i32* %13)
  store i32* inttoptr (i64 3735928559 to i32*), i32** %6, align 8
  %15 = call i32* @CreateURLMoniker(i32* null, i32* null, i32** %6)
  store i32* %15, i32** %5, align 8
  %16 = load i32*, i32** %5, align 8
  %17 = load i32*, i32** @E_INVALIDARG, align 8
  %18 = icmp eq i32* %16, %17
  %19 = zext i1 %18 to i32
  %20 = load i32*, i32** %5, align 8
  %21 = call i32 @ok(i32 %19, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i32* %20)
  %22 = load i32*, i32** %6, align 8
  %23 = icmp eq i32* %22, null
  %24 = zext i1 %23 to i32
  %25 = load i32*, i32** %6, align 8
  %26 = call i32 @ok(i32 %24, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32* %25)
  %27 = load i32*, i32** @emptyW, align 8
  %28 = call i32* @CreateURLMoniker(i32* null, i32* %27, i32** null)
  store i32* %28, i32** %5, align 8
  %29 = load i32*, i32** %5, align 8
  %30 = load i32*, i32** @E_INVALIDARG, align 8
  %31 = icmp eq i32* %29, %30
  %32 = zext i1 %31 to i32
  %33 = load i32*, i32** %5, align 8
  %34 = call i32 @ok(i32 %32, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i32* %33)
  %35 = load i32*, i32** @emptyW, align 8
  %36 = call i32* @CreateURLMoniker(i32* null, i32* %35, i32** %6)
  store i32* %36, i32** %5, align 8
  %37 = load i32*, i32** %5, align 8
  %38 = load i32*, i32** @S_OK, align 8
  %39 = icmp eq i32* %37, %38
  br i1 %39, label %47, label %40

40:                                               ; preds = %2
  %41 = load i32*, i32** %5, align 8
  %42 = load i32*, i32** @MK_E_SYNTAX, align 8
  %43 = icmp eq i32* %41, %42
  %44 = zext i1 %43 to i32
  %45 = call i64 @broken(i32 %44)
  %46 = icmp ne i64 %45, 0
  br label %47

47:                                               ; preds = %40, %2
  %48 = phi i1 [ true, %2 ], [ %46, %40 ]
  %49 = zext i1 %48 to i32
  %50 = load i32*, i32** %5, align 8
  %51 = call i32 @ok(i32 %49, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0), i32* %50)
  %52 = load i32*, i32** %6, align 8
  %53 = icmp ne i32* %52, null
  br i1 %53, label %54, label %57

54:                                               ; preds = %47
  %55 = load i32*, i32** %6, align 8
  %56 = call i32 @IMoniker_Release(i32* %55)
  br label %57

57:                                               ; preds = %54, %47
  %58 = load i32*, i32** %3, align 8
  %59 = call i32* @CreateURLMoniker(i32* null, i32* %58, i32** %6)
  store i32* %59, i32** %5, align 8
  %60 = load i32*, i32** %5, align 8
  %61 = load i32*, i32** @S_OK, align 8
  %62 = icmp eq i32* %60, %61
  %63 = zext i1 %62 to i32
  %64 = load i32*, i32** %5, align 8
  %65 = call i32 @ok(i32 %63, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32* %64)
  %66 = load i32*, i32** %5, align 8
  %67 = load i32*, i32** @S_OK, align 8
  %68 = icmp eq i32* %66, %67
  br i1 %68, label %69, label %79

69:                                               ; preds = %57
  %70 = load i32*, i32** %6, align 8
  %71 = load i32*, i32** %4, align 8
  %72 = call i32* @CreateURLMoniker(i32* %70, i32* %71, i32** %7)
  store i32* %72, i32** %5, align 8
  %73 = load i32*, i32** %5, align 8
  %74 = load i32*, i32** @S_OK, align 8
  %75 = icmp eq i32* %73, %74
  %76 = zext i1 %75 to i32
  %77 = load i32*, i32** %5, align 8
  %78 = call i32 @ok(i32 %76, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32* %77)
  br label %79

79:                                               ; preds = %69, %57
  %80 = load i32*, i32** %6, align 8
  %81 = icmp ne i32* %80, null
  br i1 %81, label %82, label %85

82:                                               ; preds = %79
  %83 = load i32*, i32** %6, align 8
  %84 = call i32 @IMoniker_Release(i32* %83)
  br label %85

85:                                               ; preds = %82, %79
  %86 = load i32*, i32** %7, align 8
  %87 = icmp ne i32* %86, null
  br i1 %87, label %88, label %91

88:                                               ; preds = %85
  %89 = load i32*, i32** %7, align 8
  %90 = call i32 @IMoniker_Release(i32* %89)
  br label %91

91:                                               ; preds = %88, %85
  ret void
}

declare dso_local i32* @CreateURLMoniker(i32*, i32*, i32**) #1

declare dso_local i32 @ok(i32, i8*, i32*) #1

declare dso_local i64 @broken(i32) #1

declare dso_local i32 @IMoniker_Release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
