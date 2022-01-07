; ModuleID = '/home/carl/AnghaBench/tig/test/tools/extr_test-graph.c_main.c'
source_filename = "/home/carl/AnghaBench/tig/test/tools/extr_test-graph.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.graph = type { i32 (%struct.graph*, i32*)*, i32 (%struct.graph*, i32*, i32, i8*, i32)*, i32, i32 }
%struct.io = type { i32 }
%struct.buffer = type { i8* }
%struct.commit = type { i32, i32 }

@STDIN_FILENO = common dso_local global i32 0, align 4
@USAGE = common dso_local global i8* null, align 8
@GRAPH_DISPLAY_V2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Failed to allocated graph\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"--ascii\00", align 1
@graph_fn = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"IO\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"commit \00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"Commits\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"Commit\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"    \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.graph*, align 8
  %7 = alloca %struct.io, align 4
  %8 = alloca %struct.buffer, align 8
  %9 = alloca %struct.commit**, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.commit*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %14 = bitcast %struct.io* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %14, i8 0, i64 4, i1 false)
  store %struct.commit** null, %struct.commit*** %9, align 8
  store i64 0, i64* %10, align 8
  store %struct.commit* null, %struct.commit** %11, align 8
  %15 = load i32, i32* @STDIN_FILENO, align 4
  %16 = call i64 @isatty(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load i8*, i8** @USAGE, align 8
  %20 = call i32 @die(i8* %19)
  br label %21

21:                                               ; preds = %18, %2
  %22 = load i32, i32* @GRAPH_DISPLAY_V2, align 4
  %23 = call %struct.graph* @init_graph(i32 %22)
  store %struct.graph* %23, %struct.graph** %6, align 8
  %24 = icmp ne %struct.graph* %23, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %21
  %26 = call i32 @die(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %27

27:                                               ; preds = %25, %21
  %28 = load i32, i32* %4, align 4
  %29 = icmp sgt i32 %28, 1
  br i1 %29, label %30, label %40

30:                                               ; preds = %27
  %31 = load i8**, i8*** %5, align 8
  %32 = getelementptr inbounds i8*, i8** %31, i64 1
  %33 = load i8*, i8** %32, align 8
  %34 = call i32 @strcmp(i8* %33, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %30
  %37 = load %struct.graph*, %struct.graph** %6, align 8
  %38 = getelementptr inbounds %struct.graph, %struct.graph* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* @graph_fn, align 4
  br label %44

40:                                               ; preds = %30, %27
  %41 = load %struct.graph*, %struct.graph** %6, align 8
  %42 = getelementptr inbounds %struct.graph, %struct.graph* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  store i32 %43, i32* @graph_fn, align 4
  br label %44

44:                                               ; preds = %40, %36
  %45 = call i32 @io_open(%struct.io* %7, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0))
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %44
  %48 = call i32 @die(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  br label %49

49:                                               ; preds = %47, %44
  br label %50

50:                                               ; preds = %146, %49
  %51 = call i32 @io_eof(%struct.io* %7)
  %52 = icmp ne i32 %51, 0
  %53 = xor i1 %52, true
  br i1 %53, label %54, label %147

54:                                               ; preds = %50
  br label %55

55:                                               ; preds = %145, %137, %54
  %56 = call i64 @io_get(%struct.io* %7, %struct.buffer* %8, i8 signext 10, i32 1)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %146

58:                                               ; preds = %55
  %59 = getelementptr inbounds %struct.buffer, %struct.buffer* %8, i32 0, i32 0
  %60 = load i8*, i8** %59, align 8
  store i8* %60, i8** %13, align 8
  %61 = load i8*, i8** %13, align 8
  %62 = call i32 @prefixcmp(i8* %61, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %130, label %64

64:                                               ; preds = %58
  %65 = call i32 @STRING_SIZE(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %66 = load i8*, i8** %13, align 8
  %67 = sext i32 %65 to i64
  %68 = getelementptr inbounds i8, i8* %66, i64 %67
  store i8* %68, i8** %13, align 8
  %69 = load i8*, i8** %13, align 8
  %70 = load i8, i8* %69, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp eq i32 %71, 45
  %73 = zext i1 %72 to i32
  store i32 %73, i32* %12, align 4
  %74 = load i32, i32* %12, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %64
  %77 = load i8*, i8** %13, align 8
  %78 = getelementptr inbounds i8, i8* %77, i32 1
  store i8* %78, i8** %13, align 8
  br label %79

79:                                               ; preds = %76, %64
  %80 = load i64, i64* %10, align 8
  %81 = call i32 @realloc_commits(%struct.commit*** %9, i64 %80, i32 1)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %85, label %83

83:                                               ; preds = %79
  %84 = call i32 @die(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  br label %85

85:                                               ; preds = %83, %79
  %86 = call %struct.commit* @calloc(i32 1, i32 8)
  store %struct.commit* %86, %struct.commit** %11, align 8
  %87 = load %struct.commit*, %struct.commit** %11, align 8
  %88 = icmp ne %struct.commit* %87, null
  br i1 %88, label %91, label %89

89:                                               ; preds = %85
  %90 = call i32 @die(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  br label %91

91:                                               ; preds = %89, %85
  %92 = load %struct.commit*, %struct.commit** %11, align 8
  %93 = load %struct.commit**, %struct.commit*** %9, align 8
  %94 = load i64, i64* %10, align 8
  %95 = add i64 %94, 1
  store i64 %95, i64* %10, align 8
  %96 = getelementptr inbounds %struct.commit*, %struct.commit** %93, i64 %94
  store %struct.commit* %92, %struct.commit** %96, align 8
  %97 = load %struct.commit*, %struct.commit** %11, align 8
  %98 = getelementptr inbounds %struct.commit, %struct.commit* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load i8*, i8** %13, align 8
  %101 = call i32 @string_copy_rev(i32 %99, i8* %100)
  %102 = load %struct.graph*, %struct.graph** %6, align 8
  %103 = getelementptr inbounds %struct.graph, %struct.graph* %102, i32 0, i32 1
  %104 = load i32 (%struct.graph*, i32*, i32, i8*, i32)*, i32 (%struct.graph*, i32*, i32, i8*, i32)** %103, align 8
  %105 = load %struct.graph*, %struct.graph** %6, align 8
  %106 = load %struct.commit*, %struct.commit** %11, align 8
  %107 = getelementptr inbounds %struct.commit, %struct.commit* %106, i32 0, i32 0
  %108 = load %struct.commit*, %struct.commit** %11, align 8
  %109 = getelementptr inbounds %struct.commit, %struct.commit* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = load i8*, i8** %13, align 8
  %112 = load i32, i32* %12, align 4
  %113 = call i32 %104(%struct.graph* %105, i32* %107, i32 %110, i8* %111, i32 %112)
  %114 = load %struct.graph*, %struct.graph** %6, align 8
  %115 = getelementptr inbounds %struct.graph, %struct.graph* %114, i32 0, i32 0
  %116 = load i32 (%struct.graph*, i32*)*, i32 (%struct.graph*, i32*)** %115, align 8
  %117 = load %struct.graph*, %struct.graph** %6, align 8
  %118 = load %struct.commit*, %struct.commit** %11, align 8
  %119 = getelementptr inbounds %struct.commit, %struct.commit* %118, i32 0, i32 0
  %120 = call i32 %116(%struct.graph* %117, i32* %119)
  %121 = load i8*, i8** %13, align 8
  %122 = call i8* @io_memchr(%struct.buffer* %8, i8* %121, i32 0)
  store i8* %122, i8** %13, align 8
  %123 = icmp ne i8* %122, null
  br i1 %123, label %124, label %129

124:                                              ; preds = %91
  %125 = load %struct.graph*, %struct.graph** %6, align 8
  %126 = load %struct.commit*, %struct.commit** %11, align 8
  %127 = load i8*, i8** %13, align 8
  %128 = call i32 @print_commit(%struct.graph* %125, %struct.commit* %126, i8* %127)
  store %struct.commit* null, %struct.commit** %11, align 8
  br label %129

129:                                              ; preds = %124, %91
  br label %145

130:                                              ; preds = %58
  %131 = load i8*, i8** %13, align 8
  %132 = call i32 @prefixcmp(i8* %131, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %144, label %134

134:                                              ; preds = %130
  %135 = load %struct.commit*, %struct.commit** %11, align 8
  %136 = icmp ne %struct.commit* %135, null
  br i1 %136, label %138, label %137

137:                                              ; preds = %134
  br label %55

138:                                              ; preds = %134
  %139 = load %struct.graph*, %struct.graph** %6, align 8
  %140 = load %struct.commit*, %struct.commit** %11, align 8
  %141 = load i8*, i8** %13, align 8
  %142 = getelementptr inbounds i8, i8* %141, i64 4
  %143 = call i32 @print_commit(%struct.graph* %139, %struct.commit* %140, i8* %142)
  store %struct.commit* null, %struct.commit** %11, align 8
  br label %144

144:                                              ; preds = %138, %130
  br label %145

145:                                              ; preds = %144, %129
  br label %55

146:                                              ; preds = %55
  br label %50

147:                                              ; preds = %50
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @isatty(i32) #2

declare dso_local i32 @die(i8*) #2

declare dso_local %struct.graph* @init_graph(i32) #2

declare dso_local i32 @strcmp(i8*, i8*) #2

declare dso_local i32 @io_open(%struct.io*, i8*, i8*) #2

declare dso_local i32 @io_eof(%struct.io*) #2

declare dso_local i64 @io_get(%struct.io*, %struct.buffer*, i8 signext, i32) #2

declare dso_local i32 @prefixcmp(i8*, i8*) #2

declare dso_local i32 @STRING_SIZE(i8*) #2

declare dso_local i32 @realloc_commits(%struct.commit***, i64, i32) #2

declare dso_local %struct.commit* @calloc(i32, i32) #2

declare dso_local i32 @string_copy_rev(i32, i8*) #2

declare dso_local i8* @io_memchr(%struct.buffer*, i8*, i32) #2

declare dso_local i32 @print_commit(%struct.graph*, %struct.commit*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
