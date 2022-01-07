; ModuleID = '/home/carl/AnghaBench/tig/src/extr_view.c_format_view_config.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_view.c_format_view_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.enum_map = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.view_column = type { i64, %struct.view_column* }

@view_column_type_map = common dso_local global %struct.enum_map* null, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@SIZEOF_STR = common dso_local global i32 0, align 4
@SUCCESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"%s%s%s\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"No space left in buffer\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c" \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @format_view_config(%struct.view_column* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.view_column*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.enum_map*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.view_column* %0, %struct.view_column** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %16 = load %struct.enum_map*, %struct.enum_map** @view_column_type_map, align 8
  store %struct.enum_map* %16, %struct.enum_map** %8, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %9, align 8
  store i64 0, i64* %10, align 8
  %17 = load i32, i32* @SIZEOF_STR, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %11, align 8
  %20 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %12, align 8
  %21 = load i32, i32* @SIZEOF_STR, align 4
  %22 = zext i32 %21 to i64
  %23 = alloca i8, i64 %22, align 16
  store i64 %22, i64* %13, align 8
  br label %24

24:                                               ; preds = %58, %3
  %25 = load %struct.view_column*, %struct.view_column** %5, align 8
  %26 = icmp ne %struct.view_column* %25, null
  br i1 %26, label %27, label %62

27:                                               ; preds = %24
  %28 = load %struct.view_column*, %struct.view_column** %5, align 8
  %29 = trunc i64 %22 to i32
  %30 = call i32 @format_view_column(%struct.view_column* %28, i8* %23, i32 %29)
  store i32 %30, i32* %14, align 4
  %31 = load i32, i32* %14, align 4
  %32 = load i32, i32* @SUCCESS, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %27
  %35 = load i32, i32* %14, align 4
  store i32 %35, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %64

36:                                               ; preds = %27
  %37 = trunc i64 %18 to i32
  %38 = load %struct.enum_map*, %struct.enum_map** %8, align 8
  %39 = getelementptr inbounds %struct.enum_map, %struct.enum_map* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = load %struct.view_column*, %struct.view_column** %5, align 8
  %42 = getelementptr inbounds %struct.view_column, %struct.view_column* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @enum_name_copy(i8* %20, i32 %37, i32 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %36
  %50 = load i8*, i8** %6, align 8
  %51 = load i64, i64* %7, align 8
  %52 = load i8*, i8** %9, align 8
  %53 = call i32 @string_nformat(i8* %50, i64 %51, i64* %10, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %52, i8* %20, i8* %23)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %57, label %55

55:                                               ; preds = %49, %36
  %56 = call i32 @error(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  store i32 %56, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %64

57:                                               ; preds = %49
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8** %9, align 8
  br label %58

58:                                               ; preds = %57
  %59 = load %struct.view_column*, %struct.view_column** %5, align 8
  %60 = getelementptr inbounds %struct.view_column, %struct.view_column* %59, i32 0, i32 1
  %61 = load %struct.view_column*, %struct.view_column** %60, align 8
  store %struct.view_column* %61, %struct.view_column** %5, align 8
  br label %24

62:                                               ; preds = %24
  %63 = load i32, i32* @SUCCESS, align 4
  store i32 %63, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %64

64:                                               ; preds = %62, %55, %34
  %65 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %65)
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @format_view_column(%struct.view_column*, i8*, i32) #2

declare dso_local i32 @enum_name_copy(i8*, i32, i32) #2

declare dso_local i32 @string_nformat(i8*, i64, i64*, i8*, i8*, i8*, i8*) #2

declare dso_local i32 @error(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
