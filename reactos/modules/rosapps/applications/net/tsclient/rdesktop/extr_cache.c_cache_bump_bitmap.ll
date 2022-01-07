; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_cache.c_cache_bump_bitmap.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_cache.c_cache_bump_bitmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64*, i32*, %struct.TYPE_5__**, i32* }
%struct.TYPE_5__ = type { i32, i32 }

@.str = private unnamed_addr constant [37 x i8] c"bump bitmap: id=%d, idx=%d, bump=%d\0A\00", align 1
@NOT_SET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cache_bump_bitmap(%struct.TYPE_7__* %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load i64, i64* %6, align 8
  %13 = call i32 @IS_PERSISTENT(i64 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %4
  br label %251

16:                                               ; preds = %4
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i64*, i64** %19, align 8
  %21 = load i64, i64* %6, align 8
  %22 = getelementptr inbounds i64, i64* %20, i64 %21
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* %7, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %16
  br label %251

27:                                               ; preds = %16
  %28 = load i64, i64* %6, align 8
  %29 = load i64, i64* %7, align 8
  %30 = load i32, i32* %8, align 4
  %31 = sext i32 %30 to i64
  %32 = inttoptr i64 %31 to i8*
  %33 = call i32 @DEBUG_RDP5(i8* %32)
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 2
  %37 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %36, align 8
  %38 = load i64, i64* %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %37, i64 %38
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %39, align 8
  %41 = load i64, i64* %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %10, align 4
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 2
  %48 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %47, align 8
  %49 = load i64, i64* %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %48, i64 %49
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %50, align 8
  %52 = load i64, i64* %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %9, align 4
  %56 = load i32, i32* %10, align 4
  %57 = call i64 @IS_SET(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %119

59:                                               ; preds = %27
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 3
  %63 = load i32*, i32** %62, align 8
  %64 = load i64, i64* %6, align 8
  %65 = getelementptr inbounds i32, i32* %63, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = add nsw i32 %66, -1
  store i32 %67, i32* %65, align 4
  %68 = load i32, i32* %9, align 4
  %69 = call i64 @IS_SET(i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %84

71:                                               ; preds = %59
  %72 = load i32, i32* %10, align 4
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 2
  %76 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %75, align 8
  %77 = load i64, i64* %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %76, i64 %77
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %78, align 8
  %80 = load i32, i32* %9, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 0
  store i32 %72, i32* %83, align 4
  br label %92

84:                                               ; preds = %59
  %85 = load i32, i32* %10, align 4
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 1
  %89 = load i32*, i32** %88, align 8
  %90 = load i64, i64* %6, align 8
  %91 = getelementptr inbounds i32, i32* %89, i64 %90
  store i32 %85, i32* %91, align 4
  br label %92

92:                                               ; preds = %84, %71
  %93 = load i32, i32* %10, align 4
  %94 = call i64 @IS_SET(i32 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %109

96:                                               ; preds = %92
  %97 = load i32, i32* %9, align 4
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 2
  %101 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %100, align 8
  %102 = load i64, i64* %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %101, i64 %102
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %103, align 8
  %105 = load i32, i32* %10, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 1
  store i32 %97, i32* %108, align 4
  br label %118

109:                                              ; preds = %92
  %110 = load i32, i32* %9, align 4
  %111 = sext i32 %110 to i64
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 0
  %115 = load i64*, i64** %114, align 8
  %116 = load i64, i64* %6, align 8
  %117 = getelementptr inbounds i64, i64* %115, i64 %116
  store i64 %111, i64* %117, align 8
  br label %118

118:                                              ; preds = %109, %96
  br label %128

119:                                              ; preds = %27
  %120 = load i32, i32* @NOT_SET, align 4
  store i32 %120, i32* %9, align 4
  %121 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 1
  %124 = load i32*, i32** %123, align 8
  %125 = load i64, i64* %6, align 8
  %126 = getelementptr inbounds i32, i32* %124, i64 %125
  %127 = load i32, i32* %126, align 4
  store i32 %127, i32* %10, align 4
  br label %128

128:                                              ; preds = %119, %118
  %129 = load i32, i32* %8, align 4
  %130 = icmp sge i32 %129, 0
  br i1 %130, label %131, label %160

131:                                              ; preds = %128
  store i32 0, i32* %11, align 4
  br label %132

132:                                              ; preds = %156, %131
  %133 = load i32, i32* %11, align 4
  %134 = load i32, i32* %8, align 4
  %135 = icmp slt i32 %133, %134
  br i1 %135, label %136, label %140

136:                                              ; preds = %132
  %137 = load i32, i32* %10, align 4
  %138 = call i64 @IS_SET(i32 %137)
  %139 = icmp ne i64 %138, 0
  br label %140

140:                                              ; preds = %136, %132
  %141 = phi i1 [ false, %132 ], [ %139, %136 ]
  br i1 %141, label %142, label %159

142:                                              ; preds = %140
  %143 = load i32, i32* %10, align 4
  store i32 %143, i32* %9, align 4
  %144 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %145 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 2
  %147 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %146, align 8
  %148 = load i64, i64* %6, align 8
  %149 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %147, i64 %148
  %150 = load %struct.TYPE_5__*, %struct.TYPE_5__** %149, align 8
  %151 = load i32, i32* %9, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %150, i64 %152
  %154 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  store i32 %155, i32* %10, align 4
  br label %156

156:                                              ; preds = %142
  %157 = load i32, i32* %11, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %11, align 4
  br label %132

159:                                              ; preds = %140
  br label %170

160:                                              ; preds = %128
  %161 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %162 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i32 0, i32 0
  %164 = load i64*, i64** %163, align 8
  %165 = load i64, i64* %6, align 8
  %166 = getelementptr inbounds i64, i64* %164, i64 %165
  %167 = load i64, i64* %166, align 8
  %168 = trunc i64 %167 to i32
  store i32 %168, i32* %9, align 4
  %169 = load i32, i32* @NOT_SET, align 4
  store i32 %169, i32* %10, align 4
  br label %170

170:                                              ; preds = %160, %159
  %171 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %172 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %172, i32 0, i32 3
  %174 = load i32*, i32** %173, align 8
  %175 = load i64, i64* %6, align 8
  %176 = getelementptr inbounds i32, i32* %174, i64 %175
  %177 = load i32, i32* %176, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %176, align 4
  %179 = load i32, i32* %9, align 4
  %180 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %181 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %181, i32 0, i32 2
  %183 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %182, align 8
  %184 = load i64, i64* %6, align 8
  %185 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %183, i64 %184
  %186 = load %struct.TYPE_5__*, %struct.TYPE_5__** %185, align 8
  %187 = load i64, i64* %7, align 8
  %188 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %186, i64 %187
  %189 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %188, i32 0, i32 1
  store i32 %179, i32* %189, align 4
  %190 = load i32, i32* %10, align 4
  %191 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %192 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %191, i32 0, i32 0
  %193 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %192, i32 0, i32 2
  %194 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %193, align 8
  %195 = load i64, i64* %6, align 8
  %196 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %194, i64 %195
  %197 = load %struct.TYPE_5__*, %struct.TYPE_5__** %196, align 8
  %198 = load i64, i64* %7, align 8
  %199 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %197, i64 %198
  %200 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %199, i32 0, i32 0
  store i32 %190, i32* %200, align 4
  %201 = load i32, i32* %9, align 4
  %202 = icmp sge i32 %201, 0
  br i1 %202, label %203, label %217

203:                                              ; preds = %170
  %204 = load i64, i64* %7, align 8
  %205 = trunc i64 %204 to i32
  %206 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %207 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %206, i32 0, i32 0
  %208 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %207, i32 0, i32 2
  %209 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %208, align 8
  %210 = load i64, i64* %6, align 8
  %211 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %209, i64 %210
  %212 = load %struct.TYPE_5__*, %struct.TYPE_5__** %211, align 8
  %213 = load i32, i32* %9, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %212, i64 %214
  %216 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %215, i32 0, i32 0
  store i32 %205, i32* %216, align 4
  br label %226

217:                                              ; preds = %170
  %218 = load i64, i64* %7, align 8
  %219 = trunc i64 %218 to i32
  %220 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %221 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %220, i32 0, i32 0
  %222 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %221, i32 0, i32 1
  %223 = load i32*, i32** %222, align 8
  %224 = load i64, i64* %6, align 8
  %225 = getelementptr inbounds i32, i32* %223, i64 %224
  store i32 %219, i32* %225, align 4
  br label %226

226:                                              ; preds = %217, %203
  %227 = load i32, i32* %10, align 4
  %228 = icmp sge i32 %227, 0
  br i1 %228, label %229, label %243

229:                                              ; preds = %226
  %230 = load i64, i64* %7, align 8
  %231 = trunc i64 %230 to i32
  %232 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %233 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %232, i32 0, i32 0
  %234 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %233, i32 0, i32 2
  %235 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %234, align 8
  %236 = load i64, i64* %6, align 8
  %237 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %235, i64 %236
  %238 = load %struct.TYPE_5__*, %struct.TYPE_5__** %237, align 8
  %239 = load i32, i32* %10, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %238, i64 %240
  %242 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %241, i32 0, i32 1
  store i32 %231, i32* %242, align 4
  br label %251

243:                                              ; preds = %226
  %244 = load i64, i64* %7, align 8
  %245 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %246 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %245, i32 0, i32 0
  %247 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %246, i32 0, i32 0
  %248 = load i64*, i64** %247, align 8
  %249 = load i64, i64* %6, align 8
  %250 = getelementptr inbounds i64, i64* %248, i64 %249
  store i64 %244, i64* %250, align 8
  br label %251

251:                                              ; preds = %15, %26, %243, %229
  ret void
}

declare dso_local i32 @IS_PERSISTENT(i64) #1

declare dso_local i32 @DEBUG_RDP5(i8*) #1

declare dso_local i64 @IS_SET(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
