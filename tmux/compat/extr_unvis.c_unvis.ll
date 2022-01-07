; ModuleID = '/home/carl/AnghaBench/tmux/compat/extr_unvis.c_unvis.c'
source_filename = "/home/carl/AnghaBench/tmux/compat/extr_unvis.c_unvis.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@UNVIS_END = common dso_local global i32 0, align 4
@UNVIS_VALID = common dso_local global i32 0, align 4
@UNVIS_NOCHAR = common dso_local global i32 0, align 4
@UNVIS_SYNBAD = common dso_local global i32 0, align 4
@UNVIS_VALIDPUSH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @unvis(i8* %0, i8 signext %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8 %1, i8* %7, align 1
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @UNVIS_END, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %35

14:                                               ; preds = %4
  %15 = load i32*, i32** %8, align 8
  %16 = load i32, i32* %15, align 4
  %17 = icmp eq i32 %16, 130
  br i1 %17, label %22, label %18

18:                                               ; preds = %14
  %19 = load i32*, i32** %8, align 8
  %20 = load i32, i32* %19, align 4
  %21 = icmp eq i32 %20, 129
  br i1 %21, label %22, label %25

22:                                               ; preds = %18, %14
  %23 = load i32*, i32** %8, align 8
  store i32 133, i32* %23, align 4
  %24 = load i32, i32* @UNVIS_VALID, align 4
  store i32 %24, i32* %5, align 4
  br label %204

25:                                               ; preds = %18
  %26 = load i32*, i32** %8, align 8
  %27 = load i32, i32* %26, align 4
  %28 = icmp eq i32 %27, 133
  br i1 %28, label %29, label %31

29:                                               ; preds = %25
  %30 = load i32, i32* @UNVIS_NOCHAR, align 4
  br label %33

31:                                               ; preds = %25
  %32 = load i32, i32* @UNVIS_SYNBAD, align 4
  br label %33

33:                                               ; preds = %31, %29
  %34 = phi i32 [ %30, %29 ], [ %32, %31 ]
  store i32 %34, i32* %5, align 4
  br label %204

35:                                               ; preds = %4
  %36 = load i32*, i32** %8, align 8
  %37 = load i32, i32* %36, align 4
  switch i32 %37, label %201 [
    i32 133, label %38
    i32 128, label %49
    i32 132, label %114
    i32 131, label %131
    i32 134, label %141
    i32 130, label %163
    i32 129, label %182
  ]

38:                                               ; preds = %35
  %39 = load i8*, i8** %6, align 8
  store i8 0, i8* %39, align 1
  %40 = load i8, i8* %7, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp eq i32 %41, 92
  br i1 %42, label %43, label %45

43:                                               ; preds = %38
  %44 = load i32*, i32** %8, align 8
  store i32 128, i32* %44, align 4
  store i32 0, i32* %5, align 4
  br label %204

45:                                               ; preds = %38
  %46 = load i8, i8* %7, align 1
  %47 = load i8*, i8** %6, align 8
  store i8 %46, i8* %47, align 1
  %48 = load i32, i32* @UNVIS_VALID, align 4
  store i32 %48, i32* %5, align 4
  br label %204

49:                                               ; preds = %35
  %50 = load i8, i8* %7, align 1
  %51 = sext i8 %50 to i32
  switch i32 %51, label %111 [
    i32 92, label %52
    i32 48, label %57
    i32 49, label %57
    i32 50, label %57
    i32 51, label %57
    i32 52, label %57
    i32 53, label %57
    i32 54, label %57
    i32 55, label %57
    i32 77, label %64
    i32 94, label %67
    i32 110, label %69
    i32 114, label %73
    i32 98, label %77
    i32 97, label %81
    i32 118, label %85
    i32 116, label %89
    i32 102, label %93
    i32 115, label %97
    i32 69, label %101
    i32 10, label %105
    i32 36, label %108
  ]

52:                                               ; preds = %49
  %53 = load i8, i8* %7, align 1
  %54 = load i8*, i8** %6, align 8
  store i8 %53, i8* %54, align 1
  %55 = load i32*, i32** %8, align 8
  store i32 133, i32* %55, align 4
  %56 = load i32, i32* @UNVIS_VALID, align 4
  store i32 %56, i32* %5, align 4
  br label %204

57:                                               ; preds = %49, %49, %49, %49, %49, %49, %49, %49
  %58 = load i8, i8* %7, align 1
  %59 = sext i8 %58 to i32
  %60 = sub nsw i32 %59, 48
  %61 = trunc i32 %60 to i8
  %62 = load i8*, i8** %6, align 8
  store i8 %61, i8* %62, align 1
  %63 = load i32*, i32** %8, align 8
  store i32 130, i32* %63, align 4
  store i32 0, i32* %5, align 4
  br label %204

64:                                               ; preds = %49
  %65 = load i8*, i8** %6, align 8
  store i8 -128, i8* %65, align 1
  %66 = load i32*, i32** %8, align 8
  store i32 132, i32* %66, align 4
  store i32 0, i32* %5, align 4
  br label %204

67:                                               ; preds = %49
  %68 = load i32*, i32** %8, align 8
  store i32 134, i32* %68, align 4
  store i32 0, i32* %5, align 4
  br label %204

69:                                               ; preds = %49
  %70 = load i8*, i8** %6, align 8
  store i8 10, i8* %70, align 1
  %71 = load i32*, i32** %8, align 8
  store i32 133, i32* %71, align 4
  %72 = load i32, i32* @UNVIS_VALID, align 4
  store i32 %72, i32* %5, align 4
  br label %204

73:                                               ; preds = %49
  %74 = load i8*, i8** %6, align 8
  store i8 13, i8* %74, align 1
  %75 = load i32*, i32** %8, align 8
  store i32 133, i32* %75, align 4
  %76 = load i32, i32* @UNVIS_VALID, align 4
  store i32 %76, i32* %5, align 4
  br label %204

77:                                               ; preds = %49
  %78 = load i8*, i8** %6, align 8
  store i8 8, i8* %78, align 1
  %79 = load i32*, i32** %8, align 8
  store i32 133, i32* %79, align 4
  %80 = load i32, i32* @UNVIS_VALID, align 4
  store i32 %80, i32* %5, align 4
  br label %204

81:                                               ; preds = %49
  %82 = load i8*, i8** %6, align 8
  store i8 7, i8* %82, align 1
  %83 = load i32*, i32** %8, align 8
  store i32 133, i32* %83, align 4
  %84 = load i32, i32* @UNVIS_VALID, align 4
  store i32 %84, i32* %5, align 4
  br label %204

85:                                               ; preds = %49
  %86 = load i8*, i8** %6, align 8
  store i8 11, i8* %86, align 1
  %87 = load i32*, i32** %8, align 8
  store i32 133, i32* %87, align 4
  %88 = load i32, i32* @UNVIS_VALID, align 4
  store i32 %88, i32* %5, align 4
  br label %204

89:                                               ; preds = %49
  %90 = load i8*, i8** %6, align 8
  store i8 9, i8* %90, align 1
  %91 = load i32*, i32** %8, align 8
  store i32 133, i32* %91, align 4
  %92 = load i32, i32* @UNVIS_VALID, align 4
  store i32 %92, i32* %5, align 4
  br label %204

93:                                               ; preds = %49
  %94 = load i8*, i8** %6, align 8
  store i8 12, i8* %94, align 1
  %95 = load i32*, i32** %8, align 8
  store i32 133, i32* %95, align 4
  %96 = load i32, i32* @UNVIS_VALID, align 4
  store i32 %96, i32* %5, align 4
  br label %204

97:                                               ; preds = %49
  %98 = load i8*, i8** %6, align 8
  store i8 32, i8* %98, align 1
  %99 = load i32*, i32** %8, align 8
  store i32 133, i32* %99, align 4
  %100 = load i32, i32* @UNVIS_VALID, align 4
  store i32 %100, i32* %5, align 4
  br label %204

101:                                              ; preds = %49
  %102 = load i8*, i8** %6, align 8
  store i8 27, i8* %102, align 1
  %103 = load i32*, i32** %8, align 8
  store i32 133, i32* %103, align 4
  %104 = load i32, i32* @UNVIS_VALID, align 4
  store i32 %104, i32* %5, align 4
  br label %204

105:                                              ; preds = %49
  %106 = load i32*, i32** %8, align 8
  store i32 133, i32* %106, align 4
  %107 = load i32, i32* @UNVIS_NOCHAR, align 4
  store i32 %107, i32* %5, align 4
  br label %204

108:                                              ; preds = %49
  %109 = load i32*, i32** %8, align 8
  store i32 133, i32* %109, align 4
  %110 = load i32, i32* @UNVIS_NOCHAR, align 4
  store i32 %110, i32* %5, align 4
  br label %204

111:                                              ; preds = %49
  %112 = load i32*, i32** %8, align 8
  store i32 133, i32* %112, align 4
  %113 = load i32, i32* @UNVIS_SYNBAD, align 4
  store i32 %113, i32* %5, align 4
  br label %204

114:                                              ; preds = %35
  %115 = load i8, i8* %7, align 1
  %116 = sext i8 %115 to i32
  %117 = icmp eq i32 %116, 45
  br i1 %117, label %118, label %120

118:                                              ; preds = %114
  %119 = load i32*, i32** %8, align 8
  store i32 131, i32* %119, align 4
  br label %130

120:                                              ; preds = %114
  %121 = load i8, i8* %7, align 1
  %122 = sext i8 %121 to i32
  %123 = icmp eq i32 %122, 94
  br i1 %123, label %124, label %126

124:                                              ; preds = %120
  %125 = load i32*, i32** %8, align 8
  store i32 134, i32* %125, align 4
  br label %129

126:                                              ; preds = %120
  %127 = load i32*, i32** %8, align 8
  store i32 133, i32* %127, align 4
  %128 = load i32, i32* @UNVIS_SYNBAD, align 4
  store i32 %128, i32* %5, align 4
  br label %204

129:                                              ; preds = %124
  br label %130

130:                                              ; preds = %129, %118
  store i32 0, i32* %5, align 4
  br label %204

131:                                              ; preds = %35
  %132 = load i32*, i32** %8, align 8
  store i32 133, i32* %132, align 4
  %133 = load i8, i8* %7, align 1
  %134 = sext i8 %133 to i32
  %135 = load i8*, i8** %6, align 8
  %136 = load i8, i8* %135, align 1
  %137 = sext i8 %136 to i32
  %138 = or i32 %137, %134
  %139 = trunc i32 %138 to i8
  store i8 %139, i8* %135, align 1
  %140 = load i32, i32* @UNVIS_VALID, align 4
  store i32 %140, i32* %5, align 4
  br label %204

141:                                              ; preds = %35
  %142 = load i8, i8* %7, align 1
  %143 = sext i8 %142 to i32
  %144 = icmp eq i32 %143, 63
  br i1 %144, label %145, label %151

145:                                              ; preds = %141
  %146 = load i8*, i8** %6, align 8
  %147 = load i8, i8* %146, align 1
  %148 = sext i8 %147 to i32
  %149 = or i32 %148, 127
  %150 = trunc i32 %149 to i8
  store i8 %150, i8* %146, align 1
  br label %160

151:                                              ; preds = %141
  %152 = load i8, i8* %7, align 1
  %153 = sext i8 %152 to i32
  %154 = and i32 %153, 31
  %155 = load i8*, i8** %6, align 8
  %156 = load i8, i8* %155, align 1
  %157 = sext i8 %156 to i32
  %158 = or i32 %157, %154
  %159 = trunc i32 %158 to i8
  store i8 %159, i8* %155, align 1
  br label %160

160:                                              ; preds = %151, %145
  %161 = load i32*, i32** %8, align 8
  store i32 133, i32* %161, align 4
  %162 = load i32, i32* @UNVIS_VALID, align 4
  store i32 %162, i32* %5, align 4
  br label %204

163:                                              ; preds = %35
  %164 = load i8, i8* %7, align 1
  %165 = call i32 @isoctal(i8 signext %164)
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %179

167:                                              ; preds = %163
  %168 = load i8*, i8** %6, align 8
  %169 = load i8, i8* %168, align 1
  %170 = sext i8 %169 to i32
  %171 = shl i32 %170, 3
  %172 = load i8, i8* %7, align 1
  %173 = sext i8 %172 to i32
  %174 = sub nsw i32 %173, 48
  %175 = add nsw i32 %171, %174
  %176 = trunc i32 %175 to i8
  %177 = load i8*, i8** %6, align 8
  store i8 %176, i8* %177, align 1
  %178 = load i32*, i32** %8, align 8
  store i32 129, i32* %178, align 4
  store i32 0, i32* %5, align 4
  br label %204

179:                                              ; preds = %163
  %180 = load i32*, i32** %8, align 8
  store i32 133, i32* %180, align 4
  %181 = load i32, i32* @UNVIS_VALIDPUSH, align 4
  store i32 %181, i32* %5, align 4
  br label %204

182:                                              ; preds = %35
  %183 = load i32*, i32** %8, align 8
  store i32 133, i32* %183, align 4
  %184 = load i8, i8* %7, align 1
  %185 = call i32 @isoctal(i8 signext %184)
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %199

187:                                              ; preds = %182
  %188 = load i8*, i8** %6, align 8
  %189 = load i8, i8* %188, align 1
  %190 = sext i8 %189 to i32
  %191 = shl i32 %190, 3
  %192 = load i8, i8* %7, align 1
  %193 = sext i8 %192 to i32
  %194 = sub nsw i32 %193, 48
  %195 = add nsw i32 %191, %194
  %196 = trunc i32 %195 to i8
  %197 = load i8*, i8** %6, align 8
  store i8 %196, i8* %197, align 1
  %198 = load i32, i32* @UNVIS_VALID, align 4
  store i32 %198, i32* %5, align 4
  br label %204

199:                                              ; preds = %182
  %200 = load i32, i32* @UNVIS_VALIDPUSH, align 4
  store i32 %200, i32* %5, align 4
  br label %204

201:                                              ; preds = %35
  %202 = load i32*, i32** %8, align 8
  store i32 133, i32* %202, align 4
  %203 = load i32, i32* @UNVIS_SYNBAD, align 4
  store i32 %203, i32* %5, align 4
  br label %204

204:                                              ; preds = %201, %199, %187, %179, %167, %160, %131, %130, %126, %111, %108, %105, %101, %97, %93, %89, %85, %81, %77, %73, %69, %67, %64, %57, %52, %45, %43, %33, %22
  %205 = load i32, i32* %5, align 4
  ret i32 %205
}

declare dso_local i32 @isoctal(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
