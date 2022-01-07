; ModuleID = '/home/carl/AnghaBench/tig/src/extr_view.c_parse_view_config.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_view.c_parse_view_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.view_column = type { i32, i32, i32, %struct.view_column* }
%struct.view = type { %struct.view_column*, %struct.TYPE_4__, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { %struct.view_column* }
%struct.TYPE_3__ = type { i32 }

@SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Unknown view: %s\00", align 1
@ERROR_OUT_OF_MEMORY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"The %s view does not support %s column\00", align 1
@VIEW_COLUMN_TEXT = common dso_local global i32 0, align 4
@VIEW_COLUMN_COMMIT_TITLE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"The %s column must always be last\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @parse_view_config(%struct.view_column** %0, i8* %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.view_column**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.view_column*, align 8
  %11 = alloca %struct.view_column*, align 8
  %12 = alloca %struct.view*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  store %struct.view_column** %0, %struct.view_column*** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8** %2, i8*** %7, align 8
  %15 = load i32, i32* @SUCCESS, align 4
  store i32 %15, i32* %8, align 4
  %16 = load i8**, i8*** %7, align 8
  %17 = call i64 @argv_size(i8** %16)
  store i64 %17, i64* %9, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = call %struct.view* @find_view(i8* %18)
  store %struct.view* %19, %struct.view** %12, align 8
  %20 = load %struct.view*, %struct.view** %12, align 8
  %21 = icmp ne %struct.view* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %3
  %23 = load i8*, i8** %6, align 8
  %24 = call i32 (i8*, i8*, ...) @error(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* %23)
  store i32 %24, i32* %4, align 4
  br label %154

25:                                               ; preds = %3
  %26 = load i64, i64* %9, align 8
  %27 = call %struct.view_column* @calloc(i64 %26, i32 24)
  store %struct.view_column* %27, %struct.view_column** %10, align 8
  %28 = load %struct.view_column*, %struct.view_column** %10, align 8
  %29 = icmp ne %struct.view_column* %28, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %25
  %31 = load i32, i32* @ERROR_OUT_OF_MEMORY, align 4
  store i32 %31, i32* %4, align 4
  br label %154

32:                                               ; preds = %25
  store i32 0, i32* %13, align 4
  store %struct.view_column* null, %struct.view_column** %11, align 8
  br label %33

33:                                               ; preds = %126, %32
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* @SUCCESS, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %42

37:                                               ; preds = %33
  %38 = load i32, i32* %13, align 4
  %39 = sext i32 %38 to i64
  %40 = load i64, i64* %9, align 8
  %41 = icmp ult i64 %39, %40
  br label %42

42:                                               ; preds = %37, %33
  %43 = phi i1 [ false, %33 ], [ %41, %37 ]
  br i1 %43, label %44, label %129

44:                                               ; preds = %42
  %45 = load i8**, i8*** %7, align 8
  %46 = load i32, i32* %13, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8*, i8** %45, i64 %47
  %49 = load i8*, i8** %48, align 8
  store i8* %49, i8** %14, align 8
  %50 = load %struct.view_column*, %struct.view_column** %11, align 8
  %51 = icmp ne %struct.view_column* %50, null
  br i1 %51, label %52, label %59

52:                                               ; preds = %44
  %53 = load %struct.view_column*, %struct.view_column** %10, align 8
  %54 = load i32, i32* %13, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.view_column, %struct.view_column* %53, i64 %55
  %57 = load %struct.view_column*, %struct.view_column** %11, align 8
  %58 = getelementptr inbounds %struct.view_column, %struct.view_column* %57, i32 0, i32 3
  store %struct.view_column* %56, %struct.view_column** %58, align 8
  br label %59

59:                                               ; preds = %52, %44
  %60 = load %struct.view_column*, %struct.view_column** %10, align 8
  %61 = load i32, i32* %13, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.view_column, %struct.view_column* %60, i64 %62
  store %struct.view_column* %63, %struct.view_column** %11, align 8
  %64 = load %struct.view_column*, %struct.view_column** %11, align 8
  %65 = call i32 @parse_view_column_type(%struct.view_column* %64, i8** %14)
  store i32 %65, i32* %8, align 4
  %66 = load i32, i32* %8, align 4
  %67 = load i32, i32* @SUCCESS, align 4
  %68 = icmp ne i32 %66, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %59
  br label %129

70:                                               ; preds = %59
  %71 = load %struct.view*, %struct.view** %12, align 8
  %72 = getelementptr inbounds %struct.view, %struct.view* %71, i32 0, i32 3
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.view_column*, %struct.view_column** %11, align 8
  %77 = getelementptr inbounds %struct.view_column, %struct.view_column* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = shl i32 1, %78
  %80 = and i32 %75, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %93, label %82

82:                                               ; preds = %70
  %83 = load %struct.view*, %struct.view** %12, align 8
  %84 = getelementptr inbounds %struct.view, %struct.view* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = sext i32 %85 to i64
  %87 = inttoptr i64 %86 to i8*
  %88 = load %struct.view_column*, %struct.view_column** %11, align 8
  %89 = getelementptr inbounds %struct.view_column, %struct.view_column* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = call i8* @view_column_name(i32 %90)
  %92 = call i32 (i8*, i8*, ...) @error(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i8* %87, i8* %91)
  store i32 %92, i32* %4, align 4
  br label %154

93:                                               ; preds = %70
  %94 = load %struct.view_column*, %struct.view_column** %11, align 8
  %95 = getelementptr inbounds %struct.view_column, %struct.view_column* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* @VIEW_COLUMN_TEXT, align 4
  %98 = icmp eq i32 %96, %97
  br i1 %98, label %105, label %99

99:                                               ; preds = %93
  %100 = load %struct.view_column*, %struct.view_column** %11, align 8
  %101 = getelementptr inbounds %struct.view_column, %struct.view_column* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* @VIEW_COLUMN_COMMIT_TITLE, align 4
  %104 = icmp eq i32 %102, %103
  br i1 %104, label %105, label %117

105:                                              ; preds = %99, %93
  %106 = load i32, i32* %13, align 4
  %107 = add nsw i32 %106, 1
  %108 = sext i32 %107 to i64
  %109 = load i64, i64* %9, align 8
  %110 = icmp ult i64 %108, %109
  br i1 %110, label %111, label %117

111:                                              ; preds = %105
  %112 = load %struct.view_column*, %struct.view_column** %11, align 8
  %113 = getelementptr inbounds %struct.view_column, %struct.view_column* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = call i8* @view_column_name(i32 %114)
  %116 = call i32 (i8*, i8*, ...) @error(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i8* %115)
  store i32 %116, i32* %4, align 4
  br label %154

117:                                              ; preds = %105, %99
  %118 = load %struct.view_column*, %struct.view_column** %11, align 8
  %119 = load i8*, i8** %14, align 8
  %120 = call i32 @parse_view_column_config_exprs(%struct.view_column* %118, i8* %119)
  store i32 %120, i32* %8, align 4
  %121 = load %struct.view_column*, %struct.view_column** %11, align 8
  %122 = getelementptr inbounds %struct.view_column, %struct.view_column* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.view_column*, %struct.view_column** %11, align 8
  %125 = getelementptr inbounds %struct.view_column, %struct.view_column* %124, i32 0, i32 2
  store i32 %123, i32* %125, align 8
  br label %126

126:                                              ; preds = %117
  %127 = load i32, i32* %13, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %13, align 4
  br label %33

129:                                              ; preds = %69, %42
  %130 = load i32, i32* %8, align 4
  %131 = load i32, i32* @SUCCESS, align 4
  %132 = icmp eq i32 %130, %131
  br i1 %132, label %133, label %149

133:                                              ; preds = %129
  %134 = load %struct.view*, %struct.view** %12, align 8
  %135 = getelementptr inbounds %struct.view, %struct.view* %134, i32 0, i32 0
  %136 = load %struct.view_column*, %struct.view_column** %135, align 8
  %137 = call i32 @free(%struct.view_column* %136)
  %138 = load %struct.view_column*, %struct.view_column** %10, align 8
  %139 = load %struct.view*, %struct.view** %12, align 8
  %140 = getelementptr inbounds %struct.view, %struct.view* %139, i32 0, i32 0
  store %struct.view_column* %138, %struct.view_column** %140, align 8
  %141 = load %struct.view*, %struct.view** %12, align 8
  %142 = getelementptr inbounds %struct.view, %struct.view* %141, i32 0, i32 0
  %143 = load %struct.view_column*, %struct.view_column** %142, align 8
  %144 = load %struct.view*, %struct.view** %12, align 8
  %145 = getelementptr inbounds %struct.view, %struct.view* %144, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 0
  store %struct.view_column* %143, %struct.view_column** %146, align 8
  %147 = load %struct.view_column*, %struct.view_column** %10, align 8
  %148 = load %struct.view_column**, %struct.view_column*** %5, align 8
  store %struct.view_column* %147, %struct.view_column** %148, align 8
  br label %152

149:                                              ; preds = %129
  %150 = load %struct.view_column*, %struct.view_column** %10, align 8
  %151 = call i32 @free(%struct.view_column* %150)
  br label %152

152:                                              ; preds = %149, %133
  %153 = load i32, i32* %8, align 4
  store i32 %153, i32* %4, align 4
  br label %154

154:                                              ; preds = %152, %111, %82, %30, %22
  %155 = load i32, i32* %4, align 4
  ret i32 %155
}

declare dso_local i64 @argv_size(i8**) #1

declare dso_local %struct.view* @find_view(i8*) #1

declare dso_local i32 @error(i8*, i8*, ...) #1

declare dso_local %struct.view_column* @calloc(i64, i32) #1

declare dso_local i32 @parse_view_column_type(%struct.view_column*, i8**) #1

declare dso_local i8* @view_column_name(i32) #1

declare dso_local i32 @parse_view_column_config_exprs(%struct.view_column*, i8*) #1

declare dso_local i32 @free(%struct.view_column*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
