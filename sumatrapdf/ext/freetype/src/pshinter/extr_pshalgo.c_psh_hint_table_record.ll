; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/freetype/src/pshinter/extr_pshalgo.c_psh_hint_table_record.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/freetype/src/pshinter/extr_pshalgo.c_psh_hint_table_record.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i64, i64, %struct.TYPE_9__** }
%struct.TYPE_9__ = type { %struct.TYPE_9__* }

@.str = private unnamed_addr constant [46 x i8] c"psh_hint_table_record: invalid hint index %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"psh_hint_table_record: too many sorted hints!  BUG!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*, i64)* @psh_hint_table_record to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @psh_hint_table_record(%struct.TYPE_8__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca %struct.TYPE_9__**, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* %4, align 8
  %13 = add nsw i64 %11, %12
  %14 = inttoptr i64 %13 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %14, %struct.TYPE_9__** %5, align 8
  %15 = load i64, i64* %4, align 8
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp sge i64 %15, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %2
  %21 = load i64, i64* %4, align 8
  %22 = inttoptr i64 %21 to i8*
  %23 = call i32 @FT_TRACE0(i8* %22)
  br label %81

24:                                               ; preds = %2
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %26 = call i64 @psh_hint_is_active(%struct.TYPE_9__* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  br label %81

29:                                               ; preds = %24
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %31 = call i32 @psh_hint_activate(%struct.TYPE_9__* %30)
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 3
  %34 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %33, align 8
  store %struct.TYPE_9__** %34, %struct.TYPE_9__*** %6, align 8
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  store i64 %37, i64* %7, align 8
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %39, align 8
  br label %40

40:                                               ; preds = %56, %29
  %41 = load i64, i64* %7, align 8
  %42 = icmp sgt i64 %41, 0
  br i1 %42, label %43, label %61

43:                                               ; preds = %40
  %44 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %44, i64 0
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %45, align 8
  store %struct.TYPE_9__* %46, %struct.TYPE_9__** %8, align 8
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %49 = call i64 @psh_hint_overlap(%struct.TYPE_9__* %47, %struct.TYPE_9__* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %43
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 0
  store %struct.TYPE_9__* %52, %struct.TYPE_9__** %54, align 8
  br label %61

55:                                               ; preds = %43
  br label %56

56:                                               ; preds = %55
  %57 = load i64, i64* %7, align 8
  %58 = add nsw i64 %57, -1
  store i64 %58, i64* %7, align 8
  %59 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %59, i32 1
  store %struct.TYPE_9__** %60, %struct.TYPE_9__*** %6, align 8
  br label %40

61:                                               ; preds = %51, %40
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = icmp slt i64 %64, %67
  br i1 %68, label %69, label %79

69:                                               ; preds = %61
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 3
  %73 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %72, align 8
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = add nsw i64 %76, 1
  store i64 %77, i64* %75, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %73, i64 %76
  store %struct.TYPE_9__* %70, %struct.TYPE_9__** %78, align 8
  br label %81

79:                                               ; preds = %61
  %80 = call i32 @FT_TRACE0(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0))
  br label %81

81:                                               ; preds = %20, %28, %79, %69
  ret void
}

declare dso_local i32 @FT_TRACE0(i8*) #1

declare dso_local i64 @psh_hint_is_active(%struct.TYPE_9__*) #1

declare dso_local i32 @psh_hint_activate(%struct.TYPE_9__*) #1

declare dso_local i64 @psh_hint_overlap(%struct.TYPE_9__*, %struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
