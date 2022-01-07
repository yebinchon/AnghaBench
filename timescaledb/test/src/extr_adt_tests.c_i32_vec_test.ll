; ModuleID = '/home/carl/AnghaBench/timescaledb/test/src/extr_adt_tests.c_i32_vec_test.c'
source_filename = "/home/carl/AnghaBench/timescaledb/test/src/extr_adt_tests.c_i32_vec_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i32 }

@CurrentMemoryContext = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"vec capacity %d, should be at least 100\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @i32_vec_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i32_vec_test() #0 {
  %1 = alloca %struct.TYPE_10__*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load i32, i32* @CurrentMemoryContext, align 4
  %5 = call %struct.TYPE_10__* @int32_vec_create(i32 %4, i32 0)
  store %struct.TYPE_10__* %5, %struct.TYPE_10__** %1, align 8
  store i32 0, i32* %2, align 4
  br label %6

6:                                                ; preds = %13, %0
  %7 = load i32, i32* %2, align 4
  %8 = icmp slt i32 %7, 100
  br i1 %8, label %9, label %16

9:                                                ; preds = %6
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %11 = load i32, i32* %2, align 4
  %12 = call i32 @int32_vec_append(%struct.TYPE_10__* %10, i32 %11)
  br label %13

13:                                               ; preds = %9
  %14 = load i32, i32* %2, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %2, align 4
  br label %6

16:                                               ; preds = %6
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @AssertInt64Eq(i32 %19, i32 100)
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = icmp slt i32 %23, 100
  br i1 %24, label %25, label %31

25:                                               ; preds = %16
  %26 = load i32, i32* @ERROR, align 4
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @elog(i32 %26, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %29)
  br label %31

31:                                               ; preds = %25, %16
  store i32 0, i32* %2, align 4
  br label %32

32:                                               ; preds = %42, %31
  %33 = load i32, i32* %2, align 4
  %34 = icmp slt i32 %33, 100
  br i1 %34, label %35, label %45

35:                                               ; preds = %32
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %37 = load i32, i32* %2, align 4
  %38 = call i32* @int32_vec_at(%struct.TYPE_10__* %36, i32 %37)
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %2, align 4
  %41 = call i32 @AssertInt64Eq(i32 %39, i32 %40)
  br label %42

42:                                               ; preds = %35
  %43 = load i32, i32* %2, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %2, align 4
  br label %32

45:                                               ; preds = %32
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %47 = call i32 @int32_vec_last(%struct.TYPE_10__* %46)
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = sub nsw i32 %51, 1
  %53 = call i32* @int32_vec_at(%struct.TYPE_10__* %48, i32 %52)
  %54 = call i32 @AssertPtrEq(i32 %47, i32* %53)
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %3, align 4
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %59 = call i32 @int32_vec_delete_range(%struct.TYPE_10__* %58, i32 30, i32 19)
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @AssertInt64Eq(i32 %62, i32 81)
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %3, align 4
  %68 = call i32 @AssertInt64Eq(i32 %66, i32 %67)
  store i32 0, i32* %2, align 4
  br label %69

69:                                               ; preds = %79, %45
  %70 = load i32, i32* %2, align 4
  %71 = icmp slt i32 %70, 30
  br i1 %71, label %72, label %82

72:                                               ; preds = %69
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %74 = load i32, i32* %2, align 4
  %75 = call i32* @int32_vec_at(%struct.TYPE_10__* %73, i32 %74)
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %2, align 4
  %78 = call i32 @AssertInt64Eq(i32 %76, i32 %77)
  br label %79

79:                                               ; preds = %72
  %80 = load i32, i32* %2, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %2, align 4
  br label %69

82:                                               ; preds = %69
  br label %83

83:                                               ; preds = %94, %82
  %84 = load i32, i32* %2, align 4
  %85 = icmp slt i32 %84, 51
  br i1 %85, label %86, label %97

86:                                               ; preds = %83
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %88 = load i32, i32* %2, align 4
  %89 = call i32* @int32_vec_at(%struct.TYPE_10__* %87, i32 %88)
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* %2, align 4
  %92 = add nsw i32 %91, 19
  %93 = call i32 @AssertInt64Eq(i32 %90, i32 %92)
  br label %94

94:                                               ; preds = %86
  %95 = load i32, i32* %2, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %2, align 4
  br label %83

97:                                               ; preds = %83
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %99 = call i32 @int32_vec_last(%struct.TYPE_10__* %98)
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = sub nsw i32 %103, 1
  %105 = call i32* @int32_vec_at(%struct.TYPE_10__* %100, i32 %104)
  %106 = call i32 @AssertPtrEq(i32 %99, i32* %105)
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %108 = call i32 @int32_vec_clear(%struct.TYPE_10__* %107)
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @AssertInt64Eq(i32 %111, i32 0)
  %113 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* %3, align 4
  %117 = call i32 @AssertInt64Eq(i32 %115, i32 %116)
  %118 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %119 = call i32 @int32_vec_free_data(%struct.TYPE_10__* %118)
  %120 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @AssertInt64Eq(i32 %122, i32 0)
  %124 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %125 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @AssertInt64Eq(i32 %126, i32 0)
  %128 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @AssertPtrEq(i32 %130, i32* null)
  %132 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %133 = call i32 @int32_vec_free_data(%struct.TYPE_10__* %132)
  %134 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %135 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @AssertInt64Eq(i32 %136, i32 0)
  %138 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %139 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @AssertInt64Eq(i32 %140, i32 0)
  %142 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %143 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @AssertPtrEq(i32 %144, i32* null)
  %146 = load %struct.TYPE_10__*, %struct.TYPE_10__** %1, align 8
  %147 = call i32 @int32_vec_free(%struct.TYPE_10__* %146)
  ret void
}

declare dso_local %struct.TYPE_10__* @int32_vec_create(i32, i32) #1

declare dso_local i32 @int32_vec_append(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @AssertInt64Eq(i32, i32) #1

declare dso_local i32 @elog(i32, i8*, i32) #1

declare dso_local i32* @int32_vec_at(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @AssertPtrEq(i32, i32*) #1

declare dso_local i32 @int32_vec_last(%struct.TYPE_10__*) #1

declare dso_local i32 @int32_vec_delete_range(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @int32_vec_clear(%struct.TYPE_10__*) #1

declare dso_local i32 @int32_vec_free_data(%struct.TYPE_10__*) #1

declare dso_local i32 @int32_vec_free(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
