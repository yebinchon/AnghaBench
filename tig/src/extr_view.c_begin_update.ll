; ModuleID = '/home/carl/AnghaBench/tig/src/extr_view.c_begin_update.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_view.c_begin_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.view = type { i8*, %struct.TYPE_2__*, i32, i32, i64*, i32, i32, i32, i64 }
%struct.TYPE_2__ = type { i32 }

@OPEN_EXTRA = common dso_local global i32 0, align 4
@OPEN_REFRESH = common dso_local global i32 0, align 4
@OPEN_PREPARED = common dso_local global i32 0, align 4
@OPEN_STDIN = common dso_local global i32 0, align 4
@SUCCESS = common dso_local global i32 0, align 4
@VIEW_FILE_FILTER = common dso_local global i32 0, align 4
@opt_file_filter = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"Failed to format %s arguments\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Failed to open %s view\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"Failed to open stdin\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @begin_update(%struct.view* %0, i8* %1, i8** %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.view*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.view* %0, %struct.view** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8** %2, i8*** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load i32, i32* %9, align 4
  %14 = load i32, i32* @OPEN_EXTRA, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* @OPEN_REFRESH, align 4
  %22 = load i32, i32* @OPEN_PREPARED, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @OPEN_STDIN, align 4
  %25 = or i32 %23, %24
  %26 = and i32 %20, %25
  store i32 %26, i32* %11, align 4
  %27 = load %struct.view*, %struct.view** %6, align 8
  %28 = load i32, i32* %9, align 4
  %29 = call i64 @view_no_refresh(%struct.view* %27, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %4
  %32 = load i32, i32* @SUCCESS, align 4
  store i32 %32, i32* %5, align 4
  br label %142

33:                                               ; preds = %4
  %34 = load %struct.view*, %struct.view** %6, align 8
  %35 = getelementptr inbounds %struct.view, %struct.view* %34, i32 0, i32 8
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %50

38:                                               ; preds = %33
  %39 = load i32, i32* %10, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %38
  %42 = load %struct.view*, %struct.view** %6, align 8
  %43 = getelementptr inbounds %struct.view, %struct.view* %42, i32 0, i32 8
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @io_done(i64 %44)
  br label %49

46:                                               ; preds = %38
  %47 = load %struct.view*, %struct.view** %6, align 8
  %48 = call i32 @end_update(%struct.view* %47, i32 1)
  br label %49

49:                                               ; preds = %46, %41
  br label %50

50:                                               ; preds = %49, %33
  %51 = load i32, i32* %9, align 4
  %52 = call i32 @open_in_pager_mode(i32 %51)
  %53 = load %struct.view*, %struct.view** %6, align 8
  %54 = getelementptr inbounds %struct.view, %struct.view* %53, i32 0, i32 7
  store i32 %52, i32* %54, align 8
  %55 = load i32, i32* %11, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %95, label %57

57:                                               ; preds = %50
  %58 = load i8**, i8*** %8, align 8
  %59 = icmp ne i8** %58, null
  br i1 %59, label %60, label %95

60:                                               ; preds = %57
  %61 = load %struct.view*, %struct.view** %6, align 8
  %62 = load i32, i32* @VIEW_FILE_FILTER, align 4
  %63 = call i32 @view_has_flags(%struct.view* %61, i32 %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %60
  %66 = load i64, i64* @opt_file_filter, align 8
  %67 = icmp ne i64 %66, 0
  br label %68

68:                                               ; preds = %65, %60
  %69 = phi i1 [ true, %60 ], [ %67, %65 ]
  %70 = zext i1 %69 to i32
  store i32 %70, i32* %12, align 4
  %71 = load i8*, i8** %7, align 8
  %72 = load %struct.view*, %struct.view** %6, align 8
  %73 = getelementptr inbounds %struct.view, %struct.view* %72, i32 0, i32 0
  store i8* %71, i8** %73, align 8
  %74 = load %struct.view*, %struct.view** %6, align 8
  %75 = getelementptr inbounds %struct.view, %struct.view* %74, i32 0, i32 6
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.view*, %struct.view** %6, align 8
  %78 = getelementptr inbounds %struct.view, %struct.view* %77, i32 0, i32 4
  %79 = load i8**, i8*** %8, align 8
  %80 = load %struct.view*, %struct.view** %6, align 8
  %81 = getelementptr inbounds %struct.view, %struct.view* %80, i32 0, i32 5
  %82 = load i32, i32* %81, align 8
  %83 = icmp ne i32 %82, 0
  %84 = xor i1 %83, true
  %85 = zext i1 %84 to i32
  %86 = load i32, i32* %12, align 4
  %87 = call i32 @argv_format(i32 %76, i64** %78, i8** %79, i32 %85, i32 %86)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %94, label %89

89:                                               ; preds = %68
  %90 = load %struct.view*, %struct.view** %6, align 8
  %91 = getelementptr inbounds %struct.view, %struct.view* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @error(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %92)
  store i32 %93, i32* %5, align 4
  br label %142

94:                                               ; preds = %68
  br label %95

95:                                               ; preds = %94, %57, %50
  %96 = load %struct.view*, %struct.view** %6, align 8
  %97 = getelementptr inbounds %struct.view, %struct.view* %96, i32 0, i32 4
  %98 = load i64*, i64** %97, align 8
  %99 = icmp ne i64* %98, null
  br i1 %99, label %100, label %117

100:                                              ; preds = %95
  %101 = load %struct.view*, %struct.view** %6, align 8
  %102 = getelementptr inbounds %struct.view, %struct.view* %101, i32 0, i32 4
  %103 = load i64*, i64** %102, align 8
  %104 = getelementptr inbounds i64, i64* %103, i64 0
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %117

107:                                              ; preds = %100
  %108 = load %struct.view*, %struct.view** %6, align 8
  %109 = load i32, i32* %9, align 4
  %110 = call i32 @view_exec(%struct.view* %108, i32 %109)
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %117, label %112

112:                                              ; preds = %107
  %113 = load %struct.view*, %struct.view** %6, align 8
  %114 = getelementptr inbounds %struct.view, %struct.view* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @error(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %115)
  store i32 %116, i32* %5, align 4
  br label %142

117:                                              ; preds = %107, %100, %95
  %118 = load i32, i32* %9, align 4
  %119 = call i64 @open_from_stdin(i32 %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %129

121:                                              ; preds = %117
  %122 = load %struct.view*, %struct.view** %6, align 8
  %123 = getelementptr inbounds %struct.view, %struct.view* %122, i32 0, i32 2
  %124 = call i32 @io_open(i32* %123, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0))
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %128, label %126

126:                                              ; preds = %121
  %127 = call i32 @die(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  br label %128

128:                                              ; preds = %126, %121
  br label %129

129:                                              ; preds = %128, %117
  %130 = load i32, i32* %10, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %140, label %132

132:                                              ; preds = %129
  %133 = load %struct.view*, %struct.view** %6, align 8
  %134 = load %struct.view*, %struct.view** %6, align 8
  %135 = getelementptr inbounds %struct.view, %struct.view* %134, i32 0, i32 1
  %136 = load %struct.TYPE_2__*, %struct.TYPE_2__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @setup_update(%struct.view* %133, i32 %138)
  br label %140

140:                                              ; preds = %132, %129
  %141 = load i32, i32* @SUCCESS, align 4
  store i32 %141, i32* %5, align 4
  br label %142

142:                                              ; preds = %140, %112, %89, %31
  %143 = load i32, i32* %5, align 4
  ret i32 %143
}

declare dso_local i64 @view_no_refresh(%struct.view*, i32) #1

declare dso_local i32 @io_done(i64) #1

declare dso_local i32 @end_update(%struct.view*, i32) #1

declare dso_local i32 @open_in_pager_mode(i32) #1

declare dso_local i32 @view_has_flags(%struct.view*, i32) #1

declare dso_local i32 @argv_format(i32, i64**, i8**, i32, i32) #1

declare dso_local i32 @error(i8*, i32) #1

declare dso_local i32 @view_exec(%struct.view*, i32) #1

declare dso_local i64 @open_from_stdin(i32) #1

declare dso_local i32 @io_open(i32*, i8*, i8*) #1

declare dso_local i32 @die(i8*) #1

declare dso_local i32 @setup_update(%struct.view*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
