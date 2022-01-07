; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsparse.c_assignment.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_jsparse.c_assignment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@ASS = common dso_local global i32 0, align 4
@TK_MUL_ASS = common dso_local global i8 0, align 1
@ASS_MUL = common dso_local global i32 0, align 4
@TK_DIV_ASS = common dso_local global i8 0, align 1
@ASS_DIV = common dso_local global i32 0, align 4
@TK_MOD_ASS = common dso_local global i8 0, align 1
@ASS_MOD = common dso_local global i32 0, align 4
@TK_ADD_ASS = common dso_local global i8 0, align 1
@ASS_ADD = common dso_local global i32 0, align 4
@TK_SUB_ASS = common dso_local global i8 0, align 1
@ASS_SUB = common dso_local global i32 0, align 4
@TK_SHL_ASS = common dso_local global i8 0, align 1
@ASS_SHL = common dso_local global i32 0, align 4
@TK_SHR_ASS = common dso_local global i8 0, align 1
@ASS_SHR = common dso_local global i32 0, align 4
@TK_USHR_ASS = common dso_local global i8 0, align 1
@ASS_USHR = common dso_local global i32 0, align 4
@TK_AND_ASS = common dso_local global i8 0, align 1
@ASS_BITAND = common dso_local global i32 0, align 4
@TK_XOR_ASS = common dso_local global i8 0, align 1
@ASS_BITXOR = common dso_local global i32 0, align 4
@TK_OR_ASS = common dso_local global i8 0, align 1
@ASS_BITOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_5__*, i32)* @assignment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @assignment(%struct.TYPE_5__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %8 = load i32, i32* %4, align 4
  %9 = call i32* @conditional(%struct.TYPE_5__* %7, i32 %8)
  store i32* %9, i32** %5, align 8
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %6, align 4
  %13 = call i32 (...) @INCREC()
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %15 = call i64 @jsP_accept(%struct.TYPE_5__* %14, i8 signext 61)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %2
  %18 = load i32, i32* @ASS, align 4
  %19 = load i32*, i32** %5, align 8
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %21 = load i32, i32* %4, align 4
  %22 = call i32* @assignment(%struct.TYPE_5__* %20, i32 %21)
  %23 = call i32* @EXP2(i32 %18, i32* %19, i32* %22)
  store i32* %23, i32** %5, align 8
  br label %167

24:                                               ; preds = %2
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %26 = load i8, i8* @TK_MUL_ASS, align 1
  %27 = call i64 @jsP_accept(%struct.TYPE_5__* %25, i8 signext %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %24
  %30 = load i32, i32* @ASS_MUL, align 4
  %31 = load i32*, i32** %5, align 8
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %33 = load i32, i32* %4, align 4
  %34 = call i32* @assignment(%struct.TYPE_5__* %32, i32 %33)
  %35 = call i32* @EXP2(i32 %30, i32* %31, i32* %34)
  store i32* %35, i32** %5, align 8
  br label %166

36:                                               ; preds = %24
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %38 = load i8, i8* @TK_DIV_ASS, align 1
  %39 = call i64 @jsP_accept(%struct.TYPE_5__* %37, i8 signext %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %36
  %42 = load i32, i32* @ASS_DIV, align 4
  %43 = load i32*, i32** %5, align 8
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %45 = load i32, i32* %4, align 4
  %46 = call i32* @assignment(%struct.TYPE_5__* %44, i32 %45)
  %47 = call i32* @EXP2(i32 %42, i32* %43, i32* %46)
  store i32* %47, i32** %5, align 8
  br label %165

48:                                               ; preds = %36
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %50 = load i8, i8* @TK_MOD_ASS, align 1
  %51 = call i64 @jsP_accept(%struct.TYPE_5__* %49, i8 signext %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %48
  %54 = load i32, i32* @ASS_MOD, align 4
  %55 = load i32*, i32** %5, align 8
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %57 = load i32, i32* %4, align 4
  %58 = call i32* @assignment(%struct.TYPE_5__* %56, i32 %57)
  %59 = call i32* @EXP2(i32 %54, i32* %55, i32* %58)
  store i32* %59, i32** %5, align 8
  br label %164

60:                                               ; preds = %48
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %62 = load i8, i8* @TK_ADD_ASS, align 1
  %63 = call i64 @jsP_accept(%struct.TYPE_5__* %61, i8 signext %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %60
  %66 = load i32, i32* @ASS_ADD, align 4
  %67 = load i32*, i32** %5, align 8
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %69 = load i32, i32* %4, align 4
  %70 = call i32* @assignment(%struct.TYPE_5__* %68, i32 %69)
  %71 = call i32* @EXP2(i32 %66, i32* %67, i32* %70)
  store i32* %71, i32** %5, align 8
  br label %163

72:                                               ; preds = %60
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %74 = load i8, i8* @TK_SUB_ASS, align 1
  %75 = call i64 @jsP_accept(%struct.TYPE_5__* %73, i8 signext %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %84

77:                                               ; preds = %72
  %78 = load i32, i32* @ASS_SUB, align 4
  %79 = load i32*, i32** %5, align 8
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %81 = load i32, i32* %4, align 4
  %82 = call i32* @assignment(%struct.TYPE_5__* %80, i32 %81)
  %83 = call i32* @EXP2(i32 %78, i32* %79, i32* %82)
  store i32* %83, i32** %5, align 8
  br label %162

84:                                               ; preds = %72
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %86 = load i8, i8* @TK_SHL_ASS, align 1
  %87 = call i64 @jsP_accept(%struct.TYPE_5__* %85, i8 signext %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %96

89:                                               ; preds = %84
  %90 = load i32, i32* @ASS_SHL, align 4
  %91 = load i32*, i32** %5, align 8
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %93 = load i32, i32* %4, align 4
  %94 = call i32* @assignment(%struct.TYPE_5__* %92, i32 %93)
  %95 = call i32* @EXP2(i32 %90, i32* %91, i32* %94)
  store i32* %95, i32** %5, align 8
  br label %161

96:                                               ; preds = %84
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %98 = load i8, i8* @TK_SHR_ASS, align 1
  %99 = call i64 @jsP_accept(%struct.TYPE_5__* %97, i8 signext %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %108

101:                                              ; preds = %96
  %102 = load i32, i32* @ASS_SHR, align 4
  %103 = load i32*, i32** %5, align 8
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %105 = load i32, i32* %4, align 4
  %106 = call i32* @assignment(%struct.TYPE_5__* %104, i32 %105)
  %107 = call i32* @EXP2(i32 %102, i32* %103, i32* %106)
  store i32* %107, i32** %5, align 8
  br label %160

108:                                              ; preds = %96
  %109 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %110 = load i8, i8* @TK_USHR_ASS, align 1
  %111 = call i64 @jsP_accept(%struct.TYPE_5__* %109, i8 signext %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %120

113:                                              ; preds = %108
  %114 = load i32, i32* @ASS_USHR, align 4
  %115 = load i32*, i32** %5, align 8
  %116 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %117 = load i32, i32* %4, align 4
  %118 = call i32* @assignment(%struct.TYPE_5__* %116, i32 %117)
  %119 = call i32* @EXP2(i32 %114, i32* %115, i32* %118)
  store i32* %119, i32** %5, align 8
  br label %159

120:                                              ; preds = %108
  %121 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %122 = load i8, i8* @TK_AND_ASS, align 1
  %123 = call i64 @jsP_accept(%struct.TYPE_5__* %121, i8 signext %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %132

125:                                              ; preds = %120
  %126 = load i32, i32* @ASS_BITAND, align 4
  %127 = load i32*, i32** %5, align 8
  %128 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %129 = load i32, i32* %4, align 4
  %130 = call i32* @assignment(%struct.TYPE_5__* %128, i32 %129)
  %131 = call i32* @EXP2(i32 %126, i32* %127, i32* %130)
  store i32* %131, i32** %5, align 8
  br label %158

132:                                              ; preds = %120
  %133 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %134 = load i8, i8* @TK_XOR_ASS, align 1
  %135 = call i64 @jsP_accept(%struct.TYPE_5__* %133, i8 signext %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %144

137:                                              ; preds = %132
  %138 = load i32, i32* @ASS_BITXOR, align 4
  %139 = load i32*, i32** %5, align 8
  %140 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %141 = load i32, i32* %4, align 4
  %142 = call i32* @assignment(%struct.TYPE_5__* %140, i32 %141)
  %143 = call i32* @EXP2(i32 %138, i32* %139, i32* %142)
  store i32* %143, i32** %5, align 8
  br label %157

144:                                              ; preds = %132
  %145 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %146 = load i8, i8* @TK_OR_ASS, align 1
  %147 = call i64 @jsP_accept(%struct.TYPE_5__* %145, i8 signext %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %156

149:                                              ; preds = %144
  %150 = load i32, i32* @ASS_BITOR, align 4
  %151 = load i32*, i32** %5, align 8
  %152 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %153 = load i32, i32* %4, align 4
  %154 = call i32* @assignment(%struct.TYPE_5__* %152, i32 %153)
  %155 = call i32* @EXP2(i32 %150, i32* %151, i32* %154)
  store i32* %155, i32** %5, align 8
  br label %156

156:                                              ; preds = %149, %144
  br label %157

157:                                              ; preds = %156, %137
  br label %158

158:                                              ; preds = %157, %125
  br label %159

159:                                              ; preds = %158, %113
  br label %160

160:                                              ; preds = %159, %101
  br label %161

161:                                              ; preds = %160, %89
  br label %162

162:                                              ; preds = %161, %77
  br label %163

163:                                              ; preds = %162, %65
  br label %164

164:                                              ; preds = %163, %53
  br label %165

165:                                              ; preds = %164, %41
  br label %166

166:                                              ; preds = %165, %29
  br label %167

167:                                              ; preds = %166, %17
  %168 = call i32 (...) @DECREC()
  %169 = load i32*, i32** %5, align 8
  ret i32* %169
}

declare dso_local i32* @conditional(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @INCREC(...) #1

declare dso_local i64 @jsP_accept(%struct.TYPE_5__*, i8 signext) #1

declare dso_local i32* @EXP2(i32, i32*, i32*) #1

declare dso_local i32 @DECREC(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
