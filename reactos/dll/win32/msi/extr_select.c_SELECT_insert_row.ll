; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_select.c_SELECT_insert_row.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_select.c_SELECT_insert_row.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tagMSIVIEW = type { i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i64, %struct.TYPE_16__*, i32* }
%struct.TYPE_16__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i64 (%struct.TYPE_16__*, i32*, i64*)*, i64 (%struct.TYPE_16__*, %struct.TYPE_15__*, i64, i32)* }

@.str = private unnamed_addr constant [7 x i8] c"%p %p\0A\00", align 1
@ERROR_FUNCTION_FAILED = common dso_local global i64 0, align 8
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.tagMSIVIEW*, %struct.TYPE_15__*, i64, i32)* @SELECT_insert_row to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @SELECT_insert_row(%struct.tagMSIVIEW* %0, %struct.TYPE_15__* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.tagMSIVIEW*, align 8
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_14__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_15__*, align 8
  store %struct.tagMSIVIEW* %0, %struct.tagMSIVIEW** %6, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load %struct.tagMSIVIEW*, %struct.tagMSIVIEW** %6, align 8
  %16 = bitcast %struct.tagMSIVIEW* %15 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %16, %struct.TYPE_14__** %10, align 8
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %18 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %19 = call i32 @TRACE(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), %struct.TYPE_14__* %17, %struct.TYPE_15__* %18)
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_16__*, %struct.TYPE_16__** %21, align 8
  %23 = icmp ne %struct.TYPE_16__* %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %4
  %25 = load i64, i64* @ERROR_FUNCTION_FAILED, align 8
  store i64 %25, i64* %5, align 8
  br label %93

26:                                               ; preds = %4
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_16__*, %struct.TYPE_16__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 0
  %33 = load i64 (%struct.TYPE_16__*, i32*, i64*)*, i64 (%struct.TYPE_16__*, i32*, i64*)** %32, align 8
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %34, i32 0, i32 1
  %36 = load %struct.TYPE_16__*, %struct.TYPE_16__** %35, align 8
  %37 = call i64 %33(%struct.TYPE_16__* %36, i32* null, i64* %12)
  store i64 %37, i64* %13, align 8
  %38 = load i64, i64* %13, align 8
  %39 = load i64, i64* @ERROR_SUCCESS, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %26
  %42 = load i64, i64* %13, align 8
  store i64 %42, i64* %5, align 8
  br label %93

43:                                               ; preds = %26
  %44 = load i64, i64* %12, align 8
  %45 = add nsw i64 %44, 1
  %46 = call %struct.TYPE_15__* @MSI_CreateRecord(i64 %45)
  store %struct.TYPE_15__* %46, %struct.TYPE_15__** %14, align 8
  store i64 0, i64* %11, align 8
  br label %47

47:                                               ; preds = %70, %43
  %48 = load i64, i64* %11, align 8
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp slt i64 %48, %51
  br i1 %52, label %53, label %73

53:                                               ; preds = %47
  %54 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %55 = load i64, i64* %11, align 8
  %56 = add nsw i64 %55, 1
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 2
  %60 = load i32*, i32** %59, align 8
  %61 = load i64, i64* %11, align 8
  %62 = getelementptr inbounds i32, i32* %60, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = call i64 @MSI_RecordCopyField(%struct.TYPE_15__* %54, i64 %56, %struct.TYPE_15__* %57, i32 %63)
  store i64 %64, i64* %13, align 8
  %65 = load i64, i64* %13, align 8
  %66 = load i64, i64* @ERROR_SUCCESS, align 8
  %67 = icmp ne i64 %65, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %53
  br label %88

69:                                               ; preds = %53
  br label %70

70:                                               ; preds = %69
  %71 = load i64, i64* %11, align 8
  %72 = add nsw i64 %71, 1
  store i64 %72, i64* %11, align 8
  br label %47

73:                                               ; preds = %47
  %74 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %75 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %74, i32 0, i32 1
  %76 = load %struct.TYPE_16__*, %struct.TYPE_16__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i32 0, i32 1
  %80 = load i64 (%struct.TYPE_16__*, %struct.TYPE_15__*, i64, i32)*, i64 (%struct.TYPE_16__*, %struct.TYPE_15__*, i64, i32)** %79, align 8
  %81 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %81, i32 0, i32 1
  %83 = load %struct.TYPE_16__*, %struct.TYPE_16__** %82, align 8
  %84 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %85 = load i64, i64* %8, align 8
  %86 = load i32, i32* %9, align 4
  %87 = call i64 %80(%struct.TYPE_16__* %83, %struct.TYPE_15__* %84, i64 %85, i32 %86)
  store i64 %87, i64* %13, align 8
  br label %88

88:                                               ; preds = %73, %68
  %89 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %90 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %89, i32 0, i32 0
  %91 = call i32 @msiobj_release(i32* %90)
  %92 = load i64, i64* %13, align 8
  store i64 %92, i64* %5, align 8
  br label %93

93:                                               ; preds = %88, %41, %24
  %94 = load i64, i64* %5, align 8
  ret i64 %94
}

declare dso_local i32 @TRACE(i8*, %struct.TYPE_14__*, %struct.TYPE_15__*) #1

declare dso_local %struct.TYPE_15__* @MSI_CreateRecord(i64) #1

declare dso_local i64 @MSI_RecordCopyField(%struct.TYPE_15__*, i64, %struct.TYPE_15__*, i32) #1

declare dso_local i32 @msiobj_release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
