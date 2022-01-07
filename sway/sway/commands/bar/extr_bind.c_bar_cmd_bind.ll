; ModuleID = '/home/carl/AnghaBench/sway/sway/commands/bar/extr_bind.c_bar_cmd_bind.c'
source_filename = "/home/carl/AnghaBench/sway/sway/commands/bar/extr_bind.c_bar_cmd_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32* }
%struct.cmd_results = type { i32 }
%struct.bar_binding = type { i32, i32, i32 }

@.str = private unnamed_addr constant [15 x i8] c"bar unbindcode\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"bar unbindsym\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"bar bindcode\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"bar bindsym\00", align 1
@EXPECTED_AT_LEAST = common dso_local global i32 0, align 4
@CMD_FAILURE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [31 x i8] c"Unable to allocate bar binding\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"--release\00", align 1
@CMD_INVALID = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [18 x i8] c"Unknown button %s\00", align 1
@config = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cmd_results* (i32, i8**, i32, i32)* @bar_cmd_bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cmd_results* @bar_cmd_bind(i32 %0, i8** %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.cmd_results*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.cmd_results*, align 8
  %13 = alloca %struct.bar_binding*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32*, align 8
  store i32 %0, i32* %6, align 4
  store i8** %1, i8*** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 2, i32* %10, align 4
  %16 = load i32, i32* %9, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %4
  %19 = load i32, i32* %10, align 4
  %20 = add nsw i32 %19, -1
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp ne i32 %21, 0
  %23 = zext i1 %22 to i64
  %24 = select i1 %22, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0)
  store i8* %24, i8** %11, align 8
  br label %30

25:                                               ; preds = %4
  %26 = load i32, i32* %8, align 4
  %27 = icmp ne i32 %26, 0
  %28 = zext i1 %27 to i64
  %29 = select i1 %27, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0)
  store i8* %29, i8** %11, align 8
  br label %30

30:                                               ; preds = %25, %18
  store %struct.cmd_results* null, %struct.cmd_results** %12, align 8
  %31 = load i32, i32* %6, align 4
  %32 = load i8*, i8** %11, align 8
  %33 = load i32, i32* @EXPECTED_AT_LEAST, align 4
  %34 = load i32, i32* %10, align 4
  %35 = call %struct.cmd_results* @checkarg(i32 %31, i8* %32, i32 %33, i32 %34)
  store %struct.cmd_results* %35, %struct.cmd_results** %12, align 8
  %36 = icmp ne %struct.cmd_results* %35, null
  br i1 %36, label %37, label %39

37:                                               ; preds = %30
  %38 = load %struct.cmd_results*, %struct.cmd_results** %12, align 8
  store %struct.cmd_results* %38, %struct.cmd_results** %5, align 8
  br label %127

39:                                               ; preds = %30
  %40 = call %struct.bar_binding* @calloc(i32 1, i32 12)
  store %struct.bar_binding* %40, %struct.bar_binding** %13, align 8
  %41 = load %struct.bar_binding*, %struct.bar_binding** %13, align 8
  %42 = icmp ne %struct.bar_binding* %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %39
  %44 = load i32, i32* @CMD_FAILURE, align 4
  %45 = call %struct.cmd_results* (i32, i8*, ...) @cmd_results_new(i32 %44, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  store %struct.cmd_results* %45, %struct.cmd_results** %5, align 8
  br label %127

46:                                               ; preds = %39
  %47 = load %struct.bar_binding*, %struct.bar_binding** %13, align 8
  %48 = getelementptr inbounds %struct.bar_binding, %struct.bar_binding* %47, i32 0, i32 0
  store i32 0, i32* %48, align 4
  %49 = load i8**, i8*** %7, align 8
  %50 = getelementptr inbounds i8*, i8** %49, i64 0
  %51 = load i8*, i8** %50, align 8
  %52 = call i64 @strcmp(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i8* %51)
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %46
  %55 = load %struct.bar_binding*, %struct.bar_binding** %13, align 8
  %56 = getelementptr inbounds %struct.bar_binding, %struct.bar_binding* %55, i32 0, i32 0
  store i32 1, i32* %56, align 4
  %57 = load i8**, i8*** %7, align 8
  %58 = getelementptr inbounds i8*, i8** %57, i32 1
  store i8** %58, i8*** %7, align 8
  %59 = load i32, i32* %6, align 4
  %60 = add nsw i32 %59, -1
  store i32 %60, i32* %6, align 4
  br label %61

61:                                               ; preds = %54, %46
  store i8* null, i8** %14, align 8
  %62 = load i32, i32* %8, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %71

64:                                               ; preds = %61
  %65 = load i8**, i8*** %7, align 8
  %66 = getelementptr inbounds i8*, i8** %65, i64 0
  %67 = load i8*, i8** %66, align 8
  %68 = call i32 @get_mouse_bindcode(i8* %67, i8** %14)
  %69 = load %struct.bar_binding*, %struct.bar_binding** %13, align 8
  %70 = getelementptr inbounds %struct.bar_binding, %struct.bar_binding* %69, i32 0, i32 2
  store i32 %68, i32* %70, align 4
  br label %78

71:                                               ; preds = %61
  %72 = load i8**, i8*** %7, align 8
  %73 = getelementptr inbounds i8*, i8** %72, i64 0
  %74 = load i8*, i8** %73, align 8
  %75 = call i32 @get_mouse_bindsym(i8* %74, i8** %14)
  %76 = load %struct.bar_binding*, %struct.bar_binding** %13, align 8
  %77 = getelementptr inbounds %struct.bar_binding, %struct.bar_binding* %76, i32 0, i32 2
  store i32 %75, i32* %77, align 4
  br label %78

78:                                               ; preds = %71, %64
  %79 = load i8*, i8** %14, align 8
  %80 = icmp ne i8* %79, null
  br i1 %80, label %81, label %90

81:                                               ; preds = %78
  %82 = load %struct.bar_binding*, %struct.bar_binding** %13, align 8
  %83 = call i32 @free_bar_binding(%struct.bar_binding* %82)
  %84 = load i32, i32* @CMD_INVALID, align 4
  %85 = load i8*, i8** %14, align 8
  %86 = call %struct.cmd_results* (i32, i8*, ...) @cmd_results_new(i32 %84, i8* %85)
  store %struct.cmd_results* %86, %struct.cmd_results** %12, align 8
  %87 = load i8*, i8** %14, align 8
  %88 = call i32 @free(i8* %87)
  %89 = load %struct.cmd_results*, %struct.cmd_results** %12, align 8
  store %struct.cmd_results* %89, %struct.cmd_results** %5, align 8
  br label %127

90:                                               ; preds = %78
  %91 = load %struct.bar_binding*, %struct.bar_binding** %13, align 8
  %92 = getelementptr inbounds %struct.bar_binding, %struct.bar_binding* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %103, label %95

95:                                               ; preds = %90
  %96 = load %struct.bar_binding*, %struct.bar_binding** %13, align 8
  %97 = call i32 @free_bar_binding(%struct.bar_binding* %96)
  %98 = load i32, i32* @CMD_INVALID, align 4
  %99 = load i8**, i8*** %7, align 8
  %100 = getelementptr inbounds i8*, i8** %99, i64 0
  %101 = load i8*, i8** %100, align 8
  %102 = call %struct.cmd_results* (i32, i8*, ...) @cmd_results_new(i32 %98, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i8* %101)
  store %struct.cmd_results* %102, %struct.cmd_results** %5, align 8
  br label %127

103:                                              ; preds = %90
  br label %104

104:                                              ; preds = %103
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** @config, align 8
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 0
  %107 = load %struct.TYPE_3__*, %struct.TYPE_3__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 0
  %109 = load i32*, i32** %108, align 8
  store i32* %109, i32** %15, align 8
  %110 = load i32, i32* %9, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %116

112:                                              ; preds = %104
  %113 = load %struct.bar_binding*, %struct.bar_binding** %13, align 8
  %114 = load i32*, i32** %15, align 8
  %115 = call %struct.cmd_results* @binding_remove(%struct.bar_binding* %113, i32* %114)
  store %struct.cmd_results* %115, %struct.cmd_results** %5, align 8
  br label %127

116:                                              ; preds = %104
  %117 = load i8**, i8*** %7, align 8
  %118 = getelementptr inbounds i8*, i8** %117, i64 1
  %119 = load i32, i32* %6, align 4
  %120 = sub nsw i32 %119, 1
  %121 = call i32 @join_args(i8** %118, i32 %120)
  %122 = load %struct.bar_binding*, %struct.bar_binding** %13, align 8
  %123 = getelementptr inbounds %struct.bar_binding, %struct.bar_binding* %122, i32 0, i32 1
  store i32 %121, i32* %123, align 4
  %124 = load %struct.bar_binding*, %struct.bar_binding** %13, align 8
  %125 = load i32*, i32** %15, align 8
  %126 = call %struct.cmd_results* @binding_add(%struct.bar_binding* %124, i32* %125)
  store %struct.cmd_results* %126, %struct.cmd_results** %5, align 8
  br label %127

127:                                              ; preds = %116, %112, %95, %81, %43, %37
  %128 = load %struct.cmd_results*, %struct.cmd_results** %5, align 8
  ret %struct.cmd_results* %128
}

declare dso_local %struct.cmd_results* @checkarg(i32, i8*, i32, i32) #1

declare dso_local %struct.bar_binding* @calloc(i32, i32) #1

declare dso_local %struct.cmd_results* @cmd_results_new(i32, i8*, ...) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @get_mouse_bindcode(i8*, i8**) #1

declare dso_local i32 @get_mouse_bindsym(i8*, i8**) #1

declare dso_local i32 @free_bar_binding(%struct.bar_binding*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local %struct.cmd_results* @binding_remove(%struct.bar_binding*, i32*) #1

declare dso_local i32 @join_args(i8**, i32) #1

declare dso_local %struct.cmd_results* @binding_add(%struct.bar_binding*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
