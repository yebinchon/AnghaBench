; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/utils/pice/module/extr_hardware.c_Print.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/utils/pice/module/extr_hardware.c_Print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64, i64, i64, i64 }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@bConsoleIsInitialized = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"Print(): console is not initialized!\0A\00", align 1
@OUTPUT_WINDOW = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [24 x i8] c"Print(): OUTPUT_WINDOW\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"Print(): checking ring buffer\0A\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"Print(): outputting a line from ring buffer\0A\00", align 1
@wWindow = common dso_local global %struct.TYPE_2__* null, align 8
@OUTPUT_WINDOW_UNBUFFERED = common dso_local global i64 0, align 8
@aBuffers = common dso_local global i8** null, align 8
@ulInPos = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@GLOBAL_SCREEN_WIDTH = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Print(i64 %0, i8* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = ptrtoint i8* %7 to i32
  %9 = call i32 @DPRINT(i32 %8)
  %10 = load i32, i32* @bConsoleIsInitialized, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %2
  %13 = call i32 @DPRINT(i32 ptrtoint ([38 x i8]* @.str.1 to i32))
  br label %256

14:                                               ; preds = %2
  %15 = load i64, i64* %3, align 8
  %16 = load i64, i64* @OUTPUT_WINDOW, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %50

18:                                               ; preds = %14
  %19 = call i32 @DPRINT(i32 ptrtoint ([24 x i8]* @.str.2 to i32))
  %20 = load i8*, i8** %4, align 8
  %21 = call i64 @AddToRingBuffer(i8* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = call i32 @DPRINT(i32 ptrtoint ([31 x i8]* @.str.3 to i32))
  %25 = call i32 (...) @CheckRingBuffer()
  br label %49

26:                                               ; preds = %18
  %27 = call i32 @DPRINT(i32 ptrtoint ([45 x i8]* @.str.4 to i32))
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wWindow, align 8
  %29 = load i64, i64* @OUTPUT_WINDOW, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  store i32 0, i32* %31, align 8
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wWindow, align 8
  %33 = load i64, i64* @OUTPUT_WINDOW, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wWindow, align 8
  %38 = load i64, i64* @OUTPUT_WINDOW, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = add nsw i64 %36, %41
  %43 = call i32 @ClrLine(i64 %42)
  %44 = load i64, i64* @OUTPUT_WINDOW_UNBUFFERED, align 8
  %45 = load i8**, i8*** @aBuffers, align 8
  %46 = load i64, i64* @ulInPos, align 8
  %47 = getelementptr inbounds i8*, i8** %45, i64 %46
  %48 = load i8*, i8** %47, align 8
  call void @Print(i64 %44, i8* %48)
  br label %49

49:                                               ; preds = %26, %23
  br label %256

50:                                               ; preds = %14
  %51 = load i64, i64* @TRUE, align 8
  store i64 %51, i64* %6, align 8
  %52 = load i64, i64* %3, align 8
  %53 = load i64, i64* @OUTPUT_WINDOW_UNBUFFERED, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %50
  %56 = load i64, i64* @OUTPUT_WINDOW, align 8
  store i64 %56, i64* %3, align 8
  br label %57

57:                                               ; preds = %55, %50
  store i64 0, i64* %5, align 8
  br label %58

58:                                               ; preds = %251, %57
  %59 = load i8*, i8** %4, align 8
  %60 = load i64, i64* %5, align 8
  %61 = getelementptr inbounds i8, i8* %59, i64 %60
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %254

65:                                               ; preds = %58
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wWindow, align 8
  %67 = load i64, i64* %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @GLOBAL_SCREEN_WIDTH, align 4
  %72 = sub nsw i32 %71, 1
  %73 = icmp sgt i32 %70, %72
  br i1 %73, label %74, label %76

74:                                               ; preds = %65
  %75 = load i64, i64* @FALSE, align 8
  store i64 %75, i64* %6, align 8
  br label %76

76:                                               ; preds = %74, %65
  %77 = load i8*, i8** %4, align 8
  %78 = load i64, i64* %5, align 8
  %79 = getelementptr inbounds i8, i8* %77, i64 %78
  %80 = load i8, i8* %79, align 1
  %81 = sext i8 %80 to i32
  %82 = icmp eq i32 %81, 10
  br i1 %82, label %83, label %128

83:                                               ; preds = %76
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wWindow, align 8
  %85 = load i64, i64* %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  store i32 0, i32* %87, align 8
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wWindow, align 8
  %89 = load i64, i64* %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 2
  %92 = load i64, i64* %91, align 8
  %93 = add nsw i64 %92, 1
  store i64 %93, i64* %91, align 8
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wWindow, align 8
  %95 = load i64, i64* %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 2
  %98 = load i64, i64* %97, align 8
  %99 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wWindow, align 8
  %100 = load i64, i64* %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 3
  %103 = load i64, i64* %102, align 8
  %104 = icmp sge i64 %98, %103
  br i1 %104, label %105, label %118

105:                                              ; preds = %83
  %106 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wWindow, align 8
  %107 = load i64, i64* %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 3
  %110 = load i64, i64* %109, align 8
  %111 = sub nsw i64 %110, 1
  %112 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wWindow, align 8
  %113 = load i64, i64* %3, align 8
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 2
  store i64 %111, i64* %115, align 8
  %116 = load i64, i64* %3, align 8
  %117 = call i32 @ScrollUp(i64 %116)
  br label %118

118:                                              ; preds = %105, %83
  %119 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wWindow, align 8
  %120 = load i64, i64* %3, align 8
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 4
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* @TRUE, align 8
  %125 = icmp eq i64 %123, %124
  br i1 %125, label %126, label %127

126:                                              ; preds = %118
  br label %254

127:                                              ; preds = %118
  br label %250

128:                                              ; preds = %76
  %129 = load i8*, i8** %4, align 8
  %130 = load i64, i64* %5, align 8
  %131 = getelementptr inbounds i8, i8* %129, i64 %130
  %132 = load i8, i8* %131, align 1
  %133 = sext i8 %132 to i32
  %134 = icmp eq i32 %133, 8
  br i1 %134, label %135, label %172

135:                                              ; preds = %128
  %136 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wWindow, align 8
  %137 = load i64, i64* %3, align 8
  %138 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %136, i64 %137
  %139 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = icmp sgt i32 %140, 0
  br i1 %141, label %142, label %171

142:                                              ; preds = %135
  %143 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wWindow, align 8
  %144 = load i64, i64* %3, align 8
  %145 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %143, i64 %144
  %146 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = add nsw i32 %147, -1
  store i32 %148, i32* %146, align 8
  %149 = load i64, i64* %6, align 8
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %170

151:                                              ; preds = %142
  %152 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wWindow, align 8
  %153 = load i64, i64* %3, align 8
  %154 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %152, i64 %153
  %155 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = sext i32 %156 to i64
  %158 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wWindow, align 8
  %159 = load i64, i64* %3, align 8
  %160 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %158, i64 %159
  %161 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %160, i32 0, i32 1
  %162 = load i64, i64* %161, align 8
  %163 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wWindow, align 8
  %164 = load i64, i64* %3, align 8
  %165 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %163, i64 %164
  %166 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %165, i32 0, i32 2
  %167 = load i64, i64* %166, align 8
  %168 = add nsw i64 %162, %167
  %169 = call i32 @PrintGraf(i64 %157, i64 %168, i8 signext 32)
  br label %170

170:                                              ; preds = %151, %142
  br label %171

171:                                              ; preds = %170, %135
  br label %249

172:                                              ; preds = %128
  %173 = load i8*, i8** %4, align 8
  %174 = load i64, i64* %5, align 8
  %175 = getelementptr inbounds i8, i8* %173, i64 %174
  %176 = load i8, i8* %175, align 1
  %177 = sext i8 %176 to i32
  %178 = icmp eq i32 %177, 9
  br i1 %178, label %179, label %197

179:                                              ; preds = %172
  %180 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wWindow, align 8
  %181 = load i64, i64* %3, align 8
  %182 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %180, i64 %181
  %183 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = add nsw i32 %184, 4
  %186 = load i32, i32* @GLOBAL_SCREEN_WIDTH, align 4
  %187 = sub nsw i32 %186, 1
  %188 = icmp slt i32 %185, %187
  br i1 %188, label %189, label %196

189:                                              ; preds = %179
  %190 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wWindow, align 8
  %191 = load i64, i64* %3, align 8
  %192 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %190, i64 %191
  %193 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = add nsw i32 %194, 4
  store i32 %195, i32* %193, align 8
  br label %196

196:                                              ; preds = %189, %179
  br label %248

197:                                              ; preds = %172
  %198 = load i8*, i8** %4, align 8
  %199 = load i64, i64* %5, align 8
  %200 = getelementptr inbounds i8, i8* %198, i64 %199
  %201 = load i8, i8* %200, align 1
  %202 = sext i8 %201 to i32
  %203 = icmp slt i32 %202, 32
  br i1 %203, label %211, label %204

204:                                              ; preds = %197
  %205 = load i8*, i8** %4, align 8
  %206 = load i64, i64* %5, align 8
  %207 = getelementptr inbounds i8, i8* %205, i64 %206
  %208 = load i8, i8* %207, align 1
  %209 = sext i8 %208 to i32
  %210 = icmp sgt i32 %209, 127
  br i1 %210, label %211, label %215

211:                                              ; preds = %204, %197
  %212 = load i8*, i8** %4, align 8
  %213 = load i64, i64* %5, align 8
  %214 = getelementptr inbounds i8, i8* %212, i64 %213
  store i8 32, i8* %214, align 1
  br label %215

215:                                              ; preds = %211, %204
  %216 = load i64, i64* %6, align 8
  %217 = icmp ne i64 %216, 0
  br i1 %217, label %218, label %241

218:                                              ; preds = %215
  %219 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wWindow, align 8
  %220 = load i64, i64* %3, align 8
  %221 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %219, i64 %220
  %222 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 8
  %224 = sext i32 %223 to i64
  %225 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wWindow, align 8
  %226 = load i64, i64* %3, align 8
  %227 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %225, i64 %226
  %228 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %227, i32 0, i32 1
  %229 = load i64, i64* %228, align 8
  %230 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wWindow, align 8
  %231 = load i64, i64* %3, align 8
  %232 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %230, i64 %231
  %233 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %232, i32 0, i32 2
  %234 = load i64, i64* %233, align 8
  %235 = add nsw i64 %229, %234
  %236 = load i8*, i8** %4, align 8
  %237 = load i64, i64* %5, align 8
  %238 = getelementptr inbounds i8, i8* %236, i64 %237
  %239 = load i8, i8* %238, align 1
  %240 = call i32 @PrintGraf(i64 %224, i64 %235, i8 signext %239)
  br label %241

241:                                              ; preds = %218, %215
  %242 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wWindow, align 8
  %243 = load i64, i64* %3, align 8
  %244 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %242, i64 %243
  %245 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 8
  %247 = add nsw i32 %246, 1
  store i32 %247, i32* %245, align 8
  br label %248

248:                                              ; preds = %241, %196
  br label %249

249:                                              ; preds = %248, %171
  br label %250

250:                                              ; preds = %249, %127
  br label %251

251:                                              ; preds = %250
  %252 = load i64, i64* %5, align 8
  %253 = add i64 %252, 1
  store i64 %253, i64* %5, align 8
  br label %58

254:                                              ; preds = %126, %58
  %255 = call i32 (...) @Flush()
  br label %256

256:                                              ; preds = %12, %254, %49
  ret void
}

declare dso_local i32 @DPRINT(i32) #1

declare dso_local i64 @AddToRingBuffer(i8*) #1

declare dso_local i32 @CheckRingBuffer(...) #1

declare dso_local i32 @ClrLine(i64) #1

declare dso_local i32 @ScrollUp(i64) #1

declare dso_local i32 @PrintGraf(i64, i64, i8 signext) #1

declare dso_local i32 @Flush(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
