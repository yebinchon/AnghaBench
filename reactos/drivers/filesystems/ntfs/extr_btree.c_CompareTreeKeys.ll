; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/ntfs/extr_btree.c_CompareTreeKeys.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/ntfs/extr_btree.c_CompareTreeKeys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_10__*, i32* }
%struct.TYPE_10__ = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32, i32, i32 }

@NTFS_INDEX_ENTRY_END = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CompareTreeKeys(%struct.TYPE_12__* %0, %struct.TYPE_12__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_11__, align 4
  %9 = alloca %struct.TYPE_11__, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %5, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @NTFS_INDEX_ENTRY_END, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = call i32 @ASSERT(i32 %20)
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %109

27:                                               ; preds = %3
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 2
  store i32 %33, i32* %34, align 4
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = sext i32 %40 to i64
  %42 = mul i64 %41, 4
  %43 = trunc i64 %42 to i32
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 1
  store i32 %43, i32* %44, align 4
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 0
  store i32 %43, i32* %45, align 4
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 2
  store i32 %51, i32* %52, align 4
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = sext i32 %58 to i64
  %60 = mul i64 %59, 4
  %61 = trunc i64 %60 to i32
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 1
  store i32 %61, i32* %62, align 4
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 0
  store i32 %61, i32* %63, align 4
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = icmp eq i32 %65, %67
  br i1 %68, label %69, label %75

69:                                               ; preds = %27
  %70 = load i32, i32* %7, align 4
  %71 = icmp ne i32 %70, 0
  %72 = xor i1 %71, true
  %73 = zext i1 %72 to i32
  %74 = call i32 @RtlCompareUnicodeString(%struct.TYPE_11__* %8, %struct.TYPE_11__* %9, i32 %73)
  store i32 %74, i32* %4, align 4
  br label %109

75:                                               ; preds = %27
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = icmp slt i32 %77, %79
  br i1 %80, label %81, label %94

81:                                               ; preds = %75
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 0
  store i32 %83, i32* %84, align 4
  %85 = load i32, i32* %7, align 4
  %86 = icmp ne i32 %85, 0
  %87 = xor i1 %86, true
  %88 = zext i1 %87 to i32
  %89 = call i32 @RtlCompareUnicodeString(%struct.TYPE_11__* %8, %struct.TYPE_11__* %9, i32 %88)
  store i32 %89, i32* %10, align 4
  %90 = load i32, i32* %10, align 4
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %81
  store i32 -1, i32* %4, align 4
  br label %109

93:                                               ; preds = %81
  br label %107

94:                                               ; preds = %75
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 0
  store i32 %96, i32* %97, align 4
  %98 = load i32, i32* %7, align 4
  %99 = icmp ne i32 %98, 0
  %100 = xor i1 %99, true
  %101 = zext i1 %100 to i32
  %102 = call i32 @RtlCompareUnicodeString(%struct.TYPE_11__* %8, %struct.TYPE_11__* %9, i32 %101)
  store i32 %102, i32* %10, align 4
  %103 = load i32, i32* %10, align 4
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %94
  store i32 1, i32* %4, align 4
  br label %109

106:                                              ; preds = %94
  br label %107

107:                                              ; preds = %106, %93
  %108 = load i32, i32* %10, align 4
  store i32 %108, i32* %4, align 4
  br label %109

109:                                              ; preds = %107, %105, %92, %69, %26
  %110 = load i32, i32* %4, align 4
  ret i32 %110
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @RtlCompareUnicodeString(%struct.TYPE_11__*, %struct.TYPE_11__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
