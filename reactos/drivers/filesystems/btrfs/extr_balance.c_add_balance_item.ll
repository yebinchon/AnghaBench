; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/btrfs/extr_balance.c_add_balance_item.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/btrfs/extr_balance.c_add_balance_item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_26__ = type { i32, i32, %struct.TYPE_24__ }
%struct.TYPE_24__ = type { %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_27__ = type { i64, i32, i32 }
%struct.TYPE_25__ = type { %struct.TYPE_23__* }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_28__ = type { i32, i32, i32, i32 }

@BALANCE_ITEM_ID = common dso_local global i32 0, align 4
@TYPE_TEMP_ITEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"find_item returned %08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"delete_tree_item returned %08x\0A\00", align 1
@PagedPool = common dso_local global i32 0, align 4
@ALLOC_TAG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"out of memory\0A\00", align 1
@STATUS_INSUFFICIENT_RESOURCES = common dso_local global i32 0, align 4
@BALANCE_OPTS_DATA = common dso_local global i64 0, align 8
@BTRFS_BALANCE_OPTS_ENABLED = common dso_local global i32 0, align 4
@BALANCE_FLAGS_DATA = common dso_local global i32 0, align 4
@BALANCE_OPTS_METADATA = common dso_local global i64 0, align 8
@BALANCE_FLAGS_METADATA = common dso_local global i32 0, align 4
@BALANCE_OPTS_SYSTEM = common dso_local global i64 0, align 8
@BALANCE_FLAGS_SYSTEM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"insert_tree_item returned %08x\0A\00", align 1
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [24 x i8] c"do_write returned %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_26__*)* @add_balance_item to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_balance_item(%struct.TYPE_26__* %0) #0 {
  %2 = alloca %struct.TYPE_26__*, align 8
  %3 = alloca %struct.TYPE_27__, align 8
  %4 = alloca %struct.TYPE_25__, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_28__*, align 8
  store %struct.TYPE_26__* %0, %struct.TYPE_26__** %2, align 8
  %7 = load i32, i32* @BALANCE_ITEM_ID, align 4
  %8 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %3, i32 0, i32 2
  store i32 %7, i32* %8, align 4
  %9 = load i32, i32* @TYPE_TEMP_ITEM, align 4
  %10 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %3, i32 0, i32 1
  store i32 %9, i32* %10, align 8
  %11 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %3, i32 0, i32 0
  store i64 0, i64* %11, align 8
  %12 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %12, i32 0, i32 0
  %14 = call i32 @ExAcquireResourceExclusiveLite(i32* %13, i32 1)
  %15 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %16 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @find_item(%struct.TYPE_26__* %15, i32 %18, %struct.TYPE_25__* %4, %struct.TYPE_27__* %3, i32 0, i32* null)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = call i64 @NT_SUCCESS(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %1
  %24 = load i32, i32* %5, align 4
  %25 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %24)
  br label %159

26:                                               ; preds = %1
  %27 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %4, i32 0, i32 0
  %28 = load %struct.TYPE_23__*, %struct.TYPE_23__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = bitcast %struct.TYPE_27__* %3 to { i64, i64 }*
  %32 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %31, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @keycmp(i32 %30, i64 %33, i64 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %48, label %38

38:                                               ; preds = %26
  %39 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %40 = call i32 @delete_tree_item(%struct.TYPE_26__* %39, %struct.TYPE_25__* %4)
  store i32 %40, i32* %5, align 4
  %41 = load i32, i32* %5, align 4
  %42 = call i64 @NT_SUCCESS(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %38
  %45 = load i32, i32* %5, align 4
  %46 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %45)
  br label %159

47:                                               ; preds = %38
  br label %48

48:                                               ; preds = %47, %26
  %49 = load i32, i32* @PagedPool, align 4
  %50 = load i32, i32* @ALLOC_TAG, align 4
  %51 = call %struct.TYPE_28__* @ExAllocatePoolWithTag(i32 %49, i32 16, i32 %50)
  store %struct.TYPE_28__* %51, %struct.TYPE_28__** %6, align 8
  %52 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %53 = icmp ne %struct.TYPE_28__* %52, null
  br i1 %53, label %57, label %54

54:                                               ; preds = %48
  %55 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %56 = load i32, i32* @STATUS_INSUFFICIENT_RESOURCES, align 4
  store i32 %56, i32* %5, align 4
  br label %159

57:                                               ; preds = %48
  %58 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %59 = call i32 @RtlZeroMemory(%struct.TYPE_28__* %58, i32 16)
  %60 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %61 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_22__*, %struct.TYPE_22__** %62, align 8
  %64 = load i64, i64* @BALANCE_OPTS_DATA, align 8
  %65 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %63, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @BTRFS_BALANCE_OPTS_ENABLED, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %86

71:                                               ; preds = %57
  %72 = load i32, i32* @BALANCE_FLAGS_DATA, align 4
  %73 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = or i32 %75, %72
  store i32 %76, i32* %74, align 4
  %77 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %78 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_22__*, %struct.TYPE_22__** %79, align 8
  %81 = load i64, i64* @BALANCE_OPTS_DATA, align 8
  %82 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %80, i64 %81
  %83 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %83, i32 0, i32 3
  %85 = call i32 @copy_balance_args(%struct.TYPE_22__* %82, i32* %84)
  br label %86

86:                                               ; preds = %71, %57
  %87 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %88 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %87, i32 0, i32 2
  %89 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %88, i32 0, i32 0
  %90 = load %struct.TYPE_22__*, %struct.TYPE_22__** %89, align 8
  %91 = load i64, i64* @BALANCE_OPTS_METADATA, align 8
  %92 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %90, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @BTRFS_BALANCE_OPTS_ENABLED, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %113

98:                                               ; preds = %86
  %99 = load i32, i32* @BALANCE_FLAGS_METADATA, align 4
  %100 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = or i32 %102, %99
  store i32 %103, i32* %101, align 4
  %104 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %105 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %104, i32 0, i32 2
  %106 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %105, i32 0, i32 0
  %107 = load %struct.TYPE_22__*, %struct.TYPE_22__** %106, align 8
  %108 = load i64, i64* @BALANCE_OPTS_METADATA, align 8
  %109 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %107, i64 %108
  %110 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %111 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %110, i32 0, i32 2
  %112 = call i32 @copy_balance_args(%struct.TYPE_22__* %109, i32* %111)
  br label %113

113:                                              ; preds = %98, %86
  %114 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %115 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %114, i32 0, i32 2
  %116 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %115, i32 0, i32 0
  %117 = load %struct.TYPE_22__*, %struct.TYPE_22__** %116, align 8
  %118 = load i64, i64* @BALANCE_OPTS_SYSTEM, align 8
  %119 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %117, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* @BTRFS_BALANCE_OPTS_ENABLED, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %140

125:                                              ; preds = %113
  %126 = load i32, i32* @BALANCE_FLAGS_SYSTEM, align 4
  %127 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %128 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = or i32 %129, %126
  store i32 %130, i32* %128, align 4
  %131 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %132 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %131, i32 0, i32 2
  %133 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %132, i32 0, i32 0
  %134 = load %struct.TYPE_22__*, %struct.TYPE_22__** %133, align 8
  %135 = load i64, i64* @BALANCE_OPTS_SYSTEM, align 8
  %136 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %134, i64 %135
  %137 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %138 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %137, i32 0, i32 0
  %139 = call i32 @copy_balance_args(%struct.TYPE_22__* %136, i32* %138)
  br label %140

140:                                              ; preds = %125, %113
  %141 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %142 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %143 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* @BALANCE_ITEM_ID, align 4
  %146 = load i32, i32* @TYPE_TEMP_ITEM, align 4
  %147 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %148 = call i32 @insert_tree_item(%struct.TYPE_26__* %141, i32 %144, i32 %145, i32 %146, i32 0, %struct.TYPE_28__* %147, i32 16, i32* null, i32* null)
  store i32 %148, i32* %5, align 4
  %149 = load i32, i32* %5, align 4
  %150 = call i64 @NT_SUCCESS(i32 %149)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %157, label %152

152:                                              ; preds = %140
  %153 = load i32, i32* %5, align 4
  %154 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %153)
  %155 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %156 = call i32 @ExFreePool(%struct.TYPE_28__* %155)
  br label %159

157:                                              ; preds = %140
  %158 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %158, i32* %5, align 4
  br label %159

159:                                              ; preds = %157, %152, %54, %44, %23
  %160 = load i32, i32* %5, align 4
  %161 = call i64 @NT_SUCCESS(i32 %160)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %173

163:                                              ; preds = %159
  %164 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %165 = call i32 @do_write(%struct.TYPE_26__* %164, i32* null)
  store i32 %165, i32* %5, align 4
  %166 = load i32, i32* %5, align 4
  %167 = call i64 @NT_SUCCESS(i32 %166)
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %172, label %169

169:                                              ; preds = %163
  %170 = load i32, i32* %5, align 4
  %171 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 %170)
  br label %172

172:                                              ; preds = %169, %163
  br label %173

173:                                              ; preds = %172, %159
  %174 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %175 = call i32 @free_trees(%struct.TYPE_26__* %174)
  %176 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %177 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %176, i32 0, i32 0
  %178 = call i32 @ExReleaseResourceLite(i32* %177)
  %179 = load i32, i32* %5, align 4
  ret i32 %179
}

declare dso_local i32 @ExAcquireResourceExclusiveLite(i32*, i32) #1

declare dso_local i32 @find_item(%struct.TYPE_26__*, i32, %struct.TYPE_25__*, %struct.TYPE_27__*, i32, i32*) #1

declare dso_local i64 @NT_SUCCESS(i32) #1

declare dso_local i32 @ERR(i8*, ...) #1

declare dso_local i32 @keycmp(i32, i64, i64) #1

declare dso_local i32 @delete_tree_item(%struct.TYPE_26__*, %struct.TYPE_25__*) #1

declare dso_local %struct.TYPE_28__* @ExAllocatePoolWithTag(i32, i32, i32) #1

declare dso_local i32 @RtlZeroMemory(%struct.TYPE_28__*, i32) #1

declare dso_local i32 @copy_balance_args(%struct.TYPE_22__*, i32*) #1

declare dso_local i32 @insert_tree_item(%struct.TYPE_26__*, i32, i32, i32, i32, %struct.TYPE_28__*, i32, i32*, i32*) #1

declare dso_local i32 @ExFreePool(%struct.TYPE_28__*) #1

declare dso_local i32 @do_write(%struct.TYPE_26__*, i32*) #1

declare dso_local i32 @free_trees(%struct.TYPE_26__*) #1

declare dso_local i32 @ExReleaseResourceLite(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
