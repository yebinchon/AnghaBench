; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jslex.c_lexescape.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jslex.c_lexescape.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"unterminated escape sequence\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*)* @lexescape to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lexescape(%struct.TYPE_7__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %6 = call i64 @jsY_accept(%struct.TYPE_7__* %5, i8 signext 10)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %190

9:                                                ; preds = %1
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %180 [
    i32 0, label %13
    i32 117, label %16
    i32 120, label %90
    i32 48, label %130
    i32 92, label %135
    i32 39, label %140
    i32 34, label %145
    i32 98, label %150
    i32 102, label %155
    i32 110, label %160
    i32 114, label %165
    i32 116, label %170
    i32 118, label %175
  ]

13:                                               ; preds = %9
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %15 = call i32 @jsY_error(%struct.TYPE_7__* %14, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %16

16:                                               ; preds = %9, %13
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %18 = call i32 @jsY_next(%struct.TYPE_7__* %17)
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @jsY_ishex(i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %16
  store i32 1, i32* %2, align 4
  br label %190

25:                                               ; preds = %16
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @jsY_tohex(i32 %28)
  %30 = shl i32 %29, 12
  %31 = load i32, i32* %4, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %4, align 4
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %34 = call i32 @jsY_next(%struct.TYPE_7__* %33)
  br label %35

35:                                               ; preds = %25
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @jsY_ishex(i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %35
  store i32 1, i32* %2, align 4
  br label %190

42:                                               ; preds = %35
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @jsY_tohex(i32 %45)
  %47 = shl i32 %46, 8
  %48 = load i32, i32* %4, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %4, align 4
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %51 = call i32 @jsY_next(%struct.TYPE_7__* %50)
  br label %52

52:                                               ; preds = %42
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @jsY_ishex(i32 %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %52
  store i32 1, i32* %2, align 4
  br label %190

59:                                               ; preds = %52
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @jsY_tohex(i32 %62)
  %64 = shl i32 %63, 4
  %65 = load i32, i32* %4, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %4, align 4
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %68 = call i32 @jsY_next(%struct.TYPE_7__* %67)
  br label %69

69:                                               ; preds = %59
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @jsY_ishex(i32 %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %76, label %75

75:                                               ; preds = %69
  store i32 1, i32* %2, align 4
  br label %190

76:                                               ; preds = %69
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @jsY_tohex(i32 %79)
  %81 = load i32, i32* %4, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %4, align 4
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %84 = call i32 @jsY_next(%struct.TYPE_7__* %83)
  br label %85

85:                                               ; preds = %76
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %87 = load i32, i32* %4, align 4
  %88 = trunc i32 %87 to i8
  %89 = call i32 @textpush(%struct.TYPE_7__* %86, i8 signext %88)
  br label %189

90:                                               ; preds = %9
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %92 = call i32 @jsY_next(%struct.TYPE_7__* %91)
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @jsY_ishex(i32 %95)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %99, label %98

98:                                               ; preds = %90
  store i32 1, i32* %2, align 4
  br label %190

99:                                               ; preds = %90
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @jsY_tohex(i32 %102)
  %104 = shl i32 %103, 4
  %105 = load i32, i32* %4, align 4
  %106 = or i32 %105, %104
  store i32 %106, i32* %4, align 4
  %107 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %108 = call i32 @jsY_next(%struct.TYPE_7__* %107)
  br label %109

109:                                              ; preds = %99
  %110 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @jsY_ishex(i32 %112)
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %116, label %115

115:                                              ; preds = %109
  store i32 1, i32* %2, align 4
  br label %190

116:                                              ; preds = %109
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @jsY_tohex(i32 %119)
  %121 = load i32, i32* %4, align 4
  %122 = or i32 %121, %120
  store i32 %122, i32* %4, align 4
  %123 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %124 = call i32 @jsY_next(%struct.TYPE_7__* %123)
  br label %125

125:                                              ; preds = %116
  %126 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %127 = load i32, i32* %4, align 4
  %128 = trunc i32 %127 to i8
  %129 = call i32 @textpush(%struct.TYPE_7__* %126, i8 signext %128)
  br label %189

130:                                              ; preds = %9
  %131 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %132 = call i32 @textpush(%struct.TYPE_7__* %131, i8 signext 0)
  %133 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %134 = call i32 @jsY_next(%struct.TYPE_7__* %133)
  br label %189

135:                                              ; preds = %9
  %136 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %137 = call i32 @textpush(%struct.TYPE_7__* %136, i8 signext 92)
  %138 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %139 = call i32 @jsY_next(%struct.TYPE_7__* %138)
  br label %189

140:                                              ; preds = %9
  %141 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %142 = call i32 @textpush(%struct.TYPE_7__* %141, i8 signext 39)
  %143 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %144 = call i32 @jsY_next(%struct.TYPE_7__* %143)
  br label %189

145:                                              ; preds = %9
  %146 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %147 = call i32 @textpush(%struct.TYPE_7__* %146, i8 signext 34)
  %148 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %149 = call i32 @jsY_next(%struct.TYPE_7__* %148)
  br label %189

150:                                              ; preds = %9
  %151 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %152 = call i32 @textpush(%struct.TYPE_7__* %151, i8 signext 8)
  %153 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %154 = call i32 @jsY_next(%struct.TYPE_7__* %153)
  br label %189

155:                                              ; preds = %9
  %156 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %157 = call i32 @textpush(%struct.TYPE_7__* %156, i8 signext 12)
  %158 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %159 = call i32 @jsY_next(%struct.TYPE_7__* %158)
  br label %189

160:                                              ; preds = %9
  %161 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %162 = call i32 @textpush(%struct.TYPE_7__* %161, i8 signext 10)
  %163 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %164 = call i32 @jsY_next(%struct.TYPE_7__* %163)
  br label %189

165:                                              ; preds = %9
  %166 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %167 = call i32 @textpush(%struct.TYPE_7__* %166, i8 signext 13)
  %168 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %169 = call i32 @jsY_next(%struct.TYPE_7__* %168)
  br label %189

170:                                              ; preds = %9
  %171 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %172 = call i32 @textpush(%struct.TYPE_7__* %171, i8 signext 9)
  %173 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %174 = call i32 @jsY_next(%struct.TYPE_7__* %173)
  br label %189

175:                                              ; preds = %9
  %176 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %177 = call i32 @textpush(%struct.TYPE_7__* %176, i8 signext 11)
  %178 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %179 = call i32 @jsY_next(%struct.TYPE_7__* %178)
  br label %189

180:                                              ; preds = %9
  %181 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %182 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %183 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = trunc i32 %184 to i8
  %186 = call i32 @textpush(%struct.TYPE_7__* %181, i8 signext %185)
  %187 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %188 = call i32 @jsY_next(%struct.TYPE_7__* %187)
  br label %189

189:                                              ; preds = %180, %175, %170, %165, %160, %155, %150, %145, %140, %135, %130, %125, %85
  store i32 0, i32* %2, align 4
  br label %190

190:                                              ; preds = %189, %115, %98, %75, %58, %41, %24, %8
  %191 = load i32, i32* %2, align 4
  ret i32 %191
}

declare dso_local i64 @jsY_accept(%struct.TYPE_7__*, i8 signext) #1

declare dso_local i32 @jsY_error(%struct.TYPE_7__*, i8*) #1

declare dso_local i32 @jsY_next(%struct.TYPE_7__*) #1

declare dso_local i32 @jsY_ishex(i32) #1

declare dso_local i32 @jsY_tohex(i32) #1

declare dso_local i32 @textpush(%struct.TYPE_7__*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
