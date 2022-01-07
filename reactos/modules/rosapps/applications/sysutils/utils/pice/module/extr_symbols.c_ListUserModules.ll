; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/utils/pice/module/extr_symbols.c_ListUserModules.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/utils/pice/module/extr_symbols.c_ListUserModules.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_17__*, i32, i64, i32, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.TYPE_15__* }
%struct.TYPE_16__ = type { %struct.TYPE_12__, i64, i32, i32, %struct.TYPE_11__ }
%struct.TYPE_12__ = type { i64, i32 }
%struct.TYPE_11__ = type { i32 }

@LDR_DATA_TABLE_ENTRY = common dso_local global i32 0, align 4
@InLoadOrderModuleList = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [74 x i8] c"FullName: %S, BaseName: %S, Length: %ld, EntryPoint: %x, BaseAddress: %x\0A\00", align 1
@pdebug_module_tail = common dso_local global %struct.TYPE_17__* null, align 8
@DEBUG_MODULE_NAME_LEN = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ListUserModules(%struct.TYPE_14__* %0) #0 {
  %2 = alloca %struct.TYPE_14__*, align 8
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %2, align 8
  %7 = call i32 (...) @ENTER_FUNC()
  %8 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  store %struct.TYPE_13__* %10, %struct.TYPE_13__** %6, align 8
  %11 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %12 = icmp ne %struct.TYPE_13__* %11, null
  br i1 %12, label %13, label %93

13:                                               ; preds = %1
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %15 = ptrtoint %struct.TYPE_13__* %14 to i32
  %16 = call i32 @IsAddressValid(i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %93

18:                                               ; preds = %13
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 0
  store %struct.TYPE_15__* %20, %struct.TYPE_15__** %3, align 8
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %22 = ptrtoint %struct.TYPE_15__* %21 to i32
  %23 = call i32 @IsAddressValid(i32 %22)
  %24 = call i32 @ASSERT(i32 %23)
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %26, align 8
  store %struct.TYPE_15__* %27, %struct.TYPE_15__** %4, align 8
  br label %28

28:                                               ; preds = %32, %18
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %31 = icmp ne %struct.TYPE_15__* %29, %30
  br i1 %31, label %32, label %92

32:                                               ; preds = %28
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %34 = load i32, i32* @LDR_DATA_TABLE_ENTRY, align 4
  %35 = load i32, i32* @InLoadOrderModuleList, align 4
  %36 = call %struct.TYPE_16__* @CONTAINING_RECORD(%struct.TYPE_15__* %33, i32 %34, i32 %35)
  store %struct.TYPE_16__* %36, %struct.TYPE_16__** %5, align 8
  %37 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %37, i32 0, i32 4
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @DPRINT(i32 %53)
  %55 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.TYPE_17__*, %struct.TYPE_17__** @pdebug_module_tail, align 8
  %59 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %58, i32 0, i32 4
  store i32 %57, i32* %59, align 4
  %60 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.TYPE_17__*, %struct.TYPE_17__** @pdebug_module_tail, align 8
  %64 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %63, i32 0, i32 3
  store i32 %62, i32* %64, align 8
  %65 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.TYPE_17__*, %struct.TYPE_17__** @pdebug_module_tail, align 8
  %69 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %68, i32 0, i32 2
  store i64 %67, i64* %69, align 8
  %70 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @DEBUG_MODULE_NAME_LEN, align 8
  %75 = icmp slt i64 %73, %74
  %76 = zext i1 %75 to i32
  %77 = call i32 @ASSERT(i32 %76)
  %78 = load %struct.TYPE_17__*, %struct.TYPE_17__** @pdebug_module_tail, align 8
  %79 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @PICE_wcscpy(i32 %80, i32 %84)
  %86 = load %struct.TYPE_17__*, %struct.TYPE_17__** @pdebug_module_tail, align 8
  %87 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %86, i32 0, i32 0
  %88 = load %struct.TYPE_17__*, %struct.TYPE_17__** %87, align 8
  store %struct.TYPE_17__* %88, %struct.TYPE_17__** @pdebug_module_tail, align 8
  %89 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %89, i32 0, i32 0
  %91 = load %struct.TYPE_15__*, %struct.TYPE_15__** %90, align 8
  store %struct.TYPE_15__* %91, %struct.TYPE_15__** %4, align 8
  br label %28

92:                                               ; preds = %28
  br label %93

93:                                               ; preds = %92, %13, %1
  %94 = call i32 (...) @LEAVE_FUNC()
  %95 = load i32, i32* @TRUE, align 4
  ret i32 %95
}

declare dso_local i32 @ENTER_FUNC(...) #1

declare dso_local i32 @IsAddressValid(i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local %struct.TYPE_16__* @CONTAINING_RECORD(%struct.TYPE_15__*, i32, i32) #1

declare dso_local i32 @DPRINT(i32) #1

declare dso_local i32 @PICE_wcscpy(i32, i32) #1

declare dso_local i32 @LEAVE_FUNC(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
