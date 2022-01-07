; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/usp10/extr_bidi.c_computeBracketPairs.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/usp10/extr_bidi.c_computeBracketPairs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }

@bidi_bracket_table = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Failed to grow output array.\0A\00", align 1
@compr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_9__* (%struct.TYPE_8__*)* @computeBracketPairs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_9__* @computeBracketPairs(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i16, align 2
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %8, align 8
  store i32 0, i32* %9, align 4
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = sext i32 %19 to i64
  %21 = mul i64 %20, 4
  %22 = trunc i64 %21 to i32
  %23 = call i32* @heap_alloc(i32 %22)
  store i32* %23, i32** %4, align 8
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = sext i32 %26 to i64
  %28 = mul i64 %27, 4
  %29 = trunc i64 %28 to i32
  %30 = call i32* @heap_alloc(i32 %29)
  store i32* %30, i32** %5, align 8
  store i32 0, i32* %10, align 4
  br label %31

31:                                               ; preds = %168, %1
  %32 = load i32, i32* %10, align 4
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp slt i32 %32, %35
  br i1 %36, label %37, label %171

37:                                               ; preds = %31
  %38 = load i32, i32* @bidi_bracket_table, align 4
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 1
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %40, align 8
  %42 = load i32, i32* %10, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call zeroext i16 @get_table_entry(i32 %38, i32 %46)
  store i16 %47, i16* %11, align 2
  %48 = load i16, i16* %11, align 2
  %49 = icmp ne i16 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %37
  br label %168

51:                                               ; preds = %37
  %52 = load i16, i16* %11, align 2
  %53 = zext i16 %52 to i32
  %54 = ashr i32 %53, 8
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %94

56:                                               ; preds = %51
  %57 = load i32, i32* %6, align 4
  %58 = add nsw i32 %57, -1
  store i32 %58, i32* %6, align 4
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 1
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %60, align 8
  %62 = load i32, i32* %10, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i16, i16* %11, align 2
  %68 = zext i16 %67 to i32
  %69 = and i32 %68, 255
  %70 = trunc i32 %69 to i8
  %71 = sext i8 %70 to i32
  %72 = add nsw i32 %66, %71
  %73 = load i32*, i32** %4, align 8
  %74 = load i32, i32* %6, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  store i32 %72, i32* %76, align 4
  %77 = load i32*, i32** %4, align 8
  %78 = load i32, i32* %6, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = icmp eq i32 %81, 9002
  br i1 %82, label %83, label %88

83:                                               ; preds = %56
  %84 = load i32*, i32** %4, align 8
  %85 = load i32, i32* %6, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  store i32 12297, i32* %87, align 4
  br label %88

88:                                               ; preds = %83, %56
  %89 = load i32, i32* %10, align 4
  %90 = load i32*, i32** %5, align 8
  %91 = load i32, i32* %6, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  store i32 %89, i32* %93, align 4
  br label %167

94:                                               ; preds = %51
  %95 = load i16, i16* %11, align 2
  %96 = zext i16 %95 to i32
  %97 = ashr i32 %96, 8
  %98 = icmp eq i32 %97, 1
  br i1 %98, label %99, label %166

99:                                               ; preds = %94
  %100 = load i32, i32* %6, align 4
  store i32 %100, i32* %12, align 4
  br label %101

101:                                              ; preds = %162, %99
  %102 = load i32, i32* %12, align 4
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = icmp ult i32 %102, %105
  br i1 %106, label %107, label %165

107:                                              ; preds = %101
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 1
  %110 = load %struct.TYPE_7__*, %struct.TYPE_7__** %109, align 8
  %111 = load i32, i32* %10, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  store i32 %115, i32* %13, align 4
  %116 = load i32, i32* %13, align 4
  %117 = icmp eq i32 %116, 9002
  br i1 %117, label %118, label %119

118:                                              ; preds = %107
  store i32 12297, i32* %13, align 4
  br label %119

119:                                              ; preds = %118, %107
  %120 = load i32, i32* %13, align 4
  %121 = load i32*, i32** %4, align 8
  %122 = load i32, i32* %12, align 4
  %123 = zext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %121, i64 %123
  %125 = load i32, i32* %124, align 4
  %126 = icmp ne i32 %120, %125
  br i1 %126, label %127, label %128

127:                                              ; preds = %119
  br label %162

128:                                              ; preds = %119
  %129 = bitcast %struct.TYPE_9__** %8 to i8**
  %130 = load i32, i32* %7, align 4
  %131 = add i32 %130, 2
  %132 = call i32 @usp10_array_reserve(i8** %129, i32* %9, i32 %131, i32 8)
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %136, label %134

134:                                              ; preds = %128
  %135 = call i32 @ERR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %136

136:                                              ; preds = %134, %128
  %137 = load i32*, i32** %5, align 8
  %138 = load i32, i32* %12, align 4
  %139 = zext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %137, i64 %139
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %143 = load i32, i32* %7, align 4
  %144 = zext i32 %143 to i64
  %145 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %142, i64 %144
  %146 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %145, i32 0, i32 0
  store i32 %141, i32* %146, align 4
  %147 = load i32, i32* %10, align 4
  %148 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %149 = load i32, i32* %7, align 4
  %150 = zext i32 %149 to i64
  %151 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %148, i64 %150
  %152 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %151, i32 0, i32 1
  store i32 %147, i32* %152, align 4
  %153 = load i32, i32* %7, align 4
  %154 = add i32 %153, 1
  store i32 %154, i32* %7, align 4
  %155 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %156 = load i32, i32* %7, align 4
  %157 = zext i32 %156 to i64
  %158 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %155, i64 %157
  %159 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %158, i32 0, i32 0
  store i32 -1, i32* %159, align 4
  %160 = load i32, i32* %12, align 4
  %161 = add i32 %160, 1
  store i32 %161, i32* %6, align 4
  br label %165

162:                                              ; preds = %127
  %163 = load i32, i32* %12, align 4
  %164 = add i32 %163, 1
  store i32 %164, i32* %12, align 4
  br label %101

165:                                              ; preds = %136, %101
  br label %166

166:                                              ; preds = %165, %94
  br label %167

167:                                              ; preds = %166, %88
  br label %168

168:                                              ; preds = %167, %50
  %169 = load i32, i32* %10, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %10, align 4
  br label %31

171:                                              ; preds = %31
  %172 = load i32*, i32** %4, align 8
  %173 = call i32 @heap_free(i32* %172)
  %174 = load i32*, i32** %5, align 8
  %175 = call i32 @heap_free(i32* %174)
  %176 = load i32, i32* %7, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %179, label %178

178:                                              ; preds = %171
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %2, align 8
  br label %185

179:                                              ; preds = %171
  %180 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %181 = load i32, i32* %7, align 4
  %182 = load i32, i32* @compr, align 4
  %183 = call i32 @qsort(%struct.TYPE_9__* %180, i32 %181, i32 8, i32 %182)
  %184 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  store %struct.TYPE_9__* %184, %struct.TYPE_9__** %2, align 8
  br label %185

185:                                              ; preds = %179, %178
  %186 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  ret %struct.TYPE_9__* %186
}

declare dso_local i32* @heap_alloc(i32) #1

declare dso_local zeroext i16 @get_table_entry(i32, i32) #1

declare dso_local i32 @usp10_array_reserve(i8**, i32*, i32, i32) #1

declare dso_local i32 @ERR(i8*) #1

declare dso_local i32 @heap_free(i32*) #1

declare dso_local i32 @qsort(%struct.TYPE_9__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
