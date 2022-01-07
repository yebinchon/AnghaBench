; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/html/extr_css-apply.c_add_property.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/html/extr_css-apply.c_add_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i8*, i32, i32* }

@.str = private unnamed_addr constant [7 x i8] c"margin\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"padding\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"border-width\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"border-color\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"border-style\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"border\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"border-top\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"border-right\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"border-bottom\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"border-left\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"list-style\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*, i8*, i32*, i32)* @add_property to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_property(%struct.TYPE_11__* %0, i8* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load i8*, i8** %6, align 8
  %11 = call i32 @strcmp(i8* %10, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %4
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %15 = load i32*, i32** %7, align 8
  %16 = load i32, i32* %8, align 4
  %17 = call i32 @add_shorthand_margin(%struct.TYPE_11__* %14, i32* %15, i32 %16)
  br label %207

18:                                               ; preds = %4
  %19 = load i8*, i8** %6, align 8
  %20 = call i32 @strcmp(i8* %19, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %18
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %24 = load i32*, i32** %7, align 8
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @add_shorthand_padding(%struct.TYPE_11__* %23, i32* %24, i32 %25)
  br label %207

27:                                               ; preds = %18
  %28 = load i8*, i8** %6, align 8
  %29 = call i32 @strcmp(i8* %28, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %27
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %33 = load i32*, i32** %7, align 8
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @add_shorthand_border_width(%struct.TYPE_11__* %32, i32* %33, i32 %34)
  br label %207

36:                                               ; preds = %27
  %37 = load i8*, i8** %6, align 8
  %38 = call i32 @strcmp(i8* %37, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %45, label %40

40:                                               ; preds = %36
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %42 = load i32*, i32** %7, align 8
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @add_shorthand_border_color(%struct.TYPE_11__* %41, i32* %42, i32 %43)
  br label %207

45:                                               ; preds = %36
  %46 = load i8*, i8** %6, align 8
  %47 = call i32 @strcmp(i8* %46, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %54, label %49

49:                                               ; preds = %45
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %51 = load i32*, i32** %7, align 8
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @add_shorthand_border_style(%struct.TYPE_11__* %50, i32* %51, i32 %52)
  br label %207

54:                                               ; preds = %45
  %55 = load i8*, i8** %6, align 8
  %56 = call i32 @strcmp(i8* %55, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %63, label %58

58:                                               ; preds = %54
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %60 = load i32*, i32** %7, align 8
  %61 = load i32, i32* %8, align 4
  %62 = call i32 @add_shorthand_border(%struct.TYPE_11__* %59, i32* %60, i32 %61, i32 1, i32 1, i32 1, i32 1)
  br label %207

63:                                               ; preds = %54
  %64 = load i8*, i8** %6, align 8
  %65 = call i32 @strcmp(i8* %64, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0))
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %72, label %67

67:                                               ; preds = %63
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %69 = load i32*, i32** %7, align 8
  %70 = load i32, i32* %8, align 4
  %71 = call i32 @add_shorthand_border(%struct.TYPE_11__* %68, i32* %69, i32 %70, i32 1, i32 0, i32 0, i32 0)
  br label %207

72:                                               ; preds = %63
  %73 = load i8*, i8** %6, align 8
  %74 = call i32 @strcmp(i8* %73, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0))
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %81, label %76

76:                                               ; preds = %72
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %78 = load i32*, i32** %7, align 8
  %79 = load i32, i32* %8, align 4
  %80 = call i32 @add_shorthand_border(%struct.TYPE_11__* %77, i32* %78, i32 %79, i32 0, i32 1, i32 0, i32 0)
  br label %207

81:                                               ; preds = %72
  %82 = load i8*, i8** %6, align 8
  %83 = call i32 @strcmp(i8* %82, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0))
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %90, label %85

85:                                               ; preds = %81
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %87 = load i32*, i32** %7, align 8
  %88 = load i32, i32* %8, align 4
  %89 = call i32 @add_shorthand_border(%struct.TYPE_11__* %86, i32* %87, i32 %88, i32 0, i32 0, i32 1, i32 0)
  br label %207

90:                                               ; preds = %81
  %91 = load i8*, i8** %6, align 8
  %92 = call i32 @strcmp(i8* %91, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0))
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %99, label %94

94:                                               ; preds = %90
  %95 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %96 = load i32*, i32** %7, align 8
  %97 = load i32, i32* %8, align 4
  %98 = call i32 @add_shorthand_border(%struct.TYPE_11__* %95, i32* %96, i32 %97, i32 0, i32 0, i32 0, i32 1)
  br label %207

99:                                               ; preds = %90
  %100 = load i8*, i8** %6, align 8
  %101 = call i32 @strcmp(i8* %100, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0))
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %108, label %103

103:                                              ; preds = %99
  %104 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %105 = load i32*, i32** %7, align 8
  %106 = load i32, i32* %8, align 4
  %107 = call i32 @add_shorthand_list_style(%struct.TYPE_11__* %104, i32* %105, i32 %106)
  br label %207

108:                                              ; preds = %99
  store i32 0, i32* %9, align 4
  br label %109

109:                                              ; preds = %157, %108
  %110 = load i32, i32* %9, align 4
  %111 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = icmp slt i32 %110, %113
  br i1 %114, label %115, label %160

115:                                              ; preds = %109
  %116 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %116, i32 0, i32 1
  %118 = load %struct.TYPE_12__*, %struct.TYPE_12__** %117, align 8
  %119 = load i32, i32* %9, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %118, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %121, i32 0, i32 0
  %123 = load i8*, i8** %122, align 8
  %124 = load i8*, i8** %6, align 8
  %125 = call i32 @strcmp(i8* %123, i8* %124)
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %156, label %127

127:                                              ; preds = %115
  %128 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %129 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %128, i32 0, i32 1
  %130 = load %struct.TYPE_12__*, %struct.TYPE_12__** %129, align 8
  %131 = load i32, i32* %9, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %130, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 8
  %136 = load i32, i32* %8, align 4
  %137 = icmp sle i32 %135, %136
  br i1 %137, label %138, label %155

138:                                              ; preds = %127
  %139 = load i32*, i32** %7, align 8
  %140 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %141 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %140, i32 0, i32 1
  %142 = load %struct.TYPE_12__*, %struct.TYPE_12__** %141, align 8
  %143 = load i32, i32* %9, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %142, i64 %144
  %146 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %145, i32 0, i32 2
  store i32* %139, i32** %146, align 8
  %147 = load i32, i32* %8, align 4
  %148 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %149 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %148, i32 0, i32 1
  %150 = load %struct.TYPE_12__*, %struct.TYPE_12__** %149, align 8
  %151 = load i32, i32* %9, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %150, i64 %152
  %154 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %153, i32 0, i32 1
  store i32 %147, i32* %154, align 8
  br label %155

155:                                              ; preds = %138, %127
  br label %207

156:                                              ; preds = %115
  br label %157

157:                                              ; preds = %156
  %158 = load i32, i32* %9, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %9, align 4
  br label %109

160:                                              ; preds = %109
  %161 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %162 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = add nsw i32 %163, 1
  %165 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %166 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %165, i32 0, i32 1
  %167 = load %struct.TYPE_12__*, %struct.TYPE_12__** %166, align 8
  %168 = call i64 @nelem(%struct.TYPE_12__* %167)
  %169 = trunc i64 %168 to i32
  %170 = icmp sge i32 %164, %169
  br i1 %170, label %171, label %172

171:                                              ; preds = %160
  br label %207

172:                                              ; preds = %160
  %173 = load i8*, i8** %6, align 8
  %174 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %175 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %174, i32 0, i32 1
  %176 = load %struct.TYPE_12__*, %struct.TYPE_12__** %175, align 8
  %177 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %178 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %176, i64 %180
  %182 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %181, i32 0, i32 0
  store i8* %173, i8** %182, align 8
  %183 = load i32*, i32** %7, align 8
  %184 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %185 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %184, i32 0, i32 1
  %186 = load %struct.TYPE_12__*, %struct.TYPE_12__** %185, align 8
  %187 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %188 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %186, i64 %190
  %192 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %191, i32 0, i32 2
  store i32* %183, i32** %192, align 8
  %193 = load i32, i32* %8, align 4
  %194 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %195 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %194, i32 0, i32 1
  %196 = load %struct.TYPE_12__*, %struct.TYPE_12__** %195, align 8
  %197 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %198 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %196, i64 %200
  %202 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %201, i32 0, i32 1
  store i32 %193, i32* %202, align 8
  %203 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %204 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 8
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* %204, align 8
  br label %207

207:                                              ; preds = %172, %171, %155, %103, %94, %85, %76, %67, %58, %49, %40, %31, %22, %13
  ret void
}

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @add_shorthand_margin(%struct.TYPE_11__*, i32*, i32) #1

declare dso_local i32 @add_shorthand_padding(%struct.TYPE_11__*, i32*, i32) #1

declare dso_local i32 @add_shorthand_border_width(%struct.TYPE_11__*, i32*, i32) #1

declare dso_local i32 @add_shorthand_border_color(%struct.TYPE_11__*, i32*, i32) #1

declare dso_local i32 @add_shorthand_border_style(%struct.TYPE_11__*, i32*, i32) #1

declare dso_local i32 @add_shorthand_border(%struct.TYPE_11__*, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @add_shorthand_list_style(%struct.TYPE_11__*, i32*, i32) #1

declare dso_local i64 @nelem(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
