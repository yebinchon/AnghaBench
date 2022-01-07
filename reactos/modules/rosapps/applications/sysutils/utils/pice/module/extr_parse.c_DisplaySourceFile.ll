; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/utils/pice/module/extr_parse.c_DisplaySourceFile.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/utils/pice/module/extr_parse.c_DisplaySourceFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [31 x i8] c"DisplaySourceFile(%.8X,%u,%u)\0A\00", align 1
@SOURCE_WINDOW = common dso_local global i64 0, align 8
@wWindow = common dso_local global %struct.TYPE_2__* null, align 8
@tempCmd = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c".%.5u \00", align 1
@GLOBAL_SCREEN_WIDTH = common dso_local global i32 0, align 4
@COLOR_BACKGROUND = common dso_local global i32 0, align 4
@COLOR_FOREGROUND = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"---- End of source file --------------\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @DisplaySourceFile(i32* %0, i32* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %12 = load i64, i64* %7, align 8
  %13 = sub nsw i64 %12, 1
  store i64 %13, i64* %11, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = load i64, i64* %7, align 8
  %16 = load i64, i64* %8, align 8
  %17 = trunc i64 %16 to i32
  %18 = call i32 @DPRINT(i32 %17)
  br label %19

19:                                               ; preds = %51, %4
  %20 = load i64, i64* %11, align 8
  %21 = add nsw i64 %20, -1
  store i64 %21, i64* %11, align 8
  %22 = icmp ne i64 %20, 0
  br i1 %22, label %23, label %52

23:                                               ; preds = %19
  br label %24

24:                                               ; preds = %34, %23
  %25 = load i32*, i32** %5, align 8
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 10
  br i1 %27, label %28, label %32

28:                                               ; preds = %24
  %29 = load i32*, i32** %5, align 8
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 13
  br label %32

32:                                               ; preds = %28, %24
  %33 = phi i1 [ false, %24 ], [ %31, %28 ]
  br i1 %33, label %34, label %37

34:                                               ; preds = %32
  %35 = load i32*, i32** %5, align 8
  %36 = getelementptr inbounds i32, i32* %35, i32 1
  store i32* %36, i32** %5, align 8
  br label %24

37:                                               ; preds = %32
  %38 = load i32*, i32** %5, align 8
  %39 = load i32, i32* %38, align 4
  %40 = icmp eq i32 %39, 13
  br i1 %40, label %41, label %44

41:                                               ; preds = %37
  %42 = load i32*, i32** %5, align 8
  %43 = getelementptr inbounds i32, i32* %42, i32 1
  store i32* %43, i32** %5, align 8
  br label %44

44:                                               ; preds = %41, %37
  %45 = load i32*, i32** %5, align 8
  %46 = load i32, i32* %45, align 4
  %47 = icmp eq i32 %46, 10
  br i1 %47, label %48, label %51

48:                                               ; preds = %44
  %49 = load i32*, i32** %5, align 8
  %50 = getelementptr inbounds i32, i32* %49, i32 1
  store i32* %50, i32** %5, align 8
  br label %51

51:                                               ; preds = %48, %44
  br label %19

52:                                               ; preds = %19
  %53 = load i64, i64* @SOURCE_WINDOW, align 8
  %54 = call i32 @Clear(i64 %53)
  %55 = load i64, i64* @SOURCE_WINDOW, align 8
  %56 = call i32 @DisableScroll(i64 %55)
  store i64 0, i64* %9, align 8
  br label %57

57:                                               ; preds = %223, %52
  %58 = load i64, i64* %9, align 8
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wWindow, align 8
  %60 = load i64, i64* @SOURCE_WINDOW, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp slt i64 %58, %63
  br i1 %64, label %65, label %226

65:                                               ; preds = %57
  %66 = load i8*, i8** @tempCmd, align 8
  %67 = bitcast i8* %66 to i32*
  store i32* %67, i32** %10, align 8
  %68 = load i32*, i32** %5, align 8
  %69 = load i32*, i32** %6, align 8
  %70 = icmp ult i32* %68, %69
  br i1 %70, label %71, label %219

71:                                               ; preds = %65
  %72 = load i8*, i8** @tempCmd, align 8
  %73 = load i64, i64* %7, align 8
  %74 = load i64, i64* %9, align 8
  %75 = add nsw i64 %73, %74
  %76 = call i32 @PICE_sprintf(i8* %72, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i64 %75)
  %77 = load i8*, i8** @tempCmd, align 8
  %78 = load i8*, i8** @tempCmd, align 8
  %79 = call i32 @PICE_strlen(i8* %78)
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i8, i8* %77, i64 %80
  %82 = bitcast i8* %81 to i32*
  store i32* %82, i32** %10, align 8
  br label %83

83:                                               ; preds = %118, %71
  %84 = load i32*, i32** %5, align 8
  %85 = load i32*, i32** %6, align 8
  %86 = icmp ult i32* %84, %85
  br i1 %86, label %87, label %95

87:                                               ; preds = %83
  %88 = load i32*, i32** %5, align 8
  %89 = load i32, i32* %88, align 4
  %90 = icmp ne i32 %89, 10
  br i1 %90, label %91, label %95

91:                                               ; preds = %87
  %92 = load i32*, i32** %5, align 8
  %93 = load i32, i32* %92, align 4
  %94 = icmp ne i32 %93, 13
  br label %95

95:                                               ; preds = %91, %87, %83
  %96 = phi i1 [ false, %87 ], [ false, %83 ], [ %94, %91 ]
  br i1 %96, label %97, label %119

97:                                               ; preds = %95
  %98 = load i32*, i32** %5, align 8
  %99 = load i32, i32* %98, align 4
  %100 = icmp eq i32 %99, 9
  br i1 %100, label %101, label %112

101:                                              ; preds = %97
  %102 = load i32*, i32** %10, align 8
  %103 = getelementptr inbounds i32, i32* %102, i32 1
  store i32* %103, i32** %10, align 8
  store i32 32, i32* %102, align 4
  %104 = load i32*, i32** %10, align 8
  %105 = getelementptr inbounds i32, i32* %104, i32 1
  store i32* %105, i32** %10, align 8
  store i32 32, i32* %104, align 4
  %106 = load i32*, i32** %10, align 8
  %107 = getelementptr inbounds i32, i32* %106, i32 1
  store i32* %107, i32** %10, align 8
  store i32 32, i32* %106, align 4
  %108 = load i32*, i32** %10, align 8
  %109 = getelementptr inbounds i32, i32* %108, i32 1
  store i32* %109, i32** %10, align 8
  store i32 32, i32* %108, align 4
  %110 = load i32*, i32** %5, align 8
  %111 = getelementptr inbounds i32, i32* %110, i32 1
  store i32* %111, i32** %5, align 8
  br label %118

112:                                              ; preds = %97
  %113 = load i32*, i32** %5, align 8
  %114 = getelementptr inbounds i32, i32* %113, i32 1
  store i32* %114, i32** %5, align 8
  %115 = load i32, i32* %113, align 4
  %116 = load i32*, i32** %10, align 8
  %117 = getelementptr inbounds i32, i32* %116, i32 1
  store i32* %117, i32** %10, align 8
  store i32 %115, i32* %116, align 4
  br label %118

118:                                              ; preds = %112, %101
  br label %83

119:                                              ; preds = %95
  %120 = load i32*, i32** %5, align 8
  %121 = load i32*, i32** %6, align 8
  %122 = icmp ult i32* %120, %121
  br i1 %122, label %123, label %138

123:                                              ; preds = %119
  %124 = load i32*, i32** %5, align 8
  %125 = load i32, i32* %124, align 4
  %126 = icmp eq i32 %125, 13
  br i1 %126, label %127, label %130

127:                                              ; preds = %123
  %128 = load i32*, i32** %5, align 8
  %129 = getelementptr inbounds i32, i32* %128, i32 1
  store i32* %129, i32** %5, align 8
  br label %130

130:                                              ; preds = %127, %123
  %131 = load i32*, i32** %5, align 8
  %132 = load i32, i32* %131, align 4
  %133 = icmp eq i32 %132, 10
  br i1 %133, label %134, label %137

134:                                              ; preds = %130
  %135 = load i32*, i32** %5, align 8
  %136 = getelementptr inbounds i32, i32* %135, i32 1
  store i32* %136, i32** %5, align 8
  br label %137

137:                                              ; preds = %134, %130
  br label %138

138:                                              ; preds = %137, %119
  %139 = load i32*, i32** %10, align 8
  %140 = getelementptr inbounds i32, i32* %139, i32 1
  store i32* %140, i32** %10, align 8
  store i32 10, i32* %139, align 4
  %141 = load i32*, i32** %10, align 8
  store i32 0, i32* %141, align 4
  %142 = load i8*, i8** @tempCmd, align 8
  %143 = call i32 @PICE_strlen(i8* %142)
  %144 = load i32, i32* @GLOBAL_SCREEN_WIDTH, align 4
  %145 = sub nsw i32 %144, 1
  %146 = icmp sgt i32 %143, %145
  br i1 %146, label %147, label %158

147:                                              ; preds = %138
  %148 = load i8*, i8** @tempCmd, align 8
  %149 = load i32, i32* @GLOBAL_SCREEN_WIDTH, align 4
  %150 = sub nsw i32 %149, 2
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i8, i8* %148, i64 %151
  store i8 10, i8* %152, align 1
  %153 = load i8*, i8** @tempCmd, align 8
  %154 = load i32, i32* @GLOBAL_SCREEN_WIDTH, align 4
  %155 = sub nsw i32 %154, 1
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i8, i8* %153, i64 %156
  store i8 0, i8* %157, align 1
  br label %158

158:                                              ; preds = %147, %138
  %159 = load i64, i64* %8, align 8
  %160 = icmp ne i64 %159, -1
  br i1 %160, label %161, label %188

161:                                              ; preds = %158
  %162 = load i64, i64* %8, align 8
  %163 = load i64, i64* %7, align 8
  %164 = sub nsw i64 %162, %163
  %165 = trunc i64 %164 to i32
  %166 = icmp sge i32 %165, 0
  br i1 %166, label %167, label %188

167:                                              ; preds = %161
  %168 = load i64, i64* %8, align 8
  %169 = load i64, i64* %7, align 8
  %170 = sub nsw i64 %168, %169
  %171 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wWindow, align 8
  %172 = load i64, i64* @SOURCE_WINDOW, align 8
  %173 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %171, i64 %172
  %174 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = icmp slt i64 %170, %175
  br i1 %176, label %177, label %188

177:                                              ; preds = %167
  %178 = load i64, i64* %9, align 8
  %179 = load i64, i64* %8, align 8
  %180 = load i64, i64* %7, align 8
  %181 = sub nsw i64 %179, %180
  %182 = icmp eq i64 %178, %181
  br i1 %182, label %183, label %188

183:                                              ; preds = %177
  %184 = load i32, i32* @COLOR_BACKGROUND, align 4
  %185 = call i32 @SetForegroundColor(i32 %184)
  %186 = load i32, i32* @COLOR_FOREGROUND, align 4
  %187 = call i32 @SetBackgroundColor(i32 %186)
  br label %188

188:                                              ; preds = %183, %177, %167, %161, %158
  %189 = load i64, i64* @SOURCE_WINDOW, align 8
  %190 = load i8*, i8** @tempCmd, align 8
  %191 = call i32 @Print(i64 %189, i8* %190)
  %192 = load i64, i64* %8, align 8
  %193 = icmp ne i64 %192, -1
  br i1 %193, label %194, label %218

194:                                              ; preds = %188
  %195 = load i64, i64* %8, align 8
  %196 = load i64, i64* %7, align 8
  %197 = sub nsw i64 %195, %196
  %198 = trunc i64 %197 to i32
  %199 = icmp sge i32 %198, 0
  br i1 %199, label %200, label %218

200:                                              ; preds = %194
  %201 = load i64, i64* %8, align 8
  %202 = load i64, i64* %7, align 8
  %203 = sub nsw i64 %201, %202
  %204 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wWindow, align 8
  %205 = load i64, i64* @SOURCE_WINDOW, align 8
  %206 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %204, i64 %205
  %207 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %206, i32 0, i32 0
  %208 = load i64, i64* %207, align 8
  %209 = icmp slt i64 %203, %208
  br i1 %209, label %210, label %218

210:                                              ; preds = %200
  %211 = load i64, i64* %9, align 8
  %212 = load i64, i64* %8, align 8
  %213 = load i64, i64* %7, align 8
  %214 = sub nsw i64 %212, %213
  %215 = icmp eq i64 %211, %214
  br i1 %215, label %216, label %218

216:                                              ; preds = %210
  %217 = call i32 (...) @ResetColor()
  br label %218

218:                                              ; preds = %216, %210, %200, %194, %188
  br label %222

219:                                              ; preds = %65
  %220 = load i64, i64* @SOURCE_WINDOW, align 8
  %221 = call i32 @Print(i64 %220, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  br label %226

222:                                              ; preds = %218
  br label %223

223:                                              ; preds = %222
  %224 = load i64, i64* %9, align 8
  %225 = add nsw i64 %224, 1
  store i64 %225, i64* %9, align 8
  br label %57

226:                                              ; preds = %219, %57
  %227 = load i64, i64* @SOURCE_WINDOW, align 8
  %228 = call i32 @EnableScroll(i64 %227)
  ret void
}

declare dso_local i32 @DPRINT(i32) #1

declare dso_local i32 @Clear(i64) #1

declare dso_local i32 @DisableScroll(i64) #1

declare dso_local i32 @PICE_sprintf(i8*, i8*, i64) #1

declare dso_local i32 @PICE_strlen(i8*) #1

declare dso_local i32 @SetForegroundColor(i32) #1

declare dso_local i32 @SetBackgroundColor(i32) #1

declare dso_local i32 @Print(i64, i8*) #1

declare dso_local i32 @ResetColor(...) #1

declare dso_local i32 @EnableScroll(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
