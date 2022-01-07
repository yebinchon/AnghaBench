; ModuleID = '/home/carl/AnghaBench/tig/src/extr_log.c_log_read.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_log.c_log_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.view = type { %struct.log_state* }
%struct.log_state = type { i32, i32, i32, i32 }
%struct.buffer = type { i8* }
%struct.line = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"commit \00", align 1
@LINE_COMMIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.view*, %struct.buffer*, i32)* @log_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @log_read(%struct.view* %0, %struct.buffer* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.view*, align 8
  %6 = alloca %struct.buffer*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.line*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.log_state*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store %struct.view* %0, %struct.view** %5, align 8
  store %struct.buffer* %1, %struct.buffer** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.line* null, %struct.line** %8, align 8
  %14 = load %struct.view*, %struct.view** %5, align 8
  %15 = getelementptr inbounds %struct.view, %struct.view* %14, i32 0, i32 0
  %16 = load %struct.log_state*, %struct.log_state** %15, align 8
  store %struct.log_state* %16, %struct.log_state** %10, align 8
  %17 = load %struct.buffer*, %struct.buffer** %6, align 8
  %18 = icmp ne %struct.buffer* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %142

20:                                               ; preds = %3
  %21 = load %struct.buffer*, %struct.buffer** %6, align 8
  %22 = getelementptr inbounds %struct.buffer, %struct.buffer* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  store i8* %23, i8** %13, align 8
  %24 = load i8*, i8** %13, align 8
  %25 = call i8* @strstr(i8* %24, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i8* %25, i8** %12, align 8
  %26 = load i8*, i8** %12, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %47

28:                                               ; preds = %20
  %29 = load i8*, i8** %13, align 8
  %30 = call i32 @get_graph_indent(i8* %29)
  %31 = sext i32 %30 to i64
  %32 = load i8*, i8** %12, align 8
  %33 = load i8*, i8** %13, align 8
  %34 = ptrtoint i8* %32 to i64
  %35 = ptrtoint i8* %33 to i64
  %36 = sub i64 %34, %35
  %37 = icmp eq i64 %31, %36
  br i1 %37, label %38, label %47

38:                                               ; preds = %28
  %39 = load i8*, i8** %12, align 8
  %40 = load i8*, i8** %13, align 8
  %41 = ptrtoint i8* %39 to i64
  %42 = ptrtoint i8* %40 to i64
  %43 = sub i64 %41, %42
  %44 = trunc i64 %43 to i32
  %45 = load %struct.log_state*, %struct.log_state** %10, align 8
  %46 = getelementptr inbounds %struct.log_state, %struct.log_state* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 4
  br label %47

47:                                               ; preds = %38, %28, %20
  %48 = load i8*, i8** %13, align 8
  %49 = load %struct.log_state*, %struct.log_state** %10, align 8
  %50 = getelementptr inbounds %struct.log_state, %struct.log_state* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8, i8* %48, i64 %52
  %54 = call i32 @get_line_type(i8* %53)
  store i32 %54, i32* %9, align 4
  %55 = load i8*, i8** %13, align 8
  %56 = load %struct.log_state*, %struct.log_state** %10, align 8
  %57 = getelementptr inbounds %struct.log_state, %struct.log_state* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8, i8* %55, i64 %59
  %61 = call i64 @strlen(i8* %60)
  store i64 %61, i64* %11, align 8
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* @LINE_COMMIT, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %47
  %66 = load %struct.log_state*, %struct.log_state** %10, align 8
  %67 = getelementptr inbounds %struct.log_state, %struct.log_state* %66, i32 0, i32 1
  store i32 1, i32* %67, align 4
  br label %123

68:                                               ; preds = %47
  %69 = load %struct.log_state*, %struct.log_state** %10, align 8
  %70 = getelementptr inbounds %struct.log_state, %struct.log_state* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %81

73:                                               ; preds = %68
  %74 = load i64, i64* %11, align 8
  %75 = icmp ult i64 %74, 1
  br i1 %75, label %76, label %81

76:                                               ; preds = %73
  %77 = load %struct.log_state*, %struct.log_state** %10, align 8
  %78 = getelementptr inbounds %struct.log_state, %struct.log_state* %77, i32 0, i32 1
  store i32 0, i32* %78, align 4
  %79 = load %struct.log_state*, %struct.log_state** %10, align 8
  %80 = getelementptr inbounds %struct.log_state, %struct.log_state* %79, i32 0, i32 2
  store i32 1, i32* %80, align 4
  br label %122

81:                                               ; preds = %73, %68
  %82 = load %struct.log_state*, %struct.log_state** %10, align 8
  %83 = getelementptr inbounds %struct.log_state, %struct.log_state* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %94

86:                                               ; preds = %81
  %87 = load i64, i64* %11, align 8
  %88 = icmp ult i64 %87, 1
  br i1 %88, label %89, label %94

89:                                               ; preds = %86
  %90 = load %struct.log_state*, %struct.log_state** %10, align 8
  %91 = getelementptr inbounds %struct.log_state, %struct.log_state* %90, i32 0, i32 2
  store i32 0, i32* %91, align 4
  %92 = load %struct.log_state*, %struct.log_state** %10, align 8
  %93 = getelementptr inbounds %struct.log_state, %struct.log_state* %92, i32 0, i32 3
  store i32 1, i32* %93, align 4
  br label %121

94:                                               ; preds = %86, %81
  %95 = load %struct.log_state*, %struct.log_state** %10, align 8
  %96 = getelementptr inbounds %struct.log_state, %struct.log_state* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %120

99:                                               ; preds = %94
  %100 = load %struct.view*, %struct.view** %5, align 8
  %101 = load i8*, i8** %13, align 8
  %102 = load %struct.log_state*, %struct.log_state** %10, align 8
  %103 = getelementptr inbounds %struct.log_state, %struct.log_state* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = call %struct.line* @diff_common_add_diff_stat(%struct.view* %100, i8* %101, i32 %104)
  store %struct.line* %105, %struct.line** %8, align 8
  %106 = load %struct.line*, %struct.line** %8, align 8
  %107 = icmp ne %struct.line* %106, null
  br i1 %107, label %108, label %117

108:                                              ; preds = %99
  %109 = load %struct.log_state*, %struct.log_state** %10, align 8
  %110 = getelementptr inbounds %struct.log_state, %struct.log_state* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %108
  %114 = load %struct.line*, %struct.line** %8, align 8
  %115 = getelementptr inbounds %struct.line, %struct.line* %114, i32 0, i32 0
  store i32 1, i32* %115, align 4
  br label %116

116:                                              ; preds = %113, %108
  store i32 1, i32* %4, align 4
  br label %142

117:                                              ; preds = %99
  %118 = load %struct.log_state*, %struct.log_state** %10, align 8
  %119 = getelementptr inbounds %struct.log_state, %struct.log_state* %118, i32 0, i32 3
  store i32 0, i32* %119, align 4
  br label %120

120:                                              ; preds = %117, %94
  br label %121

121:                                              ; preds = %120, %89
  br label %122

122:                                              ; preds = %121, %76
  br label %123

123:                                              ; preds = %122, %65
  %124 = load %struct.view*, %struct.view** %5, align 8
  %125 = load i8*, i8** %13, align 8
  %126 = load i32, i32* %9, align 4
  %127 = call i32 @pager_common_read(%struct.view* %124, i8* %125, i32 %126, %struct.line** %8)
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %130, label %129

129:                                              ; preds = %123
  store i32 0, i32* %4, align 4
  br label %142

130:                                              ; preds = %123
  %131 = load %struct.line*, %struct.line** %8, align 8
  %132 = icmp ne %struct.line* %131, null
  br i1 %132, label %133, label %141

133:                                              ; preds = %130
  %134 = load %struct.log_state*, %struct.log_state** %10, align 8
  %135 = getelementptr inbounds %struct.log_state, %struct.log_state* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %141

138:                                              ; preds = %133
  %139 = load %struct.line*, %struct.line** %8, align 8
  %140 = getelementptr inbounds %struct.line, %struct.line* %139, i32 0, i32 0
  store i32 1, i32* %140, align 4
  br label %141

141:                                              ; preds = %138, %133, %130
  store i32 1, i32* %4, align 4
  br label %142

142:                                              ; preds = %141, %129, %116, %19
  %143 = load i32, i32* %4, align 4
  ret i32 %143
}

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i32 @get_graph_indent(i8*) #1

declare dso_local i32 @get_line_type(i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local %struct.line* @diff_common_add_diff_stat(%struct.view*, i8*, i32) #1

declare dso_local i32 @pager_common_read(%struct.view*, i8*, i32, %struct.line**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
