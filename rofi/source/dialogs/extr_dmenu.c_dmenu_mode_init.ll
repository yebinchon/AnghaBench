; ModuleID = '/home/carl/AnghaBench/rofi/source/dialogs/extr_dmenu.c_dmenu_mode_init.c'
source_filename = "/home/carl/AnghaBench/rofi/source/dialogs/extr_dmenu.c_dmenu_mode_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_6__ = type { i8* }
%struct.TYPE_5__ = type { i8, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@TRUE = common dso_local global i32 0, align 4
@UINT32_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"-mesg\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"-sep\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"-selected-row\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"-format\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"-u\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"-a\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"-l\00", align 1
@config = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@.str.8 = private unnamed_addr constant [14 x i8] c"-window-title\00", align 1
@dmenu_mode = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@.str.9 = private unnamed_addr constant [3 x i8] c"-b\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"-i\00", align 1
@FALSE = common dso_local global i32 0, align 4
@STDIN_FILENO = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [7 x i8] c"-input\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [43 x i8] c"Failed to open file: <b>%s</b>:\0A\09<i>%s</i>\00", align 1
@errno = common dso_local global i32 0, align 4
@async_read_cancel = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [17 x i8] c"-display-columns\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c"\09\00", align 1
@.str.16 = private unnamed_addr constant [26 x i8] c"-display-column-separator\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @dmenu_mode_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dmenu_mode_init(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  %10 = load i32*, i32** %3, align 8
  %11 = call i32* @mode_get_private_data(i32* %10)
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* @TRUE, align 4
  store i32 %14, i32* %2, align 4
  br label %157

15:                                               ; preds = %1
  %16 = load i32*, i32** %3, align 8
  %17 = call i32 @g_malloc0(i32 72)
  %18 = call i32 @mode_set_private_data(i32* %16, i32 %17)
  %19 = load i32*, i32** %3, align 8
  %20 = call i32* @mode_get_private_data(i32* %19)
  %21 = bitcast i32* %20 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %21, %struct.TYPE_5__** %4, align 8
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  store i8 10, i8* %23, align 8
  %24 = load i32, i32* @UINT32_MAX, align 4
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 13
  store i32 %24, i32* %26, align 4
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 1
  %29 = call i64 @find_arg_str(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** %28)
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = call i32 @find_arg_char(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %31)
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 13
  %35 = call i32 @find_arg_uint(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32* %34)
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 2
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8** %37, align 8
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 2
  %40 = call i64 @find_arg_str(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8** %39)
  store i8* null, i8** %5, align 8
  %41 = call i64 @find_arg_str(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8** %5)
  %42 = load i8*, i8** %5, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %44, label %51

44:                                               ; preds = %15
  %45 = load i8*, i8** %5, align 8
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 12
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 11
  %50 = call i32 @parse_ranges(i8* %45, i32* %47, i32* %49)
  br label %51

51:                                               ; preds = %44, %15
  store i8* null, i8** %5, align 8
  %52 = call i64 @find_arg_str(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8** %5)
  %53 = load i8*, i8** %5, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %55, label %62

55:                                               ; preds = %51
  %56 = load i8*, i8** %5, align 8
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 10
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 9
  %61 = call i32 @parse_ranges(i8* %56, i32* %58, i32* %60)
  br label %62

62:                                               ; preds = %55, %51
  %63 = call i32 @find_arg_uint(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @config, i32 0, i32 2))
  store i8* null, i8** %5, align 8
  %64 = call i64 @find_arg_str(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i8** %5)
  %65 = load i8*, i8** %5, align 8
  %66 = icmp ne i8* %65, null
  br i1 %66, label %67, label %69

67:                                               ; preds = %62
  %68 = load i8*, i8** %5, align 8
  store i8* %68, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @dmenu_mode, i32 0, i32 0), align 8
  br label %69

69:                                               ; preds = %67, %62
  %70 = call i64 @find_arg(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0))
  %71 = icmp sge i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %69
  store i32 6, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @config, i32 0, i32 0), align 4
  br label %73

73:                                               ; preds = %72, %69
  %74 = load i32, i32* @TRUE, align 4
  store i32 %74, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @config, i32 0, i32 1), align 4
  %75 = call i64 @find_arg(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0))
  %76 = icmp sge i64 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %73
  %78 = load i32, i32* @FALSE, align 4
  store i32 %78, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @config, i32 0, i32 1), align 4
  br label %79

79:                                               ; preds = %77, %73
  %80 = load i32, i32* @STDIN_FILENO, align 4
  store i32 %80, i32* %6, align 4
  store i8* null, i8** %5, align 8
  %81 = call i64 @find_arg_str(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0), i8** %5)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %107

83:                                               ; preds = %79
  %84 = load i8*, i8** %5, align 8
  %85 = call i8* @rofi_expand_path(i8* %84)
  store i8* %85, i8** %7, align 8
  %86 = load i8*, i8** %5, align 8
  %87 = load i32, i32* @O_RDONLY, align 4
  %88 = call i32 @open(i8* %86, i32 %87)
  store i32 %88, i32* %6, align 4
  %89 = load i32, i32* %6, align 4
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %104

91:                                               ; preds = %83
  %92 = load i8*, i8** %7, align 8
  %93 = load i32, i32* @errno, align 4
  %94 = call i32 @g_strerror(i32 %93)
  %95 = call i8* @g_markup_printf_escaped(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.12, i64 0, i64 0), i8* %92, i32 %94)
  store i8* %95, i8** %8, align 8
  %96 = load i8*, i8** %8, align 8
  %97 = load i32, i32* @TRUE, align 4
  %98 = call i32 @rofi_view_error_dialog(i8* %96, i32 %97)
  %99 = load i8*, i8** %8, align 8
  %100 = call i32 @g_free(i8* %99)
  %101 = load i8*, i8** %7, align 8
  %102 = call i32 @g_free(i8* %101)
  %103 = load i32, i32* @TRUE, align 4
  store i32 %103, i32* %2, align 4
  br label %157

104:                                              ; preds = %83
  %105 = load i8*, i8** %7, align 8
  %106 = call i32 @g_free(i8* %105)
  br label %107

107:                                              ; preds = %104, %79
  %108 = load i32, i32* %6, align 4
  %109 = load i32, i32* @STDIN_FILENO, align 4
  %110 = icmp eq i32 %108, %109
  br i1 %110, label %111, label %115

111:                                              ; preds = %107
  %112 = load i32, i32* %6, align 4
  %113 = call i32 @isatty(i32 %112)
  %114 = icmp eq i32 %113, 1
  br i1 %114, label %142, label %115

115:                                              ; preds = %111, %107
  %116 = call i32 (...) @g_cancellable_new()
  %117 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 7
  store i32 %116, i32* %118, align 4
  %119 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 7
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* @async_read_cancel, align 4
  %123 = call i32 @G_CALLBACK(i32 %122)
  %124 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %125 = call i32 @g_cancellable_connect(i32 %121, i32 %123, %struct.TYPE_5__* %124, i32* null)
  %126 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 8
  store i32 %125, i32* %127, align 8
  %128 = load i32, i32* %6, align 4
  %129 = load i32, i32* %6, align 4
  %130 = load i32, i32* @STDIN_FILENO, align 4
  %131 = icmp ne i32 %129, %130
  %132 = zext i1 %131 to i32
  %133 = call i32 @g_unix_input_stream_new(i32 %128, i32 %132)
  %134 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %134, i32 0, i32 5
  store i32 %133, i32* %135, align 4
  %136 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i32 0, i32 5
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @g_data_input_stream_new(i32 %138)
  %140 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %141 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %140, i32 0, i32 6
  store i32 %139, i32* %141, align 8
  br label %142

142:                                              ; preds = %115, %111
  store i8* null, i8** %9, align 8
  %143 = call i64 @find_arg_str(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i64 0, i64 0), i8** %9)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %155

145:                                              ; preds = %142
  %146 = load i8*, i8** %9, align 8
  %147 = call i32 @g_strsplit(i8* %146, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0), i32 0)
  %148 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %149 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %148, i32 0, i32 4
  store i32 %147, i32* %149, align 8
  %150 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %151 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %150, i32 0, i32 3
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0), i8** %151, align 8
  %152 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %153 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %152, i32 0, i32 3
  %154 = call i64 @find_arg_str(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.16, i64 0, i64 0), i8** %153)
  br label %155

155:                                              ; preds = %145, %142
  %156 = load i32, i32* @TRUE, align 4
  store i32 %156, i32* %2, align 4
  br label %157

157:                                              ; preds = %155, %91, %13
  %158 = load i32, i32* %2, align 4
  ret i32 %158
}

declare dso_local i32* @mode_get_private_data(i32*) #1

declare dso_local i32 @mode_set_private_data(i32*, i32) #1

declare dso_local i32 @g_malloc0(i32) #1

declare dso_local i64 @find_arg_str(i8*, i8**) #1

declare dso_local i32 @find_arg_char(i8*, i8*) #1

declare dso_local i32 @find_arg_uint(i8*, i32*) #1

declare dso_local i32 @parse_ranges(i8*, i32*, i32*) #1

declare dso_local i64 @find_arg(i8*) #1

declare dso_local i8* @rofi_expand_path(i8*) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i8* @g_markup_printf_escaped(i8*, i8*, i32) #1

declare dso_local i32 @g_strerror(i32) #1

declare dso_local i32 @rofi_view_error_dialog(i8*, i32) #1

declare dso_local i32 @g_free(i8*) #1

declare dso_local i32 @isatty(i32) #1

declare dso_local i32 @g_cancellable_new(...) #1

declare dso_local i32 @g_cancellable_connect(i32, i32, %struct.TYPE_5__*, i32*) #1

declare dso_local i32 @G_CALLBACK(i32) #1

declare dso_local i32 @g_unix_input_stream_new(i32, i32) #1

declare dso_local i32 @g_data_input_stream_new(i32) #1

declare dso_local i32 @g_strsplit(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
