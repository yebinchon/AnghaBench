; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsregexp.c_jsB_new_RegExp.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsregexp.c_jsB_new_RegExp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i32 }

@.str = private unnamed_addr constant [58 x i8] c"cannot supply flags when creating one RegExp from another\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"(?:)\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"invalid regular expression flag: '%c'\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"invalid regular expression flag: 'g'\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"invalid regular expression flag: 'i'\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"invalid regular expression flag: 'm'\00", align 1
@JS_REGEXP_G = common dso_local global i32 0, align 4
@JS_REGEXP_I = common dso_local global i32 0, align 4
@JS_REGEXP_M = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @jsB_new_RegExp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @jsB_new_RegExp(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %10 = load i32*, i32** %2, align 8
  %11 = call i64 @js_isregexp(i32* %10, i32 1)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %29

13:                                               ; preds = %1
  %14 = load i32*, i32** %2, align 8
  %15 = call i64 @js_isdefined(i32* %14, i32 2)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %13
  %18 = load i32*, i32** %2, align 8
  %19 = call i32 @js_typeerror(i32* %18, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0))
  br label %20

20:                                               ; preds = %17, %13
  %21 = load i32*, i32** %2, align 8
  %22 = call %struct.TYPE_3__* @js_toregexp(i32* %21, i32 1)
  store %struct.TYPE_3__* %22, %struct.TYPE_3__** %3, align 8
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  store i8* %25, i8** %4, align 8
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %5, align 4
  br label %38

29:                                               ; preds = %1
  %30 = load i32*, i32** %2, align 8
  %31 = call i64 @js_isundefined(i32* %30, i32 1)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %4, align 8
  store i32 0, i32* %5, align 4
  br label %37

34:                                               ; preds = %29
  %35 = load i32*, i32** %2, align 8
  %36 = call i8* @js_tostring(i32* %35, i32 1)
  store i8* %36, i8** %4, align 8
  store i32 0, i32* %5, align 4
  br label %37

37:                                               ; preds = %34, %33
  br label %38

38:                                               ; preds = %37, %20
  %39 = load i8*, i8** %4, align 8
  %40 = call i64 @strlen(i8* %39)
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %4, align 8
  br label %43

43:                                               ; preds = %42, %38
  %44 = load i32*, i32** %2, align 8
  %45 = call i64 @js_isdefined(i32* %44, i32 2)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %129

47:                                               ; preds = %43
  %48 = load i32*, i32** %2, align 8
  %49 = call i8* @js_tostring(i32* %48, i32 2)
  store i8* %49, i8** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %50

50:                                               ; preds = %86, %47
  %51 = load i8*, i8** %6, align 8
  %52 = load i8, i8* %51, align 1
  %53 = icmp ne i8 %52, 0
  br i1 %53, label %54, label %89

54:                                               ; preds = %50
  %55 = load i8*, i8** %6, align 8
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp eq i32 %57, 103
  br i1 %58, label %59, label %62

59:                                               ; preds = %54
  %60 = load i32, i32* %7, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %7, align 4
  br label %86

62:                                               ; preds = %54
  %63 = load i8*, i8** %6, align 8
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp eq i32 %65, 105
  br i1 %66, label %67, label %70

67:                                               ; preds = %62
  %68 = load i32, i32* %8, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %8, align 4
  br label %85

70:                                               ; preds = %62
  %71 = load i8*, i8** %6, align 8
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp eq i32 %73, 109
  br i1 %74, label %75, label %78

75:                                               ; preds = %70
  %76 = load i32, i32* %9, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %9, align 4
  br label %84

78:                                               ; preds = %70
  %79 = load i32*, i32** %2, align 8
  %80 = load i8*, i8** %6, align 8
  %81 = load i8, i8* %80, align 1
  %82 = sext i8 %81 to i32
  %83 = call i32 (i32*, i8*, ...) @js_syntaxerror(i32* %79, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %82)
  br label %84

84:                                               ; preds = %78, %75
  br label %85

85:                                               ; preds = %84, %67
  br label %86

86:                                               ; preds = %85, %59
  %87 = load i8*, i8** %6, align 8
  %88 = getelementptr inbounds i8, i8* %87, i32 1
  store i8* %88, i8** %6, align 8
  br label %50

89:                                               ; preds = %50
  %90 = load i32, i32* %7, align 4
  %91 = icmp sgt i32 %90, 1
  br i1 %91, label %92, label %95

92:                                               ; preds = %89
  %93 = load i32*, i32** %2, align 8
  %94 = call i32 (i32*, i8*, ...) @js_syntaxerror(i32* %93, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  br label %95

95:                                               ; preds = %92, %89
  %96 = load i32, i32* %8, align 4
  %97 = icmp sgt i32 %96, 1
  br i1 %97, label %98, label %101

98:                                               ; preds = %95
  %99 = load i32*, i32** %2, align 8
  %100 = call i32 (i32*, i8*, ...) @js_syntaxerror(i32* %99, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0))
  br label %101

101:                                              ; preds = %98, %95
  %102 = load i32, i32* %9, align 4
  %103 = icmp sgt i32 %102, 1
  br i1 %103, label %104, label %107

104:                                              ; preds = %101
  %105 = load i32*, i32** %2, align 8
  %106 = call i32 (i32*, i8*, ...) @js_syntaxerror(i32* %105, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0))
  br label %107

107:                                              ; preds = %104, %101
  %108 = load i32, i32* %7, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %114

110:                                              ; preds = %107
  %111 = load i32, i32* @JS_REGEXP_G, align 4
  %112 = load i32, i32* %5, align 4
  %113 = or i32 %112, %111
  store i32 %113, i32* %5, align 4
  br label %114

114:                                              ; preds = %110, %107
  %115 = load i32, i32* %8, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %121

117:                                              ; preds = %114
  %118 = load i32, i32* @JS_REGEXP_I, align 4
  %119 = load i32, i32* %5, align 4
  %120 = or i32 %119, %118
  store i32 %120, i32* %5, align 4
  br label %121

121:                                              ; preds = %117, %114
  %122 = load i32, i32* %9, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %128

124:                                              ; preds = %121
  %125 = load i32, i32* @JS_REGEXP_M, align 4
  %126 = load i32, i32* %5, align 4
  %127 = or i32 %126, %125
  store i32 %127, i32* %5, align 4
  br label %128

128:                                              ; preds = %124, %121
  br label %129

129:                                              ; preds = %128, %43
  %130 = load i32*, i32** %2, align 8
  %131 = load i8*, i8** %4, align 8
  %132 = load i32, i32* %5, align 4
  %133 = call i32 @js_newregexp(i32* %130, i8* %131, i32 %132)
  ret void
}

declare dso_local i64 @js_isregexp(i32*, i32) #1

declare dso_local i64 @js_isdefined(i32*, i32) #1

declare dso_local i32 @js_typeerror(i32*, i8*) #1

declare dso_local %struct.TYPE_3__* @js_toregexp(i32*, i32) #1

declare dso_local i64 @js_isundefined(i32*, i32) #1

declare dso_local i8* @js_tostring(i32*, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @js_syntaxerror(i32*, i8*, ...) #1

declare dso_local i32 @js_newregexp(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
