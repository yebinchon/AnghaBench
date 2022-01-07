; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsrun.c_js_call.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsrun.c_js_call.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { i32 }
%struct.TYPE_25__ = type { i64, %struct.TYPE_23__ }
%struct.TYPE_23__ = type { %struct.TYPE_22__, %struct.TYPE_21__ }
%struct.TYPE_22__ = type { i32, i32, i32 }
%struct.TYPE_21__ = type { i32, %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i8*, i32, i32, i64 }

@.str = private unnamed_addr constant [19 x i8] c"%s is not callable\00", align 1
@BOT = common dso_local global i32 0, align 4
@TOP = common dso_local global i32 0, align 4
@JS_CFUNCTION = common dso_local global i64 0, align 8
@JS_CSCRIPT = common dso_local global i64 0, align 8
@JS_CCFUNCTION = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"native\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @js_call(%struct.TYPE_24__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_24__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_25__*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %8 = load i32, i32* %4, align 4
  %9 = sub nsw i32 0, %8
  %10 = sub nsw i32 %9, 2
  %11 = call i32 @js_iscallable(%struct.TYPE_24__* %7, i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %21, label %13

13:                                               ; preds = %2
  %14 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %15 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %16 = load i32, i32* %4, align 4
  %17 = sub nsw i32 0, %16
  %18 = sub nsw i32 %17, 2
  %19 = call i32 @js_typeof(%struct.TYPE_24__* %15, i32 %18)
  %20 = call i32 @js_typeerror(%struct.TYPE_24__* %14, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %19)
  br label %21

21:                                               ; preds = %13, %2
  %22 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %23 = load i32, i32* %4, align 4
  %24 = sub nsw i32 0, %23
  %25 = sub nsw i32 %24, 2
  %26 = call %struct.TYPE_25__* @js_toobject(%struct.TYPE_24__* %22, i32 %25)
  store %struct.TYPE_25__* %26, %struct.TYPE_25__** %5, align 8
  %27 = load i32, i32* @BOT, align 4
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* @TOP, align 4
  %29 = load i32, i32* %4, align 4
  %30 = sub nsw i32 %28, %29
  %31 = sub nsw i32 %30, 1
  store i32 %31, i32* @BOT, align 4
  %32 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @JS_CFUNCTION, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %102

37:                                               ; preds = %21
  %38 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %39 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %41, i32 0, i32 1
  %43 = load %struct.TYPE_20__*, %struct.TYPE_20__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %48, i32 0, i32 1
  %50 = load %struct.TYPE_20__*, %struct.TYPE_20__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %50, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  %53 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %55, i32 0, i32 1
  %57 = load %struct.TYPE_20__*, %struct.TYPE_20__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @jsR_pushtrace(%struct.TYPE_24__* %38, i32 %45, i8* %52, i32 %59)
  %61 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %63, i32 0, i32 1
  %65 = load %struct.TYPE_20__*, %struct.TYPE_20__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %65, i32 0, i32 3
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %83

69:                                               ; preds = %37
  %70 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %71 = load i32, i32* %4, align 4
  %72 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %74, i32 0, i32 1
  %76 = load %struct.TYPE_20__*, %struct.TYPE_20__** %75, align 8
  %77 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @jsR_calllwfunction(%struct.TYPE_24__* %70, i32 %71, %struct.TYPE_20__* %76, i32 %81)
  br label %97

83:                                               ; preds = %37
  %84 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %85 = load i32, i32* %4, align 4
  %86 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %88, i32 0, i32 1
  %90 = load %struct.TYPE_20__*, %struct.TYPE_20__** %89, align 8
  %91 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @jsR_callfunction(%struct.TYPE_24__* %84, i32 %85, %struct.TYPE_20__* %90, i32 %95)
  br label %97

97:                                               ; preds = %83, %69
  %98 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = add nsw i32 %100, -1
  store i32 %101, i32* %99, align 4
  br label %182

102:                                              ; preds = %21
  %103 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @JS_CSCRIPT, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %108, label %149

108:                                              ; preds = %102
  %109 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %110 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %112, i32 0, i32 1
  %114 = load %struct.TYPE_20__*, %struct.TYPE_20__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %118 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %119, i32 0, i32 1
  %121 = load %struct.TYPE_20__*, %struct.TYPE_20__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %121, i32 0, i32 0
  %123 = load i8*, i8** %122, align 8
  %124 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %126, i32 0, i32 1
  %128 = load %struct.TYPE_20__*, %struct.TYPE_20__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 8
  %131 = call i32 @jsR_pushtrace(%struct.TYPE_24__* %109, i32 %116, i8* %123, i32 %130)
  %132 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %133 = load i32, i32* %4, align 4
  %134 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %135 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %136, i32 0, i32 1
  %138 = load %struct.TYPE_20__*, %struct.TYPE_20__** %137, align 8
  %139 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %140 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = call i32 @jsR_callscript(%struct.TYPE_24__* %132, i32 %133, %struct.TYPE_20__* %138, i32 %143)
  %145 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %146 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = add nsw i32 %147, -1
  store i32 %148, i32* %146, align 4
  br label %181

149:                                              ; preds = %102
  %150 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %151 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = load i64, i64* @JS_CCFUNCTION, align 8
  %154 = icmp eq i64 %152, %153
  br i1 %154, label %155, label %180

155:                                              ; preds = %149
  %156 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %157 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %158 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %157, i32 0, i32 1
  %159 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 8
  %162 = call i32 @jsR_pushtrace(%struct.TYPE_24__* %156, i32 %161, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 0)
  %163 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %164 = load i32, i32* %4, align 4
  %165 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %166 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %165, i32 0, i32 1
  %167 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %171 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %170, i32 0, i32 1
  %172 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = call i32 @jsR_callcfunction(%struct.TYPE_24__* %163, i32 %164, i32 %169, i32 %174)
  %176 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %177 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = add nsw i32 %178, -1
  store i32 %179, i32* %177, align 4
  br label %180

180:                                              ; preds = %155, %149
  br label %181

181:                                              ; preds = %180, %108
  br label %182

182:                                              ; preds = %181, %97
  %183 = load i32, i32* %6, align 4
  store i32 %183, i32* @BOT, align 4
  ret void
}

declare dso_local i32 @js_iscallable(%struct.TYPE_24__*, i32) #1

declare dso_local i32 @js_typeerror(%struct.TYPE_24__*, i8*, i32) #1

declare dso_local i32 @js_typeof(%struct.TYPE_24__*, i32) #1

declare dso_local %struct.TYPE_25__* @js_toobject(%struct.TYPE_24__*, i32) #1

declare dso_local i32 @jsR_pushtrace(%struct.TYPE_24__*, i32, i8*, i32) #1

declare dso_local i32 @jsR_calllwfunction(%struct.TYPE_24__*, i32, %struct.TYPE_20__*, i32) #1

declare dso_local i32 @jsR_callfunction(%struct.TYPE_24__*, i32, %struct.TYPE_20__*, i32) #1

declare dso_local i32 @jsR_callscript(%struct.TYPE_24__*, i32, %struct.TYPE_20__*, i32) #1

declare dso_local i32 @jsR_callcfunction(%struct.TYPE_24__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
