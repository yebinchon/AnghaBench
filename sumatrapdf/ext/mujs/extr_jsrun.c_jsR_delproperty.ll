; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsrun.c_jsR_delproperty.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsrun.c_jsR_delproperty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i64 }
%struct.TYPE_22__ = type { i64, %struct.TYPE_19__ }
%struct.TYPE_19__ = type { %struct.TYPE_18__, %struct.TYPE_17__ }
%struct.TYPE_18__ = type { i32, i64 (%struct.TYPE_20__*, i32, i8*)* }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_21__ = type { i32 }

@JS_CARRAY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"length\00", align 1
@JS_CSTRING = common dso_local global i64 0, align 8
@JS_CREGEXP = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"source\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"global\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"ignoreCase\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"multiline\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"lastIndex\00", align 1
@JS_CUSERDATA = common dso_local global i64 0, align 8
@JS_DONTCONF = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [25 x i8] c"'%s' is non-configurable\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_20__*, %struct.TYPE_22__*, i8*)* @jsR_delproperty to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jsR_delproperty(%struct.TYPE_20__* %0, %struct.TYPE_22__* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca %struct.TYPE_22__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_21__*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %5, align 8
  store %struct.TYPE_22__* %1, %struct.TYPE_22__** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %11 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @JS_CARRAY, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %21

15:                                               ; preds = %3
  %16 = load i8*, i8** %7, align 8
  %17 = call i32 @strcmp(i8* %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %15
  br label %137

20:                                               ; preds = %15
  br label %116

21:                                               ; preds = %3
  %22 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @JS_CSTRING, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %51

27:                                               ; preds = %21
  %28 = load i8*, i8** %7, align 8
  %29 = call i32 @strcmp(i8* %28, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %27
  br label %137

32:                                               ; preds = %27
  %33 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %34 = load i8*, i8** %7, align 8
  %35 = call i64 @js_isarrayindex(%struct.TYPE_20__* %33, i8* %34, i32* %9)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %50

37:                                               ; preds = %32
  %38 = load i32, i32* %9, align 4
  %39 = icmp sge i32 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %37
  %41 = load i32, i32* %9, align 4
  %42 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp slt i32 %41, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %40
  br label %137

49:                                               ; preds = %40, %37
  br label %50

50:                                               ; preds = %49, %32
  br label %115

51:                                               ; preds = %21
  %52 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @JS_CREGEXP, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %83

57:                                               ; preds = %51
  %58 = load i8*, i8** %7, align 8
  %59 = call i32 @strcmp(i8* %58, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %57
  br label %137

62:                                               ; preds = %57
  %63 = load i8*, i8** %7, align 8
  %64 = call i32 @strcmp(i8* %63, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %62
  br label %137

67:                                               ; preds = %62
  %68 = load i8*, i8** %7, align 8
  %69 = call i32 @strcmp(i8* %68, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %67
  br label %137

72:                                               ; preds = %67
  %73 = load i8*, i8** %7, align 8
  %74 = call i32 @strcmp(i8* %73, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %77, label %76

76:                                               ; preds = %72
  br label %137

77:                                               ; preds = %72
  %78 = load i8*, i8** %7, align 8
  %79 = call i32 @strcmp(i8* %78, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %82, label %81

81:                                               ; preds = %77
  br label %137

82:                                               ; preds = %77
  br label %114

83:                                               ; preds = %51
  %84 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @JS_CUSERDATA, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %113

89:                                               ; preds = %83
  %90 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %92, i32 0, i32 1
  %94 = load i64 (%struct.TYPE_20__*, i32, i8*)*, i64 (%struct.TYPE_20__*, i32, i8*)** %93, align 8
  %95 = icmp ne i64 (%struct.TYPE_20__*, i32, i8*)* %94, null
  br i1 %95, label %96, label %112

96:                                               ; preds = %89
  %97 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %99, i32 0, i32 1
  %101 = load i64 (%struct.TYPE_20__*, i32, i8*)*, i64 (%struct.TYPE_20__*, i32, i8*)** %100, align 8
  %102 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %103 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load i8*, i8** %7, align 8
  %109 = call i64 %101(%struct.TYPE_20__* %102, i32 %107, i8* %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %96
  store i32 1, i32* %4, align 4
  br label %147

112:                                              ; preds = %96, %89
  br label %113

113:                                              ; preds = %112, %83
  br label %114

114:                                              ; preds = %113, %82
  br label %115

115:                                              ; preds = %114, %50
  br label %116

116:                                              ; preds = %115, %20
  %117 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %118 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %119 = load i8*, i8** %7, align 8
  %120 = call %struct.TYPE_21__* @jsV_getownproperty(%struct.TYPE_20__* %117, %struct.TYPE_22__* %118, i8* %119)
  store %struct.TYPE_21__* %120, %struct.TYPE_21__** %8, align 8
  %121 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %122 = icmp ne %struct.TYPE_21__* %121, null
  br i1 %122, label %123, label %136

123:                                              ; preds = %116
  %124 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %125 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* @JS_DONTCONF, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %123
  br label %137

131:                                              ; preds = %123
  %132 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %133 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %134 = load i8*, i8** %7, align 8
  %135 = call i32 @jsV_delproperty(%struct.TYPE_20__* %132, %struct.TYPE_22__* %133, i8* %134)
  br label %136

136:                                              ; preds = %131, %116
  store i32 1, i32* %4, align 4
  br label %147

137:                                              ; preds = %130, %81, %76, %71, %66, %61, %48, %31, %19
  %138 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %139 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %146

142:                                              ; preds = %137
  %143 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %144 = load i8*, i8** %7, align 8
  %145 = call i32 @js_typeerror(%struct.TYPE_20__* %143, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0), i8* %144)
  br label %146

146:                                              ; preds = %142, %137
  store i32 0, i32* %4, align 4
  br label %147

147:                                              ; preds = %146, %136, %111
  %148 = load i32, i32* %4, align 4
  ret i32 %148
}

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i64 @js_isarrayindex(%struct.TYPE_20__*, i8*, i32*) #1

declare dso_local %struct.TYPE_21__* @jsV_getownproperty(%struct.TYPE_20__*, %struct.TYPE_22__*, i8*) #1

declare dso_local i32 @jsV_delproperty(%struct.TYPE_20__*, %struct.TYPE_22__*, i8*) #1

declare dso_local i32 @js_typeerror(%struct.TYPE_20__*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
