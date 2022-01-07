; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/wbemprox/extr_table.c_get_value.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/wbemprox/extr_table.c_get_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.table = type { %struct.TYPE_2__*, i32* }
%struct.TYPE_2__ = type { i32 }

@CIM_FLAG_ARRAY = common dso_local global i32 0, align 4
@S_OK = common dso_local global i32 0, align 4
@COL_TYPE_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"invalid column type %u\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_value(%struct.table* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.table*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  store %struct.table* %0, %struct.table** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %13 = load %struct.table*, %struct.table** %6, align 8
  %14 = load i32, i32* %8, align 4
  %15 = call i32 @get_column_offset(%struct.table* %13, i32 %14)
  store i32 %15, i32* %10, align 4
  %16 = load %struct.table*, %struct.table** %6, align 8
  %17 = call i32 @get_row_size(%struct.table* %16)
  store i32 %17, i32* %11, align 4
  %18 = load %struct.table*, %struct.table** %6, align 8
  %19 = getelementptr inbounds %struct.table, %struct.table* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* %11, align 4
  %23 = mul nsw i32 %21, %22
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %20, i64 %24
  %26 = load i32, i32* %10, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  store i32* %28, i32** %12, align 8
  %29 = load %struct.table*, %struct.table** %6, align 8
  %30 = getelementptr inbounds %struct.table, %struct.table* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = load i32, i32* %8, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @CIM_FLAG_ARRAY, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %4
  %41 = load i32*, i32** %12, align 8
  %42 = bitcast i32* %41 to i8**
  %43 = load i8*, i8** %42, align 8
  %44 = ptrtoint i8* %43 to i32
  %45 = load i32*, i32** %9, align 8
  store i32 %44, i32* %45, align 4
  %46 = load i32, i32* @S_OK, align 4
  store i32 %46, i32* %5, align 4
  br label %115

47:                                               ; preds = %4
  %48 = load %struct.table*, %struct.table** %6, align 8
  %49 = getelementptr inbounds %struct.table, %struct.table* %48, i32 0, i32 0
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = load i32, i32* %8, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @COL_TYPE_MASK, align 4
  %57 = and i32 %55, %56
  switch i32 %57, label %100 [
    i32 138, label %58
    i32 137, label %62
    i32 132, label %62
    i32 133, label %68
    i32 128, label %72
    i32 136, label %76
    i32 131, label %80
    i32 135, label %84
    i32 130, label %88
    i32 134, label %92
    i32 129, label %96
  ]

58:                                               ; preds = %47
  %59 = load i32*, i32** %12, align 8
  %60 = load i32, i32* %59, align 4
  %61 = load i32*, i32** %9, align 8
  store i32 %60, i32* %61, align 4
  br label %113

62:                                               ; preds = %47, %47
  %63 = load i32*, i32** %12, align 8
  %64 = bitcast i32* %63 to i32**
  %65 = load i32*, i32** %64, align 8
  %66 = ptrtoint i32* %65 to i32
  %67 = load i32*, i32** %9, align 8
  store i32 %66, i32* %67, align 4
  br label %113

68:                                               ; preds = %47
  %69 = load i32*, i32** %12, align 8
  %70 = load i32, i32* %69, align 4
  %71 = load i32*, i32** %9, align 8
  store i32 %70, i32* %71, align 4
  br label %113

72:                                               ; preds = %47
  %73 = load i32*, i32** %12, align 8
  %74 = load i32, i32* %73, align 4
  %75 = load i32*, i32** %9, align 8
  store i32 %74, i32* %75, align 4
  br label %113

76:                                               ; preds = %47
  %77 = load i32*, i32** %12, align 8
  %78 = load i32, i32* %77, align 4
  %79 = load i32*, i32** %9, align 8
  store i32 %78, i32* %79, align 4
  br label %113

80:                                               ; preds = %47
  %81 = load i32*, i32** %12, align 8
  %82 = load i32, i32* %81, align 4
  %83 = load i32*, i32** %9, align 8
  store i32 %82, i32* %83, align 4
  br label %113

84:                                               ; preds = %47
  %85 = load i32*, i32** %12, align 8
  %86 = load i32, i32* %85, align 4
  %87 = load i32*, i32** %9, align 8
  store i32 %86, i32* %87, align 4
  br label %113

88:                                               ; preds = %47
  %89 = load i32*, i32** %12, align 8
  %90 = load i32, i32* %89, align 4
  %91 = load i32*, i32** %9, align 8
  store i32 %90, i32* %91, align 4
  br label %113

92:                                               ; preds = %47
  %93 = load i32*, i32** %12, align 8
  %94 = load i32, i32* %93, align 4
  %95 = load i32*, i32** %9, align 8
  store i32 %94, i32* %95, align 4
  br label %113

96:                                               ; preds = %47
  %97 = load i32*, i32** %12, align 8
  %98 = load i32, i32* %97, align 4
  %99 = load i32*, i32** %9, align 8
  store i32 %98, i32* %99, align 4
  br label %113

100:                                              ; preds = %47
  %101 = load %struct.table*, %struct.table** %6, align 8
  %102 = getelementptr inbounds %struct.table, %struct.table* %101, i32 0, i32 0
  %103 = load %struct.TYPE_2__*, %struct.TYPE_2__** %102, align 8
  %104 = load i32, i32* %8, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @COL_TYPE_MASK, align 4
  %110 = and i32 %108, %109
  %111 = call i32 @ERR(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %110)
  %112 = load i32*, i32** %9, align 8
  store i32 0, i32* %112, align 4
  br label %113

113:                                              ; preds = %100, %96, %92, %88, %84, %80, %76, %72, %68, %62, %58
  %114 = load i32, i32* @S_OK, align 4
  store i32 %114, i32* %5, align 4
  br label %115

115:                                              ; preds = %113, %40
  %116 = load i32, i32* %5, align 4
  ret i32 %116
}

declare dso_local i32 @get_column_offset(%struct.table*, i32) #1

declare dso_local i32 @get_row_size(%struct.table*) #1

declare dso_local i32 @ERR(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
