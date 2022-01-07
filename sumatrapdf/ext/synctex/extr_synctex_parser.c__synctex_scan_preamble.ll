; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/synctex/extr_synctex_parser.c__synctex_scan_preamble.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/synctex/extr_synctex_parser.c__synctex_scan_preamble.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32 }

@SYNCTEX_STATUS_BAD_ARGUMENT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [17 x i8] c"SyncTeX Version:\00", align 1
@_synctex_decode_int = common dso_local global i32 0, align 4
@SYNCTEX_STATUS_OK = common dso_local global i64 0, align 8
@SYNCTEX_STATUS_NOT_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"Output:\00", align 1
@_synctex_decode_string = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"Magnification:\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"Unit:\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"X Offset:\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"Y Offset:\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @_synctex_scan_preamble(%struct.TYPE_6__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i64 0, i64* %4, align 8
  %5 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %6 = icmp eq %struct.TYPE_6__* null, %5
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = load i64, i64* @SYNCTEX_STATUS_BAD_ARGUMENT, align 8
  store i64 %8, i64* %2, align 8
  br label %126

9:                                                ; preds = %1
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 5
  %13 = call i64 @_synctex_scan_named(%struct.TYPE_6__* %10, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32* %12, i32 ptrtoint (i32* @_synctex_decode_int to i32))
  store i64 %13, i64* %4, align 8
  %14 = load i64, i64* %4, align 8
  %15 = load i64, i64* @SYNCTEX_STATUS_OK, align 8
  %16 = icmp slt i64 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %9
  %18 = load i64, i64* %4, align 8
  store i64 %18, i64* %2, align 8
  br label %126

19:                                               ; preds = %9
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %21 = call i64 @_synctex_next_line(%struct.TYPE_6__* %20)
  store i64 %21, i64* %4, align 8
  %22 = load i64, i64* %4, align 8
  %23 = load i64, i64* @SYNCTEX_STATUS_OK, align 8
  %24 = icmp slt i64 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %19
  %26 = load i64, i64* %4, align 8
  store i64 %26, i64* %2, align 8
  br label %126

27:                                               ; preds = %19
  br label %28

28:                                               ; preds = %37, %27
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %30 = call i64 @_synctex_scan_input(%struct.TYPE_6__* %29)
  store i64 %30, i64* %4, align 8
  %31 = load i64, i64* %4, align 8
  %32 = load i64, i64* @SYNCTEX_STATUS_NOT_OK, align 8
  %33 = icmp slt i64 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %28
  %35 = load i64, i64* %4, align 8
  store i64 %35, i64* %2, align 8
  br label %126

36:                                               ; preds = %28
  br label %37

37:                                               ; preds = %36
  %38 = load i64, i64* %4, align 8
  %39 = load i64, i64* @SYNCTEX_STATUS_OK, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %28, label %41

41:                                               ; preds = %37
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 4
  %45 = call i64 @_synctex_scan_named(%struct.TYPE_6__* %42, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32* %44, i32 ptrtoint (i32* @_synctex_decode_string to i32))
  store i64 %45, i64* %4, align 8
  %46 = load i64, i64* %4, align 8
  %47 = load i64, i64* @SYNCTEX_STATUS_NOT_OK, align 8
  %48 = icmp slt i64 %46, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %41
  %50 = load i64, i64* %4, align 8
  store i64 %50, i64* %2, align 8
  br label %126

51:                                               ; preds = %41
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %53 = call i64 @_synctex_next_line(%struct.TYPE_6__* %52)
  store i64 %53, i64* %4, align 8
  %54 = load i64, i64* %4, align 8
  %55 = load i64, i64* @SYNCTEX_STATUS_OK, align 8
  %56 = icmp slt i64 %54, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %51
  %58 = load i64, i64* %4, align 8
  store i64 %58, i64* %2, align 8
  br label %126

59:                                               ; preds = %51
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 3
  %63 = call i64 @_synctex_scan_named(%struct.TYPE_6__* %60, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32* %62, i32 ptrtoint (i32* @_synctex_decode_int to i32))
  store i64 %63, i64* %4, align 8
  %64 = load i64, i64* %4, align 8
  %65 = load i64, i64* @SYNCTEX_STATUS_OK, align 8
  %66 = icmp slt i64 %64, %65
  br i1 %66, label %67, label %69

67:                                               ; preds = %59
  %68 = load i64, i64* %4, align 8
  store i64 %68, i64* %2, align 8
  br label %126

69:                                               ; preds = %59
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %71 = call i64 @_synctex_next_line(%struct.TYPE_6__* %70)
  store i64 %71, i64* %4, align 8
  %72 = load i64, i64* %4, align 8
  %73 = load i64, i64* @SYNCTEX_STATUS_OK, align 8
  %74 = icmp slt i64 %72, %73
  br i1 %74, label %75, label %77

75:                                               ; preds = %69
  %76 = load i64, i64* %4, align 8
  store i64 %76, i64* %2, align 8
  br label %126

77:                                               ; preds = %69
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 2
  %81 = call i64 @_synctex_scan_named(%struct.TYPE_6__* %78, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32* %80, i32 ptrtoint (i32* @_synctex_decode_int to i32))
  store i64 %81, i64* %4, align 8
  %82 = load i64, i64* %4, align 8
  %83 = load i64, i64* @SYNCTEX_STATUS_OK, align 8
  %84 = icmp slt i64 %82, %83
  br i1 %84, label %85, label %87

85:                                               ; preds = %77
  %86 = load i64, i64* %4, align 8
  store i64 %86, i64* %2, align 8
  br label %126

87:                                               ; preds = %77
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %89 = call i64 @_synctex_next_line(%struct.TYPE_6__* %88)
  store i64 %89, i64* %4, align 8
  %90 = load i64, i64* %4, align 8
  %91 = load i64, i64* @SYNCTEX_STATUS_OK, align 8
  %92 = icmp slt i64 %90, %91
  br i1 %92, label %93, label %95

93:                                               ; preds = %87
  %94 = load i64, i64* %4, align 8
  store i64 %94, i64* %2, align 8
  br label %126

95:                                               ; preds = %87
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 1
  %99 = call i64 @_synctex_scan_named(%struct.TYPE_6__* %96, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32* %98, i32 ptrtoint (i32* @_synctex_decode_int to i32))
  store i64 %99, i64* %4, align 8
  %100 = load i64, i64* %4, align 8
  %101 = load i64, i64* @SYNCTEX_STATUS_OK, align 8
  %102 = icmp slt i64 %100, %101
  br i1 %102, label %103, label %105

103:                                              ; preds = %95
  %104 = load i64, i64* %4, align 8
  store i64 %104, i64* %2, align 8
  br label %126

105:                                              ; preds = %95
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %107 = call i64 @_synctex_next_line(%struct.TYPE_6__* %106)
  store i64 %107, i64* %4, align 8
  %108 = load i64, i64* %4, align 8
  %109 = load i64, i64* @SYNCTEX_STATUS_OK, align 8
  %110 = icmp slt i64 %108, %109
  br i1 %110, label %111, label %113

111:                                              ; preds = %105
  %112 = load i64, i64* %4, align 8
  store i64 %112, i64* %2, align 8
  br label %126

113:                                              ; preds = %105
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %115 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 0
  %117 = call i64 @_synctex_scan_named(%struct.TYPE_6__* %114, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i32* %116, i32 ptrtoint (i32* @_synctex_decode_int to i32))
  store i64 %117, i64* %4, align 8
  %118 = load i64, i64* %4, align 8
  %119 = load i64, i64* @SYNCTEX_STATUS_OK, align 8
  %120 = icmp slt i64 %118, %119
  br i1 %120, label %121, label %123

121:                                              ; preds = %113
  %122 = load i64, i64* %4, align 8
  store i64 %122, i64* %2, align 8
  br label %126

123:                                              ; preds = %113
  %124 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %125 = call i64 @_synctex_next_line(%struct.TYPE_6__* %124)
  store i64 %125, i64* %2, align 8
  br label %126

126:                                              ; preds = %123, %121, %111, %103, %93, %85, %75, %67, %57, %49, %34, %25, %17, %7
  %127 = load i64, i64* %2, align 8
  ret i64 %127
}

declare dso_local i64 @_synctex_scan_named(%struct.TYPE_6__*, i8*, i32*, i32) #1

declare dso_local i64 @_synctex_next_line(%struct.TYPE_6__*) #1

declare dso_local i64 @_synctex_scan_input(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
