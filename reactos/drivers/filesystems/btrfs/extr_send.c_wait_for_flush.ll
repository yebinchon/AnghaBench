; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/btrfs/extr_send.c_wait_for_flush.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/btrfs/extr_send.c_wait_for_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, %struct.TYPE_14__*, i32, %struct.TYPE_10__*, i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_10__ = type { i64, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }

@Executive = common dso_local global i32 0, align 4
@KernelMode = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"find_item returned %08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"readonly subvolume changed\0A\00", align 1
@STATUS_INTERNAL_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, %struct.TYPE_12__*, %struct.TYPE_12__*)* @wait_for_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wait_for_flush(%struct.TYPE_13__* %0, %struct.TYPE_12__* %1, %struct.TYPE_12__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %5, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %6, align 8
  store %struct.TYPE_12__* %2, %struct.TYPE_12__** %7, align 8
  %11 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %12 = icmp ne %struct.TYPE_12__* %11, null
  br i1 %12, label %13, label %19

13:                                               ; preds = %3
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %9, align 4
  br label %19

19:                                               ; preds = %13, %3
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %21 = icmp ne %struct.TYPE_12__* %20, null
  br i1 %21, label %22, label %28

22:                                               ; preds = %19
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %10, align 4
  br label %28

28:                                               ; preds = %22, %19
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 0
  %33 = call i32 @ExReleaseResourceLite(i32* %32)
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i32 0, i32 3
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 1
  %38 = call i32 @KeClearEvent(i32* %37)
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 4
  %41 = call i32 @KeSetEvent(i32* %40, i32 0, i32 1)
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 3
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 1
  %46 = load i32, i32* @Executive, align 4
  %47 = load i32, i32* @KernelMode, align 4
  %48 = call i32 @KeWaitForSingleObject(i32* %45, i32 %46, i32 %47, i32 0, i32* null)
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %49, i32 0, i32 1
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %51, i32 0, i32 0
  %53 = call i32 @ExAcquireResourceSharedLite(i32* %52, i32 1)
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i32 0, i32 3
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %28
  %61 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %61, i32* %4, align 4
  br label %128

62:                                               ; preds = %28
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %64 = icmp ne %struct.TYPE_12__* %63, null
  br i1 %64, label %65, label %94

65:                                               ; preds = %62
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 1
  %68 = load %struct.TYPE_14__*, %struct.TYPE_14__** %67, align 8
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %73 = call i32 @find_item(%struct.TYPE_14__* %68, i32 %71, %struct.TYPE_12__* %72, i32* %9, i32 0, i32* null)
  store i32 %73, i32* %8, align 4
  %74 = load i32, i32* %8, align 4
  %75 = call i32 @NT_SUCCESS(i32 %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %81, label %77

77:                                               ; preds = %65
  %78 = load i32, i32* %8, align 4
  %79 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %78)
  %80 = load i32, i32* %8, align 4
  store i32 %80, i32* %4, align 4
  br label %128

81:                                               ; preds = %65
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 0
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* %9, align 4
  %88 = call i64 @keycmp(i32 %86, i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %81
  %91 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %92 = load i32, i32* @STATUS_INTERNAL_ERROR, align 4
  store i32 %92, i32* %4, align 4
  br label %128

93:                                               ; preds = %81
  br label %94

94:                                               ; preds = %93, %62
  %95 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %96 = icmp ne %struct.TYPE_12__* %95, null
  br i1 %96, label %97, label %126

97:                                               ; preds = %94
  %98 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %98, i32 0, i32 1
  %100 = load %struct.TYPE_14__*, %struct.TYPE_14__** %99, align 8
  %101 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %105 = call i32 @find_item(%struct.TYPE_14__* %100, i32 %103, %struct.TYPE_12__* %104, i32* %10, i32 0, i32* null)
  store i32 %105, i32* %8, align 4
  %106 = load i32, i32* %8, align 4
  %107 = call i32 @NT_SUCCESS(i32 %106)
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %113, label %109

109:                                              ; preds = %97
  %110 = load i32, i32* %8, align 4
  %111 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %110)
  %112 = load i32, i32* %8, align 4
  store i32 %112, i32* %4, align 4
  br label %128

113:                                              ; preds = %97
  %114 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %115 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %114, i32 0, i32 0
  %116 = load %struct.TYPE_11__*, %struct.TYPE_11__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* %10, align 4
  %120 = call i64 @keycmp(i32 %118, i32 %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %113
  %123 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %124 = load i32, i32* @STATUS_INTERNAL_ERROR, align 4
  store i32 %124, i32* %4, align 4
  br label %128

125:                                              ; preds = %113
  br label %126

126:                                              ; preds = %125, %94
  %127 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %127, i32* %4, align 4
  br label %128

128:                                              ; preds = %126, %122, %109, %90, %77, %60
  %129 = load i32, i32* %4, align 4
  ret i32 %129
}

declare dso_local i32 @ExReleaseResourceLite(i32*) #1

declare dso_local i32 @KeClearEvent(i32*) #1

declare dso_local i32 @KeSetEvent(i32*, i32, i32) #1

declare dso_local i32 @KeWaitForSingleObject(i32*, i32, i32, i32, i32*) #1

declare dso_local i32 @ExAcquireResourceSharedLite(i32*, i32) #1

declare dso_local i32 @find_item(%struct.TYPE_14__*, i32, %struct.TYPE_12__*, i32*, i32, i32*) #1

declare dso_local i32 @NT_SUCCESS(i32) #1

declare dso_local i32 @ERR(i8*, ...) #1

declare dso_local i64 @keycmp(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
