; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_main.c_doWriteOp.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_main.c_doWriteOp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, i32, i64, i32 }

@LSM_OK = common dso_local global i32 0, align 4
@LSM_DRANGE = common dso_local global i32 0, align 4
@LSM_WRITE = common dso_local global i32 0, align 4
@LSM_DELETE = common dso_local global i32 0, align 4
@LSM_AUTOWORK_QUANT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, i32, i8*, i32, i8*, i32)* @doWriteOp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @doWriteOp(%struct.TYPE_12__* %0, i32 %1, i8* %2, i32 %3, i8* %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  store i32 %5, i32* %12, align 4
  %21 = load i32, i32* @LSM_OK, align 4
  store i32 %21, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %6
  store i32 1, i32* %14, align 4
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %28 = call i32 @lsm_begin(%struct.TYPE_12__* %27, i32 1)
  store i32 %28, i32* %13, align 4
  br label %29

29:                                               ; preds = %26, %6
  %30 = load i32, i32* %13, align 4
  %31 = load i32, i32* @LSM_OK, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %56

33:                                               ; preds = %29
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %33
  %37 = load i32, i32* @LSM_DRANGE, align 4
  br label %47

38:                                               ; preds = %33
  %39 = load i32, i32* %12, align 4
  %40 = icmp sge i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %38
  %42 = load i32, i32* @LSM_WRITE, align 4
  br label %45

43:                                               ; preds = %38
  %44 = load i32, i32* @LSM_DELETE, align 4
  br label %45

45:                                               ; preds = %43, %41
  %46 = phi i32 [ %42, %41 ], [ %44, %43 ]
  br label %47

47:                                               ; preds = %45, %36
  %48 = phi i32 [ %37, %36 ], [ %46, %45 ]
  store i32 %48, i32* %15, align 4
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %50 = load i32, i32* %15, align 4
  %51 = load i8*, i8** %9, align 8
  %52 = load i32, i32* %10, align 4
  %53 = load i8*, i8** %11, align 8
  %54 = load i32, i32* %12, align 4
  %55 = call i32 @lsmLogWrite(%struct.TYPE_12__* %49, i32 %50, i8* %51, i32 %52, i8* %53, i32 %54)
  store i32 %55, i32* %13, align 4
  br label %56

56:                                               ; preds = %47, %29
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %58 = call i32 @lsmSortedSaveTreeCursors(%struct.TYPE_12__* %57)
  %59 = load i32, i32* %13, align 4
  %60 = load i32, i32* @LSM_OK, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %128

62:                                               ; preds = %56
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @lsmFsPageSize(i32 %65)
  store i32 %66, i32* %16, align 4
  %67 = load i32, i32* @LSM_AUTOWORK_QUANT, align 4
  %68 = load i32, i32* %16, align 4
  %69 = mul nsw i32 %67, %68
  store i32 %69, i32* %17, align 4
  %70 = load i32, i32* %17, align 4
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = icmp sgt i32 %70, %73
  br i1 %74, label %75, label %81

75:                                               ; preds = %62
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* %16, align 4
  %80 = call i32 @LSM_MAX(i32 %78, i32 %79)
  store i32 %80, i32* %17, align 4
  br label %81

81:                                               ; preds = %75, %62
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %83 = call i32 @lsmTreeSize(%struct.TYPE_12__* %82)
  store i32 %83, i32* %18, align 4
  %84 = load i32, i32* %8, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %93

86:                                               ; preds = %81
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %88 = load i8*, i8** %9, align 8
  %89 = load i32, i32* %10, align 4
  %90 = load i8*, i8** %11, align 8
  %91 = load i32, i32* %12, align 4
  %92 = call i32 @lsmTreeDelete(%struct.TYPE_12__* %87, i8* %88, i32 %89, i8* %90, i32 %91)
  store i32 %92, i32* %13, align 4
  br label %100

93:                                               ; preds = %81
  %94 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %95 = load i8*, i8** %9, align 8
  %96 = load i32, i32* %10, align 4
  %97 = load i8*, i8** %11, align 8
  %98 = load i32, i32* %12, align 4
  %99 = call i32 @lsmTreeInsert(%struct.TYPE_12__* %94, i8* %95, i32 %96, i8* %97, i32 %98)
  store i32 %99, i32* %13, align 4
  br label %100

100:                                              ; preds = %93, %86
  %101 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %102 = call i32 @lsmTreeSize(%struct.TYPE_12__* %101)
  store i32 %102, i32* %19, align 4
  %103 = load i32, i32* %19, align 4
  %104 = load i32, i32* %17, align 4
  %105 = sdiv i32 %103, %104
  %106 = load i32, i32* %18, align 4
  %107 = load i32, i32* %17, align 4
  %108 = sdiv i32 %106, %107
  %109 = sub nsw i32 %105, %108
  store i32 %109, i32* %20, align 4
  %110 = load i32, i32* %13, align 4
  %111 = load i32, i32* @LSM_OK, align 4
  %112 = icmp eq i32 %110, %111
  br i1 %112, label %113, label %127

113:                                              ; preds = %100
  %114 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %115 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %114, i32 0, i32 2
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %127

118:                                              ; preds = %113
  %119 = load i32, i32* %20, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %127

121:                                              ; preds = %118
  %122 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %123 = load i32, i32* %20, align 4
  %124 = load i32, i32* @LSM_AUTOWORK_QUANT, align 4
  %125 = mul nsw i32 %123, %124
  %126 = call i32 @lsmSortedAutoWork(%struct.TYPE_12__* %122, i32 %125)
  store i32 %126, i32* %13, align 4
  br label %127

127:                                              ; preds = %121, %118, %113, %100
  br label %128

128:                                              ; preds = %127, %56
  %129 = load i32, i32* %14, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %142

131:                                              ; preds = %128
  %132 = load i32, i32* %13, align 4
  %133 = load i32, i32* @LSM_OK, align 4
  %134 = icmp eq i32 %132, %133
  br i1 %134, label %135, label %138

135:                                              ; preds = %131
  %136 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %137 = call i32 @lsm_commit(%struct.TYPE_12__* %136, i32 0)
  store i32 %137, i32* %13, align 4
  br label %141

138:                                              ; preds = %131
  %139 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %140 = call i32 @lsm_rollback(%struct.TYPE_12__* %139, i32 0)
  br label %141

141:                                              ; preds = %138, %135
  br label %142

142:                                              ; preds = %141, %128
  %143 = load i32, i32* %13, align 4
  ret i32 %143
}

declare dso_local i32 @lsm_begin(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @lsmLogWrite(%struct.TYPE_12__*, i32, i8*, i32, i8*, i32) #1

declare dso_local i32 @lsmSortedSaveTreeCursors(%struct.TYPE_12__*) #1

declare dso_local i32 @lsmFsPageSize(i32) #1

declare dso_local i32 @LSM_MAX(i32, i32) #1

declare dso_local i32 @lsmTreeSize(%struct.TYPE_12__*) #1

declare dso_local i32 @lsmTreeDelete(%struct.TYPE_12__*, i8*, i32, i8*, i32) #1

declare dso_local i32 @lsmTreeInsert(%struct.TYPE_12__*, i8*, i32, i8*, i32) #1

declare dso_local i32 @lsmSortedAutoWork(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @lsm_commit(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @lsm_rollback(%struct.TYPE_12__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
