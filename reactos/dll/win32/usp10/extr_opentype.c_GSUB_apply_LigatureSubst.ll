; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/usp10/extr_opentype.c_GSUB_apply_LigatureSubst.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/usp10/extr_opentype.c_GSUB_apply_LigatureSubst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32*, i32 }
%struct.TYPE_9__ = type { i32*, i32 }
%struct.TYPE_10__ = type { i32, i32*, i32 }

@.str = private unnamed_addr constant [32 x i8] c"Ligature Substitution Subtable\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"  Coverage index %i\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"  LigatureSet has %i members\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"    Glyph is 0x%x (+%i) ->\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"0x%x\0A\00", align 1
@GSUB_E_NOGLYPH = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_7__*, i32*, i64, i64, i64*)* @GSUB_apply_LigatureSubst to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @GSUB_apply_LigatureSubst(%struct.TYPE_7__* %0, i32* %1, i64 %2, i64 %3, i64* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_8__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_9__*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_10__*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64* %4, i64** %11, align 8
  %26 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %12, align 4
  br label %27

27:                                               ; preds = %222, %5
  %28 = load i32, i32* %12, align 4
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @GET_BE_WORD(i32 %31)
  %33 = icmp slt i32 %28, %32
  br i1 %33, label %34, label %225

34:                                               ; preds = %27
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %36 = load i32, i32* %12, align 4
  %37 = call i64 @GSUB_get_subtable(%struct.TYPE_7__* %35, i32 %36)
  %38 = inttoptr i64 %37 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %38, %struct.TYPE_8__** %13, align 8
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @GET_BE_WORD(i32 %41)
  store i32 %42, i32* %14, align 4
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %44 = bitcast %struct.TYPE_8__* %43 to i32*
  %45 = load i32, i32* %14, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32*, i32** %8, align 8
  %49 = load i64, i64* %9, align 8
  %50 = getelementptr inbounds i32, i32* %48, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @GSUB_is_glyph_covered(i32* %47, i32 %51)
  store i32 %52, i32* %15, align 4
  %53 = load i32, i32* %15, align 4
  %54 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %53)
  %55 = load i32, i32* %15, align 4
  %56 = icmp ne i32 %55, -1
  br i1 %56, label %57, label %221

57:                                               ; preds = %34
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* %15, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @GET_BE_WORD(i32 %64)
  store i32 %65, i32* %14, align 4
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %67 = bitcast %struct.TYPE_8__* %66 to i32*
  %68 = load i32, i32* %14, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = bitcast i32* %70 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %71, %struct.TYPE_9__** %16, align 8
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @GET_BE_WORD(i32 %74)
  store i32 %75, i32* %18, align 4
  %76 = load i32, i32* %18, align 4
  %77 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %76)
  store i32 0, i32* %17, align 4
  br label %78

78:                                               ; preds = %217, %57
  %79 = load i32, i32* %17, align 4
  %80 = load i32, i32* %18, align 4
  %81 = icmp slt i32 %79, %80
  br i1 %81, label %82, label %220

82:                                               ; preds = %78
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = load i32, i32* %17, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @GET_BE_WORD(i32 %89)
  store i32 %90, i32* %14, align 4
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %92 = bitcast %struct.TYPE_9__* %91 to i32*
  %93 = load i32, i32* %14, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  %96 = bitcast i32* %95 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %96, %struct.TYPE_10__** %19, align 8
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @GET_BE_WORD(i32 %99)
  %101 = sub nsw i32 %100, 1
  store i32 %101, i32* %20, align 4
  %102 = load i64, i64* %9, align 8
  %103 = load i64, i64* %10, align 8
  %104 = add i64 %102, %103
  %105 = trunc i64 %104 to i32
  store i32 %105, i32* %22, align 4
  store i32 0, i32* %21, align 4
  br label %106

106:                                              ; preds = %144, %82
  %107 = load i32, i32* %21, align 4
  %108 = load i32, i32* %20, align 4
  %109 = icmp slt i32 %107, %108
  br i1 %109, label %110, label %119

110:                                              ; preds = %106
  %111 = load i32, i32* %22, align 4
  %112 = icmp sge i32 %111, 0
  br i1 %112, label %113, label %119

113:                                              ; preds = %110
  %114 = load i32, i32* %22, align 4
  %115 = sext i32 %114 to i64
  %116 = load i64*, i64** %11, align 8
  %117 = load i64, i64* %116, align 8
  %118 = icmp ult i64 %115, %117
  br label %119

119:                                              ; preds = %113, %110, %106
  %120 = phi i1 [ false, %110 ], [ false, %106 ], [ %118, %113 ]
  br i1 %120, label %121, label %147

121:                                              ; preds = %119
  %122 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 1
  %124 = load i32*, i32** %123, align 8
  %125 = load i32, i32* %21, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %124, i64 %126
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @GET_BE_WORD(i32 %128)
  store i32 %129, i32* %23, align 4
  %130 = load i32, i32* %23, align 4
  %131 = load i32*, i32** %8, align 8
  %132 = load i32, i32* %22, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i32, i32* %131, i64 %133
  %135 = load i32, i32* %134, align 4
  %136 = icmp ne i32 %130, %135
  br i1 %136, label %137, label %138

137:                                              ; preds = %121
  br label %147

138:                                              ; preds = %121
  %139 = load i64, i64* %10, align 8
  %140 = load i32, i32* %22, align 4
  %141 = sext i32 %140 to i64
  %142 = add i64 %141, %139
  %143 = trunc i64 %142 to i32
  store i32 %143, i32* %22, align 4
  br label %144

144:                                              ; preds = %138
  %145 = load i32, i32* %21, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %21, align 4
  br label %106

147:                                              ; preds = %137, %119
  %148 = load i32, i32* %21, align 4
  %149 = load i32, i32* %20, align 4
  %150 = icmp eq i32 %148, %149
  br i1 %150, label %151, label %216

151:                                              ; preds = %147
  %152 = load i64, i64* %9, align 8
  %153 = trunc i64 %152 to i32
  store i32 %153, i32* %24, align 4
  %154 = load i64, i64* %10, align 8
  %155 = icmp ult i64 %154, 0
  br i1 %155, label %156, label %162

156:                                              ; preds = %151
  %157 = load i64, i64* %9, align 8
  %158 = load i32, i32* %20, align 4
  %159 = sext i32 %158 to i64
  %160 = sub i64 %157, %159
  %161 = trunc i64 %160 to i32
  store i32 %161, i32* %24, align 4
  br label %162

162:                                              ; preds = %156, %151
  %163 = load i32*, i32** %8, align 8
  %164 = load i64, i64* %9, align 8
  %165 = getelementptr inbounds i32, i32* %163, i64 %164
  %166 = load i32, i32* %165, align 4
  %167 = load i32, i32* %20, align 4
  %168 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %166, i32 %167)
  %169 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %170 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = call i32 @GET_BE_WORD(i32 %171)
  %173 = load i32*, i32** %8, align 8
  %174 = load i32, i32* %24, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i32, i32* %173, i64 %175
  store i32 %172, i32* %176, align 4
  %177 = load i32*, i32** %8, align 8
  %178 = load i32, i32* %24, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i32, i32* %177, i64 %179
  %181 = load i32, i32* %180, align 4
  %182 = call i32 (i8*, ...) @TRACE(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 %181)
  %183 = load i32, i32* %20, align 4
  %184 = icmp sgt i32 %183, 0
  br i1 %184, label %185, label %211

185:                                              ; preds = %162
  %186 = load i32, i32* %24, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %25, align 4
  %188 = load i32*, i32** %8, align 8
  %189 = load i32, i32* %25, align 4
  %190 = zext i32 %189 to i64
  %191 = getelementptr inbounds i32, i32* %188, i64 %190
  %192 = load i32*, i32** %8, align 8
  %193 = load i32, i32* %25, align 4
  %194 = load i32, i32* %20, align 4
  %195 = add i32 %193, %194
  %196 = zext i32 %195 to i64
  %197 = getelementptr inbounds i32, i32* %192, i64 %196
  %198 = load i64*, i64** %11, align 8
  %199 = load i64, i64* %198, align 8
  %200 = load i32, i32* %25, align 4
  %201 = zext i32 %200 to i64
  %202 = sub i64 %199, %201
  %203 = mul i64 %202, 4
  %204 = call i32 @memmove(i32* %191, i32* %197, i64 %203)
  %205 = load i64*, i64** %11, align 8
  %206 = load i64, i64* %205, align 8
  %207 = load i32, i32* %20, align 4
  %208 = sext i32 %207 to i64
  %209 = sub i64 %206, %208
  %210 = load i64*, i64** %11, align 8
  store i64 %209, i64* %210, align 8
  br label %211

211:                                              ; preds = %185, %162
  %212 = load i32, i32* %24, align 4
  %213 = sext i32 %212 to i64
  %214 = load i64, i64* %10, align 8
  %215 = add i64 %213, %214
  store i64 %215, i64* %6, align 8
  br label %227

216:                                              ; preds = %147
  br label %217

217:                                              ; preds = %216
  %218 = load i32, i32* %17, align 4
  %219 = add nsw i32 %218, 1
  store i32 %219, i32* %17, align 4
  br label %78

220:                                              ; preds = %78
  br label %221

221:                                              ; preds = %220, %34
  br label %222

222:                                              ; preds = %221
  %223 = load i32, i32* %12, align 4
  %224 = add nsw i32 %223, 1
  store i32 %224, i32* %12, align 4
  br label %27

225:                                              ; preds = %27
  %226 = load i64, i64* @GSUB_E_NOGLYPH, align 8
  store i64 %226, i64* %6, align 8
  br label %227

227:                                              ; preds = %225, %211
  %228 = load i64, i64* %6, align 8
  ret i64 %228
}

declare dso_local i32 @TRACE(i8*, ...) #1

declare dso_local i32 @GET_BE_WORD(i32) #1

declare dso_local i64 @GSUB_get_subtable(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @GSUB_is_glyph_covered(i32*, i32) #1

declare dso_local i32 @memmove(i32*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
