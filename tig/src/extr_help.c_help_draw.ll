; ModuleID = '/home/carl/AnghaBench/tig/src/extr_help.c_help_draw.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_help.c_help_draw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.view = type { %struct.help_state* }
%struct.help_state = type { i64, i64 }
%struct.line = type { i64, %struct.help* }
%struct.help = type { i64, %struct.TYPE_2__, %struct.keymap* }
%struct.TYPE_2__ = type { %struct.request_info*, i32 }
%struct.request_info = type { i64, i32, i32 }
%struct.keymap = type { i32, i64 }
%struct.run_request = type { i64* }

@LINE_SECTION = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [17 x i8] c"[%c] %s bindings\00", align 1
@LINE_HELP_GROUP = common dso_local global i64 0, align 8
@REQ_RUN_REQUESTS = common dso_local global i64 0, align 8
@LINE_DEFAULT = common dso_local global i64 0, align 8
@ALIGN_RIGHT = common dso_local global i32 0, align 4
@LINE_HELP_ACTION = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c" \00", align 1
@ALIGN_LEFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.view*, %struct.line*, i32)* @help_draw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @help_draw(%struct.view* %0, %struct.line* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.view*, align 8
  %6 = alloca %struct.line*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.help*, align 8
  %9 = alloca %struct.keymap*, align 8
  %10 = alloca %struct.help_state*, align 8
  %11 = alloca %struct.run_request*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.request_info*, align 8
  %16 = alloca i8*, align 8
  store %struct.view* %0, %struct.view** %5, align 8
  store %struct.line* %1, %struct.line** %6, align 8
  store i32 %2, i32* %7, align 4
  %17 = load %struct.line*, %struct.line** %6, align 8
  %18 = getelementptr inbounds %struct.line, %struct.line* %17, i32 0, i32 1
  %19 = load %struct.help*, %struct.help** %18, align 8
  store %struct.help* %19, %struct.help** %8, align 8
  %20 = load %struct.help*, %struct.help** %8, align 8
  %21 = getelementptr inbounds %struct.help, %struct.help* %20, i32 0, i32 2
  %22 = load %struct.keymap*, %struct.keymap** %21, align 8
  store %struct.keymap* %22, %struct.keymap** %9, align 8
  %23 = load %struct.view*, %struct.view** %5, align 8
  %24 = getelementptr inbounds %struct.view, %struct.view* %23, i32 0, i32 0
  %25 = load %struct.help_state*, %struct.help_state** %24, align 8
  store %struct.help_state* %25, %struct.help_state** %10, align 8
  %26 = load %struct.line*, %struct.line** %6, align 8
  %27 = getelementptr inbounds %struct.line, %struct.line* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @LINE_SECTION, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %46

31:                                               ; preds = %3
  %32 = load %struct.view*, %struct.view** %5, align 8
  %33 = load %struct.line*, %struct.line** %6, align 8
  %34 = getelementptr inbounds %struct.line, %struct.line* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.keymap*, %struct.keymap** %9, align 8
  %37 = getelementptr inbounds %struct.keymap, %struct.keymap* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  %40 = zext i1 %39 to i64
  %41 = select i1 %39, i32 43, i32 45
  %42 = load %struct.keymap*, %struct.keymap** %9, align 8
  %43 = getelementptr inbounds %struct.keymap, %struct.keymap* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i64 (%struct.view*, i64, i8*, ...) @draw_formatted(%struct.view* %32, i64 %35, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %41, i32 %44)
  br label %167

46:                                               ; preds = %3
  %47 = load %struct.line*, %struct.line** %6, align 8
  %48 = getelementptr inbounds %struct.line, %struct.line* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @LINE_HELP_GROUP, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %55, label %52

52:                                               ; preds = %46
  %53 = load %struct.keymap*, %struct.keymap** %9, align 8
  %54 = icmp ne %struct.keymap* %53, null
  br i1 %54, label %65, label %55

55:                                               ; preds = %52, %46
  %56 = load %struct.view*, %struct.view** %5, align 8
  %57 = load %struct.line*, %struct.line** %6, align 8
  %58 = getelementptr inbounds %struct.line, %struct.line* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.help*, %struct.help** %8, align 8
  %61 = getelementptr inbounds %struct.help, %struct.help* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @draw_text(%struct.view* %56, i64 %59, i32 %63)
  br label %166

65:                                               ; preds = %52
  %66 = load %struct.help*, %struct.help** %8, align 8
  %67 = getelementptr inbounds %struct.help, %struct.help* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @REQ_RUN_REQUESTS, align 8
  %70 = icmp sgt i64 %68, %69
  br i1 %70, label %71, label %123

71:                                               ; preds = %65
  %72 = load %struct.help*, %struct.help** %8, align 8
  %73 = getelementptr inbounds %struct.help, %struct.help* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = call %struct.run_request* @get_run_request(i64 %74)
  store %struct.run_request* %75, %struct.run_request** %11, align 8
  %76 = load %struct.keymap*, %struct.keymap** %9, align 8
  %77 = load %struct.help*, %struct.help** %8, align 8
  %78 = getelementptr inbounds %struct.help, %struct.help* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = call i8* @get_keys(%struct.keymap* %76, i64 %79, i32 1)
  store i8* %80, i8** %12, align 8
  %81 = load %struct.run_request*, %struct.run_request** %11, align 8
  %82 = call i8* @format_run_request_flags(%struct.run_request* %81)
  store i8* %82, i8** %13, align 8
  %83 = load %struct.view*, %struct.view** %5, align 8
  %84 = load i64, i64* @LINE_DEFAULT, align 8
  %85 = load i8*, i8** %12, align 8
  %86 = load %struct.help_state*, %struct.help_state** %10, align 8
  %87 = getelementptr inbounds %struct.help_state, %struct.help_state* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = add nsw i64 %88, 2
  %90 = load i32, i32* @ALIGN_RIGHT, align 4
  %91 = call i64 @draw_field(%struct.view* %83, i64 %84, i8* %85, i64 %89, i32 %90, i32 0)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %71
  store i32 1, i32* %4, align 4
  br label %168

94:                                               ; preds = %71
  store i32 0, i32* %14, align 4
  br label %95

95:                                               ; preds = %119, %94
  %96 = load %struct.run_request*, %struct.run_request** %11, align 8
  %97 = getelementptr inbounds %struct.run_request, %struct.run_request* %96, i32 0, i32 0
  %98 = load i64*, i64** %97, align 8
  %99 = load i32, i32* %14, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i64, i64* %98, i64 %100
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %122

104:                                              ; preds = %95
  %105 = load %struct.view*, %struct.view** %5, align 8
  %106 = load i64, i64* @LINE_HELP_ACTION, align 8
  %107 = load i8*, i8** %13, align 8
  %108 = load %struct.run_request*, %struct.run_request** %11, align 8
  %109 = getelementptr inbounds %struct.run_request, %struct.run_request* %108, i32 0, i32 0
  %110 = load i64*, i64** %109, align 8
  %111 = load i32, i32* %14, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i64, i64* %110, i64 %112
  %114 = load i64, i64* %113, align 8
  %115 = call i64 (%struct.view*, i64, i8*, ...) @draw_formatted(%struct.view* %105, i64 %106, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %107, i64 %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %104
  store i32 1, i32* %4, align 4
  br label %168

118:                                              ; preds = %104
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8** %13, align 8
  br label %119

119:                                              ; preds = %118
  %120 = load i32, i32* %14, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %14, align 4
  br label %95

122:                                              ; preds = %95
  br label %165

123:                                              ; preds = %65
  %124 = load %struct.help*, %struct.help** %8, align 8
  %125 = getelementptr inbounds %struct.help, %struct.help* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i32 0, i32 0
  %127 = load %struct.request_info*, %struct.request_info** %126, align 8
  store %struct.request_info* %127, %struct.request_info** %15, align 8
  %128 = load %struct.keymap*, %struct.keymap** %9, align 8
  %129 = load %struct.request_info*, %struct.request_info** %15, align 8
  %130 = getelementptr inbounds %struct.request_info, %struct.request_info* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = call i8* @get_keys(%struct.keymap* %128, i64 %131, i32 1)
  store i8* %132, i8** %16, align 8
  %133 = load %struct.view*, %struct.view** %5, align 8
  %134 = load i64, i64* @LINE_DEFAULT, align 8
  %135 = load i8*, i8** %16, align 8
  %136 = load %struct.help_state*, %struct.help_state** %10, align 8
  %137 = getelementptr inbounds %struct.help_state, %struct.help_state* %136, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = add nsw i64 %138, 2
  %140 = load i32, i32* @ALIGN_RIGHT, align 4
  %141 = call i64 @draw_field(%struct.view* %133, i64 %134, i8* %135, i64 %139, i32 %140, i32 0)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %123
  store i32 1, i32* %4, align 4
  br label %168

144:                                              ; preds = %123
  %145 = load %struct.view*, %struct.view** %5, align 8
  %146 = load i64, i64* @LINE_HELP_ACTION, align 8
  %147 = load %struct.request_info*, %struct.request_info** %15, align 8
  %148 = getelementptr inbounds %struct.request_info, %struct.request_info* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 4
  %150 = call i8* @enum_name(i32 %149)
  %151 = load %struct.help_state*, %struct.help_state** %10, align 8
  %152 = getelementptr inbounds %struct.help_state, %struct.help_state* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = load i32, i32* @ALIGN_LEFT, align 4
  %155 = call i64 @draw_field(%struct.view* %145, i64 %146, i8* %150, i64 %153, i32 %154, i32 0)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %144
  store i32 1, i32* %4, align 4
  br label %168

158:                                              ; preds = %144
  %159 = load %struct.view*, %struct.view** %5, align 8
  %160 = load i64, i64* @LINE_DEFAULT, align 8
  %161 = load %struct.request_info*, %struct.request_info** %15, align 8
  %162 = getelementptr inbounds %struct.request_info, %struct.request_info* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 8
  %164 = call i32 @draw_text(%struct.view* %159, i64 %160, i32 %163)
  br label %165

165:                                              ; preds = %158, %122
  br label %166

166:                                              ; preds = %165, %55
  br label %167

167:                                              ; preds = %166, %31
  store i32 1, i32* %4, align 4
  br label %168

168:                                              ; preds = %167, %157, %143, %117, %93
  %169 = load i32, i32* %4, align 4
  ret i32 %169
}

declare dso_local i64 @draw_formatted(%struct.view*, i64, i8*, ...) #1

declare dso_local i32 @draw_text(%struct.view*, i64, i32) #1

declare dso_local %struct.run_request* @get_run_request(i64) #1

declare dso_local i8* @get_keys(%struct.keymap*, i64, i32) #1

declare dso_local i8* @format_run_request_flags(%struct.run_request*) #1

declare dso_local i64 @draw_field(%struct.view*, i64, i8*, i64, i32, i32) #1

declare dso_local i8* @enum_name(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
