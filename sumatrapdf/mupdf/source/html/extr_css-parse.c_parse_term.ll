; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/html/extr_css-parse.c_parse_term.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/html/extr_css-parse.c_parse_term.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, i8, i32 }
%struct.lexbuf = type { i8, i32, i32, i32 }

@.str = private unnamed_addr constant [16 x i8] c"expected number\00", align 1
@CSS_KEYWORD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"expected value\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_5__* (%struct.lexbuf*)* @parse_term to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_5__* @parse_term(%struct.lexbuf* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca %struct.lexbuf*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca float, align 4
  store %struct.lexbuf* %0, %struct.lexbuf** %3, align 8
  %6 = load %struct.lexbuf*, %struct.lexbuf** %3, align 8
  %7 = getelementptr inbounds %struct.lexbuf, %struct.lexbuf* %6, i32 0, i32 0
  %8 = load i8, i8* %7, align 4
  %9 = sext i8 %8 to i32
  %10 = icmp eq i32 %9, 43
  br i1 %10, label %17, label %11

11:                                               ; preds = %1
  %12 = load %struct.lexbuf*, %struct.lexbuf** %3, align 8
  %13 = getelementptr inbounds %struct.lexbuf, %struct.lexbuf* %12, i32 0, i32 0
  %14 = load i8, i8* %13, align 4
  %15 = sext i8 %14 to i32
  %16 = icmp eq i32 %15, 45
  br i1 %16, label %17, label %111

17:                                               ; preds = %11, %1
  %18 = load %struct.lexbuf*, %struct.lexbuf** %3, align 8
  %19 = getelementptr inbounds %struct.lexbuf, %struct.lexbuf* %18, i32 0, i32 0
  %20 = load i8, i8* %19, align 4
  %21 = sext i8 %20 to i32
  %22 = icmp eq i32 %21, 45
  %23 = zext i1 %22 to i64
  %24 = select i1 %22, i32 -1, i32 1
  %25 = sitofp i32 %24 to float
  store float %25, float* %5, align 4
  %26 = load %struct.lexbuf*, %struct.lexbuf** %3, align 8
  %27 = call i32 @next(%struct.lexbuf* %26)
  %28 = load %struct.lexbuf*, %struct.lexbuf** %3, align 8
  %29 = getelementptr inbounds %struct.lexbuf, %struct.lexbuf* %28, i32 0, i32 0
  %30 = load i8, i8* %29, align 4
  %31 = sext i8 %30 to i32
  %32 = icmp ne i32 %31, 131
  br i1 %32, label %33, label %48

33:                                               ; preds = %17
  %34 = load %struct.lexbuf*, %struct.lexbuf** %3, align 8
  %35 = getelementptr inbounds %struct.lexbuf, %struct.lexbuf* %34, i32 0, i32 0
  %36 = load i8, i8* %35, align 4
  %37 = sext i8 %36 to i32
  %38 = icmp ne i32 %37, 132
  br i1 %38, label %39, label %48

39:                                               ; preds = %33
  %40 = load %struct.lexbuf*, %struct.lexbuf** %3, align 8
  %41 = getelementptr inbounds %struct.lexbuf, %struct.lexbuf* %40, i32 0, i32 0
  %42 = load i8, i8* %41, align 4
  %43 = sext i8 %42 to i32
  %44 = icmp ne i32 %43, 130
  br i1 %44, label %45, label %48

45:                                               ; preds = %39
  %46 = load %struct.lexbuf*, %struct.lexbuf** %3, align 8
  %47 = call i32 @fz_css_error(%struct.lexbuf* %46, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %48

48:                                               ; preds = %45, %39, %33, %17
  %49 = load float, float* %5, align 4
  %50 = fcmp olt float %49, 0.000000e+00
  br i1 %50, label %51, label %90

51:                                               ; preds = %48
  %52 = load %struct.lexbuf*, %struct.lexbuf** %3, align 8
  %53 = getelementptr inbounds %struct.lexbuf, %struct.lexbuf* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.lexbuf*, %struct.lexbuf** %3, align 8
  %56 = getelementptr inbounds %struct.lexbuf, %struct.lexbuf* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.lexbuf*, %struct.lexbuf** %3, align 8
  %59 = getelementptr inbounds %struct.lexbuf, %struct.lexbuf* %58, i32 0, i32 0
  %60 = load i8, i8* %59, align 4
  %61 = sext i8 %60 to i32
  %62 = call %struct.TYPE_5__* @fz_new_css_value_x(i32 %54, i32 %57, i32 %61)
  store %struct.TYPE_5__* %62, %struct.TYPE_5__** %4, align 8
  %63 = load %struct.lexbuf*, %struct.lexbuf** %3, align 8
  %64 = getelementptr inbounds %struct.lexbuf, %struct.lexbuf* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.lexbuf*, %struct.lexbuf** %3, align 8
  %67 = getelementptr inbounds %struct.lexbuf, %struct.lexbuf* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.lexbuf*, %struct.lexbuf** %3, align 8
  %70 = getelementptr inbounds %struct.lexbuf, %struct.lexbuf* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i64 @strlen(i32 %71)
  %73 = add nsw i64 %72, 2
  %74 = call i8* @fz_pool_alloc(i32 %65, i32 %68, i64 %73)
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  store i8* %74, i8** %76, align 8
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  %79 = load i8*, i8** %78, align 8
  %80 = getelementptr inbounds i8, i8* %79, i64 0
  store i8 45, i8* %80, align 1
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 0
  %83 = load i8*, i8** %82, align 8
  %84 = getelementptr inbounds i8, i8* %83, i64 1
  %85 = ptrtoint i8* %84 to i32
  %86 = load %struct.lexbuf*, %struct.lexbuf** %3, align 8
  %87 = getelementptr inbounds %struct.lexbuf, %struct.lexbuf* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @strcpy(i32 %85, i32 %88)
  br label %105

90:                                               ; preds = %48
  %91 = load %struct.lexbuf*, %struct.lexbuf** %3, align 8
  %92 = getelementptr inbounds %struct.lexbuf, %struct.lexbuf* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.lexbuf*, %struct.lexbuf** %3, align 8
  %95 = getelementptr inbounds %struct.lexbuf, %struct.lexbuf* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.lexbuf*, %struct.lexbuf** %3, align 8
  %98 = getelementptr inbounds %struct.lexbuf, %struct.lexbuf* %97, i32 0, i32 0
  %99 = load i8, i8* %98, align 4
  %100 = sext i8 %99 to i32
  %101 = load %struct.lexbuf*, %struct.lexbuf** %3, align 8
  %102 = getelementptr inbounds %struct.lexbuf, %struct.lexbuf* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = call %struct.TYPE_5__* @fz_new_css_value(i32 %93, i32 %96, i32 %100, i32 %103)
  store %struct.TYPE_5__* %104, %struct.TYPE_5__** %4, align 8
  br label %105

105:                                              ; preds = %90, %51
  %106 = load %struct.lexbuf*, %struct.lexbuf** %3, align 8
  %107 = call i32 @next(%struct.lexbuf* %106)
  %108 = load %struct.lexbuf*, %struct.lexbuf** %3, align 8
  %109 = call i32 @white(%struct.lexbuf* %108)
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  store %struct.TYPE_5__* %110, %struct.TYPE_5__** %2, align 8
  br label %178

111:                                              ; preds = %11
  %112 = load %struct.lexbuf*, %struct.lexbuf** %3, align 8
  %113 = getelementptr inbounds %struct.lexbuf, %struct.lexbuf* %112, i32 0, i32 0
  %114 = load i8, i8* %113, align 4
  %115 = sext i8 %114 to i32
  %116 = load i32, i32* @CSS_KEYWORD, align 4
  %117 = icmp eq i32 %115, %116
  br i1 %117, label %118, label %150

118:                                              ; preds = %111
  %119 = load %struct.lexbuf*, %struct.lexbuf** %3, align 8
  %120 = getelementptr inbounds %struct.lexbuf, %struct.lexbuf* %119, i32 0, i32 3
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.lexbuf*, %struct.lexbuf** %3, align 8
  %123 = getelementptr inbounds %struct.lexbuf, %struct.lexbuf* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* @CSS_KEYWORD, align 4
  %126 = load %struct.lexbuf*, %struct.lexbuf** %3, align 8
  %127 = getelementptr inbounds %struct.lexbuf, %struct.lexbuf* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = call %struct.TYPE_5__* @fz_new_css_value(i32 %121, i32 %124, i32 %125, i32 %128)
  store %struct.TYPE_5__* %129, %struct.TYPE_5__** %4, align 8
  %130 = load %struct.lexbuf*, %struct.lexbuf** %3, align 8
  %131 = call i32 @next(%struct.lexbuf* %130)
  %132 = load %struct.lexbuf*, %struct.lexbuf** %3, align 8
  %133 = call i64 @accept(%struct.lexbuf* %132, i8 signext 40)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %146

135:                                              ; preds = %118
  %136 = load %struct.lexbuf*, %struct.lexbuf** %3, align 8
  %137 = call i32 @white(%struct.lexbuf* %136)
  %138 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %138, i32 0, i32 1
  store i8 40, i8* %139, align 8
  %140 = load %struct.lexbuf*, %struct.lexbuf** %3, align 8
  %141 = call i32 @parse_expr(%struct.lexbuf* %140)
  %142 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %143 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %142, i32 0, i32 2
  store i32 %141, i32* %143, align 4
  %144 = load %struct.lexbuf*, %struct.lexbuf** %3, align 8
  %145 = call i32 @expect(%struct.lexbuf* %144, i8 signext 41)
  br label %146

146:                                              ; preds = %135, %118
  %147 = load %struct.lexbuf*, %struct.lexbuf** %3, align 8
  %148 = call i32 @white(%struct.lexbuf* %147)
  %149 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  store %struct.TYPE_5__* %149, %struct.TYPE_5__** %2, align 8
  br label %178

150:                                              ; preds = %111
  %151 = load %struct.lexbuf*, %struct.lexbuf** %3, align 8
  %152 = getelementptr inbounds %struct.lexbuf, %struct.lexbuf* %151, i32 0, i32 0
  %153 = load i8, i8* %152, align 4
  %154 = sext i8 %153 to i32
  switch i32 %154, label %175 [
    i32 133, label %155
    i32 129, label %155
    i32 128, label %155
    i32 131, label %155
    i32 132, label %155
    i32 130, label %155
  ]

155:                                              ; preds = %150, %150, %150, %150, %150, %150
  %156 = load %struct.lexbuf*, %struct.lexbuf** %3, align 8
  %157 = getelementptr inbounds %struct.lexbuf, %struct.lexbuf* %156, i32 0, i32 3
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.lexbuf*, %struct.lexbuf** %3, align 8
  %160 = getelementptr inbounds %struct.lexbuf, %struct.lexbuf* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.lexbuf*, %struct.lexbuf** %3, align 8
  %163 = getelementptr inbounds %struct.lexbuf, %struct.lexbuf* %162, i32 0, i32 0
  %164 = load i8, i8* %163, align 4
  %165 = sext i8 %164 to i32
  %166 = load %struct.lexbuf*, %struct.lexbuf** %3, align 8
  %167 = getelementptr inbounds %struct.lexbuf, %struct.lexbuf* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = call %struct.TYPE_5__* @fz_new_css_value(i32 %158, i32 %161, i32 %165, i32 %168)
  store %struct.TYPE_5__* %169, %struct.TYPE_5__** %4, align 8
  %170 = load %struct.lexbuf*, %struct.lexbuf** %3, align 8
  %171 = call i32 @next(%struct.lexbuf* %170)
  %172 = load %struct.lexbuf*, %struct.lexbuf** %3, align 8
  %173 = call i32 @white(%struct.lexbuf* %172)
  %174 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  store %struct.TYPE_5__* %174, %struct.TYPE_5__** %2, align 8
  br label %178

175:                                              ; preds = %150
  %176 = load %struct.lexbuf*, %struct.lexbuf** %3, align 8
  %177 = call i32 @fz_css_error(%struct.lexbuf* %176, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  br label %178

178:                                              ; preds = %175, %155, %146, %105
  %179 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  ret %struct.TYPE_5__* %179
}

declare dso_local i32 @next(%struct.lexbuf*) #1

declare dso_local i32 @fz_css_error(%struct.lexbuf*, i8*) #1

declare dso_local %struct.TYPE_5__* @fz_new_css_value_x(i32, i32, i32) #1

declare dso_local i8* @fz_pool_alloc(i32, i32, i64) #1

declare dso_local i64 @strlen(i32) #1

declare dso_local i32 @strcpy(i32, i32) #1

declare dso_local %struct.TYPE_5__* @fz_new_css_value(i32, i32, i32, i32) #1

declare dso_local i32 @white(%struct.lexbuf*) #1

declare dso_local i64 @accept(%struct.lexbuf*, i8 signext) #1

declare dso_local i32 @parse_expr(%struct.lexbuf*) #1

declare dso_local i32 @expect(%struct.lexbuf*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
