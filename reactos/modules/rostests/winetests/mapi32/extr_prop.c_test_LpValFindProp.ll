; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/mapi32/extr_prop.c_test_LpValFindProp.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/mapi32/extr_prop.c_test_LpValFindProp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@ptTypes = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [58 x i8] c"LpValFindProp[%d]: Didn't find existing property id/type\0A\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"LpValFindProp[%d]: Found nonexistent property id\0A\00", align 1
@PT_NULL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [55 x i8] c"LpValFindProp[%d]: Found nonexistent property id/type\0A\00", align 1
@.str.3 = private unnamed_addr constant [53 x i8] c"LpValFindProp[%d]: Didn't find existing property id\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_LpValFindProp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_LpValFindProp() #0 {
  %1 = alloca %struct.TYPE_4__, align 4
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i64, align 8
  store i64 0, i64* %3, align 8
  br label %4

4:                                                ; preds = %66, %0
  %5 = load i64, i64* %3, align 8
  %6 = load i32*, i32** @ptTypes, align 8
  %7 = call i64 @ARRAY_SIZE(i32* %6)
  %8 = icmp ult i64 %5, %7
  br i1 %8, label %9, label %69

9:                                                ; preds = %4
  %10 = load i32*, i32** @ptTypes, align 8
  %11 = load i64, i64* %3, align 8
  %12 = getelementptr inbounds i32, i32* %10, i64 %11
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @PROP_TAG(i32 %13, i32 1)
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 0
  store i32 %14, i32* %15, align 4
  %16 = load i32*, i32** @ptTypes, align 8
  %17 = load i64, i64* %3, align 8
  %18 = getelementptr inbounds i32, i32* %16, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @PROP_TAG(i32 %19, i32 1)
  %21 = call %struct.TYPE_4__* @pLpValFindProp(i32 %20, i32 1, %struct.TYPE_4__* %1)
  store %struct.TYPE_4__* %21, %struct.TYPE_4__** %2, align 8
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %23 = icmp eq %struct.TYPE_4__* %22, %1
  %24 = zext i1 %23 to i32
  %25 = load i32*, i32** @ptTypes, align 8
  %26 = load i64, i64* %3, align 8
  %27 = getelementptr inbounds i32, i32* %25, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @ok(i32 %24, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load i32*, i32** @ptTypes, align 8
  %31 = load i64, i64* %3, align 8
  %32 = getelementptr inbounds i32, i32* %30, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @PROP_TAG(i32 %33, i32 0)
  %35 = call %struct.TYPE_4__* @pLpValFindProp(i32 %34, i32 1, %struct.TYPE_4__* %1)
  store %struct.TYPE_4__* %35, %struct.TYPE_4__** %2, align 8
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %37 = icmp eq %struct.TYPE_4__* %36, null
  %38 = zext i1 %37 to i32
  %39 = load i32*, i32** @ptTypes, align 8
  %40 = load i64, i64* %3, align 8
  %41 = getelementptr inbounds i32, i32* %39, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @ok(i32 %38, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32 %42)
  %44 = load i32, i32* @PT_NULL, align 4
  %45 = call i32 @PROP_TAG(i32 %44, i32 0)
  %46 = call %struct.TYPE_4__* @pLpValFindProp(i32 %45, i32 1, %struct.TYPE_4__* %1)
  store %struct.TYPE_4__* %46, %struct.TYPE_4__** %2, align 8
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %48 = icmp eq %struct.TYPE_4__* %47, null
  %49 = zext i1 %48 to i32
  %50 = load i32*, i32** @ptTypes, align 8
  %51 = load i64, i64* %3, align 8
  %52 = getelementptr inbounds i32, i32* %50, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @ok(i32 %49, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0), i32 %53)
  %55 = load i32, i32* @PT_NULL, align 4
  %56 = call i32 @PROP_TAG(i32 %55, i32 1)
  %57 = call %struct.TYPE_4__* @pLpValFindProp(i32 %56, i32 1, %struct.TYPE_4__* %1)
  store %struct.TYPE_4__* %57, %struct.TYPE_4__** %2, align 8
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %59 = icmp eq %struct.TYPE_4__* %58, %1
  %60 = zext i1 %59 to i32
  %61 = load i32*, i32** @ptTypes, align 8
  %62 = load i64, i64* %3, align 8
  %63 = getelementptr inbounds i32, i32* %61, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @ok(i32 %60, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0), i32 %64)
  br label %66

66:                                               ; preds = %9
  %67 = load i64, i64* %3, align 8
  %68 = add i64 %67, 1
  store i64 %68, i64* %3, align 8
  br label %4

69:                                               ; preds = %4
  ret void
}

declare dso_local i64 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @PROP_TAG(i32, i32) #1

declare dso_local %struct.TYPE_4__* @pLpValFindProp(i32, i32, %struct.TYPE_4__*) #1

declare dso_local i32 @ok(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
