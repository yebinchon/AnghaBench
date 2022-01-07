; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/shlwapi/extr_thread.c_test_SHSetThreadRef.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/shlwapi/extr_thread.c_test_SHSetThreadRef.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@S_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"got 0x%x (expected S_OK)\0A\00", align 1
@AddRef_called = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"got 0x%x with %d, %d (expected S_OK with 1, 0)\0A\00", align 1
@.str.2 = private unnamed_addr constant [62 x i8] c"got 0x%x and %p with %d, %d (expected S_OK and %p with 2, 1)\0A\00", align 1
@E_NOINTERFACE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [51 x i8] c"got 0x%x and %p (expected E_NOINTERFACE and NULL)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_SHSetThreadRef to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_SHSetThreadRef() #0 {
  %1 = alloca %struct.TYPE_3__, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = call i64 @pSHSetThreadRef(i32* null)
  store i64 %5, i64* %3, align 8
  %6 = load i64, i64* %3, align 8
  %7 = load i64, i64* @S_OK, align 8
  %8 = icmp eq i64 %6, %7
  %9 = zext i1 %8 to i32
  %10 = load i64, i64* %3, align 8
  %11 = call i32 (i32, i8*, i64, ...) @ok(i32 %9, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i64 %10)
  %12 = call i32 @init_threadref(%struct.TYPE_3__* %1, i32* %4)
  store i32 0, i32* @AddRef_called, align 4
  store i32 1, i32* %4, align 4
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 0
  %14 = call i64 @pSHSetThreadRef(i32* %13)
  store i64 %14, i64* %3, align 8
  %15 = load i64, i64* %3, align 8
  %16 = load i64, i64* @S_OK, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %25

18:                                               ; preds = %0
  %19 = load i32, i32* %4, align 4
  %20 = icmp eq i32 %19, 1
  br i1 %20, label %21, label %25

21:                                               ; preds = %18
  %22 = load i32, i32* @AddRef_called, align 4
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  br label %25

25:                                               ; preds = %21, %18, %0
  %26 = phi i1 [ false, %18 ], [ false, %0 ], [ %24, %21 ]
  %27 = zext i1 %26 to i32
  %28 = load i64, i64* %3, align 8
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @AddRef_called, align 4
  %31 = call i32 (i32, i8*, i64, ...) @ok(i32 %27, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i64 %28, i32 %29, i32 %30)
  store i32 0, i32* @AddRef_called, align 4
  store i32 1, i32* %4, align 4
  store i32* null, i32** %2, align 8
  %32 = call i64 @pSHGetThreadRef(i32** %2)
  store i64 %32, i64* %3, align 8
  %33 = load i64, i64* %3, align 8
  %34 = load i64, i64* @S_OK, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %46

36:                                               ; preds = %25
  %37 = load i32*, i32** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 0
  %39 = icmp eq i32* %37, %38
  br i1 %39, label %40, label %46

40:                                               ; preds = %36
  %41 = load i32, i32* %4, align 4
  %42 = icmp eq i32 %41, 2
  br i1 %42, label %43, label %46

43:                                               ; preds = %40
  %44 = load i32, i32* @AddRef_called, align 4
  %45 = icmp eq i32 %44, 1
  br label %46

46:                                               ; preds = %43, %40, %36, %25
  %47 = phi i1 [ false, %40 ], [ false, %36 ], [ false, %25 ], [ %45, %43 ]
  %48 = zext i1 %47 to i32
  %49 = load i64, i64* %3, align 8
  %50 = load i32*, i32** %2, align 8
  %51 = load i32, i32* %4, align 4
  %52 = load i32, i32* @AddRef_called, align 4
  %53 = call i32 (i32, i8*, i64, ...) @ok(i32 %48, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.2, i64 0, i64 0), i64 %49, i32* %50, i32 %51, i32 %52, %struct.TYPE_3__* %1)
  %54 = call i64 @pSHSetThreadRef(i32* null)
  store i64 %54, i64* %3, align 8
  %55 = load i64, i64* %3, align 8
  %56 = load i64, i64* @S_OK, align 8
  %57 = icmp eq i64 %55, %56
  %58 = zext i1 %57 to i32
  %59 = load i64, i64* %3, align 8
  %60 = call i32 (i32, i8*, i64, ...) @ok(i32 %58, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i64 %59)
  %61 = call i64 @pSHGetThreadRef(i32** %2)
  store i64 %61, i64* %3, align 8
  %62 = load i64, i64* %3, align 8
  %63 = load i64, i64* @E_NOINTERFACE, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %46
  %66 = load i32*, i32** %2, align 8
  %67 = icmp eq i32* %66, null
  br label %68

68:                                               ; preds = %65, %46
  %69 = phi i1 [ false, %46 ], [ %67, %65 ]
  %70 = zext i1 %69 to i32
  %71 = load i64, i64* %3, align 8
  %72 = load i32*, i32** %2, align 8
  %73 = call i32 (i32, i8*, i64, ...) @ok(i32 %70, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3, i64 0, i64 0), i64 %71, i32* %72)
  ret void
}

declare dso_local i64 @pSHSetThreadRef(i32*) #1

declare dso_local i32 @ok(i32, i8*, i64, ...) #1

declare dso_local i32 @init_threadref(%struct.TYPE_3__*, i32*) #1

declare dso_local i64 @pSHGetThreadRef(i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
