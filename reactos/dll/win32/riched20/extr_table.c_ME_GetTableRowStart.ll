; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/riched20/extr_table.c_ME_GetTableRowStart.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/riched20/extr_table.c_ME_GetTableRowStart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_12__, %struct.TYPE_10__ }
%struct.TYPE_12__ = type { i32, %struct.TYPE_13__*, %struct.TYPE_13__* }
%struct.TYPE_10__ = type { %struct.TYPE_13__* }

@MEPF_ROWSTART = common dso_local global i32 0, align 4
@MEPF_ROWEND = common dso_local global i32 0, align 4
@diCell = common dso_local global i64 0, align 8
@diParagraph = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_13__* @ME_GetTableRowStart(%struct.TYPE_13__* %0) #0 {
  %2 = alloca %struct.TYPE_13__*, align 8
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  %5 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %6 = call i32 @assert(%struct.TYPE_13__* %5)
  %7 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @MEPF_ROWSTART, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  store %struct.TYPE_13__* %16, %struct.TYPE_13__** %2, align 8
  br label %87

17:                                               ; preds = %1
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @MEPF_ROWEND, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %17
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 2
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %30, align 8
  store %struct.TYPE_13__* %31, %struct.TYPE_13__** %3, align 8
  br label %32

32:                                               ; preds = %26, %17
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 1
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %36, align 8
  store %struct.TYPE_13__* %37, %struct.TYPE_13__** %4, align 8
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %39 = icmp ne %struct.TYPE_13__* %38, null
  br i1 %39, label %40, label %46

40:                                               ; preds = %32
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @diCell, align 8
  %45 = icmp eq i64 %43, %44
  br label %46

46:                                               ; preds = %40, %32
  %47 = phi i1 [ false, %32 ], [ %45, %40 ]
  %48 = zext i1 %47 to i32
  %49 = sext i32 %48 to i64
  %50 = inttoptr i64 %49 to %struct.TYPE_13__*
  %51 = call i32 @assert(%struct.TYPE_13__* %50)
  br label %52

52:                                               ; preds = %59, %46
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %56, align 8
  %58 = icmp ne %struct.TYPE_13__* %57, null
  br i1 %58, label %59, label %65

59:                                               ; preds = %52
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %63, align 8
  store %struct.TYPE_13__* %64, %struct.TYPE_13__** %4, align 8
  br label %52

65:                                               ; preds = %52
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %67 = load i32, i32* @diParagraph, align 4
  %68 = call %struct.TYPE_13__* @ME_FindItemBack(%struct.TYPE_13__* %66, i32 %67)
  store %struct.TYPE_13__* %68, %struct.TYPE_13__** %3, align 8
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %70 = icmp ne %struct.TYPE_13__* %69, null
  br i1 %70, label %71, label %80

71:                                               ; preds = %65
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @MEPF_ROWSTART, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br label %80

80:                                               ; preds = %71, %65
  %81 = phi i1 [ false, %65 ], [ %79, %71 ]
  %82 = zext i1 %81 to i32
  %83 = sext i32 %82 to i64
  %84 = inttoptr i64 %83 to %struct.TYPE_13__*
  %85 = call i32 @assert(%struct.TYPE_13__* %84)
  %86 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  store %struct.TYPE_13__* %86, %struct.TYPE_13__** %2, align 8
  br label %87

87:                                               ; preds = %80, %15
  %88 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  ret %struct.TYPE_13__* %88
}

declare dso_local i32 @assert(%struct.TYPE_13__*) #1

declare dso_local %struct.TYPE_13__* @ME_FindItemBack(%struct.TYPE_13__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
