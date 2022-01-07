; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/platform/gl/extr_gl-main.c_load_history.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/platform/gl/extr_gl-main.c_load_history.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8* }

@PATH_MAX = common dso_local global i32 0, align 4
@filename = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"current\00", align 1
@currentpage = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"history\00", align 1
@history = common dso_local global %struct.TYPE_5__* null, align 8
@history_count = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"future\00", align 1
@future = common dso_local global %struct.TYPE_5__* null, align 8
@future_count = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"marks\00", align 1
@marks = common dso_local global %struct.TYPE_5__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @load_history to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @load_history() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = load i32, i32* @PATH_MAX, align 4
  %8 = zext i32 %7 to i64
  %9 = call i8* @llvm.stacksave()
  store i8* %9, i8** %2, align 8
  %10 = alloca i8, i64 %8, align 16
  store i64 %8, i64* %3, align 8
  %11 = load i32, i32* @filename, align 4
  %12 = call i32 @realpath(i32 %11, i8* %10)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %0
  store i32 1, i32* %6, align 4
  br label %149

15:                                               ; preds = %0
  %16 = call i32* @js_newstate(i32* null, i32* null, i32 0)
  store i32* %16, i32** %1, align 8
  %17 = load i32*, i32** %1, align 8
  %18 = call i32 @read_history_file_as_json(i32* %17)
  %19 = load i32*, i32** %1, align 8
  %20 = call i64 @js_hasproperty(i32* %19, i32 -1, i8* %10)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %146

22:                                               ; preds = %15
  %23 = load i32*, i32** %1, align 8
  %24 = call i64 @js_hasproperty(i32* %23, i32 -1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %22
  %27 = load i32*, i32** %1, align 8
  %28 = call i8* @try_location(i32* %27)
  store i8* %28, i8** @currentpage, align 8
  %29 = load i32*, i32** %1, align 8
  %30 = call i32 @js_pop(i32* %29, i32 1)
  br label %31

31:                                               ; preds = %26, %22
  %32 = load i32*, i32** %1, align 8
  %33 = call i64 @js_hasproperty(i32* %32, i32 -1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %69

35:                                               ; preds = %31
  %36 = load i32*, i32** %1, align 8
  %37 = call i64 @js_isarray(i32* %36, i32 -1)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %66

39:                                               ; preds = %35
  %40 = load i32*, i32** %1, align 8
  %41 = call i32 @js_getlength(i32* %40, i32 -1)
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** @history, align 8
  %43 = call i32 @nelem(%struct.TYPE_5__* %42)
  %44 = call i32 @fz_clampi(i32 %41, i32 0, i32 %43)
  store i32 %44, i32* @history_count, align 4
  store i32 0, i32* %4, align 4
  br label %45

45:                                               ; preds = %62, %39
  %46 = load i32, i32* %4, align 4
  %47 = load i32, i32* @history_count, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %65

49:                                               ; preds = %45
  %50 = load i32*, i32** %1, align 8
  %51 = load i32, i32* %4, align 4
  %52 = call i32 @js_getindex(i32* %50, i32 -1, i32 %51)
  %53 = load i32*, i32** %1, align 8
  %54 = call i8* @try_location(i32* %53)
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** @history, align 8
  %56 = load i32, i32* %4, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  store i8* %54, i8** %59, align 8
  %60 = load i32*, i32** %1, align 8
  %61 = call i32 @js_pop(i32* %60, i32 1)
  br label %62

62:                                               ; preds = %49
  %63 = load i32, i32* %4, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %4, align 4
  br label %45

65:                                               ; preds = %45
  br label %66

66:                                               ; preds = %65, %35
  %67 = load i32*, i32** %1, align 8
  %68 = call i32 @js_pop(i32* %67, i32 1)
  br label %69

69:                                               ; preds = %66, %31
  %70 = load i32*, i32** %1, align 8
  %71 = call i64 @js_hasproperty(i32* %70, i32 -1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %107

73:                                               ; preds = %69
  %74 = load i32*, i32** %1, align 8
  %75 = call i64 @js_isarray(i32* %74, i32 -1)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %104

77:                                               ; preds = %73
  %78 = load i32*, i32** %1, align 8
  %79 = call i32 @js_getlength(i32* %78, i32 -1)
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** @future, align 8
  %81 = call i32 @nelem(%struct.TYPE_5__* %80)
  %82 = call i32 @fz_clampi(i32 %79, i32 0, i32 %81)
  store i32 %82, i32* @future_count, align 4
  store i32 0, i32* %4, align 4
  br label %83

83:                                               ; preds = %100, %77
  %84 = load i32, i32* %4, align 4
  %85 = load i32, i32* @future_count, align 4
  %86 = icmp slt i32 %84, %85
  br i1 %86, label %87, label %103

87:                                               ; preds = %83
  %88 = load i32*, i32** %1, align 8
  %89 = load i32, i32* %4, align 4
  %90 = call i32 @js_getindex(i32* %88, i32 -1, i32 %89)
  %91 = load i32*, i32** %1, align 8
  %92 = call i8* @try_location(i32* %91)
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** @future, align 8
  %94 = load i32, i32* %4, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 0
  store i8* %92, i8** %97, align 8
  %98 = load i32*, i32** %1, align 8
  %99 = call i32 @js_pop(i32* %98, i32 1)
  br label %100

100:                                              ; preds = %87
  %101 = load i32, i32* %4, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %4, align 4
  br label %83

103:                                              ; preds = %83
  br label %104

104:                                              ; preds = %103, %73
  %105 = load i32*, i32** %1, align 8
  %106 = call i32 @js_pop(i32* %105, i32 1)
  br label %107

107:                                              ; preds = %104, %69
  %108 = load i32*, i32** %1, align 8
  %109 = call i64 @js_hasproperty(i32* %108, i32 -1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %145

111:                                              ; preds = %107
  %112 = load i32*, i32** %1, align 8
  %113 = call i64 @js_isarray(i32* %112, i32 -1)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %142

115:                                              ; preds = %111
  %116 = load i32*, i32** %1, align 8
  %117 = call i32 @js_getlength(i32* %116, i32 -1)
  %118 = load %struct.TYPE_5__*, %struct.TYPE_5__** @marks, align 8
  %119 = call i32 @nelem(%struct.TYPE_5__* %118)
  %120 = call i32 @fz_clampi(i32 %117, i32 0, i32 %119)
  store i32 %120, i32* %5, align 4
  store i32 0, i32* %4, align 4
  br label %121

121:                                              ; preds = %138, %115
  %122 = load i32, i32* %4, align 4
  %123 = load i32, i32* %5, align 4
  %124 = icmp slt i32 %122, %123
  br i1 %124, label %125, label %141

125:                                              ; preds = %121
  %126 = load i32*, i32** %1, align 8
  %127 = load i32, i32* %4, align 4
  %128 = call i32 @js_getindex(i32* %126, i32 -1, i32 %127)
  %129 = load i32*, i32** %1, align 8
  %130 = call i8* @try_location(i32* %129)
  %131 = load %struct.TYPE_5__*, %struct.TYPE_5__** @marks, align 8
  %132 = load i32, i32* %4, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %134, i32 0, i32 0
  store i8* %130, i8** %135, align 8
  %136 = load i32*, i32** %1, align 8
  %137 = call i32 @js_pop(i32* %136, i32 1)
  br label %138

138:                                              ; preds = %125
  %139 = load i32, i32* %4, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %4, align 4
  br label %121

141:                                              ; preds = %121
  br label %142

142:                                              ; preds = %141, %111
  %143 = load i32*, i32** %1, align 8
  %144 = call i32 @js_pop(i32* %143, i32 1)
  br label %145

145:                                              ; preds = %142, %107
  br label %146

146:                                              ; preds = %145, %15
  %147 = load i32*, i32** %1, align 8
  %148 = call i32 @js_freestate(i32* %147)
  store i32 0, i32* %6, align 4
  br label %149

149:                                              ; preds = %146, %14
  %150 = load i8*, i8** %2, align 8
  call void @llvm.stackrestore(i8* %150)
  %151 = load i32, i32* %6, align 4
  switch i32 %151, label %153 [
    i32 0, label %152
    i32 1, label %152
  ]

152:                                              ; preds = %149, %149
  ret void

153:                                              ; preds = %149
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @realpath(i32, i8*) #2

declare dso_local i32* @js_newstate(i32*, i32*, i32) #2

declare dso_local i32 @read_history_file_as_json(i32*) #2

declare dso_local i64 @js_hasproperty(i32*, i32, i8*) #2

declare dso_local i8* @try_location(i32*) #2

declare dso_local i32 @js_pop(i32*, i32) #2

declare dso_local i64 @js_isarray(i32*, i32) #2

declare dso_local i32 @fz_clampi(i32, i32, i32) #2

declare dso_local i32 @js_getlength(i32*, i32) #2

declare dso_local i32 @nelem(%struct.TYPE_5__*) #2

declare dso_local i32 @js_getindex(i32*, i32, i32) #2

declare dso_local i32 @js_freestate(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
