; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/riched20/extr_caret.c_ME_FindPixelPos.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/riched20/extr_caret.c_ME_FindPixelPos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_26__ = type { %struct.TYPE_25__*, %struct.TYPE_31__ }
%struct.TYPE_25__ = type { %struct.TYPE_27__*, %struct.TYPE_30__* }
%struct.TYPE_27__ = type { i64, %struct.TYPE_36__ }
%struct.TYPE_36__ = type { %struct.TYPE_35__, %struct.TYPE_33__ }
%struct.TYPE_35__ = type { i32, %struct.TYPE_34__ }
%struct.TYPE_34__ = type { i32 }
%struct.TYPE_33__ = type { i32, i32, %struct.TYPE_32__, %struct.TYPE_27__* }
%struct.TYPE_32__ = type { i32 }
%struct.TYPE_30__ = type { %struct.TYPE_29__ }
%struct.TYPE_29__ = type { %struct.TYPE_28__ }
%struct.TYPE_28__ = type { %struct.TYPE_27__* }
%struct.TYPE_31__ = type { i64, i64 }

@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@diParagraph = common dso_local global i64 0, align 8
@MEPF_ROWSTART = common dso_local global i32 0, align 4
@diStartRow = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_26__*, i32, i32, i32*, i32*, i32)* @ME_FindPixelPos to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ME_FindPixelPos(%struct.TYPE_26__* %0, i32 %1, i32 %2, i32* %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_26__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_27__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_27__*, align 8
  store %struct.TYPE_26__* %0, %struct.TYPE_26__** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  %17 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_25__*, %struct.TYPE_25__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_30__*, %struct.TYPE_30__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_27__*, %struct.TYPE_27__** %24, align 8
  store %struct.TYPE_27__* %25, %struct.TYPE_27__** %14, align 8
  %26 = load i32, i32* @TRUE, align 4
  store i32 %26, i32* %15, align 4
  %27 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load i32, i32* %9, align 4
  %32 = sext i32 %31 to i64
  %33 = sub nsw i64 %32, %30
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %9, align 4
  %35 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i32, i32* %10, align 4
  %40 = sext i32 %39 to i64
  %41 = sub nsw i64 %40, %38
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %10, align 4
  %43 = load i32*, i32** %12, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %45, label %48

45:                                               ; preds = %6
  %46 = load i32, i32* @FALSE, align 4
  %47 = load i32*, i32** %12, align 8
  store i32 %46, i32* %47, align 4
  br label %48

48:                                               ; preds = %45, %6
  br label %49

49:                                               ; preds = %119, %48
  %50 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %51 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_25__*, %struct.TYPE_25__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_27__*, %struct.TYPE_27__** %54, align 8
  %56 = icmp ne %struct.TYPE_27__* %50, %55
  br i1 %56, label %57, label %125

57:                                               ; preds = %49
  %58 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %59 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @diParagraph, align 8
  %62 = icmp eq i64 %60, %61
  %63 = zext i1 %62 to i32
  %64 = call i32 @assert(i32 %63)
  %65 = load i32, i32* %10, align 4
  %66 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %67 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %73 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = add nsw i32 %71, %76
  %78 = icmp slt i32 %65, %77
  br i1 %78, label %79, label %105

79:                                               ; preds = %57
  %80 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %81 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @MEPF_ROWSTART, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %79
  %89 = load i32, i32* %9, align 4
  %90 = load i32, i32* %10, align 4
  %91 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %92 = call %struct.TYPE_27__* @ME_FindPixelPosInTableRow(i32 %89, i32 %90, %struct.TYPE_27__* %91)
  store %struct.TYPE_27__* %92, %struct.TYPE_27__** %14, align 8
  br label %93

93:                                               ; preds = %88, %79
  %94 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %95 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %96, i32 0, i32 2
  %98 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* %10, align 4
  %101 = sub nsw i32 %100, %99
  store i32 %101, i32* %10, align 4
  %102 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %103 = load i64, i64* @diStartRow, align 8
  %104 = call %struct.TYPE_27__* @ME_FindItemFwd(%struct.TYPE_27__* %102, i64 %103)
  store %struct.TYPE_27__* %104, %struct.TYPE_27__** %14, align 8
  br label %125

105:                                              ; preds = %57
  %106 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %107 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @MEPF_ROWSTART, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %105
  %115 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %116 = call %struct.TYPE_27__* @ME_GetTableRowEnd(%struct.TYPE_27__* %115)
  store %struct.TYPE_27__* %116, %struct.TYPE_27__** %14, align 8
  br label %117

117:                                              ; preds = %114, %105
  br label %118

118:                                              ; preds = %117
  br label %119

119:                                              ; preds = %118
  %120 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %121 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %122, i32 0, i32 3
  %124 = load %struct.TYPE_27__*, %struct.TYPE_27__** %123, align 8
  store %struct.TYPE_27__* %124, %struct.TYPE_27__** %14, align 8
  br label %49

125:                                              ; preds = %93, %49
  br label %126

126:                                              ; preds = %164, %125
  %127 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %128 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %129 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %128, i32 0, i32 0
  %130 = load %struct.TYPE_25__*, %struct.TYPE_25__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %130, i32 0, i32 0
  %132 = load %struct.TYPE_27__*, %struct.TYPE_27__** %131, align 8
  %133 = icmp ne %struct.TYPE_27__* %127, %132
  br i1 %133, label %134, label %166

134:                                              ; preds = %126
  %135 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %136 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* @diStartRow, align 8
  %139 = icmp eq i64 %137, %138
  %140 = zext i1 %139 to i32
  %141 = call i32 @assert(i32 %140)
  %142 = load i32, i32* %10, align 4
  %143 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %144 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %143, i32 0, i32 1
  %145 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %145, i32 0, i32 1
  %147 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %150 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %149, i32 0, i32 1
  %151 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = add nsw i32 %148, %153
  %155 = icmp slt i32 %142, %154
  br i1 %155, label %156, label %157

156:                                              ; preds = %134
  br label %166

157:                                              ; preds = %134
  %158 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %159 = load i64, i64* @diStartRow, align 8
  %160 = call %struct.TYPE_27__* @ME_FindItemFwd(%struct.TYPE_27__* %158, i64 %159)
  store %struct.TYPE_27__* %160, %struct.TYPE_27__** %16, align 8
  %161 = load %struct.TYPE_27__*, %struct.TYPE_27__** %16, align 8
  %162 = icmp ne %struct.TYPE_27__* %161, null
  br i1 %162, label %164, label %163

163:                                              ; preds = %157
  br label %166

164:                                              ; preds = %157
  %165 = load %struct.TYPE_27__*, %struct.TYPE_27__** %16, align 8
  store %struct.TYPE_27__* %165, %struct.TYPE_27__** %14, align 8
  br label %126

166:                                              ; preds = %163, %156, %126
  %167 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %168 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %169 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %168, i32 0, i32 0
  %170 = load %struct.TYPE_25__*, %struct.TYPE_25__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %170, i32 0, i32 0
  %172 = load %struct.TYPE_27__*, %struct.TYPE_27__** %171, align 8
  %173 = icmp eq %struct.TYPE_27__* %167, %172
  br i1 %173, label %174, label %191

174:                                              ; preds = %166
  %175 = load i32, i32* %13, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %191, label %177

177:                                              ; preds = %174
  %178 = load i32, i32* @FALSE, align 4
  store i32 %178, i32* %15, align 4
  %179 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %180 = load i64, i64* @diStartRow, align 8
  %181 = call %struct.TYPE_27__* @ME_FindItemBack(%struct.TYPE_27__* %179, i64 %180)
  store %struct.TYPE_27__* %181, %struct.TYPE_27__** %14, align 8
  %182 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %183 = icmp ne %struct.TYPE_27__* %182, null
  br i1 %183, label %190, label %184

184:                                              ; preds = %177
  %185 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %186 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %185, i32 0, i32 0
  %187 = load %struct.TYPE_25__*, %struct.TYPE_25__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %187, i32 0, i32 0
  %189 = load %struct.TYPE_27__*, %struct.TYPE_27__** %188, align 8
  store %struct.TYPE_27__* %189, %struct.TYPE_27__** %14, align 8
  br label %190

190:                                              ; preds = %184, %177
  br label %191

191:                                              ; preds = %190, %174, %166
  %192 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %193 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %192, i32 0, i32 0
  %194 = load i64, i64* %193, align 8
  %195 = load i64, i64* @diStartRow, align 8
  %196 = icmp eq i64 %194, %195
  br i1 %196, label %205, label %197

197:                                              ; preds = %191
  %198 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %199 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %200 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %199, i32 0, i32 0
  %201 = load %struct.TYPE_25__*, %struct.TYPE_25__** %200, align 8
  %202 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %201, i32 0, i32 0
  %203 = load %struct.TYPE_27__*, %struct.TYPE_27__** %202, align 8
  %204 = icmp eq %struct.TYPE_27__* %198, %203
  br label %205

205:                                              ; preds = %197, %191
  %206 = phi i1 [ true, %191 ], [ %204, %197 ]
  %207 = zext i1 %206 to i32
  %208 = call i32 @assert(i32 %207)
  %209 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %210 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %209, i32 0, i32 0
  %211 = load i64, i64* %210, align 8
  %212 = load i64, i64* @diStartRow, align 8
  %213 = icmp eq i64 %211, %212
  br i1 %213, label %214, label %228

214:                                              ; preds = %205
  %215 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %216 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %217 = load i32, i32* %9, align 4
  %218 = load i32*, i32** %11, align 8
  %219 = load i32*, i32** %12, align 8
  %220 = call i64 @ME_FindRunInRow(%struct.TYPE_26__* %215, %struct.TYPE_27__* %216, i32 %217, i32* %218, i32* %219)
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %222, label %225

222:                                              ; preds = %214
  %223 = load i32, i32* %15, align 4
  %224 = icmp ne i32 %223, 0
  br label %225

225:                                              ; preds = %222, %214
  %226 = phi i1 [ false, %214 ], [ %224, %222 ]
  %227 = zext i1 %226 to i32
  store i32 %227, i32* %7, align 4
  br label %234

228:                                              ; preds = %205
  %229 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %230 = load i32*, i32** %11, align 8
  %231 = load i32, i32* @TRUE, align 4
  %232 = call i32 @ME_SetCursorToEnd(%struct.TYPE_26__* %229, i32* %230, i32 %231)
  %233 = load i32, i32* @FALSE, align 4
  store i32 %233, i32* %7, align 4
  br label %234

234:                                              ; preds = %228, %225
  %235 = load i32, i32* %7, align 4
  ret i32 %235
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.TYPE_27__* @ME_FindPixelPosInTableRow(i32, i32, %struct.TYPE_27__*) #1

declare dso_local %struct.TYPE_27__* @ME_FindItemFwd(%struct.TYPE_27__*, i64) #1

declare dso_local %struct.TYPE_27__* @ME_GetTableRowEnd(%struct.TYPE_27__*) #1

declare dso_local %struct.TYPE_27__* @ME_FindItemBack(%struct.TYPE_27__*, i64) #1

declare dso_local i64 @ME_FindRunInRow(%struct.TYPE_26__*, %struct.TYPE_27__*, i32, i32*, i32*) #1

declare dso_local i32 @ME_SetCursorToEnd(%struct.TYPE_26__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
