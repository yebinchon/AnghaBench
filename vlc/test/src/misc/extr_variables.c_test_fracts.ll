; ModuleID = '/home/carl/AnghaBench/vlc/test/src/misc/extr_variables.c_test_fracts.c'
source_filename = "/home/carl/AnghaBench/vlc/test/src/misc/extr_variables.c_test_fracts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@psz_var_name = common dso_local global i8** null, align 8
@VLC_VAR_STRING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"123garbage\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"4/5garbage\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"6.7garbage\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"010\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"30\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"30.0\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"030.030\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"60/2\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"29.97\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"30000/1001\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c".125\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"12:9\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"000000/00000000\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"12345/0\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @test_fracts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_fracts(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %6 = load i8**, i8*** @psz_var_name, align 8
  %7 = getelementptr inbounds i8*, i8** %6, i64 0
  %8 = load i8*, i8** %7, align 8
  store i8* %8, i8** %3, align 8
  %9 = load i32*, i32** %2, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = load i32, i32* @VLC_VAR_STRING, align 4
  %12 = call i32 @var_Create(i32* %9, i8* %10, i32 %11)
  %13 = load i32*, i32** %2, align 8
  %14 = load i8*, i8** %3, align 8
  %15 = call i64 @var_InheritURational(i32* %13, i32* %4, i32* %5, i8* %14)
  %16 = icmp ne i64 %15, 0
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert(i32 %17)
  %19 = load i32*, i32** %2, align 8
  %20 = load i8*, i8** %3, align 8
  %21 = call i32 @var_SetString(i32* %19, i8* %20, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %22 = load i32*, i32** %2, align 8
  %23 = load i8*, i8** %3, align 8
  %24 = call i64 @var_InheritURational(i32* %22, i32* %4, i32* %5, i8* %23)
  %25 = icmp ne i64 %24, 0
  %26 = zext i1 %25 to i32
  %27 = call i32 @assert(i32 %26)
  %28 = load i32*, i32** %2, align 8
  %29 = load i8*, i8** %3, align 8
  %30 = call i32 @var_SetString(i32* %28, i8* %29, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %31 = load i32*, i32** %2, align 8
  %32 = load i8*, i8** %3, align 8
  %33 = call i64 @var_InheritURational(i32* %31, i32* %4, i32* %5, i8* %32)
  %34 = icmp ne i64 %33, 0
  %35 = zext i1 %34 to i32
  %36 = call i32 @assert(i32 %35)
  %37 = load i32*, i32** %2, align 8
  %38 = load i8*, i8** %3, align 8
  %39 = call i32 @var_SetString(i32* %37, i8* %38, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %40 = load i32*, i32** %2, align 8
  %41 = load i8*, i8** %3, align 8
  %42 = call i64 @var_InheritURational(i32* %40, i32* %4, i32* %5, i8* %41)
  %43 = icmp ne i64 %42, 0
  %44 = zext i1 %43 to i32
  %45 = call i32 @assert(i32 %44)
  %46 = load i32*, i32** %2, align 8
  %47 = load i8*, i8** %3, align 8
  %48 = call i32 @var_SetString(i32* %46, i8* %47, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %49 = load i32*, i32** %2, align 8
  %50 = load i8*, i8** %3, align 8
  %51 = call i64 @var_InheritURational(i32* %49, i32* %4, i32* %5, i8* %50)
  %52 = icmp eq i64 %51, 0
  %53 = zext i1 %52 to i32
  %54 = call i32 @assert(i32 %53)
  %55 = load i32, i32* %4, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %1
  %58 = load i32, i32* %5, align 4
  %59 = icmp eq i32 %58, 1
  br label %60

60:                                               ; preds = %57, %1
  %61 = phi i1 [ false, %1 ], [ %59, %57 ]
  %62 = zext i1 %61 to i32
  %63 = call i32 @assert(i32 %62)
  %64 = load i32*, i32** %2, align 8
  %65 = load i8*, i8** %3, align 8
  %66 = call i32 @var_SetString(i32* %64, i8* %65, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %67 = load i32*, i32** %2, align 8
  %68 = load i8*, i8** %3, align 8
  %69 = call i64 @var_InheritURational(i32* %67, i32* %4, i32* %5, i8* %68)
  %70 = icmp eq i64 %69, 0
  %71 = zext i1 %70 to i32
  %72 = call i32 @assert(i32 %71)
  %73 = load i32, i32* %4, align 4
  %74 = icmp eq i32 %73, 10
  br i1 %74, label %75, label %78

75:                                               ; preds = %60
  %76 = load i32, i32* %5, align 4
  %77 = icmp eq i32 %76, 1
  br label %78

78:                                               ; preds = %75, %60
  %79 = phi i1 [ false, %60 ], [ %77, %75 ]
  %80 = zext i1 %79 to i32
  %81 = call i32 @assert(i32 %80)
  %82 = load i32*, i32** %2, align 8
  %83 = load i8*, i8** %3, align 8
  %84 = call i32 @var_SetString(i32* %82, i8* %83, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %85 = load i32*, i32** %2, align 8
  %86 = load i8*, i8** %3, align 8
  %87 = call i64 @var_InheritURational(i32* %85, i32* %4, i32* %5, i8* %86)
  %88 = icmp eq i64 %87, 0
  %89 = zext i1 %88 to i32
  %90 = call i32 @assert(i32 %89)
  %91 = load i32, i32* %4, align 4
  %92 = icmp eq i32 %91, 30
  br i1 %92, label %93, label %96

93:                                               ; preds = %78
  %94 = load i32, i32* %5, align 4
  %95 = icmp eq i32 %94, 1
  br label %96

96:                                               ; preds = %93, %78
  %97 = phi i1 [ false, %78 ], [ %95, %93 ]
  %98 = zext i1 %97 to i32
  %99 = call i32 @assert(i32 %98)
  %100 = load i32*, i32** %2, align 8
  %101 = load i8*, i8** %3, align 8
  %102 = call i32 @var_SetString(i32* %100, i8* %101, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %103 = load i32*, i32** %2, align 8
  %104 = load i8*, i8** %3, align 8
  %105 = call i64 @var_InheritURational(i32* %103, i32* %4, i32* %5, i8* %104)
  %106 = icmp eq i64 %105, 0
  %107 = zext i1 %106 to i32
  %108 = call i32 @assert(i32 %107)
  %109 = load i32, i32* %4, align 4
  %110 = icmp eq i32 %109, 30
  br i1 %110, label %111, label %114

111:                                              ; preds = %96
  %112 = load i32, i32* %5, align 4
  %113 = icmp eq i32 %112, 1
  br label %114

114:                                              ; preds = %111, %96
  %115 = phi i1 [ false, %96 ], [ %113, %111 ]
  %116 = zext i1 %115 to i32
  %117 = call i32 @assert(i32 %116)
  %118 = load i32*, i32** %2, align 8
  %119 = load i8*, i8** %3, align 8
  %120 = call i32 @var_SetString(i32* %118, i8* %119, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  %121 = load i32*, i32** %2, align 8
  %122 = load i8*, i8** %3, align 8
  %123 = call i64 @var_InheritURational(i32* %121, i32* %4, i32* %5, i8* %122)
  %124 = icmp eq i64 %123, 0
  %125 = zext i1 %124 to i32
  %126 = call i32 @assert(i32 %125)
  %127 = load i32, i32* %4, align 4
  %128 = icmp eq i32 %127, 3003
  br i1 %128, label %129, label %132

129:                                              ; preds = %114
  %130 = load i32, i32* %5, align 4
  %131 = icmp eq i32 %130, 100
  br label %132

132:                                              ; preds = %129, %114
  %133 = phi i1 [ false, %114 ], [ %131, %129 ]
  %134 = zext i1 %133 to i32
  %135 = call i32 @assert(i32 %134)
  %136 = load i32*, i32** %2, align 8
  %137 = load i8*, i8** %3, align 8
  %138 = call i32 @var_SetString(i32* %136, i8* %137, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  %139 = load i32*, i32** %2, align 8
  %140 = load i8*, i8** %3, align 8
  %141 = call i64 @var_InheritURational(i32* %139, i32* %4, i32* %5, i8* %140)
  %142 = icmp eq i64 %141, 0
  %143 = zext i1 %142 to i32
  %144 = call i32 @assert(i32 %143)
  %145 = load i32, i32* %4, align 4
  %146 = icmp eq i32 %145, 30
  br i1 %146, label %147, label %150

147:                                              ; preds = %132
  %148 = load i32, i32* %5, align 4
  %149 = icmp eq i32 %148, 1
  br label %150

150:                                              ; preds = %147, %132
  %151 = phi i1 [ false, %132 ], [ %149, %147 ]
  %152 = zext i1 %151 to i32
  %153 = call i32 @assert(i32 %152)
  %154 = load i32*, i32** %2, align 8
  %155 = load i8*, i8** %3, align 8
  %156 = call i32 @var_SetString(i32* %154, i8* %155, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0))
  %157 = load i32*, i32** %2, align 8
  %158 = load i8*, i8** %3, align 8
  %159 = call i64 @var_InheritURational(i32* %157, i32* %4, i32* %5, i8* %158)
  %160 = icmp eq i64 %159, 0
  %161 = zext i1 %160 to i32
  %162 = call i32 @assert(i32 %161)
  %163 = load i32, i32* %4, align 4
  %164 = icmp eq i32 %163, 2997
  br i1 %164, label %165, label %168

165:                                              ; preds = %150
  %166 = load i32, i32* %5, align 4
  %167 = icmp eq i32 %166, 100
  br label %168

168:                                              ; preds = %165, %150
  %169 = phi i1 [ false, %150 ], [ %167, %165 ]
  %170 = zext i1 %169 to i32
  %171 = call i32 @assert(i32 %170)
  %172 = load i32*, i32** %2, align 8
  %173 = load i8*, i8** %3, align 8
  %174 = call i32 @var_SetString(i32* %172, i8* %173, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0))
  %175 = load i32*, i32** %2, align 8
  %176 = load i8*, i8** %3, align 8
  %177 = call i64 @var_InheritURational(i32* %175, i32* %4, i32* %5, i8* %176)
  %178 = icmp eq i64 %177, 0
  %179 = zext i1 %178 to i32
  %180 = call i32 @assert(i32 %179)
  %181 = load i32, i32* %4, align 4
  %182 = icmp eq i32 %181, 30000
  br i1 %182, label %183, label %186

183:                                              ; preds = %168
  %184 = load i32, i32* %5, align 4
  %185 = icmp eq i32 %184, 1001
  br label %186

186:                                              ; preds = %183, %168
  %187 = phi i1 [ false, %168 ], [ %185, %183 ]
  %188 = zext i1 %187 to i32
  %189 = call i32 @assert(i32 %188)
  %190 = load i32*, i32** %2, align 8
  %191 = load i8*, i8** %3, align 8
  %192 = call i32 @var_SetString(i32* %190, i8* %191, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0))
  %193 = load i32*, i32** %2, align 8
  %194 = load i8*, i8** %3, align 8
  %195 = call i64 @var_InheritURational(i32* %193, i32* %4, i32* %5, i8* %194)
  %196 = icmp eq i64 %195, 0
  %197 = zext i1 %196 to i32
  %198 = call i32 @assert(i32 %197)
  %199 = load i32, i32* %4, align 4
  %200 = icmp eq i32 %199, 1
  br i1 %200, label %201, label %204

201:                                              ; preds = %186
  %202 = load i32, i32* %5, align 4
  %203 = icmp eq i32 %202, 8
  br label %204

204:                                              ; preds = %201, %186
  %205 = phi i1 [ false, %186 ], [ %203, %201 ]
  %206 = zext i1 %205 to i32
  %207 = call i32 @assert(i32 %206)
  %208 = load i32*, i32** %2, align 8
  %209 = load i8*, i8** %3, align 8
  %210 = call i32 @var_SetString(i32* %208, i8* %209, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0))
  %211 = load i32*, i32** %2, align 8
  %212 = load i8*, i8** %3, align 8
  %213 = call i64 @var_InheritURational(i32* %211, i32* %4, i32* %5, i8* %212)
  %214 = icmp eq i64 %213, 0
  %215 = zext i1 %214 to i32
  %216 = call i32 @assert(i32 %215)
  %217 = load i32, i32* %4, align 4
  %218 = icmp eq i32 %217, 4
  br i1 %218, label %219, label %222

219:                                              ; preds = %204
  %220 = load i32, i32* %5, align 4
  %221 = icmp eq i32 %220, 3
  br label %222

222:                                              ; preds = %219, %204
  %223 = phi i1 [ false, %204 ], [ %221, %219 ]
  %224 = zext i1 %223 to i32
  %225 = call i32 @assert(i32 %224)
  %226 = load i32*, i32** %2, align 8
  %227 = load i8*, i8** %3, align 8
  %228 = call i32 @var_SetString(i32* %226, i8* %227, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i64 0, i64 0))
  %229 = load i32*, i32** %2, align 8
  %230 = load i8*, i8** %3, align 8
  %231 = call i64 @var_InheritURational(i32* %229, i32* %4, i32* %5, i8* %230)
  %232 = icmp eq i64 %231, 0
  %233 = zext i1 %232 to i32
  %234 = call i32 @assert(i32 %233)
  %235 = load i32, i32* %4, align 4
  %236 = icmp eq i32 %235, 0
  br i1 %236, label %237, label %240

237:                                              ; preds = %222
  %238 = load i32, i32* %5, align 4
  %239 = icmp eq i32 %238, 0
  br label %240

240:                                              ; preds = %237, %222
  %241 = phi i1 [ false, %222 ], [ %239, %237 ]
  %242 = zext i1 %241 to i32
  %243 = call i32 @assert(i32 %242)
  %244 = load i32*, i32** %2, align 8
  %245 = load i8*, i8** %3, align 8
  %246 = call i32 @var_SetString(i32* %244, i8* %245, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0))
  %247 = load i32*, i32** %2, align 8
  %248 = load i8*, i8** %3, align 8
  %249 = call i64 @var_InheritURational(i32* %247, i32* %4, i32* %5, i8* %248)
  %250 = icmp eq i64 %249, 0
  %251 = zext i1 %250 to i32
  %252 = call i32 @assert(i32 %251)
  %253 = load i32, i32* %4, align 4
  %254 = icmp eq i32 %253, 1
  br i1 %254, label %255, label %258

255:                                              ; preds = %240
  %256 = load i32, i32* %5, align 4
  %257 = icmp eq i32 %256, 0
  br label %258

258:                                              ; preds = %255, %240
  %259 = phi i1 [ false, %240 ], [ %257, %255 ]
  %260 = zext i1 %259 to i32
  %261 = call i32 @assert(i32 %260)
  %262 = load i32*, i32** %2, align 8
  %263 = load i8*, i8** %3, align 8
  %264 = call i32 @var_Destroy(i32* %262, i8* %263)
  ret void
}

declare dso_local i32 @var_Create(i32*, i8*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @var_InheritURational(i32*, i32*, i32*, i8*) #1

declare dso_local i32 @var_SetString(i32*, i8*, i8*) #1

declare dso_local i32 @var_Destroy(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
