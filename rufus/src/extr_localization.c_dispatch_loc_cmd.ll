; ModuleID = '/home/carl/AnghaBench/rufus/src/extr_localization.c_dispatch_loc_cmd.c'
source_filename = "/home/carl/AnghaBench/rufus/src/extr_localization.c_dispatch_loc_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, i32 }
%struct.TYPE_11__ = type { i64, i64, i32** }

@dispatch_loc_cmd.dlg_index = internal global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"MSG_\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [63 x i8] c"only the [t]ext command can be applied to a message (MSG_###)\0A\00", align 1
@MSG_000 = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [44 x i8] c"failed to convert the numeric value in '%'\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@control_id = common dso_local global %struct.TYPE_12__* null, align 8
@.str.3 = private unnamed_addr constant [22 x i8] c"unknown control '%s'\0A\00", align 1
@msg_table = common dso_local global i64 0, align 8
@default_msg_table = common dso_local global i64 0, align 8
@IDD_DIALOG = common dso_local global i64 0, align 8
@loc_dlg = common dso_local global %struct.TYPE_12__* null, align 8
@.str.4 = private unnamed_addr constant [24 x i8] c"'%s' is not a group ID\0A\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"localization: using locale base '%s'\0A\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"locale base '%s' not found - ignoring\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dispatch_loc_cmd(%struct.TYPE_11__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i8*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %5, align 8
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  %7 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %8 = icmp eq %struct.TYPE_11__* %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* @FALSE, align 4
  store i32 %10, i32* %2, align 4
  br label %192

11:                                               ; preds = %1
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp sle i64 %14, 128
  br i1 %15, label %16, label %113

16:                                               ; preds = %11
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 2
  %19 = load i32**, i32*** %18, align 8
  %20 = getelementptr inbounds i32*, i32** %19, i64 0
  %21 = load i32*, i32** %20, align 8
  %22 = load i8*, i8** %6, align 8
  %23 = call i64 @safe_strncmp(i32* %21, i8* %22, i32 4)
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %69

25:                                               ; preds = %16
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 2
  %28 = load i32**, i32*** %27, align 8
  %29 = getelementptr inbounds i32*, i32** %28, i64 0
  %30 = load i32*, i32** %29, align 8
  %31 = icmp eq i32* %30, null
  br i1 %31, label %37, label %32

32:                                               ; preds = %25
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 128
  br i1 %36, label %37, label %39

37:                                               ; preds = %32, %25
  %38 = call i32 @luprint(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.1, i64 0, i64 0))
  br label %188

39:                                               ; preds = %32
  %40 = load i64, i64* @MSG_000, align 8
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 2
  %43 = load i32**, i32*** %42, align 8
  %44 = getelementptr inbounds i32*, i32** %43, i64 0
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 4
  %47 = call i64 @atoi(i32* %46)
  %48 = add nsw i64 %40, %47
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 1
  store i64 %48, i64* %50, align 8
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @MSG_000, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %63

56:                                               ; preds = %39
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 2
  %59 = load i32**, i32*** %58, align 8
  %60 = getelementptr inbounds i32*, i32** %59, i64 0
  %61 = load i32*, i32** %60, align 8
  %62 = call i32 @luprintf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32* %61)
  br label %188

63:                                               ; preds = %39
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %65 = call i32 @add_message_command(%struct.TYPE_11__* %64)
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %67 = call i32 @free_loc_cmd(%struct.TYPE_11__* %66)
  %68 = load i32, i32* @TRUE, align 4
  store i32 %68, i32* %2, align 4
  br label %192

69:                                               ; preds = %16
  store i64 0, i64* %4, align 8
  br label %70

70:                                               ; preds = %97, %69
  %71 = load i64, i64* %4, align 8
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** @control_id, align 8
  %73 = call i64 @ARRAYSIZE(%struct.TYPE_12__* %72)
  %74 = icmp ult i64 %71, %73
  br i1 %74, label %75, label %100

75:                                               ; preds = %70
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 2
  %78 = load i32**, i32*** %77, align 8
  %79 = getelementptr inbounds i32*, i32** %78, i64 0
  %80 = load i32*, i32** %79, align 8
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** @control_id, align 8
  %82 = load i64, i64* %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = call i64 @safe_strcmp(i32* %80, i32 %85)
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %88, label %96

88:                                               ; preds = %75
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** @control_id, align 8
  %90 = load i64, i64* %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 1
  store i64 %93, i64* %95, align 8
  br label %100

96:                                               ; preds = %75
  br label %97

97:                                               ; preds = %96
  %98 = load i64, i64* %4, align 8
  %99 = add i64 %98, 1
  store i64 %99, i64* %4, align 8
  br label %70

100:                                              ; preds = %88, %70
  %101 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = icmp slt i64 %103, 0
  br i1 %104, label %105, label %112

105:                                              ; preds = %100
  %106 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i32 0, i32 2
  %108 = load i32**, i32*** %107, align 8
  %109 = getelementptr inbounds i32*, i32** %108, i64 0
  %110 = load i32*, i32** %109, align 8
  %111 = call i32 @luprintf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32* %110)
  br label %188

112:                                              ; preds = %100
  br label %113

113:                                              ; preds = %112, %11
  %114 = load i64, i64* @msg_table, align 8
  %115 = load i64, i64* @default_msg_table, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %117, label %121

117:                                              ; preds = %113
  %118 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %119 = call i32 @free_loc_cmd(%struct.TYPE_11__* %118)
  %120 = load i32, i32* @TRUE, align 4
  store i32 %120, i32* %2, align 4
  br label %192

121:                                              ; preds = %113
  %122 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %123 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  switch i64 %124, label %183 [
    i64 128, label %125
    i64 129, label %129
    i64 130, label %154
  ]

125:                                              ; preds = %121
  %126 = load i32, i32* @dispatch_loc_cmd.dlg_index, align 4
  %127 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %128 = call i32 @add_dialog_command(i32 %126, %struct.TYPE_11__* %127)
  br label %186

129:                                              ; preds = %121
  %130 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %131 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %130, i32 0, i32 1
  %132 = load i64, i64* %131, align 8
  %133 = load i64, i64* @IDD_DIALOG, align 8
  %134 = sub i64 %132, %133
  %135 = load %struct.TYPE_12__*, %struct.TYPE_12__** @loc_dlg, align 8
  %136 = call i64 @ARRAYSIZE(%struct.TYPE_12__* %135)
  %137 = icmp ugt i64 %134, %136
  br i1 %137, label %138, label %145

138:                                              ; preds = %129
  %139 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %140 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %139, i32 0, i32 2
  %141 = load i32**, i32*** %140, align 8
  %142 = getelementptr inbounds i32*, i32** %141, i64 0
  %143 = load i32*, i32** %142, align 8
  %144 = call i32 @luprintf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32* %143)
  br label %188

145:                                              ; preds = %129
  %146 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %147 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %146, i32 0, i32 1
  %148 = load i64, i64* %147, align 8
  %149 = load i64, i64* @IDD_DIALOG, align 8
  %150 = sub i64 %148, %149
  %151 = trunc i64 %150 to i32
  store i32 %151, i32* @dispatch_loc_cmd.dlg_index, align 4
  %152 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %153 = call i32 @free_loc_cmd(%struct.TYPE_11__* %152)
  br label %186

154:                                              ; preds = %121
  %155 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %156 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %155, i32 0, i32 2
  %157 = load i32**, i32*** %156, align 8
  %158 = getelementptr inbounds i32*, i32** %157, i64 0
  %159 = load i32*, i32** %158, align 8
  %160 = load i32, i32* @FALSE, align 4
  %161 = call %struct.TYPE_11__* @get_locale_from_name(i32* %159, i32 %160)
  store %struct.TYPE_11__* %161, %struct.TYPE_11__** %5, align 8
  %162 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %163 = icmp ne %struct.TYPE_11__* %162, null
  br i1 %163, label %164, label %173

164:                                              ; preds = %154
  %165 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %166 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %165, i32 0, i32 2
  %167 = load i32**, i32*** %166, align 8
  %168 = getelementptr inbounds i32*, i32** %167, i64 0
  %169 = load i32*, i32** %168, align 8
  %170 = call i32 @uprintf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0), i32* %169)
  %171 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %172 = call i32 @get_loc_data_file(i32* null, %struct.TYPE_11__* %171)
  br label %180

173:                                              ; preds = %154
  %174 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %175 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %174, i32 0, i32 2
  %176 = load i32**, i32*** %175, align 8
  %177 = getelementptr inbounds i32*, i32** %176, i64 0
  %178 = load i32*, i32** %177, align 8
  %179 = call i32 @luprintf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0), i32* %178)
  br label %180

180:                                              ; preds = %173, %164
  %181 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %182 = call i32 @free_loc_cmd(%struct.TYPE_11__* %181)
  br label %186

183:                                              ; preds = %121
  %184 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %185 = call i32 @free_loc_cmd(%struct.TYPE_11__* %184)
  br label %186

186:                                              ; preds = %183, %180, %145, %125
  %187 = load i32, i32* @TRUE, align 4
  store i32 %187, i32* %2, align 4
  br label %192

188:                                              ; preds = %138, %105, %56, %37
  %189 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %190 = call i32 @free_loc_cmd(%struct.TYPE_11__* %189)
  %191 = load i32, i32* @FALSE, align 4
  store i32 %191, i32* %2, align 4
  br label %192

192:                                              ; preds = %188, %186, %117, %63, %9
  %193 = load i32, i32* %2, align 4
  ret i32 %193
}

declare dso_local i64 @safe_strncmp(i32*, i8*, i32) #1

declare dso_local i32 @luprint(i8*) #1

declare dso_local i64 @atoi(i32*) #1

declare dso_local i32 @luprintf(i8*, i32*) #1

declare dso_local i32 @add_message_command(%struct.TYPE_11__*) #1

declare dso_local i32 @free_loc_cmd(%struct.TYPE_11__*) #1

declare dso_local i64 @ARRAYSIZE(%struct.TYPE_12__*) #1

declare dso_local i64 @safe_strcmp(i32*, i32) #1

declare dso_local i32 @add_dialog_command(i32, %struct.TYPE_11__*) #1

declare dso_local %struct.TYPE_11__* @get_locale_from_name(i32*, i32) #1

declare dso_local i32 @uprintf(i8*, i32*) #1

declare dso_local i32 @get_loc_data_file(i32*, %struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
