; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_action.c_load_patch_disk_id.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_action.c_load_patch_disk_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32 }

@load_patch_disk_id.query = internal constant [56 x i8] c"SELECT `DiskId` FROM `Media` WHERE `LastSequence` >= %u\00", align 16
@.str = private unnamed_addr constant [14 x i8] c"query failed\0A\00", align 1
@ERROR_FUNCTION_FAILED = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, %struct.TYPE_10__*)* @load_patch_disk_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @load_patch_disk_id(%struct.TYPE_9__* %0, %struct.TYPE_10__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %5, align 8
  %7 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.TYPE_8__* @MSI_QueryGetRecord(i32 %9, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @load_patch_disk_id.query, i64 0, i64 0), i32 %12)
  store %struct.TYPE_8__* %13, %struct.TYPE_8__** %6, align 8
  %14 = icmp ne %struct.TYPE_8__* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = call i32 @WARN(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @ERROR_FUNCTION_FAILED, align 4
  store i32 %17, i32* %3, align 4
  br label %27

18:                                               ; preds = %2
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %20 = call i32 @MSI_RecordGetInteger(%struct.TYPE_8__* %19, i32 1)
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = call i32 @msiobj_release(i32* %24)
  %26 = load i32, i32* @ERROR_SUCCESS, align 4
  store i32 %26, i32* %3, align 4
  br label %27

27:                                               ; preds = %18, %15
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

declare dso_local %struct.TYPE_8__* @MSI_QueryGetRecord(i32, i8*, i32) #1

declare dso_local i32 @WARN(i8*) #1

declare dso_local i32 @MSI_RecordGetInteger(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @msiobj_release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
