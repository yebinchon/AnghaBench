; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_action.c_msi_load_all_components.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_action.c_msi_load_all_components.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32 }

@msi_load_all_components.query = internal constant [26 x i8] c"SELECT * FROM `Component`\00", align 16
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"can't initialize assembly caches\0A\00", align 1
@ERROR_FUNCTION_FAILED = common dso_local global i64 0, align 8
@load_component = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @msi_load_all_components(%struct.TYPE_9__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i64, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  %6 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 1
  %8 = call i32 @list_empty(i32* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %1
  %11 = load i64, i64* @ERROR_SUCCESS, align 8
  store i64 %11, i64* %2, align 8
  br label %41

12:                                               ; preds = %1
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @MSI_DatabaseOpenViewW(i32 %15, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @msi_load_all_components.query, i64 0, i64 0), %struct.TYPE_8__** %4)
  store i64 %16, i64* %5, align 8
  %17 = load i64, i64* %5, align 8
  %18 = load i64, i64* @ERROR_SUCCESS, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %12
  %21 = load i64, i64* %5, align 8
  store i64 %21, i64* %2, align 8
  br label %41

22:                                               ; preds = %12
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %24 = call i32 @msi_init_assembly_caches(%struct.TYPE_9__* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %32, label %26

26:                                               ; preds = %22
  %27 = call i32 @ERR(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = call i32 @msiobj_release(i32* %29)
  %31 = load i64, i64* @ERROR_FUNCTION_FAILED, align 8
  store i64 %31, i64* %2, align 8
  br label %41

32:                                               ; preds = %22
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %34 = load i32, i32* @load_component, align 4
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %36 = call i64 @MSI_IterateRecords(%struct.TYPE_8__* %33, i32* null, i32 %34, %struct.TYPE_9__* %35)
  store i64 %36, i64* %5, align 8
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = call i32 @msiobj_release(i32* %38)
  %40 = load i64, i64* %5, align 8
  store i64 %40, i64* %2, align 8
  br label %41

41:                                               ; preds = %32, %26, %20, %10
  %42 = load i64, i64* %2, align 8
  ret i64 %42
}

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i64 @MSI_DatabaseOpenViewW(i32, i8*, %struct.TYPE_8__**) #1

declare dso_local i32 @msi_init_assembly_caches(%struct.TYPE_9__*) #1

declare dso_local i32 @ERR(i8*) #1

declare dso_local i32 @msiobj_release(i32*) #1

declare dso_local i64 @MSI_IterateRecords(%struct.TYPE_8__*, i32*, i32, %struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
