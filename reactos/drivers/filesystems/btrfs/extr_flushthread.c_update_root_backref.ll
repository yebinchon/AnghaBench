; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/btrfs/extr_flushthread.c_update_root_backref.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/btrfs/extr_flushthread.c_update_root_backref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32 }
%struct.TYPE_16__ = type { i8*, i32, i8* }
%struct.TYPE_14__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i64, i32, i32 }

@TYPE_ROOT_REF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"error - find_item returned %08x\0A\00", align 1
@PagedPool = common dso_local global i32 0, align 4
@ALLOC_TAG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"out of memory\0A\00", align 1
@STATUS_INSUFFICIENT_RESOURCES = common dso_local global i32 0, align 4
@TYPE_ROOT_BACKREF = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"delete_tree_item returned %08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"insert_tree_item returned %08x\0A\00", align 1
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*, i8*, i8*, i32)* @update_root_backref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @update_root_backref(%struct.TYPE_15__* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_16__, align 8
  %11 = alloca %struct.TYPE_14__, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load i8*, i8** %8, align 8
  %16 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 2
  store i8* %15, i8** %16, align 8
  %17 = load i32, i32* @TYPE_ROOT_REF, align 4
  %18 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 1
  store i32 %17, i32* %18, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 0
  store i8* %19, i8** %20, align 8
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %9, align 4
  %26 = call i32 @find_item(%struct.TYPE_15__* %21, i32 %24, %struct.TYPE_14__* %11, %struct.TYPE_16__* %10, i32 0, i32 %25)
  store i32 %26, i32* %14, align 4
  %27 = load i32, i32* %14, align 4
  %28 = call i32 @NT_SUCCESS(i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %4
  %31 = load i32, i32* %14, align 4
  %32 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %31)
  %33 = load i32, i32* %14, align 4
  store i32 %33, i32* %5, align 4
  br label %147

34:                                               ; preds = %4
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 0
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @keycmp(i32 %38, %struct.TYPE_16__* byval(%struct.TYPE_16__) align 8 %10)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %69, label %41

41:                                               ; preds = %34
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 0
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp sgt i64 %45, 0
  br i1 %46, label %47, label %69

47:                                               ; preds = %41
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 0
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  store i64 %51, i64* %13, align 8
  %52 = load i32, i32* @PagedPool, align 4
  %53 = load i64, i64* %13, align 8
  %54 = load i32, i32* @ALLOC_TAG, align 4
  %55 = call i32* @ExAllocatePoolWithTag(i32 %52, i64 %53, i32 %54)
  store i32* %55, i32** %12, align 8
  %56 = load i32*, i32** %12, align 8
  %57 = icmp ne i32* %56, null
  br i1 %57, label %61, label %58

58:                                               ; preds = %47
  %59 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %60 = load i32, i32* @STATUS_INSUFFICIENT_RESOURCES, align 4
  store i32 %60, i32* %5, align 4
  br label %147

61:                                               ; preds = %47
  %62 = load i32*, i32** %12, align 8
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 0
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = load i64, i64* %13, align 8
  %68 = call i32 @RtlCopyMemory(i32* %62, i32 %66, i64 %67)
  br label %70

69:                                               ; preds = %41, %34
  store i64 0, i64* %13, align 8
  store i32* null, i32** %12, align 8
  br label %70

70:                                               ; preds = %69, %61
  %71 = load i8*, i8** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 2
  store i8* %71, i8** %72, align 8
  %73 = load i32, i32* @TYPE_ROOT_BACKREF, align 4
  %74 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 1
  store i32 %73, i32* %74, align 8
  %75 = load i8*, i8** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 0
  store i8* %75, i8** %76, align 8
  %77 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %78 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* %9, align 4
  %82 = call i32 @find_item(%struct.TYPE_15__* %77, i32 %80, %struct.TYPE_14__* %11, %struct.TYPE_16__* %10, i32 0, i32 %81)
  store i32 %82, i32* %14, align 4
  %83 = load i32, i32* %14, align 4
  %84 = call i32 @NT_SUCCESS(i32 %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %96, label %86

86:                                               ; preds = %70
  %87 = load i32, i32* %14, align 4
  %88 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %87)
  %89 = load i64, i64* %13, align 8
  %90 = icmp sgt i64 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %86
  %92 = load i32*, i32** %12, align 8
  %93 = call i32 @ExFreePool(i32* %92)
  br label %94

94:                                               ; preds = %91, %86
  %95 = load i32, i32* %14, align 4
  store i32 %95, i32* %5, align 4
  br label %147

96:                                               ; preds = %70
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 0
  %98 = load %struct.TYPE_13__*, %struct.TYPE_13__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @keycmp(i32 %100, %struct.TYPE_16__* byval(%struct.TYPE_16__) align 8 %10)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %120, label %103

103:                                              ; preds = %96
  %104 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %105 = call i32 @delete_tree_item(%struct.TYPE_15__* %104, %struct.TYPE_14__* %11)
  store i32 %105, i32* %14, align 4
  %106 = load i32, i32* %14, align 4
  %107 = call i32 @NT_SUCCESS(i32 %106)
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %119, label %109

109:                                              ; preds = %103
  %110 = load i32, i32* %14, align 4
  %111 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %110)
  %112 = load i64, i64* %13, align 8
  %113 = icmp sgt i64 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %109
  %115 = load i32*, i32** %12, align 8
  %116 = call i32 @ExFreePool(i32* %115)
  br label %117

117:                                              ; preds = %114, %109
  %118 = load i32, i32* %14, align 4
  store i32 %118, i32* %5, align 4
  br label %147

119:                                              ; preds = %103
  br label %120

120:                                              ; preds = %119, %96
  %121 = load i64, i64* %13, align 8
  %122 = icmp sgt i64 %121, 0
  br i1 %122, label %123, label %145

123:                                              ; preds = %120
  %124 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %125 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %126 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load i8*, i8** %7, align 8
  %129 = load i32, i32* @TYPE_ROOT_BACKREF, align 4
  %130 = load i8*, i8** %8, align 8
  %131 = load i32*, i32** %12, align 8
  %132 = load i64, i64* %13, align 8
  %133 = load i32, i32* %9, align 4
  %134 = call i32 @insert_tree_item(%struct.TYPE_15__* %124, i32 %127, i8* %128, i32 %129, i8* %130, i32* %131, i64 %132, i32* null, i32 %133)
  store i32 %134, i32* %14, align 4
  %135 = load i32, i32* %14, align 4
  %136 = call i32 @NT_SUCCESS(i32 %135)
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %144, label %138

138:                                              ; preds = %123
  %139 = load i32, i32* %14, align 4
  %140 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %139)
  %141 = load i32*, i32** %12, align 8
  %142 = call i32 @ExFreePool(i32* %141)
  %143 = load i32, i32* %14, align 4
  store i32 %143, i32* %5, align 4
  br label %147

144:                                              ; preds = %123
  br label %145

145:                                              ; preds = %144, %120
  %146 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %146, i32* %5, align 4
  br label %147

147:                                              ; preds = %145, %138, %117, %94, %58, %30
  %148 = load i32, i32* %5, align 4
  ret i32 %148
}

declare dso_local i32 @find_item(%struct.TYPE_15__*, i32, %struct.TYPE_14__*, %struct.TYPE_16__*, i32, i32) #1

declare dso_local i32 @NT_SUCCESS(i32) #1

declare dso_local i32 @ERR(i8*, ...) #1

declare dso_local i32 @keycmp(i32, %struct.TYPE_16__* byval(%struct.TYPE_16__) align 8) #1

declare dso_local i32* @ExAllocatePoolWithTag(i32, i64, i32) #1

declare dso_local i32 @RtlCopyMemory(i32*, i32, i64) #1

declare dso_local i32 @ExFreePool(i32*) #1

declare dso_local i32 @delete_tree_item(%struct.TYPE_15__*, %struct.TYPE_14__*) #1

declare dso_local i32 @insert_tree_item(%struct.TYPE_15__*, i32, i8*, i32, i8*, i32*, i64, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
