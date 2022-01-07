; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jslex.c_lexregexp.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jslex.c_lexregexp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i8, i64, i32 }

@.str = private unnamed_addr constant [34 x i8] c"regular expression not terminated\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"illegal flag in regular expression: %c\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"duplicated flag in regular expression\00", align 1
@JS_REGEXP_G = common dso_local global i64 0, align 8
@JS_REGEXP_I = common dso_local global i64 0, align 8
@JS_REGEXP_M = common dso_local global i64 0, align 8
@TK_REGEXP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*)* @lexregexp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lexregexp(%struct.TYPE_11__* %0) #0 {
  %2 = alloca %struct.TYPE_11__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %2, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %9 = call i32 @textinit(%struct.TYPE_11__* %8)
  br label %10

10:                                               ; preds = %102, %1
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 0
  %13 = load i8, i8* %12, align 8
  %14 = sext i8 %13 to i32
  %15 = icmp ne i32 %14, 47
  br i1 %15, label %19, label %16

16:                                               ; preds = %10
  %17 = load i32, i32* %7, align 4
  %18 = icmp ne i32 %17, 0
  br label %19

19:                                               ; preds = %16, %10
  %20 = phi i1 [ true, %10 ], [ %18, %16 ]
  br i1 %20, label %21, label %103

21:                                               ; preds = %19
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 0
  %24 = load i8, i8* %23, align 8
  %25 = sext i8 %24 to i32
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %33, label %27

27:                                               ; preds = %21
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 0
  %30 = load i8, i8* %29, align 8
  %31 = sext i8 %30 to i32
  %32 = icmp eq i32 %31, 10
  br i1 %32, label %33, label %36

33:                                               ; preds = %27, %21
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %35 = call i32 (%struct.TYPE_11__*, i8*, ...) @jsY_error(%struct.TYPE_11__* %34, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %102

36:                                               ; preds = %27
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %38 = call i64 @jsY_accept(%struct.TYPE_11__* %37, i8 signext 92)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %73

40:                                               ; preds = %36
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %42 = call i64 @jsY_accept(%struct.TYPE_11__* %41, i8 signext 47)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %40
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %46 = call i32 @textpush(%struct.TYPE_11__* %45, i8 signext 47)
  br label %72

47:                                               ; preds = %40
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %49 = call i32 @textpush(%struct.TYPE_11__* %48, i8 signext 92)
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 0
  %52 = load i8, i8* %51, align 8
  %53 = sext i8 %52 to i32
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %61, label %55

55:                                               ; preds = %47
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 0
  %58 = load i8, i8* %57, align 8
  %59 = sext i8 %58 to i32
  %60 = icmp eq i32 %59, 10
  br i1 %60, label %61, label %64

61:                                               ; preds = %55, %47
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %63 = call i32 (%struct.TYPE_11__*, i8*, ...) @jsY_error(%struct.TYPE_11__* %62, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %64

64:                                               ; preds = %61, %55
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 0
  %68 = load i8, i8* %67, align 8
  %69 = call i32 @textpush(%struct.TYPE_11__* %65, i8 signext %68)
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %71 = call i32 @jsY_next(%struct.TYPE_11__* %70)
  br label %72

72:                                               ; preds = %64, %44
  br label %101

73:                                               ; preds = %36
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 0
  %76 = load i8, i8* %75, align 8
  %77 = sext i8 %76 to i32
  %78 = icmp eq i32 %77, 91
  br i1 %78, label %79, label %83

79:                                               ; preds = %73
  %80 = load i32, i32* %7, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %83, label %82

82:                                               ; preds = %79
  store i32 1, i32* %7, align 4
  br label %83

83:                                               ; preds = %82, %79, %73
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 0
  %86 = load i8, i8* %85, align 8
  %87 = sext i8 %86 to i32
  %88 = icmp eq i32 %87, 93
  br i1 %88, label %89, label %93

89:                                               ; preds = %83
  %90 = load i32, i32* %7, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %89
  store i32 0, i32* %7, align 4
  br label %93

93:                                               ; preds = %92, %89, %83
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %95 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 0
  %97 = load i8, i8* %96, align 8
  %98 = call i32 @textpush(%struct.TYPE_11__* %94, i8 signext %97)
  %99 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %100 = call i32 @jsY_next(%struct.TYPE_11__* %99)
  br label %101

101:                                              ; preds = %93, %72
  br label %102

102:                                              ; preds = %101, %33
  br label %10

103:                                              ; preds = %19
  %104 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %105 = call i32 @jsY_expect(%struct.TYPE_11__* %104, i8 signext 47)
  %106 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %107 = call i8* @textend(%struct.TYPE_11__* %106)
  store i8* %107, i8** %3, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %4, align 4
  br label %108

108:                                              ; preds = %144, %103
  %109 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i32 0, i32 0
  %111 = load i8, i8* %110, align 8
  %112 = call i64 @jsY_isidentifierpart(i8 signext %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %145

114:                                              ; preds = %108
  %115 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %116 = call i64 @jsY_accept(%struct.TYPE_11__* %115, i8 signext 103)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %114
  %119 = load i32, i32* %4, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %4, align 4
  br label %144

121:                                              ; preds = %114
  %122 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %123 = call i64 @jsY_accept(%struct.TYPE_11__* %122, i8 signext 105)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %121
  %126 = load i32, i32* %6, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %6, align 4
  br label %143

128:                                              ; preds = %121
  %129 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %130 = call i64 @jsY_accept(%struct.TYPE_11__* %129, i8 signext 109)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %135

132:                                              ; preds = %128
  %133 = load i32, i32* %5, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %5, align 4
  br label %142

135:                                              ; preds = %128
  %136 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %137 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %138 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %137, i32 0, i32 0
  %139 = load i8, i8* %138, align 8
  %140 = sext i8 %139 to i32
  %141 = call i32 (%struct.TYPE_11__*, i8*, ...) @jsY_error(%struct.TYPE_11__* %136, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %140)
  br label %142

142:                                              ; preds = %135, %132
  br label %143

143:                                              ; preds = %142, %125
  br label %144

144:                                              ; preds = %143, %118
  br label %108

145:                                              ; preds = %108
  %146 = load i32, i32* %4, align 4
  %147 = icmp sgt i32 %146, 1
  br i1 %147, label %154, label %148

148:                                              ; preds = %145
  %149 = load i32, i32* %6, align 4
  %150 = icmp sgt i32 %149, 1
  br i1 %150, label %154, label %151

151:                                              ; preds = %148
  %152 = load i32, i32* %5, align 4
  %153 = icmp sgt i32 %152, 1
  br i1 %153, label %154, label %157

154:                                              ; preds = %151, %148, %145
  %155 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %156 = call i32 (%struct.TYPE_11__*, i8*, ...) @jsY_error(%struct.TYPE_11__* %155, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  br label %157

157:                                              ; preds = %154, %151
  %158 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %159 = load i8*, i8** %3, align 8
  %160 = call i32 @js_intern(%struct.TYPE_11__* %158, i8* %159)
  %161 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %162 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %161, i32 0, i32 2
  store i32 %160, i32* %162, align 8
  %163 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %164 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %163, i32 0, i32 1
  store i64 0, i64* %164, align 8
  %165 = load i32, i32* %4, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %173

167:                                              ; preds = %157
  %168 = load i64, i64* @JS_REGEXP_G, align 8
  %169 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %170 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %169, i32 0, i32 1
  %171 = load i64, i64* %170, align 8
  %172 = add nsw i64 %171, %168
  store i64 %172, i64* %170, align 8
  br label %173

173:                                              ; preds = %167, %157
  %174 = load i32, i32* %6, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %182

176:                                              ; preds = %173
  %177 = load i64, i64* @JS_REGEXP_I, align 8
  %178 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %179 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %178, i32 0, i32 1
  %180 = load i64, i64* %179, align 8
  %181 = add nsw i64 %180, %177
  store i64 %181, i64* %179, align 8
  br label %182

182:                                              ; preds = %176, %173
  %183 = load i32, i32* %5, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %191

185:                                              ; preds = %182
  %186 = load i64, i64* @JS_REGEXP_M, align 8
  %187 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %188 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %187, i32 0, i32 1
  %189 = load i64, i64* %188, align 8
  %190 = add nsw i64 %189, %186
  store i64 %190, i64* %188, align 8
  br label %191

191:                                              ; preds = %185, %182
  %192 = load i32, i32* @TK_REGEXP, align 4
  ret i32 %192
}

declare dso_local i32 @textinit(%struct.TYPE_11__*) #1

declare dso_local i32 @jsY_error(%struct.TYPE_11__*, i8*, ...) #1

declare dso_local i64 @jsY_accept(%struct.TYPE_11__*, i8 signext) #1

declare dso_local i32 @textpush(%struct.TYPE_11__*, i8 signext) #1

declare dso_local i32 @jsY_next(%struct.TYPE_11__*) #1

declare dso_local i32 @jsY_expect(%struct.TYPE_11__*, i8 signext) #1

declare dso_local i8* @textend(%struct.TYPE_11__*) #1

declare dso_local i64 @jsY_isidentifierpart(i8 signext) #1

declare dso_local i32 @js_intern(%struct.TYPE_11__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
