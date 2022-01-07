; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/synctex/extr_synctex_parser.c__synctex_scan_post_scriptum.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/synctex/extr_synctex_parser.c__synctex_scan_post_scriptum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32 }

@SYNCTEX_STATUS_BAD_ARGUMENT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c"Post scriptum:\00", align 1
@SYNCTEX_STATUS_NOT_OK = common dso_local global i64 0, align 8
@SYNCTEX_STATUS_EOF = common dso_local global i64 0, align 8
@SYNCTEX_STATUS_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"Magnification:\00", align 1
@SYNCTEX_CUR = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [62 x i8] c"bad magnification in the post scriptum, a float was expected.\00", align 1
@SYNCTEX_STATUS_ERROR = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [71 x i8] c"bad magnification in the post scriptum, a positive float was expected.\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"Problem reading the Post Scriptum records\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"X Offset:\00", align 1
@.str.6 = private unnamed_addr constant [44 x i8] c"problem with X offset in the Post Scriptum.\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"Y Offset:\00", align 1
@.str.8 = private unnamed_addr constant [44 x i8] c"problem with Y offset in the Post Scriptum.\00", align 1
@LC_NUMERIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @_synctex_scan_post_scriptum(%struct.TYPE_6__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i64 0, i64* %4, align 8
  store i8* null, i8** %5, align 8
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %7 = icmp eq %struct.TYPE_6__* null, %6
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = load i64, i64* @SYNCTEX_STATUS_BAD_ARGUMENT, align 8
  store i64 %9, i64* %2, align 8
  br label %139

10:                                               ; preds = %1
  br label %11

11:                                               ; preds = %38, %10
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %13 = call i64 @_synctex_match_string(%struct.TYPE_6__* %12, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  store i64 %13, i64* %4, align 8
  %14 = load i64, i64* %4, align 8
  %15 = load i64, i64* @SYNCTEX_STATUS_NOT_OK, align 8
  %16 = icmp slt i64 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %11
  %18 = load i64, i64* %4, align 8
  store i64 %18, i64* %2, align 8
  br label %139

19:                                               ; preds = %11
  %20 = load i64, i64* %4, align 8
  %21 = load i64, i64* @SYNCTEX_STATUS_NOT_OK, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %39

23:                                               ; preds = %19
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %25 = call i64 @_synctex_next_line(%struct.TYPE_6__* %24)
  store i64 %25, i64* %4, align 8
  %26 = load i64, i64* %4, align 8
  %27 = load i64, i64* @SYNCTEX_STATUS_EOF, align 8
  %28 = icmp slt i64 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = load i64, i64* %4, align 8
  store i64 %30, i64* %2, align 8
  br label %139

31:                                               ; preds = %23
  %32 = load i64, i64* %4, align 8
  %33 = load i64, i64* @SYNCTEX_STATUS_OK, align 8
  %34 = icmp slt i64 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %31
  %36 = load i64, i64* @SYNCTEX_STATUS_OK, align 8
  store i64 %36, i64* %2, align 8
  br label %139

37:                                               ; preds = %31
  br label %38

38:                                               ; preds = %37
  br label %11

39:                                               ; preds = %19
  br label %40

40:                                               ; preds = %138, %131, %107, %80, %39
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %42 = call i64 @_synctex_next_line(%struct.TYPE_6__* %41)
  store i64 %42, i64* %4, align 8
  %43 = load i64, i64* %4, align 8
  %44 = load i64, i64* @SYNCTEX_STATUS_EOF, align 8
  %45 = icmp slt i64 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %40
  %47 = load i64, i64* %4, align 8
  store i64 %47, i64* %2, align 8
  br label %139

48:                                               ; preds = %40
  %49 = load i64, i64* %4, align 8
  %50 = load i64, i64* @SYNCTEX_STATUS_OK, align 8
  %51 = icmp slt i64 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %48
  %53 = load i64, i64* @SYNCTEX_STATUS_OK, align 8
  store i64 %53, i64* %2, align 8
  br label %139

54:                                               ; preds = %48
  br label %55

55:                                               ; preds = %54
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %57 = call i64 @_synctex_match_string(%struct.TYPE_6__* %56, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  store i64 %57, i64* %4, align 8
  %58 = load i64, i64* %4, align 8
  %59 = load i64, i64* @SYNCTEX_STATUS_OK, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %82

61:                                               ; preds = %55
  %62 = load i8*, i8** @SYNCTEX_CUR, align 8
  %63 = call i32 @strtod(i8* %62, i8** %5)
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 2
  store i32 %63, i32* %65, align 4
  %66 = load i8*, i8** %5, align 8
  %67 = load i8*, i8** @SYNCTEX_CUR, align 8
  %68 = icmp eq i8* %66, %67
  br i1 %68, label %69, label %72

69:                                               ; preds = %61
  %70 = call i32 @_synctex_error(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.2, i64 0, i64 0))
  %71 = load i64, i64* @SYNCTEX_STATUS_ERROR, align 8
  store i64 %71, i64* %2, align 8
  br label %139

72:                                               ; preds = %61
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = icmp sle i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %72
  %78 = call i32 @_synctex_error(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.3, i64 0, i64 0))
  %79 = load i64, i64* @SYNCTEX_STATUS_ERROR, align 8
  store i64 %79, i64* %2, align 8
  br label %139

80:                                               ; preds = %72
  %81 = load i8*, i8** %5, align 8
  store i8* %81, i8** @SYNCTEX_CUR, align 8
  br label %40

82:                                               ; preds = %55
  %83 = load i64, i64* %4, align 8
  %84 = load i64, i64* @SYNCTEX_STATUS_EOF, align 8
  %85 = icmp slt i64 %83, %84
  br i1 %85, label %86, label %90

86:                                               ; preds = %82
  br label %87

87:                                               ; preds = %136, %112, %86
  %88 = call i32 @_synctex_error(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0))
  %89 = load i64, i64* %4, align 8
  store i64 %89, i64* %2, align 8
  br label %139

90:                                               ; preds = %82
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %92 = call i64 @_synctex_match_string(%struct.TYPE_6__* %91, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  store i64 %92, i64* %4, align 8
  %93 = load i64, i64* %4, align 8
  %94 = load i64, i64* @SYNCTEX_STATUS_OK, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %108

96:                                               ; preds = %90
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 1
  %100 = call i64 @_synctex_scan_float_and_dimension(%struct.TYPE_6__* %97, i32* %99)
  store i64 %100, i64* %4, align 8
  %101 = load i64, i64* %4, align 8
  %102 = load i64, i64* @SYNCTEX_STATUS_OK, align 8
  %103 = icmp slt i64 %101, %102
  br i1 %103, label %104, label %107

104:                                              ; preds = %96
  %105 = call i32 @_synctex_error(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.6, i64 0, i64 0))
  %106 = load i64, i64* %4, align 8
  store i64 %106, i64* %2, align 8
  br label %139

107:                                              ; preds = %96
  br label %40

108:                                              ; preds = %90
  %109 = load i64, i64* %4, align 8
  %110 = load i64, i64* @SYNCTEX_STATUS_EOF, align 8
  %111 = icmp slt i64 %109, %110
  br i1 %111, label %112, label %113

112:                                              ; preds = %108
  br label %87

113:                                              ; preds = %108
  br label %114

114:                                              ; preds = %113
  %115 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %116 = call i64 @_synctex_match_string(%struct.TYPE_6__* %115, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0))
  store i64 %116, i64* %4, align 8
  %117 = load i64, i64* %4, align 8
  %118 = load i64, i64* @SYNCTEX_STATUS_OK, align 8
  %119 = icmp eq i64 %117, %118
  br i1 %119, label %120, label %132

120:                                              ; preds = %114
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %122 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 0
  %124 = call i64 @_synctex_scan_float_and_dimension(%struct.TYPE_6__* %121, i32* %123)
  store i64 %124, i64* %4, align 8
  %125 = load i64, i64* %4, align 8
  %126 = load i64, i64* @SYNCTEX_STATUS_OK, align 8
  %127 = icmp slt i64 %125, %126
  br i1 %127, label %128, label %131

128:                                              ; preds = %120
  %129 = call i32 @_synctex_error(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.8, i64 0, i64 0))
  %130 = load i64, i64* %4, align 8
  store i64 %130, i64* %2, align 8
  br label %139

131:                                              ; preds = %120
  br label %40

132:                                              ; preds = %114
  %133 = load i64, i64* %4, align 8
  %134 = load i64, i64* @SYNCTEX_STATUS_EOF, align 8
  %135 = icmp slt i64 %133, %134
  br i1 %135, label %136, label %137

136:                                              ; preds = %132
  br label %87

137:                                              ; preds = %132
  br label %138

138:                                              ; preds = %137
  br label %40

139:                                              ; preds = %128, %104, %87, %77, %69, %52, %46, %35, %29, %17, %8
  %140 = load i64, i64* %2, align 8
  ret i64 %140
}

declare dso_local i64 @_synctex_match_string(%struct.TYPE_6__*, i8*) #1

declare dso_local i64 @_synctex_next_line(%struct.TYPE_6__*) #1

declare dso_local i32 @strtod(i8*, i8**) #1

declare dso_local i32 @_synctex_error(i8*) #1

declare dso_local i64 @_synctex_scan_float_and_dimension(%struct.TYPE_6__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
