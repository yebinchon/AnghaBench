; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/html/extr_css-apply.c_match_selector.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/html/extr_css-apply.c_match_selector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8, i64, i64, %struct.TYPE_3__*, %struct.TYPE_3__* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32*)* @match_selector to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @match_selector(%struct.TYPE_3__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load i32*, i32** %5, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %156

12:                                               ; preds = %2
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i8, i8* %14, align 8
  %16 = icmp ne i8 %15, 0
  br i1 %16, label %17, label %127

17:                                               ; preds = %12
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i8, i8* %19, align 8
  %21 = sext i8 %20 to i32
  %22 = icmp eq i32 %21, 32
  br i1 %22, label %23, label %49

23:                                               ; preds = %17
  %24 = load i32*, i32** %5, align 8
  %25 = call i32* @fz_xml_up(i32* %24)
  store i32* %25, i32** %6, align 8
  br label %26

26:                                               ; preds = %45, %23
  %27 = load i32*, i32** %6, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %48

29:                                               ; preds = %26
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 4
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = load i32*, i32** %6, align 8
  %34 = call i32 @match_selector(%struct.TYPE_3__* %32, i32* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %29
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 3
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = load i32*, i32** %5, align 8
  %41 = call i32 @match_selector(%struct.TYPE_3__* %39, i32* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %36
  store i32 1, i32* %3, align 4
  br label %156

44:                                               ; preds = %36
  br label %45

45:                                               ; preds = %44, %29
  %46 = load i32*, i32** %6, align 8
  %47 = call i32* @fz_xml_up(i32* %46)
  store i32* %47, i32** %6, align 8
  br label %26

48:                                               ; preds = %26
  store i32 0, i32* %3, align 4
  br label %156

49:                                               ; preds = %17
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i8, i8* %51, align 8
  %53 = sext i8 %52 to i32
  %54 = icmp eq i32 %53, 62
  br i1 %54, label %55, label %78

55:                                               ; preds = %49
  %56 = load i32*, i32** %5, align 8
  %57 = call i32* @fz_xml_up(i32* %56)
  store i32* %57, i32** %7, align 8
  %58 = load i32*, i32** %7, align 8
  %59 = icmp ne i32* %58, null
  br i1 %59, label %61, label %60

60:                                               ; preds = %55
  store i32 0, i32* %3, align 4
  br label %156

61:                                               ; preds = %55
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 4
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %63, align 8
  %65 = load i32*, i32** %7, align 8
  %66 = call i32 @match_selector(%struct.TYPE_3__* %64, i32* %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %61
  store i32 0, i32* %3, align 4
  br label %156

69:                                               ; preds = %61
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 3
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %71, align 8
  %73 = load i32*, i32** %5, align 8
  %74 = call i32 @match_selector(%struct.TYPE_3__* %72, i32* %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %77, label %76

76:                                               ; preds = %69
  store i32 0, i32* %3, align 4
  br label %156

77:                                               ; preds = %69
  br label %78

78:                                               ; preds = %77, %49
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 0
  %81 = load i8, i8* %80, align 8
  %82 = sext i8 %81 to i32
  %83 = icmp eq i32 %82, 43
  br i1 %83, label %84, label %126

84:                                               ; preds = %78
  %85 = load i32*, i32** %5, align 8
  %86 = call i32* @fz_xml_prev(i32* %85)
  store i32* %86, i32** %8, align 8
  br label %87

87:                                               ; preds = %97, %84
  %88 = load i32*, i32** %8, align 8
  %89 = icmp ne i32* %88, null
  br i1 %89, label %90, label %95

90:                                               ; preds = %87
  %91 = load i32*, i32** %8, align 8
  %92 = call i32 @fz_xml_tag(i32* %91)
  %93 = icmp ne i32 %92, 0
  %94 = xor i1 %93, true
  br label %95

95:                                               ; preds = %90, %87
  %96 = phi i1 [ false, %87 ], [ %94, %90 ]
  br i1 %96, label %97, label %100

97:                                               ; preds = %95
  %98 = load i32*, i32** %8, align 8
  %99 = call i32* @fz_xml_prev(i32* %98)
  store i32* %99, i32** %8, align 8
  br label %87

100:                                              ; preds = %95
  %101 = load i32*, i32** %8, align 8
  %102 = icmp ne i32* %101, null
  br i1 %102, label %104, label %103

103:                                              ; preds = %100
  store i32 0, i32* %3, align 4
  br label %156

104:                                              ; preds = %100
  %105 = load i32*, i32** %8, align 8
  %106 = call i32 @fz_xml_tag(i32* %105)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %109, label %108

108:                                              ; preds = %104
  store i32 0, i32* %3, align 4
  br label %156

109:                                              ; preds = %104
  %110 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 4
  %112 = load %struct.TYPE_3__*, %struct.TYPE_3__** %111, align 8
  %113 = load i32*, i32** %8, align 8
  %114 = call i32 @match_selector(%struct.TYPE_3__* %112, i32* %113)
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %117, label %116

116:                                              ; preds = %109
  store i32 0, i32* %3, align 4
  br label %156

117:                                              ; preds = %109
  %118 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 3
  %120 = load %struct.TYPE_3__*, %struct.TYPE_3__** %119, align 8
  %121 = load i32*, i32** %5, align 8
  %122 = call i32 @match_selector(%struct.TYPE_3__* %120, i32* %121)
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %125, label %124

124:                                              ; preds = %117
  store i32 0, i32* %3, align 4
  br label %156

125:                                              ; preds = %117
  br label %126

126:                                              ; preds = %125, %78
  br label %127

127:                                              ; preds = %126, %12
  %128 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %128, i32 0, i32 2
  %130 = load i64, i64* %129, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %141

132:                                              ; preds = %127
  %133 = load i32*, i32** %5, align 8
  %134 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %134, i32 0, i32 2
  %136 = load i64, i64* %135, align 8
  %137 = call i32 @fz_xml_is_tag(i32* %133, i64 %136)
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %140, label %139

139:                                              ; preds = %132
  store i32 0, i32* %3, align 4
  br label %156

140:                                              ; preds = %132
  br label %141

141:                                              ; preds = %140, %127
  %142 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %143 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %142, i32 0, i32 1
  %144 = load i64, i64* %143, align 8
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %155

146:                                              ; preds = %141
  %147 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %148 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %147, i32 0, i32 1
  %149 = load i64, i64* %148, align 8
  %150 = load i32*, i32** %5, align 8
  %151 = call i32 @match_condition(i64 %149, i32* %150)
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %154, label %153

153:                                              ; preds = %146
  store i32 0, i32* %3, align 4
  br label %156

154:                                              ; preds = %146
  br label %155

155:                                              ; preds = %154, %141
  store i32 1, i32* %3, align 4
  br label %156

156:                                              ; preds = %155, %153, %139, %124, %116, %108, %103, %76, %68, %60, %48, %43, %11
  %157 = load i32, i32* %3, align 4
  ret i32 %157
}

declare dso_local i32* @fz_xml_up(i32*) #1

declare dso_local i32* @fz_xml_prev(i32*) #1

declare dso_local i32 @fz_xml_tag(i32*) #1

declare dso_local i32 @fz_xml_is_tag(i32*, i64) #1

declare dso_local i32 @match_condition(i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
