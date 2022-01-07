; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_insert.c_msi_query_merge_record.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_insert.c_msi_query_merge_record.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_15__*, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_16__ = type { i32 }

@.str = private unnamed_addr constant [43 x i8] c"Not enough elements in the list to insert\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"field %d -> %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"Unknown expression type %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_16__* @msi_query_merge_record(i32 %0, %struct.TYPE_15__* %1, %struct.TYPE_16__* %2) #0 {
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca %struct.TYPE_16__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %6, align 8
  store %struct.TYPE_16__* %2, %struct.TYPE_16__** %7, align 8
  store i32 1, i32* %9, align 4
  %11 = load i32, i32* %5, align 4
  %12 = call %struct.TYPE_16__* @MSI_CreateRecord(i32 %11)
  store %struct.TYPE_16__* %12, %struct.TYPE_16__** %8, align 8
  store i32 1, i32* %10, align 4
  br label %13

13:                                               ; preds = %80, %3
  %14 = load i32, i32* %10, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp sle i32 %14, %15
  br i1 %16, label %17, label %83

17:                                               ; preds = %13
  %18 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %19 = icmp ne %struct.TYPE_15__* %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %17
  %21 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  br label %85

22:                                               ; preds = %17
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %23, i32 0, i32 1
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  switch i32 %27, label %69 [
    i32 129, label %28
    i32 130, label %47
    i32 128, label %57
  ]

28:                                               ; preds = %22
  %29 = load i32, i32* %10, align 4
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @debugstr_w(i32 %35)
  %37 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %29, i32 %36)
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %39 = load i32, i32* %10, align 4
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %40, i32 0, i32 1
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @MSI_RecordSetStringW(%struct.TYPE_16__* %38, i32 %39, i32 %45)
  br label %76

47:                                               ; preds = %22
  %48 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %49 = load i32, i32* %10, align 4
  %50 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %50, i32 0, i32 1
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @MSI_RecordSetInteger(%struct.TYPE_16__* %48, i32 %49, i32 %55)
  br label %76

57:                                               ; preds = %22
  %58 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %59 = icmp ne %struct.TYPE_16__* %58, null
  br i1 %59, label %61, label %60

60:                                               ; preds = %57
  br label %85

61:                                               ; preds = %57
  %62 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %63 = load i32, i32* %9, align 4
  %64 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %65 = load i32, i32* %10, align 4
  %66 = call i32 @MSI_RecordCopyField(%struct.TYPE_16__* %62, i32 %63, %struct.TYPE_16__* %64, i32 %65)
  %67 = load i32, i32* %9, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %9, align 4
  br label %76

69:                                               ; preds = %22
  %70 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %70, i32 0, i32 1
  %72 = load %struct.TYPE_14__*, %struct.TYPE_14__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @ERR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %74)
  br label %76

76:                                               ; preds = %69, %61, %47, %28
  %77 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_15__*, %struct.TYPE_15__** %78, align 8
  store %struct.TYPE_15__* %79, %struct.TYPE_15__** %6, align 8
  br label %80

80:                                               ; preds = %76
  %81 = load i32, i32* %10, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %10, align 4
  br label %13

83:                                               ; preds = %13
  %84 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  store %struct.TYPE_16__* %84, %struct.TYPE_16__** %4, align 8
  br label %89

85:                                               ; preds = %60, %20
  %86 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %87 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %86, i32 0, i32 0
  %88 = call i32 @msiobj_release(i32* %87)
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %4, align 8
  br label %89

89:                                               ; preds = %85, %83
  %90 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  ret %struct.TYPE_16__* %90
}

declare dso_local %struct.TYPE_16__* @MSI_CreateRecord(i32) #1

declare dso_local i32 @TRACE(i8*, ...) #1

declare dso_local i32 @debugstr_w(i32) #1

declare dso_local i32 @MSI_RecordSetStringW(%struct.TYPE_16__*, i32, i32) #1

declare dso_local i32 @MSI_RecordSetInteger(%struct.TYPE_16__*, i32, i32) #1

declare dso_local i32 @MSI_RecordCopyField(%struct.TYPE_16__*, i32, %struct.TYPE_16__*, i32) #1

declare dso_local i32 @ERR(i8*, i32) #1

declare dso_local i32 @msiobj_release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
