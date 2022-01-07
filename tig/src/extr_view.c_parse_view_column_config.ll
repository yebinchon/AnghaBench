; ModuleID = '/home/carl/AnghaBench/tig/src/extr_view.c_parse_view_column_config.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_view.c_parse_view_column_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.view_column = type { i32 }
%struct.view = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"Unknown view: %s\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"The %s view does not support %s column\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"The %s view does not have a %s column configured\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @parse_view_column_config(i8* %0, i32 %1, i8* %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca %struct.view_column*, align 8
  %11 = alloca %struct.view*, align 8
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i8** %3, i8*** %9, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = call %struct.view* @find_view(i8* %12)
  store %struct.view* %13, %struct.view** %11, align 8
  %14 = load %struct.view*, %struct.view** %11, align 8
  %15 = icmp ne %struct.view* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %4
  %17 = load i8*, i8** %6, align 8
  %18 = call i32 (i8*, i8*, ...) @error(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* %17)
  store i32 %18, i32* %5, align 4
  br label %69

19:                                               ; preds = %4
  %20 = load %struct.view*, %struct.view** %11, align 8
  %21 = getelementptr inbounds %struct.view, %struct.view* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %7, align 4
  %26 = shl i32 1, %25
  %27 = and i32 %24, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %38, label %29

29:                                               ; preds = %19
  %30 = load %struct.view*, %struct.view** %11, align 8
  %31 = getelementptr inbounds %struct.view, %struct.view* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = sext i32 %32 to i64
  %34 = inttoptr i64 %33 to i8*
  %35 = load i32, i32* %7, align 4
  %36 = call i8* @view_column_name(i32 %35)
  %37 = call i32 (i8*, i8*, ...) @error(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i8* %34, i8* %36)
  store i32 %37, i32* %5, align 4
  br label %69

38:                                               ; preds = %19
  %39 = load %struct.view*, %struct.view** %11, align 8
  %40 = load i32, i32* %7, align 4
  %41 = call %struct.view_column* @get_view_column(%struct.view* %39, i32 %40)
  store %struct.view_column* %41, %struct.view_column** %10, align 8
  %42 = load %struct.view_column*, %struct.view_column** %10, align 8
  %43 = icmp ne %struct.view_column* %42, null
  br i1 %43, label %53, label %44

44:                                               ; preds = %38
  %45 = load %struct.view*, %struct.view** %11, align 8
  %46 = getelementptr inbounds %struct.view, %struct.view* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = sext i32 %47 to i64
  %49 = inttoptr i64 %48 to i8*
  %50 = load i32, i32* %7, align 4
  %51 = call i8* @view_column_name(i32 %50)
  %52 = call i32 (i8*, i8*, ...) @error(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i8* %49, i8* %51)
  store i32 %52, i32* %5, align 4
  br label %69

53:                                               ; preds = %38
  %54 = load i8*, i8** %8, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %56, label %63

56:                                               ; preds = %53
  %57 = load %struct.view_column*, %struct.view_column** %10, align 8
  %58 = load i8*, i8** %8, align 8
  %59 = load i8**, i8*** %9, align 8
  %60 = getelementptr inbounds i8*, i8** %59, i64 0
  %61 = load i8*, i8** %60, align 8
  %62 = call i32 @parse_view_column_option(%struct.view_column* %57, i8* %58, i8* %61)
  store i32 %62, i32* %5, align 4
  br label %69

63:                                               ; preds = %53
  %64 = load %struct.view_column*, %struct.view_column** %10, align 8
  %65 = load i8**, i8*** %9, align 8
  %66 = getelementptr inbounds i8*, i8** %65, i64 0
  %67 = load i8*, i8** %66, align 8
  %68 = call i32 @parse_view_column_config_exprs(%struct.view_column* %64, i8* %67)
  store i32 %68, i32* %5, align 4
  br label %69

69:                                               ; preds = %63, %56, %44, %29, %16
  %70 = load i32, i32* %5, align 4
  ret i32 %70
}

declare dso_local %struct.view* @find_view(i8*) #1

declare dso_local i32 @error(i8*, i8*, ...) #1

declare dso_local i8* @view_column_name(i32) #1

declare dso_local %struct.view_column* @get_view_column(%struct.view*, i32) #1

declare dso_local i32 @parse_view_column_option(%struct.view_column*, i8*, i8*) #1

declare dso_local i32 @parse_view_column_config_exprs(%struct.view_column*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
