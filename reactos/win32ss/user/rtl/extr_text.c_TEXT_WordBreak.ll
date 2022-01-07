; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/user/rtl/extr_text.c_TEXT_WordBreak.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/user/rtl/extr_text.c_TEXT_WordBreak.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DT_WORDBREAK = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@SPACE = common dso_local global i64 0, align 8
@KinsokuClassA = common dso_local global i32 0, align 4
@DT_RIGHT = common dso_local global i32 0, align 4
@DT_CENTER = common dso_local global i32 0, align 4
@DT_EDITCONTROL = common dso_local global i32 0, align 4
@DT_WORD_ELLIPSIS = common dso_local global i32 0, align 4
@DT_PATH_ELLIPSIS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i64*, i32, i32*, i32, i32, i32, i32*, i32*)* @TEXT_WordBreak to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @TEXT_WordBreak(i32 %0, i64* %1, i32 %2, i32* %3, i32 %4, i32 %5, i32 %6, i32* %7, i32* %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i64*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i64*, align 8
  store i32 %0, i32* %10, align 4
  store i64* %1, i64** %11, align 8
  store i32 %2, i32* %12, align 4
  store i32* %3, i32** %13, align 8
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32* %7, i32** %17, align 8
  store i32* %8, i32** %18, align 8
  %23 = load i32, i32* %15, align 4
  %24 = load i32, i32* @DT_WORDBREAK, align 4
  %25 = and i32 %23, %24
  %26 = call i32 @assert(i32 %25)
  %27 = load i32, i32* %16, align 4
  %28 = load i32*, i32** %13, align 8
  %29 = load i32, i32* %28, align 4
  %30 = icmp ult i32 %27, %29
  %31 = zext i1 %30 to i32
  %32 = call i32 @assert(i32 %31)
  %33 = load i64*, i64** %11, align 8
  %34 = load i32, i32* %16, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds i64, i64* %33, i64 %35
  store i64* %36, i64** %19, align 8
  %37 = load i32, i32* @TRUE, align 4
  store i32 %37, i32* %20, align 4
  %38 = load i32, i32* %16, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %9
  %41 = load i32, i32* @FALSE, align 4
  store i32 %41, i32* %20, align 4
  br label %103

42:                                               ; preds = %9
  %43 = load i64*, i64** %19, align 8
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @SPACE, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %42
  %48 = load i64*, i64** %19, align 8
  %49 = getelementptr inbounds i64, i64* %48, i32 -1
  store i64* %49, i64** %19, align 8
  br label %102

50:                                               ; preds = %42
  br label %51

51:                                               ; preds = %83, %50
  %52 = load i64*, i64** %19, align 8
  %53 = load i64*, i64** %11, align 8
  %54 = icmp ugt i64* %52, %53
  br i1 %54, label %55, label %81

55:                                               ; preds = %51
  %56 = load i64*, i64** %19, align 8
  %57 = getelementptr inbounds i64, i64* %56, i32 -1
  store i64* %57, i64** %19, align 8
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @SPACE, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %81

61:                                               ; preds = %55
  %62 = load i64*, i64** %19, align 8
  %63 = getelementptr inbounds i64, i64* %62, i64 1
  %64 = load i64, i64* %63, align 8
  %65 = call i64 @IsCJKT(i64 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %79

67:                                               ; preds = %61
  %68 = load i64*, i64** %19, align 8
  %69 = getelementptr inbounds i64, i64* %68, i64 1
  %70 = load i64, i64* %69, align 8
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %79, label %72

72:                                               ; preds = %67
  %73 = load i32, i32* @KinsokuClassA, align 4
  %74 = load i64*, i64** %19, align 8
  %75 = getelementptr inbounds i64, i64* %74, i64 1
  %76 = load i64, i64* %75, align 8
  %77 = call i32* @wcschr(i32 %73, i64 %76)
  %78 = icmp ne i32* %77, null
  br label %79

79:                                               ; preds = %72, %67, %61
  %80 = phi i1 [ true, %67 ], [ true, %61 ], [ %78, %72 ]
  br label %81

81:                                               ; preds = %79, %55, %51
  %82 = phi i1 [ false, %55 ], [ false, %51 ], [ %80, %79 ]
  br i1 %82, label %83, label %84

83:                                               ; preds = %81
  br label %51

84:                                               ; preds = %81
  %85 = load i64*, i64** %19, align 8
  %86 = load i64*, i64** %11, align 8
  %87 = icmp ne i64* %85, %86
  br i1 %87, label %99, label %88

88:                                               ; preds = %84
  %89 = load i64*, i64** %19, align 8
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @SPACE, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %99, label %93

93:                                               ; preds = %88
  %94 = load i64*, i64** %19, align 8
  %95 = getelementptr inbounds i64, i64* %94, i64 1
  %96 = load i64, i64* %95, align 8
  %97 = call i64 @IsCJKT(i64 %96)
  %98 = icmp ne i64 %97, 0
  br label %99

99:                                               ; preds = %93, %88, %84
  %100 = phi i1 [ true, %88 ], [ true, %84 ], [ %98, %93 ]
  %101 = zext i1 %100 to i32
  store i32 %101, i32* %20, align 4
  br label %102

102:                                              ; preds = %99, %47
  br label %103

103:                                              ; preds = %102, %40
  %104 = load i32, i32* %20, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %158

106:                                              ; preds = %103
  %107 = load i32, i32* %15, align 4
  %108 = load i32, i32* @DT_RIGHT, align 4
  %109 = load i32, i32* @DT_CENTER, align 4
  %110 = or i32 %108, %109
  %111 = and i32 %107, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %118

113:                                              ; preds = %106
  %114 = load i64*, i64** %19, align 8
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @SPACE, align 8
  %117 = icmp ne i64 %115, %116
  br i1 %117, label %118, label %121

118:                                              ; preds = %113, %106
  %119 = load i64*, i64** %19, align 8
  %120 = getelementptr inbounds i64, i64* %119, i32 1
  store i64* %120, i64** %19, align 8
  br label %121

121:                                              ; preds = %118, %113
  %122 = load i64*, i64** %19, align 8
  %123 = load i64*, i64** %11, align 8
  %124 = ptrtoint i64* %122 to i64
  %125 = ptrtoint i64* %123 to i64
  %126 = sub i64 %124, %125
  %127 = sdiv exact i64 %126, 8
  %128 = trunc i64 %127 to i32
  %129 = load i32*, i32** %13, align 8
  %130 = load i32, i32* %129, align 4
  %131 = icmp ult i32 %128, %130
  br i1 %131, label %132, label %137

132:                                              ; preds = %121
  %133 = load i64*, i64** %19, align 8
  %134 = load i64, i64* %133, align 8
  %135 = load i64, i64* @SPACE, align 8
  %136 = icmp eq i64 %134, %135
  br label %137

137:                                              ; preds = %132, %121
  %138 = phi i1 [ false, %121 ], [ %136, %132 ]
  %139 = zext i1 %138 to i32
  store i32 %139, i32* %21, align 4
  %140 = load i64*, i64** %19, align 8
  %141 = load i64*, i64** %11, align 8
  %142 = ptrtoint i64* %140 to i64
  %143 = ptrtoint i64* %141 to i64
  %144 = sub i64 %142, %143
  %145 = sdiv exact i64 %144, 8
  %146 = trunc i64 %145 to i32
  %147 = load i32*, i32** %13, align 8
  store i32 %146, i32* %147, align 4
  %148 = load i32*, i32** %13, align 8
  %149 = load i32, i32* %148, align 4
  %150 = load i32*, i32** %17, align 8
  store i32 %149, i32* %150, align 4
  %151 = load i32, i32* %21, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %157

153:                                              ; preds = %137
  %154 = load i32*, i32** %17, align 8
  %155 = load i32, i32* %154, align 4
  %156 = add i32 %155, 1
  store i32 %156, i32* %154, align 4
  br label %157

157:                                              ; preds = %153, %137
  br label %229

158:                                              ; preds = %103
  %159 = load i32, i32* %15, align 4
  %160 = load i32, i32* @DT_EDITCONTROL, align 4
  %161 = load i32, i32* @DT_WORD_ELLIPSIS, align 4
  %162 = or i32 %160, %161
  %163 = load i32, i32* @DT_PATH_ELLIPSIS, align 4
  %164 = or i32 %162, %163
  %165 = and i32 %159, %164
  %166 = load i32, i32* @DT_EDITCONTROL, align 4
  %167 = icmp eq i32 %165, %166
  br i1 %167, label %168, label %179

168:                                              ; preds = %158
  %169 = load i32, i32* %16, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %174, label %171

171:                                              ; preds = %168
  %172 = load i32, i32* %16, align 4
  %173 = add i32 %172, 1
  store i32 %173, i32* %16, align 4
  br label %174

174:                                              ; preds = %171, %168
  %175 = load i32, i32* %16, align 4
  %176 = load i32*, i32** %13, align 8
  store i32 %175, i32* %176, align 4
  %177 = load i32, i32* %16, align 4
  %178 = load i32*, i32** %17, align 8
  store i32 %177, i32* %178, align 4
  br label %228

179:                                              ; preds = %158
  %180 = load i64*, i64** %11, align 8
  %181 = load i32*, i32** %13, align 8
  %182 = load i32, i32* %181, align 4
  %183 = zext i32 %182 to i64
  %184 = getelementptr inbounds i64, i64* %180, i64 %183
  store i64* %184, i64** %22, align 8
  %185 = load i64*, i64** %11, align 8
  %186 = load i32, i32* %16, align 4
  %187 = zext i32 %186 to i64
  %188 = getelementptr inbounds i64, i64* %185, i64 %187
  store i64* %188, i64** %19, align 8
  br label %189

189:                                              ; preds = %200, %179
  %190 = load i64*, i64** %19, align 8
  %191 = load i64*, i64** %22, align 8
  %192 = icmp ult i64* %190, %191
  br i1 %192, label %193, label %198

193:                                              ; preds = %189
  %194 = load i64*, i64** %19, align 8
  %195 = load i64, i64* %194, align 8
  %196 = load i64, i64* @SPACE, align 8
  %197 = icmp ne i64 %195, %196
  br label %198

198:                                              ; preds = %193, %189
  %199 = phi i1 [ false, %189 ], [ %197, %193 ]
  br i1 %199, label %200, label %203

200:                                              ; preds = %198
  %201 = load i64*, i64** %19, align 8
  %202 = getelementptr inbounds i64, i64* %201, i32 1
  store i64* %202, i64** %19, align 8
  br label %189

203:                                              ; preds = %198
  %204 = load i64*, i64** %19, align 8
  %205 = load i64*, i64** %11, align 8
  %206 = ptrtoint i64* %204 to i64
  %207 = ptrtoint i64* %205 to i64
  %208 = sub i64 %206, %207
  %209 = sdiv exact i64 %208, 8
  %210 = trunc i64 %209 to i32
  %211 = load i32*, i32** %17, align 8
  store i32 %210, i32* %211, align 4
  %212 = load i64*, i64** %19, align 8
  %213 = load i64*, i64** %22, align 8
  %214 = icmp ult i64* %212, %213
  br i1 %214, label %215, label %219

215:                                              ; preds = %203
  %216 = load i32*, i32** %17, align 8
  %217 = load i32, i32* %216, align 4
  %218 = add i32 %217, 1
  store i32 %218, i32* %216, align 4
  br label %219

219:                                              ; preds = %215, %203
  %220 = load i64*, i64** %19, align 8
  %221 = load i64*, i64** %11, align 8
  %222 = ptrtoint i64* %220 to i64
  %223 = ptrtoint i64* %221 to i64
  %224 = sub i64 %222, %223
  %225 = sdiv exact i64 %224, 8
  %226 = trunc i64 %225 to i32
  %227 = load i32*, i32** %13, align 8
  store i32 %226, i32* %227, align 4
  br label %228

228:                                              ; preds = %219, %174
  br label %229

229:                                              ; preds = %228, %157
  %230 = load i32, i32* %10, align 4
  %231 = load i64*, i64** %11, align 8
  %232 = load i32*, i32** %13, align 8
  %233 = load i32, i32* %232, align 4
  %234 = load i32*, i32** %18, align 8
  %235 = call i32 @GetTextExtentExPointW(i32 %230, i64* %231, i32 %233, i32 0, i32* null, i32* null, i32* %234)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @IsCJKT(i64) #1

declare dso_local i32* @wcschr(i32, i64) #1

declare dso_local i32 @GetTextExtentExPointW(i32, i64*, i32, i32, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
