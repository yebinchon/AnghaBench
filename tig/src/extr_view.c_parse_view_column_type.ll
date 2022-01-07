; ModuleID = '/home/carl/AnghaBench/tig/src/extr_view.c_parse_view_column_type.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_view.c_parse_view_column_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32* }
%struct.view_column = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c":,\00", align 1
@view_column_type_map = common dso_local global %struct.TYPE_2__* null, align 8
@SUCCESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"Failed to parse view column type: %.*s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.view_column*, i8**)* @parse_view_column_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_view_column_type(%struct.view_column* %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.view_column*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.view_column* %0, %struct.view_column** %4, align 8
  store i8** %1, i8*** %5, align 8
  %8 = load i8**, i8*** %5, align 8
  %9 = load i8*, i8** %8, align 8
  %10 = call i64 @strcspn(i8* %9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i64 %10, i64* %7, align 8
  store i32 0, i32* %6, align 4
  br label %11

11:                                               ; preds = %51, %2
  %12 = load i32, i32* %6, align 4
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** @view_column_type_map, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ult i32 %12, %15
  br i1 %16, label %17, label %54

17:                                               ; preds = %11
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** @view_column_type_map, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = load i32, i32* %6, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = load i8**, i8*** %5, align 8
  %26 = load i8*, i8** %25, align 8
  %27 = load i64, i64* %7, align 8
  %28 = call i64 @enum_equals(i32 %24, i8* %26, i64 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %50

30:                                               ; preds = %17
  %31 = load i64, i64* %7, align 8
  %32 = load i8**, i8*** %5, align 8
  %33 = load i8*, i8** %32, align 8
  %34 = load i64, i64* %7, align 8
  %35 = getelementptr inbounds i8, i8* %33, i64 %34
  %36 = load i8, i8* %35, align 1
  %37 = icmp ne i8 %36, 0
  %38 = xor i1 %37, true
  %39 = xor i1 %38, true
  %40 = zext i1 %39 to i32
  %41 = sext i32 %40 to i64
  %42 = add i64 %31, %41
  %43 = load i8**, i8*** %5, align 8
  %44 = load i8*, i8** %43, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 %42
  store i8* %45, i8** %43, align 8
  %46 = load i32, i32* %6, align 4
  %47 = load %struct.view_column*, %struct.view_column** %4, align 8
  %48 = getelementptr inbounds %struct.view_column, %struct.view_column* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 4
  %49 = load i32, i32* @SUCCESS, align 4
  store i32 %49, i32* %3, align 4
  br label %60

50:                                               ; preds = %17
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %6, align 4
  %53 = add i32 %52, 1
  store i32 %53, i32* %6, align 4
  br label %11

54:                                               ; preds = %11
  %55 = load i64, i64* %7, align 8
  %56 = trunc i64 %55 to i32
  %57 = load i8**, i8*** %5, align 8
  %58 = load i8*, i8** %57, align 8
  %59 = call i32 @error(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %56, i8* %58)
  store i32 %59, i32* %3, align 4
  br label %60

60:                                               ; preds = %54, %30
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local i64 @strcspn(i8*, i8*) #1

declare dso_local i64 @enum_equals(i32, i8*, i64) #1

declare dso_local i32 @error(i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
