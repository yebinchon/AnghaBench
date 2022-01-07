; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_table.c_TABLE_insert_row.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_table.c_TABLE_insert_row.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tagMSIVIEW = type { i32 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i32, i32*, i32** }

@.str = private unnamed_addr constant [10 x i8] c"%p %p %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"TRUE\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"FALSE\00", align 1
@ERROR_SUCCESS = common dso_local global i32 0, align 4
@ERROR_FUNCTION_FAILED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"insert_row returned %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tagMSIVIEW*, i32*, i32, i64)* @TABLE_insert_row to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @TABLE_insert_row(%struct.tagMSIVIEW* %0, i32* %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.tagMSIVIEW*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.tagMSIVIEW* %0, %struct.tagMSIVIEW** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %13 = load %struct.tagMSIVIEW*, %struct.tagMSIVIEW** %6, align 8
  %14 = bitcast %struct.tagMSIVIEW* %13 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %14, %struct.TYPE_6__** %10, align 8
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %16 = load i32*, i32** %7, align 8
  %17 = load i64, i64* %9, align 8
  %18 = icmp ne i64 %17, 0
  %19 = zext i1 %18 to i64
  %20 = select i1 %18, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)
  %21 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), %struct.TYPE_6__* %15, i32* %16, i8* %20)
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %23 = load i32*, i32** %7, align 8
  %24 = call i32 @table_validate_new(%struct.TYPE_6__* %22, i32* %23, i32* null)
  store i32 %24, i32* %12, align 4
  %25 = load i32, i32* %12, align 4
  %26 = load i32, i32* @ERROR_SUCCESS, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %4
  %29 = load i32, i32* @ERROR_FUNCTION_FAILED, align 4
  store i32 %29, i32* %5, align 4
  br label %128

30:                                               ; preds = %4
  %31 = load i32, i32* %8, align 4
  %32 = icmp eq i32 %31, -1
  br i1 %32, label %33, label %37

33:                                               ; preds = %30
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %35 = load i32*, i32** %7, align 8
  %36 = call i32 @find_insert_index(%struct.TYPE_6__* %34, i32* %35)
  store i32 %36, i32* %8, align 4
  br label %37

37:                                               ; preds = %33, %30
  %38 = load %struct.tagMSIVIEW*, %struct.tagMSIVIEW** %6, align 8
  %39 = load i64, i64* %9, align 8
  %40 = call i32 @table_create_new_row(%struct.tagMSIVIEW* %38, i32* %8, i64 %39)
  store i32 %40, i32* %12, align 4
  %41 = load i32, i32* %12, align 4
  %42 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %41)
  %43 = load i32, i32* %12, align 4
  %44 = load i32, i32* @ERROR_SUCCESS, align 4
  %45 = icmp ne i32 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %37
  %47 = load i32, i32* %12, align 4
  store i32 %47, i32* %5, align 4
  br label %128

48:                                               ; preds = %37
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 1
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = sub nsw i32 %53, 1
  store i32 %54, i32* %11, align 4
  br label %55

55:                                               ; preds = %103, %48
  %56 = load i32, i32* %11, align 4
  %57 = load i32, i32* %8, align 4
  %58 = icmp sgt i32 %56, %57
  br i1 %58, label %59, label %106

59:                                               ; preds = %55
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 1
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 2
  %64 = load i32**, i32*** %63, align 8
  %65 = load i32, i32* %11, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32*, i32** %64, i64 %66
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 0
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 1
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 2
  %74 = load i32**, i32*** %73, align 8
  %75 = load i32, i32* %11, align 4
  %76 = sub nsw i32 %75, 1
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32*, i32** %74, i64 %77
  %79 = load i32*, i32** %78, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 0
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @memmove(i32* %69, i32* %80, i32 %83)
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 1
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 1
  %89 = load i32*, i32** %88, align 8
  %90 = load i32, i32* %11, align 4
  %91 = sub nsw i32 %90, 1
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %89, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 1
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 1
  %99 = load i32*, i32** %98, align 8
  %100 = load i32, i32* %11, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  store i32 %94, i32* %102, align 4
  br label %103

103:                                              ; preds = %59
  %104 = load i32, i32* %11, align 4
  %105 = add nsw i32 %104, -1
  store i32 %105, i32* %11, align 4
  br label %55

106:                                              ; preds = %55
  %107 = load i64, i64* %9, align 8
  %108 = icmp ne i64 %107, 0
  %109 = xor i1 %108, true
  %110 = zext i1 %109 to i32
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 1
  %113 = load %struct.TYPE_5__*, %struct.TYPE_5__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 1
  %115 = load i32*, i32** %114, align 8
  %116 = load i32, i32* %8, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %115, i64 %117
  store i32 %110, i32* %118, align 4
  %119 = load %struct.tagMSIVIEW*, %struct.tagMSIVIEW** %6, align 8
  %120 = load i32, i32* %8, align 4
  %121 = load i32*, i32** %7, align 8
  %122 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = shl i32 1, %124
  %126 = sub nsw i32 %125, 1
  %127 = call i32 @TABLE_set_row(%struct.tagMSIVIEW* %119, i32 %120, i32* %121, i32 %126)
  store i32 %127, i32* %5, align 4
  br label %128

128:                                              ; preds = %106, %46, %28
  %129 = load i32, i32* %5, align 4
  ret i32 %129
}

declare dso_local i32 @TRACE(i8*, ...) #1

declare dso_local i32 @table_validate_new(%struct.TYPE_6__*, i32*, i32*) #1

declare dso_local i32 @find_insert_index(%struct.TYPE_6__*, i32*) #1

declare dso_local i32 @table_create_new_row(%struct.tagMSIVIEW*, i32*, i64) #1

declare dso_local i32 @memmove(i32*, i32*, i32) #1

declare dso_local i32 @TABLE_set_row(%struct.tagMSIVIEW*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
