; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/jbig2dec/extr_jbig2_segment.c_jbig2_parse_segment.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/jbig2dec/extr_jbig2_segment.c_jbig2_parse_segment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_31__ = type { i32 }
%struct.TYPE_30__ = type { i32, i32, i32 }

@JBIG2_SEVERITY_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"segment %d, flags=%x, type=%d, data_length=%d\00", align 1
@JBIG2_SEVERITY_FATAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [59 x i8] c"unhandled segment type 'intermediate generic region' (NYI)\00", align 1
@JBIG2_FILE_EOF = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"end of file\00", align 1
@JBIG2_SEVERITY_WARNING = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [45 x i8] c"unhandled segment type 'color palette' (NYI)\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"unknown segment type %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @jbig2_parse_segment(%struct.TYPE_31__* %0, %struct.TYPE_30__* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_31__*, align 8
  %6 = alloca %struct.TYPE_30__*, align 8
  %7 = alloca i32*, align 8
  store %struct.TYPE_31__* %0, %struct.TYPE_31__** %5, align 8
  store %struct.TYPE_30__* %1, %struct.TYPE_30__** %6, align 8
  store i32* %2, i32** %7, align 8
  %8 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %9 = load i32, i32* @JBIG2_SEVERITY_INFO, align 4
  %10 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %11 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = and i32 %21, 63
  %23 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = call i32 (%struct.TYPE_31__*, i32, i32, i8*, ...) @jbig2_error(%struct.TYPE_31__* %8, i32 %9, i32 %12, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %18, i32 %22, i32 %25)
  %27 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = and i32 %29, 63
  switch i32 %30, label %115 [
    i32 0, label %31
    i32 4, label %36
    i32 6, label %36
    i32 7, label %36
    i32 16, label %41
    i32 20, label %46
    i32 22, label %46
    i32 23, label %46
    i32 36, label %51
    i32 38, label %58
    i32 39, label %58
    i32 40, label %63
    i32 42, label %63
    i32 43, label %63
    i32 48, label %68
    i32 49, label %73
    i32 50, label %78
    i32 51, label %83
    i32 52, label %93
    i32 53, label %98
    i32 54, label %103
    i32 62, label %110
  ]

31:                                               ; preds = %3
  %32 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %33 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %34 = load i32*, i32** %7, align 8
  %35 = call i32 @jbig2_symbol_dictionary(%struct.TYPE_31__* %32, %struct.TYPE_30__* %33, i32* %34)
  store i32 %35, i32* %4, align 4
  br label %127

36:                                               ; preds = %3, %3, %3
  %37 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %38 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %39 = load i32*, i32** %7, align 8
  %40 = call i32 @jbig2_text_region(%struct.TYPE_31__* %37, %struct.TYPE_30__* %38, i32* %39)
  store i32 %40, i32* %4, align 4
  br label %127

41:                                               ; preds = %3
  %42 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %43 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %44 = load i32*, i32** %7, align 8
  %45 = call i32 @jbig2_pattern_dictionary(%struct.TYPE_31__* %42, %struct.TYPE_30__* %43, i32* %44)
  store i32 %45, i32* %4, align 4
  br label %127

46:                                               ; preds = %3, %3, %3
  %47 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %48 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %49 = load i32*, i32** %7, align 8
  %50 = call i32 @jbig2_halftone_region(%struct.TYPE_31__* %47, %struct.TYPE_30__* %48, i32* %49)
  store i32 %50, i32* %4, align 4
  br label %127

51:                                               ; preds = %3
  %52 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %53 = load i32, i32* @JBIG2_SEVERITY_FATAL, align 4
  %54 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 (%struct.TYPE_31__*, i32, i32, i8*, ...) @jbig2_error(%struct.TYPE_31__* %52, i32 %53, i32 %56, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0))
  store i32 %57, i32* %4, align 4
  br label %127

58:                                               ; preds = %3, %3
  %59 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %60 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %61 = load i32*, i32** %7, align 8
  %62 = call i32 @jbig2_immediate_generic_region(%struct.TYPE_31__* %59, %struct.TYPE_30__* %60, i32* %61)
  store i32 %62, i32* %4, align 4
  br label %127

63:                                               ; preds = %3, %3, %3
  %64 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %65 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %66 = load i32*, i32** %7, align 8
  %67 = call i32 @jbig2_refinement_region(%struct.TYPE_31__* %64, %struct.TYPE_30__* %65, i32* %66)
  store i32 %67, i32* %4, align 4
  br label %127

68:                                               ; preds = %3
  %69 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %70 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %71 = load i32*, i32** %7, align 8
  %72 = call i32 @jbig2_page_info(%struct.TYPE_31__* %69, %struct.TYPE_30__* %70, i32* %71)
  store i32 %72, i32* %4, align 4
  br label %127

73:                                               ; preds = %3
  %74 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %75 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %76 = load i32*, i32** %7, align 8
  %77 = call i32 @jbig2_end_of_page(%struct.TYPE_31__* %74, %struct.TYPE_30__* %75, i32* %76)
  store i32 %77, i32* %4, align 4
  br label %127

78:                                               ; preds = %3
  %79 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %80 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %81 = load i32*, i32** %7, align 8
  %82 = call i32 @jbig2_end_of_stripe(%struct.TYPE_31__* %79, %struct.TYPE_30__* %80, i32* %81)
  store i32 %82, i32* %4, align 4
  br label %127

83:                                               ; preds = %3
  %84 = load i32, i32* @JBIG2_FILE_EOF, align 4
  %85 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %85, i32 0, i32 0
  store i32 %84, i32* %86, align 4
  %87 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %88 = load i32, i32* @JBIG2_SEVERITY_INFO, align 4
  %89 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = call i32 (%struct.TYPE_31__*, i32, i32, i8*, ...) @jbig2_error(%struct.TYPE_31__* %87, i32 %88, i32 %91, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  br label %126

93:                                               ; preds = %3
  %94 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %95 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %96 = load i32*, i32** %7, align 8
  %97 = call i32 @jbig2_parse_profile_segment(%struct.TYPE_31__* %94, %struct.TYPE_30__* %95, i32* %96)
  store i32 %97, i32* %4, align 4
  br label %127

98:                                               ; preds = %3
  %99 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %100 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %101 = load i32*, i32** %7, align 8
  %102 = call i32 @jbig2_table(%struct.TYPE_31__* %99, %struct.TYPE_30__* %100, i32* %101)
  store i32 %102, i32* %4, align 4
  br label %127

103:                                              ; preds = %3
  %104 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %105 = load i32, i32* @JBIG2_SEVERITY_WARNING, align 4
  %106 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = call i32 (%struct.TYPE_31__*, i32, i32, i8*, ...) @jbig2_error(%struct.TYPE_31__* %104, i32 %105, i32 %108, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0))
  store i32 %109, i32* %4, align 4
  br label %127

110:                                              ; preds = %3
  %111 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %112 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %113 = load i32*, i32** %7, align 8
  %114 = call i32 @jbig2_parse_extension_segment(%struct.TYPE_31__* %111, %struct.TYPE_30__* %112, i32* %113)
  store i32 %114, i32* %4, align 4
  br label %127

115:                                              ; preds = %3
  %116 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %117 = load i32, i32* @JBIG2_SEVERITY_WARNING, align 4
  %118 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %119 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %122 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = and i32 %123, 63
  %125 = call i32 (%struct.TYPE_31__*, i32, i32, i8*, ...) @jbig2_error(%struct.TYPE_31__* %116, i32 %117, i32 %120, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 %124)
  br label %126

126:                                              ; preds = %115, %83
  store i32 0, i32* %4, align 4
  br label %127

127:                                              ; preds = %126, %110, %103, %98, %93, %78, %73, %68, %63, %58, %51, %46, %41, %36, %31
  %128 = load i32, i32* %4, align 4
  ret i32 %128
}

declare dso_local i32 @jbig2_error(%struct.TYPE_31__*, i32, i32, i8*, ...) #1

declare dso_local i32 @jbig2_symbol_dictionary(%struct.TYPE_31__*, %struct.TYPE_30__*, i32*) #1

declare dso_local i32 @jbig2_text_region(%struct.TYPE_31__*, %struct.TYPE_30__*, i32*) #1

declare dso_local i32 @jbig2_pattern_dictionary(%struct.TYPE_31__*, %struct.TYPE_30__*, i32*) #1

declare dso_local i32 @jbig2_halftone_region(%struct.TYPE_31__*, %struct.TYPE_30__*, i32*) #1

declare dso_local i32 @jbig2_immediate_generic_region(%struct.TYPE_31__*, %struct.TYPE_30__*, i32*) #1

declare dso_local i32 @jbig2_refinement_region(%struct.TYPE_31__*, %struct.TYPE_30__*, i32*) #1

declare dso_local i32 @jbig2_page_info(%struct.TYPE_31__*, %struct.TYPE_30__*, i32*) #1

declare dso_local i32 @jbig2_end_of_page(%struct.TYPE_31__*, %struct.TYPE_30__*, i32*) #1

declare dso_local i32 @jbig2_end_of_stripe(%struct.TYPE_31__*, %struct.TYPE_30__*, i32*) #1

declare dso_local i32 @jbig2_parse_profile_segment(%struct.TYPE_31__*, %struct.TYPE_30__*, i32*) #1

declare dso_local i32 @jbig2_table(%struct.TYPE_31__*, %struct.TYPE_30__*, i32*) #1

declare dso_local i32 @jbig2_parse_extension_segment(%struct.TYPE_31__*, %struct.TYPE_30__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
