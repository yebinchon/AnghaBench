; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/utils/pice/module/extr_symbols.c_ListDriverModules.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/utils/pice/module/extr_symbols.c_ListDriverModules.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_13__* }
%struct.TYPE_14__ = type { %struct.TYPE_14__*, i32, i32, i64, i64 }
%struct.TYPE_12__ = type { i64, i64, %struct.TYPE_11__, i32, %struct.TYPE_10__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32 }

@pModuleListHead = common dso_local global %struct.TYPE_13__* null, align 8
@MODULE_OBJECT = common dso_local global i32 0, align 4
@ListEntry = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"FullName: %S, BaseName: %S, Length: %ld, EntryPoint: %x\0A\00", align 1
@pdebug_module_tail = common dso_local global %struct.TYPE_14__* null, align 8
@.str.1 = private unnamed_addr constant [9 x i32] [i32 110, i32 116, i32 111, i32 115, i32 107, i32 114, i32 110, i32 108, i32 0], align 4
@kernel_end = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ListDriverModules() #0 {
  %1 = alloca %struct.TYPE_13__*, align 8
  %2 = alloca %struct.TYPE_12__*, align 8
  %3 = alloca i32, align 4
  %4 = call i32 (...) @ENTER_FUNC()
  %5 = load %struct.TYPE_13__*, %struct.TYPE_13__** @pModuleListHead, align 8
  %6 = call i32 @ASSERT(%struct.TYPE_13__* %5)
  %7 = load %struct.TYPE_13__*, %struct.TYPE_13__** @pModuleListHead, align 8
  %8 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  store %struct.TYPE_13__* %9, %struct.TYPE_13__** %1, align 8
  br label %10

10:                                               ; preds = %77, %0
  %11 = load %struct.TYPE_13__*, %struct.TYPE_13__** %1, align 8
  %12 = load %struct.TYPE_13__*, %struct.TYPE_13__** @pModuleListHead, align 8
  %13 = icmp ne %struct.TYPE_13__* %11, %12
  br i1 %13, label %14, label %81

14:                                               ; preds = %10
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %1, align 8
  %16 = load i32, i32* @MODULE_OBJECT, align 4
  %17 = load i32, i32* @ListEntry, align 4
  %18 = call %struct.TYPE_12__* @CONTAINING_RECORD(%struct.TYPE_13__* %15, i32 %16, i32 %17)
  store %struct.TYPE_12__* %18, %struct.TYPE_12__** %2, align 8
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 4
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @DPRINT(i32 %32)
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** @pdebug_module_tail, align 8
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 4
  store i64 %36, i64* %38, align 8
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** @pdebug_module_tail, align 8
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %42, i32 0, i32 3
  store i64 %41, i64* %43, align 8
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** @pdebug_module_tail, align 8
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @PICE_wcscpy(i32 %46, i32 %50)
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** @pdebug_module_tail, align 8
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 8
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** @pdebug_module_tail, align 8
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %58, align 8
  store %struct.TYPE_14__* %59, %struct.TYPE_14__** @pdebug_module_tail, align 8
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %61 = icmp ne %struct.TYPE_12__* %60, null
  br i1 %61, label %62, label %77

62:                                               ; preds = %14
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i64 @_wcsicmp(i32 %66, i8* bitcast ([9 x i32]* @.str.1 to i8*))
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %69, label %77

69:                                               ; preds = %62
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = add nsw i64 %72, %75
  store i64 %76, i64* @kernel_end, align 8
  br label %77

77:                                               ; preds = %69, %62, %14
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %1, align 8
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_13__*, %struct.TYPE_13__** %79, align 8
  store %struct.TYPE_13__* %80, %struct.TYPE_13__** %1, align 8
  br label %10

81:                                               ; preds = %10
  %82 = call i32 (...) @LEAVE_FUNC()
  %83 = load i32, i32* @TRUE, align 4
  ret i32 %83
}

declare dso_local i32 @ENTER_FUNC(...) #1

declare dso_local i32 @ASSERT(%struct.TYPE_13__*) #1

declare dso_local %struct.TYPE_12__* @CONTAINING_RECORD(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @DPRINT(i32) #1

declare dso_local i32 @PICE_wcscpy(i32, i32) #1

declare dso_local i64 @_wcsicmp(i32, i8*) #1

declare dso_local i32 @LEAVE_FUNC(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
