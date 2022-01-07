; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/usp10/extr_opentype.c_GSUB_apply_MultipleSubst.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/usp10/extr_opentype.c_GSUB_apply_MultipleSubst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_8__ = type { i32*, i32 }
%struct.TYPE_7__ = type { i32*, i32 }

@.str = private unnamed_addr constant [32 x i8] c"Multiple Substitution Subtable\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"  Glyph 0x%x (+%i)->\00", align 1
@uniscribe = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c" 0x%x\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@GSUB_E_NOGLYPH = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_6__*, i32*, i64, i64, i64*)* @GSUB_apply_MultipleSubst to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @GSUB_apply_MultipleSubst(%struct.TYPE_6__* %0, i32* %1, i64 %2, i64 %3, i64* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_8__*, align 8
  %16 = alloca %struct.TYPE_7__*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64* %4, i64** %11, align 8
  %19 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %12, align 4
  br label %20

20:                                               ; preds = %190, %5
  %21 = load i32, i32* %12, align 4
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @GET_BE_WORD(i32 %24)
  %26 = icmp slt i32 %21, %25
  br i1 %26, label %27, label %193

27:                                               ; preds = %20
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %29 = load i32, i32* %12, align 4
  %30 = call i64 @GSUB_get_subtable(%struct.TYPE_6__* %28, i32 %29)
  %31 = inttoptr i64 %30 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %31, %struct.TYPE_8__** %15, align 8
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @GET_BE_WORD(i32 %34)
  store i32 %35, i32* %13, align 4
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %37 = bitcast %struct.TYPE_8__* %36 to i32*
  %38 = load i32, i32* %13, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32*, i32** %8, align 8
  %42 = load i64, i64* %9, align 8
  %43 = getelementptr inbounds i32, i32* %41, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @GSUB_is_glyph_covered(i32* %40, i32 %44)
  store i32 %45, i32* %14, align 4
  %46 = load i32, i32* %14, align 4
  %47 = icmp ne i32 %46, -1
  br i1 %47, label %48, label %189

48:                                               ; preds = %27
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %14, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @GET_BE_WORD(i32 %55)
  store i32 %56, i32* %13, align 4
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %58 = bitcast %struct.TYPE_8__* %57 to i32*
  %59 = load i32, i32* %13, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = bitcast i32* %61 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %62, %struct.TYPE_7__** %16, align 8
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @GET_BE_WORD(i32 %65)
  store i32 %66, i32* %17, align 4
  %67 = load i32*, i32** %8, align 8
  %68 = load i64, i64* %9, align 8
  %69 = getelementptr inbounds i32, i32* %67, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %17, align 4
  %72 = sub nsw i32 %71, 1
  %73 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %70, i32 %72)
  %74 = load i64*, i64** %11, align 8
  %75 = load i64, i64* %74, align 8
  %76 = load i32, i32* %17, align 4
  %77 = sub nsw i32 %76, 1
  %78 = sext i32 %77 to i64
  %79 = add i64 %75, %78
  %80 = trunc i64 %79 to i32
  store i32 %80, i32* %18, align 4
  br label %81

81:                                               ; preds = %99, %48
  %82 = load i32, i32* %18, align 4
  %83 = sext i32 %82 to i64
  %84 = load i64, i64* %9, align 8
  %85 = icmp ugt i64 %83, %84
  br i1 %85, label %86, label %102

86:                                               ; preds = %81
  %87 = load i32*, i32** %8, align 8
  %88 = load i32, i32* %18, align 4
  %89 = load i32, i32* %17, align 4
  %90 = sub nsw i32 %89, 1
  %91 = sub nsw i32 %88, %90
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %87, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = load i32*, i32** %8, align 8
  %96 = load i32, i32* %18, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  store i32 %94, i32* %98, align 4
  br label %99

99:                                               ; preds = %86
  %100 = load i32, i32* %18, align 4
  %101 = add nsw i32 %100, -1
  store i32 %101, i32* %18, align 4
  br label %81

102:                                              ; preds = %81
  store i32 0, i32* %18, align 4
  br label %103

103:                                              ; preds = %145, %102
  %104 = load i32, i32* %18, align 4
  %105 = load i32, i32* %17, align 4
  %106 = icmp slt i32 %104, %105
  br i1 %106, label %107, label %148

107:                                              ; preds = %103
  %108 = load i64, i64* %10, align 8
  %109 = icmp ult i64 %108, 0
  br i1 %109, label %110, label %129

110:                                              ; preds = %107
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 0
  %113 = load i32*, i32** %112, align 8
  %114 = load i32, i32* %18, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %113, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @GET_BE_WORD(i32 %117)
  %119 = load i32*, i32** %8, align 8
  %120 = load i64, i64* %9, align 8
  %121 = load i32, i32* %17, align 4
  %122 = sub nsw i32 %121, 1
  %123 = sext i32 %122 to i64
  %124 = add i64 %120, %123
  %125 = load i32, i32* %18, align 4
  %126 = sext i32 %125 to i64
  %127 = sub i64 %124, %126
  %128 = getelementptr inbounds i32, i32* %119, i64 %127
  store i32 %118, i32* %128, align 4
  br label %144

129:                                              ; preds = %107
  %130 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 0
  %132 = load i32*, i32** %131, align 8
  %133 = load i32, i32* %18, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32, i32* %132, i64 %134
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @GET_BE_WORD(i32 %136)
  %138 = load i32*, i32** %8, align 8
  %139 = load i64, i64* %9, align 8
  %140 = load i32, i32* %18, align 4
  %141 = sext i32 %140 to i64
  %142 = add i64 %139, %141
  %143 = getelementptr inbounds i32, i32* %138, i64 %142
  store i32 %137, i32* %143, align 4
  br label %144

144:                                              ; preds = %129, %110
  br label %145

145:                                              ; preds = %144
  %146 = load i32, i32* %18, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %18, align 4
  br label %103

148:                                              ; preds = %103
  %149 = load i64*, i64** %11, align 8
  %150 = load i64, i64* %149, align 8
  %151 = load i32, i32* %17, align 4
  %152 = sub nsw i32 %151, 1
  %153 = sext i32 %152 to i64
  %154 = add i64 %150, %153
  %155 = load i64*, i64** %11, align 8
  store i64 %154, i64* %155, align 8
  %156 = load i32, i32* @uniscribe, align 4
  %157 = call i64 @TRACE_ON(i32 %156)
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %178

159:                                              ; preds = %148
  store i32 0, i32* %18, align 4
  br label %160

160:                                              ; preds = %173, %159
  %161 = load i32, i32* %18, align 4
  %162 = load i32, i32* %17, align 4
  %163 = icmp slt i32 %161, %162
  br i1 %163, label %164, label %176

164:                                              ; preds = %160
  %165 = load i32*, i32** %8, align 8
  %166 = load i64, i64* %9, align 8
  %167 = load i32, i32* %18, align 4
  %168 = sext i32 %167 to i64
  %169 = add i64 %166, %168
  %170 = getelementptr inbounds i32, i32* %165, i64 %169
  %171 = load i32, i32* %170, align 4
  %172 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %171)
  br label %173

173:                                              ; preds = %164
  %174 = load i32, i32* %18, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %18, align 4
  br label %160

176:                                              ; preds = %160
  %177 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %178

178:                                              ; preds = %176, %148
  %179 = load i64, i64* %10, align 8
  %180 = icmp ugt i64 %179, 0
  br i1 %180, label %181, label %186

181:                                              ; preds = %178
  %182 = load i64, i64* %9, align 8
  %183 = load i32, i32* %17, align 4
  %184 = sext i32 %183 to i64
  %185 = add i64 %182, %184
  store i64 %185, i64* %6, align 8
  br label %195

186:                                              ; preds = %178
  %187 = load i64, i64* %9, align 8
  %188 = sub i64 %187, 1
  store i64 %188, i64* %6, align 8
  br label %195

189:                                              ; preds = %27
  br label %190

190:                                              ; preds = %189
  %191 = load i32, i32* %12, align 4
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %12, align 4
  br label %20

193:                                              ; preds = %20
  %194 = load i64, i64* @GSUB_E_NOGLYPH, align 8
  store i64 %194, i64* %6, align 8
  br label %195

195:                                              ; preds = %193, %186, %181
  %196 = load i64, i64* %6, align 8
  ret i64 %196
}

declare dso_local i32 @TRACE(i8*, ...) #1

declare dso_local i32 @GET_BE_WORD(i32) #1

declare dso_local i64 @GSUB_get_subtable(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @GSUB_is_glyph_covered(i32*, i32) #1

declare dso_local i64 @TRACE_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
