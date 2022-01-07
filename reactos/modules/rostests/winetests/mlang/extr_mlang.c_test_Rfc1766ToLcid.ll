; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/mlang/extr_mlang.c_test_Rfc1766ToLcid.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/mlang/extr_mlang.c_test_Rfc1766ToLcid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i32, i32, i32 }

@lcid_table = common dso_local global %struct.TYPE_3__* null, align 8
@S_FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"#%02d: HRESULT 0x%x (expected 0x%x)\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"#%02d: got LCID 0x%x (expected 0x%x)\0A\00", align 1
@E_INVALIDARG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"got 0x%08x (expected E_INVALIDARG)\0A\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"en\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_Rfc1766ToLcid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_Rfc1766ToLcid() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  store i64 0, i64* %3, align 8
  br label %4

4:                                                ; preds = %79, %0
  %5 = load i64, i64* %3, align 8
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** @lcid_table, align 8
  %7 = call i64 @ARRAY_SIZE(%struct.TYPE_3__* %6)
  %8 = icmp ult i64 %5, %7
  br i1 %8, label %9, label %82

9:                                                ; preds = %4
  store i32 -1, i32* %1, align 4
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** @lcid_table, align 8
  %11 = load i64, i64* %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i64 %11
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  %15 = call i32 @pRfc1766ToLcidA(i32* %1, i8* %14)
  store i32 %15, i32* %2, align 4
  %16 = load i32, i32* %2, align 4
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** @lcid_table, align 8
  %18 = load i64, i64* %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 8
  %22 = icmp eq i32 %16, %21
  br i1 %22, label %39, label %23

23:                                               ; preds = %9
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** @lcid_table, align 8
  %25 = load i64, i64* %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %23
  %31 = load i32, i32* %2, align 4
  %32 = load i32, i32* @S_FALSE, align 4
  %33 = icmp eq i32 %31, %32
  br label %34

34:                                               ; preds = %30, %23
  %35 = phi i1 [ false, %23 ], [ %33, %30 ]
  %36 = zext i1 %35 to i32
  %37 = call i64 @broken(i32 %36)
  %38 = icmp ne i64 %37, 0
  br label %39

39:                                               ; preds = %34, %9
  %40 = phi i1 [ true, %9 ], [ %38, %34 ]
  %41 = zext i1 %40 to i32
  %42 = load i64, i64* %3, align 8
  %43 = load i32, i32* %2, align 4
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** @lcid_table, align 8
  %45 = load i64, i64* %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 8
  %49 = call i32 (i32, i8*, i64, ...) @ok(i32 %41, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i64 %42, i32 %43, i32 %48)
  %50 = load i32, i32* %1, align 4
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** @lcid_table, align 8
  %52 = load i64, i64* %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = icmp eq i32 %50, %55
  br i1 %56, label %68, label %57

57:                                               ; preds = %39
  %58 = load i32, i32* %1, align 4
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** @lcid_table, align 8
  %60 = load i64, i64* %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = icmp eq i32 %58, %63
  %65 = zext i1 %64 to i32
  %66 = call i64 @broken(i32 %65)
  %67 = icmp ne i64 %66, 0
  br label %68

68:                                               ; preds = %57, %39
  %69 = phi i1 [ true, %39 ], [ %67, %57 ]
  %70 = zext i1 %69 to i32
  %71 = load i64, i64* %3, align 8
  %72 = load i32, i32* %1, align 4
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** @lcid_table, align 8
  %74 = load i64, i64* %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = call i32 (i32, i8*, i64, ...) @ok(i32 %70, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i64 %71, i32 %72, i32 %77)
  br label %79

79:                                               ; preds = %68
  %80 = load i64, i64* %3, align 8
  %81 = add i64 %80, 1
  store i64 %81, i64* %3, align 8
  br label %4

82:                                               ; preds = %4
  %83 = call i32 @pRfc1766ToLcidA(i32* %1, i8* null)
  store i32 %83, i32* %2, align 4
  %84 = load i32, i32* %2, align 4
  %85 = load i32, i32* @E_INVALIDARG, align 4
  %86 = icmp eq i32 %84, %85
  %87 = zext i1 %86 to i32
  %88 = load i32, i32* %2, align 4
  %89 = sext i32 %88 to i64
  %90 = call i32 (i32, i8*, i64, ...) @ok(i32 %87, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i64 %89)
  %91 = call i32 @pRfc1766ToLcidA(i32* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  store i32 %91, i32* %2, align 4
  %92 = load i32, i32* %2, align 4
  %93 = load i32, i32* @E_INVALIDARG, align 4
  %94 = icmp eq i32 %92, %93
  %95 = zext i1 %94 to i32
  %96 = load i32, i32* %2, align 4
  %97 = sext i32 %96 to i64
  %98 = call i32 (i32, i8*, i64, ...) @ok(i32 %95, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i64 %97)
  ret void
}

declare dso_local i64 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local i32 @pRfc1766ToLcidA(i32*, i8*) #1

declare dso_local i32 @ok(i32, i8*, i64, ...) #1

declare dso_local i64 @broken(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
