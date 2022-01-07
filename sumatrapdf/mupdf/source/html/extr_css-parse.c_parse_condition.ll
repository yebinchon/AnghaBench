; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/html/extr_css-parse.c_parse_condition.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/html/extr_css-parse.c_parse_condition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8, i8* }
%struct.lexbuf = type { i8, i8*, i32, i32 }

@CSS_KEYWORD = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [27 x i8] c"expected keyword after ':'\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"pseudo\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"expected keyword after '.'\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"class\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"expected keyword after '['\00", align 1
@CSS_HASH = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [3 x i8] c"id\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"expected condition\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_4__* (%struct.lexbuf*)* @parse_condition to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_4__* @parse_condition(%struct.lexbuf* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca %struct.lexbuf*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  store %struct.lexbuf* %0, %struct.lexbuf** %3, align 8
  %5 = load %struct.lexbuf*, %struct.lexbuf** %3, align 8
  %6 = call i64 @accept(%struct.lexbuf* %5, i8 signext 58)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %52

8:                                                ; preds = %1
  %9 = load %struct.lexbuf*, %struct.lexbuf** %3, align 8
  %10 = call i64 @accept(%struct.lexbuf* %9, i8 signext 58)
  %11 = load %struct.lexbuf*, %struct.lexbuf** %3, align 8
  %12 = getelementptr inbounds %struct.lexbuf, %struct.lexbuf* %11, i32 0, i32 0
  %13 = load i8, i8* %12, align 8
  %14 = sext i8 %13 to i32
  %15 = load i8, i8* @CSS_KEYWORD, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp ne i32 %14, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %8
  %19 = load %struct.lexbuf*, %struct.lexbuf** %3, align 8
  %20 = call i32 @fz_css_error(%struct.lexbuf* %19, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %21

21:                                               ; preds = %18, %8
  %22 = load %struct.lexbuf*, %struct.lexbuf** %3, align 8
  %23 = getelementptr inbounds %struct.lexbuf, %struct.lexbuf* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.lexbuf*, %struct.lexbuf** %3, align 8
  %26 = getelementptr inbounds %struct.lexbuf, %struct.lexbuf* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.lexbuf*, %struct.lexbuf** %3, align 8
  %29 = getelementptr inbounds %struct.lexbuf, %struct.lexbuf* %28, i32 0, i32 1
  %30 = load i8*, i8** %29, align 8
  %31 = call %struct.TYPE_4__* @fz_new_css_condition(i32 %24, i32 %27, i8 signext 58, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %30)
  store %struct.TYPE_4__* %31, %struct.TYPE_4__** %4, align 8
  %32 = load %struct.lexbuf*, %struct.lexbuf** %3, align 8
  %33 = call i32 @next(%struct.lexbuf* %32)
  %34 = load %struct.lexbuf*, %struct.lexbuf** %3, align 8
  %35 = call i64 @accept(%struct.lexbuf* %34, i8 signext 40)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %50

37:                                               ; preds = %21
  %38 = load %struct.lexbuf*, %struct.lexbuf** %3, align 8
  %39 = call i32 @white(%struct.lexbuf* %38)
  %40 = load %struct.lexbuf*, %struct.lexbuf** %3, align 8
  %41 = load i8, i8* @CSS_KEYWORD, align 1
  %42 = call i64 @accept(%struct.lexbuf* %40, i8 signext %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %37
  %45 = load %struct.lexbuf*, %struct.lexbuf** %3, align 8
  %46 = call i32 @white(%struct.lexbuf* %45)
  br label %47

47:                                               ; preds = %44, %37
  %48 = load %struct.lexbuf*, %struct.lexbuf** %3, align 8
  %49 = call i32 @expect(%struct.lexbuf* %48, i8 signext 41)
  br label %50

50:                                               ; preds = %47, %21
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  store %struct.TYPE_4__* %51, %struct.TYPE_4__** %2, align 8
  br label %179

52:                                               ; preds = %1
  %53 = load %struct.lexbuf*, %struct.lexbuf** %3, align 8
  %54 = call i64 @accept(%struct.lexbuf* %53, i8 signext 46)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %81

56:                                               ; preds = %52
  %57 = load %struct.lexbuf*, %struct.lexbuf** %3, align 8
  %58 = getelementptr inbounds %struct.lexbuf, %struct.lexbuf* %57, i32 0, i32 0
  %59 = load i8, i8* %58, align 8
  %60 = sext i8 %59 to i32
  %61 = load i8, i8* @CSS_KEYWORD, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp ne i32 %60, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %56
  %65 = load %struct.lexbuf*, %struct.lexbuf** %3, align 8
  %66 = call i32 @fz_css_error(%struct.lexbuf* %65, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  br label %67

67:                                               ; preds = %64, %56
  %68 = load %struct.lexbuf*, %struct.lexbuf** %3, align 8
  %69 = getelementptr inbounds %struct.lexbuf, %struct.lexbuf* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.lexbuf*, %struct.lexbuf** %3, align 8
  %72 = getelementptr inbounds %struct.lexbuf, %struct.lexbuf* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.lexbuf*, %struct.lexbuf** %3, align 8
  %75 = getelementptr inbounds %struct.lexbuf, %struct.lexbuf* %74, i32 0, i32 1
  %76 = load i8*, i8** %75, align 8
  %77 = call %struct.TYPE_4__* @fz_new_css_condition(i32 %70, i32 %73, i8 signext 46, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* %76)
  store %struct.TYPE_4__* %77, %struct.TYPE_4__** %4, align 8
  %78 = load %struct.lexbuf*, %struct.lexbuf** %3, align 8
  %79 = call i32 @next(%struct.lexbuf* %78)
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  store %struct.TYPE_4__* %80, %struct.TYPE_4__** %2, align 8
  br label %179

81:                                               ; preds = %52
  %82 = load %struct.lexbuf*, %struct.lexbuf** %3, align 8
  %83 = call i64 @accept(%struct.lexbuf* %82, i8 signext 91)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %155

85:                                               ; preds = %81
  %86 = load %struct.lexbuf*, %struct.lexbuf** %3, align 8
  %87 = call i32 @white(%struct.lexbuf* %86)
  %88 = load %struct.lexbuf*, %struct.lexbuf** %3, align 8
  %89 = getelementptr inbounds %struct.lexbuf, %struct.lexbuf* %88, i32 0, i32 0
  %90 = load i8, i8* %89, align 8
  %91 = sext i8 %90 to i32
  %92 = load i8, i8* @CSS_KEYWORD, align 1
  %93 = sext i8 %92 to i32
  %94 = icmp ne i32 %91, %93
  br i1 %94, label %95, label %98

95:                                               ; preds = %85
  %96 = load %struct.lexbuf*, %struct.lexbuf** %3, align 8
  %97 = call i32 @fz_css_error(%struct.lexbuf* %96, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  br label %98

98:                                               ; preds = %95, %85
  %99 = load %struct.lexbuf*, %struct.lexbuf** %3, align 8
  %100 = getelementptr inbounds %struct.lexbuf, %struct.lexbuf* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.lexbuf*, %struct.lexbuf** %3, align 8
  %103 = getelementptr inbounds %struct.lexbuf, %struct.lexbuf* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.lexbuf*, %struct.lexbuf** %3, align 8
  %106 = getelementptr inbounds %struct.lexbuf, %struct.lexbuf* %105, i32 0, i32 1
  %107 = load i8*, i8** %106, align 8
  %108 = call %struct.TYPE_4__* @fz_new_css_condition(i32 %101, i32 %104, i8 signext 91, i8* %107, i8* null)
  store %struct.TYPE_4__* %108, %struct.TYPE_4__** %4, align 8
  %109 = load %struct.lexbuf*, %struct.lexbuf** %3, align 8
  %110 = call i32 @next(%struct.lexbuf* %109)
  %111 = load %struct.lexbuf*, %struct.lexbuf** %3, align 8
  %112 = call i32 @white(%struct.lexbuf* %111)
  %113 = load %struct.lexbuf*, %struct.lexbuf** %3, align 8
  %114 = call i64 @accept(%struct.lexbuf* %113, i8 signext 61)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %123

116:                                              ; preds = %98
  %117 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 0
  store i8 61, i8* %118, align 8
  %119 = load %struct.lexbuf*, %struct.lexbuf** %3, align 8
  %120 = call i8* @parse_attrib_value(%struct.lexbuf* %119)
  %121 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 1
  store i8* %120, i8** %122, align 8
  br label %151

123:                                              ; preds = %98
  %124 = load %struct.lexbuf*, %struct.lexbuf** %3, align 8
  %125 = call i64 @accept(%struct.lexbuf* %124, i8 signext 124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %136

127:                                              ; preds = %123
  %128 = load %struct.lexbuf*, %struct.lexbuf** %3, align 8
  %129 = call i32 @expect(%struct.lexbuf* %128, i8 signext 61)
  %130 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 0
  store i8 124, i8* %131, align 8
  %132 = load %struct.lexbuf*, %struct.lexbuf** %3, align 8
  %133 = call i8* @parse_attrib_value(%struct.lexbuf* %132)
  %134 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 1
  store i8* %133, i8** %135, align 8
  br label %150

136:                                              ; preds = %123
  %137 = load %struct.lexbuf*, %struct.lexbuf** %3, align 8
  %138 = call i64 @accept(%struct.lexbuf* %137, i8 signext 126)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %149

140:                                              ; preds = %136
  %141 = load %struct.lexbuf*, %struct.lexbuf** %3, align 8
  %142 = call i32 @expect(%struct.lexbuf* %141, i8 signext 61)
  %143 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i32 0, i32 0
  store i8 126, i8* %144, align 8
  %145 = load %struct.lexbuf*, %struct.lexbuf** %3, align 8
  %146 = call i8* @parse_attrib_value(%struct.lexbuf* %145)
  %147 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 1
  store i8* %146, i8** %148, align 8
  br label %149

149:                                              ; preds = %140, %136
  br label %150

150:                                              ; preds = %149, %127
  br label %151

151:                                              ; preds = %150, %116
  %152 = load %struct.lexbuf*, %struct.lexbuf** %3, align 8
  %153 = call i32 @expect(%struct.lexbuf* %152, i8 signext 93)
  %154 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  store %struct.TYPE_4__* %154, %struct.TYPE_4__** %2, align 8
  br label %179

155:                                              ; preds = %81
  %156 = load %struct.lexbuf*, %struct.lexbuf** %3, align 8
  %157 = getelementptr inbounds %struct.lexbuf, %struct.lexbuf* %156, i32 0, i32 0
  %158 = load i8, i8* %157, align 8
  %159 = sext i8 %158 to i64
  %160 = load i64, i64* @CSS_HASH, align 8
  %161 = icmp eq i64 %159, %160
  br i1 %161, label %162, label %176

162:                                              ; preds = %155
  %163 = load %struct.lexbuf*, %struct.lexbuf** %3, align 8
  %164 = getelementptr inbounds %struct.lexbuf, %struct.lexbuf* %163, i32 0, i32 3
  %165 = load i32, i32* %164, align 4
  %166 = load %struct.lexbuf*, %struct.lexbuf** %3, align 8
  %167 = getelementptr inbounds %struct.lexbuf, %struct.lexbuf* %166, i32 0, i32 2
  %168 = load i32, i32* %167, align 8
  %169 = load %struct.lexbuf*, %struct.lexbuf** %3, align 8
  %170 = getelementptr inbounds %struct.lexbuf, %struct.lexbuf* %169, i32 0, i32 1
  %171 = load i8*, i8** %170, align 8
  %172 = call %struct.TYPE_4__* @fz_new_css_condition(i32 %165, i32 %168, i8 signext 35, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* %171)
  store %struct.TYPE_4__* %172, %struct.TYPE_4__** %4, align 8
  %173 = load %struct.lexbuf*, %struct.lexbuf** %3, align 8
  %174 = call i32 @next(%struct.lexbuf* %173)
  %175 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  store %struct.TYPE_4__* %175, %struct.TYPE_4__** %2, align 8
  br label %179

176:                                              ; preds = %155
  %177 = load %struct.lexbuf*, %struct.lexbuf** %3, align 8
  %178 = call i32 @fz_css_error(%struct.lexbuf* %177, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0))
  br label %179

179:                                              ; preds = %176, %162, %151, %67, %50
  %180 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  ret %struct.TYPE_4__* %180
}

declare dso_local i64 @accept(%struct.lexbuf*, i8 signext) #1

declare dso_local i32 @fz_css_error(%struct.lexbuf*, i8*) #1

declare dso_local %struct.TYPE_4__* @fz_new_css_condition(i32, i32, i8 signext, i8*, i8*) #1

declare dso_local i32 @next(%struct.lexbuf*) #1

declare dso_local i32 @white(%struct.lexbuf*) #1

declare dso_local i32 @expect(%struct.lexbuf*, i8 signext) #1

declare dso_local i8* @parse_attrib_value(%struct.lexbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
