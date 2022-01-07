; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_util.c_sqlite3GetVarint.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_util.c_sqlite3GetVarint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SLOT_2_0 = common dso_local global i32 0, align 4
@SLOT_4_2_0 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sqlite3GetVarint(i8* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = load i8, i8* %9, align 1
  %11 = zext i8 %10 to i32
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = and i32 %12, 128
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* %6, align 4
  %17 = load i32*, i32** %5, align 8
  store i32 %16, i32* %17, align 4
  store i32 1, i32* %3, align 4
  br label %262

18:                                               ; preds = %2
  %19 = load i8*, i8** %4, align 8
  %20 = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %20, i8** %4, align 8
  %21 = load i8*, i8** %4, align 8
  %22 = load i8, i8* %21, align 1
  %23 = zext i8 %22 to i32
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = and i32 %24, 128
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %37, label %27

27:                                               ; preds = %18
  %28 = load i32, i32* %6, align 4
  %29 = and i32 %28, 127
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = shl i32 %30, 7
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* %6, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = load i32*, i32** %5, align 8
  store i32 %35, i32* %36, align 4
  store i32 2, i32* %3, align 4
  br label %262

37:                                               ; preds = %18
  %38 = load i32, i32* @SLOT_2_0, align 4
  %39 = icmp eq i32 %38, 2080895
  %40 = zext i1 %39 to i32
  %41 = call i32 @assert(i32 %40)
  %42 = load i32, i32* @SLOT_4_2_0, align 4
  %43 = icmp eq i32 %42, -266354561
  %44 = zext i1 %43 to i32
  %45 = call i32 @assert(i32 %44)
  %46 = load i8*, i8** %4, align 8
  %47 = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %47, i8** %4, align 8
  %48 = load i32, i32* %6, align 4
  %49 = shl i32 %48, 14
  store i32 %49, i32* %6, align 4
  %50 = load i8*, i8** %4, align 8
  %51 = load i8, i8* %50, align 1
  %52 = zext i8 %51 to i32
  %53 = load i32, i32* %6, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %6, align 4
  %55 = load i32, i32* %6, align 4
  %56 = and i32 %55, 128
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %71, label %58

58:                                               ; preds = %37
  %59 = load i32, i32* @SLOT_2_0, align 4
  %60 = load i32, i32* %6, align 4
  %61 = and i32 %60, %59
  store i32 %61, i32* %6, align 4
  %62 = load i32, i32* %7, align 4
  %63 = and i32 %62, 127
  store i32 %63, i32* %7, align 4
  %64 = load i32, i32* %7, align 4
  %65 = shl i32 %64, 7
  store i32 %65, i32* %7, align 4
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* %6, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %6, align 4
  %69 = load i32, i32* %6, align 4
  %70 = load i32*, i32** %5, align 8
  store i32 %69, i32* %70, align 4
  store i32 3, i32* %3, align 4
  br label %262

71:                                               ; preds = %37
  %72 = load i32, i32* @SLOT_2_0, align 4
  %73 = load i32, i32* %6, align 4
  %74 = and i32 %73, %72
  store i32 %74, i32* %6, align 4
  %75 = load i8*, i8** %4, align 8
  %76 = getelementptr inbounds i8, i8* %75, i32 1
  store i8* %76, i8** %4, align 8
  %77 = load i32, i32* %7, align 4
  %78 = shl i32 %77, 14
  store i32 %78, i32* %7, align 4
  %79 = load i8*, i8** %4, align 8
  %80 = load i8, i8* %79, align 1
  %81 = zext i8 %80 to i32
  %82 = load i32, i32* %7, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %7, align 4
  %84 = load i32, i32* %7, align 4
  %85 = and i32 %84, 128
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %98, label %87

87:                                               ; preds = %71
  %88 = load i32, i32* @SLOT_2_0, align 4
  %89 = load i32, i32* %7, align 4
  %90 = and i32 %89, %88
  store i32 %90, i32* %7, align 4
  %91 = load i32, i32* %6, align 4
  %92 = shl i32 %91, 7
  store i32 %92, i32* %6, align 4
  %93 = load i32, i32* %7, align 4
  %94 = load i32, i32* %6, align 4
  %95 = or i32 %94, %93
  store i32 %95, i32* %6, align 4
  %96 = load i32, i32* %6, align 4
  %97 = load i32*, i32** %5, align 8
  store i32 %96, i32* %97, align 4
  store i32 4, i32* %3, align 4
  br label %262

98:                                               ; preds = %71
  %99 = load i32, i32* @SLOT_2_0, align 4
  %100 = load i32, i32* %7, align 4
  %101 = and i32 %100, %99
  store i32 %101, i32* %7, align 4
  %102 = load i32, i32* %6, align 4
  store i32 %102, i32* %8, align 4
  %103 = load i8*, i8** %4, align 8
  %104 = getelementptr inbounds i8, i8* %103, i32 1
  store i8* %104, i8** %4, align 8
  %105 = load i32, i32* %6, align 4
  %106 = shl i32 %105, 14
  store i32 %106, i32* %6, align 4
  %107 = load i8*, i8** %4, align 8
  %108 = load i8, i8* %107, align 1
  %109 = zext i8 %108 to i32
  %110 = load i32, i32* %6, align 4
  %111 = or i32 %110, %109
  store i32 %111, i32* %6, align 4
  %112 = load i32, i32* %6, align 4
  %113 = and i32 %112, 128
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %128, label %115

115:                                              ; preds = %98
  %116 = load i32, i32* %7, align 4
  %117 = shl i32 %116, 7
  store i32 %117, i32* %7, align 4
  %118 = load i32, i32* %7, align 4
  %119 = load i32, i32* %6, align 4
  %120 = or i32 %119, %118
  store i32 %120, i32* %6, align 4
  %121 = load i32, i32* %8, align 4
  %122 = ashr i32 %121, 18
  store i32 %122, i32* %8, align 4
  %123 = load i32, i32* %8, align 4
  %124 = shl i32 %123, 32
  %125 = load i32, i32* %6, align 4
  %126 = or i32 %124, %125
  %127 = load i32*, i32** %5, align 8
  store i32 %126, i32* %127, align 4
  store i32 5, i32* %3, align 4
  br label %262

128:                                              ; preds = %98
  %129 = load i32, i32* %8, align 4
  %130 = shl i32 %129, 7
  store i32 %130, i32* %8, align 4
  %131 = load i32, i32* %7, align 4
  %132 = load i32, i32* %8, align 4
  %133 = or i32 %132, %131
  store i32 %133, i32* %8, align 4
  %134 = load i8*, i8** %4, align 8
  %135 = getelementptr inbounds i8, i8* %134, i32 1
  store i8* %135, i8** %4, align 8
  %136 = load i32, i32* %7, align 4
  %137 = shl i32 %136, 14
  store i32 %137, i32* %7, align 4
  %138 = load i8*, i8** %4, align 8
  %139 = load i8, i8* %138, align 1
  %140 = zext i8 %139 to i32
  %141 = load i32, i32* %7, align 4
  %142 = or i32 %141, %140
  store i32 %142, i32* %7, align 4
  %143 = load i32, i32* %7, align 4
  %144 = and i32 %143, 128
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %162, label %146

146:                                              ; preds = %128
  %147 = load i32, i32* @SLOT_2_0, align 4
  %148 = load i32, i32* %6, align 4
  %149 = and i32 %148, %147
  store i32 %149, i32* %6, align 4
  %150 = load i32, i32* %6, align 4
  %151 = shl i32 %150, 7
  store i32 %151, i32* %6, align 4
  %152 = load i32, i32* %7, align 4
  %153 = load i32, i32* %6, align 4
  %154 = or i32 %153, %152
  store i32 %154, i32* %6, align 4
  %155 = load i32, i32* %8, align 4
  %156 = ashr i32 %155, 18
  store i32 %156, i32* %8, align 4
  %157 = load i32, i32* %8, align 4
  %158 = shl i32 %157, 32
  %159 = load i32, i32* %6, align 4
  %160 = or i32 %158, %159
  %161 = load i32*, i32** %5, align 8
  store i32 %160, i32* %161, align 4
  store i32 6, i32* %3, align 4
  br label %262

162:                                              ; preds = %128
  %163 = load i8*, i8** %4, align 8
  %164 = getelementptr inbounds i8, i8* %163, i32 1
  store i8* %164, i8** %4, align 8
  %165 = load i32, i32* %6, align 4
  %166 = shl i32 %165, 14
  store i32 %166, i32* %6, align 4
  %167 = load i8*, i8** %4, align 8
  %168 = load i8, i8* %167, align 1
  %169 = zext i8 %168 to i32
  %170 = load i32, i32* %6, align 4
  %171 = or i32 %170, %169
  store i32 %171, i32* %6, align 4
  %172 = load i32, i32* %6, align 4
  %173 = and i32 %172, 128
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %194, label %175

175:                                              ; preds = %162
  %176 = load i32, i32* @SLOT_4_2_0, align 4
  %177 = load i32, i32* %6, align 4
  %178 = and i32 %177, %176
  store i32 %178, i32* %6, align 4
  %179 = load i32, i32* @SLOT_2_0, align 4
  %180 = load i32, i32* %7, align 4
  %181 = and i32 %180, %179
  store i32 %181, i32* %7, align 4
  %182 = load i32, i32* %7, align 4
  %183 = shl i32 %182, 7
  store i32 %183, i32* %7, align 4
  %184 = load i32, i32* %7, align 4
  %185 = load i32, i32* %6, align 4
  %186 = or i32 %185, %184
  store i32 %186, i32* %6, align 4
  %187 = load i32, i32* %8, align 4
  %188 = ashr i32 %187, 11
  store i32 %188, i32* %8, align 4
  %189 = load i32, i32* %8, align 4
  %190 = shl i32 %189, 32
  %191 = load i32, i32* %6, align 4
  %192 = or i32 %190, %191
  %193 = load i32*, i32** %5, align 8
  store i32 %192, i32* %193, align 4
  store i32 7, i32* %3, align 4
  br label %262

194:                                              ; preds = %162
  %195 = load i32, i32* @SLOT_2_0, align 4
  %196 = load i32, i32* %6, align 4
  %197 = and i32 %196, %195
  store i32 %197, i32* %6, align 4
  %198 = load i8*, i8** %4, align 8
  %199 = getelementptr inbounds i8, i8* %198, i32 1
  store i8* %199, i8** %4, align 8
  %200 = load i32, i32* %7, align 4
  %201 = shl i32 %200, 14
  store i32 %201, i32* %7, align 4
  %202 = load i8*, i8** %4, align 8
  %203 = load i8, i8* %202, align 1
  %204 = zext i8 %203 to i32
  %205 = load i32, i32* %7, align 4
  %206 = or i32 %205, %204
  store i32 %206, i32* %7, align 4
  %207 = load i32, i32* %7, align 4
  %208 = and i32 %207, 128
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %226, label %210

210:                                              ; preds = %194
  %211 = load i32, i32* @SLOT_4_2_0, align 4
  %212 = load i32, i32* %7, align 4
  %213 = and i32 %212, %211
  store i32 %213, i32* %7, align 4
  %214 = load i32, i32* %6, align 4
  %215 = shl i32 %214, 7
  store i32 %215, i32* %6, align 4
  %216 = load i32, i32* %7, align 4
  %217 = load i32, i32* %6, align 4
  %218 = or i32 %217, %216
  store i32 %218, i32* %6, align 4
  %219 = load i32, i32* %8, align 4
  %220 = ashr i32 %219, 4
  store i32 %220, i32* %8, align 4
  %221 = load i32, i32* %8, align 4
  %222 = shl i32 %221, 32
  %223 = load i32, i32* %6, align 4
  %224 = or i32 %222, %223
  %225 = load i32*, i32** %5, align 8
  store i32 %224, i32* %225, align 4
  store i32 8, i32* %3, align 4
  br label %262

226:                                              ; preds = %194
  %227 = load i8*, i8** %4, align 8
  %228 = getelementptr inbounds i8, i8* %227, i32 1
  store i8* %228, i8** %4, align 8
  %229 = load i32, i32* %6, align 4
  %230 = shl i32 %229, 15
  store i32 %230, i32* %6, align 4
  %231 = load i8*, i8** %4, align 8
  %232 = load i8, i8* %231, align 1
  %233 = zext i8 %232 to i32
  %234 = load i32, i32* %6, align 4
  %235 = or i32 %234, %233
  store i32 %235, i32* %6, align 4
  %236 = load i32, i32* @SLOT_2_0, align 4
  %237 = load i32, i32* %7, align 4
  %238 = and i32 %237, %236
  store i32 %238, i32* %7, align 4
  %239 = load i32, i32* %7, align 4
  %240 = shl i32 %239, 8
  store i32 %240, i32* %7, align 4
  %241 = load i32, i32* %7, align 4
  %242 = load i32, i32* %6, align 4
  %243 = or i32 %242, %241
  store i32 %243, i32* %6, align 4
  %244 = load i32, i32* %8, align 4
  %245 = shl i32 %244, 4
  store i32 %245, i32* %8, align 4
  %246 = load i8*, i8** %4, align 8
  %247 = getelementptr inbounds i8, i8* %246, i64 -4
  %248 = load i8, i8* %247, align 1
  %249 = zext i8 %248 to i32
  store i32 %249, i32* %7, align 4
  %250 = load i32, i32* %7, align 4
  %251 = and i32 %250, 127
  store i32 %251, i32* %7, align 4
  %252 = load i32, i32* %7, align 4
  %253 = ashr i32 %252, 3
  store i32 %253, i32* %7, align 4
  %254 = load i32, i32* %7, align 4
  %255 = load i32, i32* %8, align 4
  %256 = or i32 %255, %254
  store i32 %256, i32* %8, align 4
  %257 = load i32, i32* %8, align 4
  %258 = shl i32 %257, 32
  %259 = load i32, i32* %6, align 4
  %260 = or i32 %258, %259
  %261 = load i32*, i32** %5, align 8
  store i32 %260, i32* %261, align 4
  store i32 9, i32* %3, align 4
  br label %262

262:                                              ; preds = %226, %210, %175, %146, %115, %87, %58, %27, %15
  %263 = load i32, i32* %3, align 4
  ret i32 %263
}

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
