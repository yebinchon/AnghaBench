; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_select.c_SELECT_set_row.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_select.c_SELECT_set_row.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tagMSIVIEW = type { i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i32, i32*, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 (%struct.TYPE_16__*, i32*, i32*)*, i32 (%struct.TYPE_16__*, i32, %struct.TYPE_15__*, i32)* }

@ERROR_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"%p %d %p %08x\0A\00", align 1
@ERROR_FUNCTION_FAILED = common dso_local global i32 0, align 4
@ERROR_INVALID_PARAMETER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tagMSIVIEW*, i32, %struct.TYPE_15__*, i32)* @SELECT_set_row to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @SELECT_set_row(%struct.tagMSIVIEW* %0, i32 %1, %struct.TYPE_15__* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.tagMSIVIEW*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_14__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_15__*, align 8
  store %struct.tagMSIVIEW* %0, %struct.tagMSIVIEW** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.TYPE_15__* %2, %struct.TYPE_15__** %8, align 8
  store i32 %3, i32* %9, align 4
  %16 = load %struct.tagMSIVIEW*, %struct.tagMSIVIEW** %6, align 8
  %17 = bitcast %struct.tagMSIVIEW* %16 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %17, %struct.TYPE_14__** %10, align 8
  store i32 0, i32* %12, align 4
  %18 = load i32, i32* @ERROR_SUCCESS, align 4
  store i32 %18, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %20 = load i32, i32* %7, align 4
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %22 = load i32, i32* %9, align 4
  %23 = call i32 @TRACE(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), %struct.TYPE_14__* %19, i32 %20, %struct.TYPE_15__* %21, i32 %22)
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i32 0, i32 2
  %26 = load %struct.TYPE_16__*, %struct.TYPE_16__** %25, align 8
  %27 = icmp ne %struct.TYPE_16__* %26, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %4
  %29 = load i32, i32* @ERROR_FUNCTION_FAILED, align 4
  store i32 %29, i32* %5, align 4
  br label %125

30:                                               ; preds = %4
  %31 = load i32, i32* %9, align 4
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %33 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = shl i32 1, %34
  %36 = icmp sge i32 %31, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %30
  %38 = load i32, i32* @ERROR_INVALID_PARAMETER, align 4
  store i32 %38, i32* %5, align 4
  br label %125

39:                                               ; preds = %30
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 2
  %42 = load %struct.TYPE_16__*, %struct.TYPE_16__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 0
  %46 = load i32 (%struct.TYPE_16__*, i32*, i32*)*, i32 (%struct.TYPE_16__*, i32*, i32*)** %45, align 8
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i32 0, i32 2
  %49 = load %struct.TYPE_16__*, %struct.TYPE_16__** %48, align 8
  %50 = call i32 %46(%struct.TYPE_16__* %49, i32* null, i32* %14)
  store i32 %50, i32* %13, align 4
  %51 = load i32, i32* %13, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %39
  %54 = load i32, i32* %13, align 4
  store i32 %54, i32* %5, align 4
  br label %125

55:                                               ; preds = %39
  %56 = load i32, i32* %14, align 4
  %57 = call %struct.TYPE_15__* @MSI_CreateRecord(i32 %56)
  store %struct.TYPE_15__* %57, %struct.TYPE_15__** %15, align 8
  %58 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %59 = icmp ne %struct.TYPE_15__* %58, null
  br i1 %59, label %62, label %60

60:                                               ; preds = %55
  %61 = load i32, i32* @ERROR_FUNCTION_FAILED, align 4
  store i32 %61, i32* %5, align 4
  br label %125

62:                                               ; preds = %55
  store i32 0, i32* %11, align 4
  br label %63

63:                                               ; preds = %98, %62
  %64 = load i32, i32* %11, align 4
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = icmp slt i32 %64, %67
  br i1 %68, label %69, label %101

69:                                               ; preds = %63
  %70 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %71 = load i32, i32* %11, align 4
  %72 = add nsw i32 %71, 1
  %73 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %74 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %75 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %74, i32 0, i32 1
  %76 = load i32*, i32** %75, align 8
  %77 = load i32, i32* %11, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @MSI_RecordCopyField(%struct.TYPE_15__* %70, i32 %72, %struct.TYPE_15__* %73, i32 %80)
  store i32 %81, i32* %13, align 4
  %82 = load i32, i32* %13, align 4
  %83 = load i32, i32* @ERROR_SUCCESS, align 4
  %84 = icmp ne i32 %82, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %69
  br label %101

86:                                               ; preds = %69
  %87 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %87, i32 0, i32 1
  %89 = load i32*, i32** %88, align 8
  %90 = load i32, i32* %11, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = sub nsw i32 %93, 1
  %95 = shl i32 1, %94
  %96 = load i32, i32* %12, align 4
  %97 = or i32 %96, %95
  store i32 %97, i32* %12, align 4
  br label %98

98:                                               ; preds = %86
  %99 = load i32, i32* %11, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %11, align 4
  br label %63

101:                                              ; preds = %85, %63
  %102 = load i32, i32* %13, align 4
  %103 = load i32, i32* @ERROR_SUCCESS, align 4
  %104 = icmp eq i32 %102, %103
  br i1 %104, label %105, label %120

105:                                              ; preds = %101
  %106 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %107 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %106, i32 0, i32 2
  %108 = load %struct.TYPE_16__*, %struct.TYPE_16__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %108, i32 0, i32 0
  %110 = load %struct.TYPE_13__*, %struct.TYPE_13__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %110, i32 0, i32 1
  %112 = load i32 (%struct.TYPE_16__*, i32, %struct.TYPE_15__*, i32)*, i32 (%struct.TYPE_16__*, i32, %struct.TYPE_15__*, i32)** %111, align 8
  %113 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %114 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %113, i32 0, i32 2
  %115 = load %struct.TYPE_16__*, %struct.TYPE_16__** %114, align 8
  %116 = load i32, i32* %7, align 4
  %117 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %118 = load i32, i32* %12, align 4
  %119 = call i32 %112(%struct.TYPE_16__* %115, i32 %116, %struct.TYPE_15__* %117, i32 %118)
  store i32 %119, i32* %13, align 4
  br label %120

120:                                              ; preds = %105, %101
  %121 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %122 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %121, i32 0, i32 0
  %123 = call i32 @msiobj_release(i32* %122)
  %124 = load i32, i32* %13, align 4
  store i32 %124, i32* %5, align 4
  br label %125

125:                                              ; preds = %120, %60, %53, %37, %28
  %126 = load i32, i32* %5, align 4
  ret i32 %126
}

declare dso_local i32 @TRACE(i8*, %struct.TYPE_14__*, i32, %struct.TYPE_15__*, i32) #1

declare dso_local %struct.TYPE_15__* @MSI_CreateRecord(i32) #1

declare dso_local i32 @MSI_RecordCopyField(%struct.TYPE_15__*, i32, %struct.TYPE_15__*, i32) #1

declare dso_local i32 @msiobj_release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
