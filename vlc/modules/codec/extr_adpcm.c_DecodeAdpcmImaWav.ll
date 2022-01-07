; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/extr_adpcm.c_DecodeAdpcmImaWav.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/extr_adpcm.c_DecodeAdpcmImaWav.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.TYPE_11__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_12__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*, i8**, i32*)* @DecodeAdpcmImaWav to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @DecodeAdpcmImaWav(%struct.TYPE_10__* %0, i8** %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca [2 x %struct.TYPE_12__], align 16
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store i8** %1, i8*** %5, align 8
  store i32* %2, i32** %6, align 8
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  store %struct.TYPE_11__* %14, %struct.TYPE_11__** %7, align 8
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp eq i32 %19, 2
  %21 = zext i1 %20 to i64
  %22 = select i1 %20, i32 1, i32 0
  store i32 %22, i32* %10, align 4
  %23 = getelementptr inbounds [2 x %struct.TYPE_12__], [2 x %struct.TYPE_12__]* %8, i64 0, i64 0
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @GetWord(i32 %25)
  %27 = getelementptr inbounds [2 x %struct.TYPE_12__], [2 x %struct.TYPE_12__]* %8, i64 0, i64 0
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 16
  %30 = call i32 @GetByte(i32 %29)
  %31 = getelementptr inbounds [2 x %struct.TYPE_12__], [2 x %struct.TYPE_12__]* %8, i64 0, i64 0
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 16
  %34 = call i32 @CLAMP(i32 %33, i32 0, i32 88)
  %35 = load i32*, i32** %6, align 8
  %36 = getelementptr inbounds i32, i32* %35, i32 1
  store i32* %36, i32** %6, align 8
  %37 = load i32, i32* %10, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %54

39:                                               ; preds = %3
  %40 = getelementptr inbounds [2 x %struct.TYPE_12__], [2 x %struct.TYPE_12__]* %8, i64 0, i64 1
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @GetWord(i32 %42)
  %44 = getelementptr inbounds [2 x %struct.TYPE_12__], [2 x %struct.TYPE_12__]* %8, i64 0, i64 1
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @GetByte(i32 %46)
  %48 = getelementptr inbounds [2 x %struct.TYPE_12__], [2 x %struct.TYPE_12__]* %8, i64 0, i64 1
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @CLAMP(i32 %50, i32 0, i32 88)
  %52 = load i32*, i32** %6, align 8
  %53 = getelementptr inbounds i32, i32* %52, i32 1
  store i32* %53, i32** %6, align 8
  br label %54

54:                                               ; preds = %39, %3
  %55 = load i32, i32* %10, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %148

57:                                               ; preds = %54
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = sub nsw i32 %60, 8
  %62 = mul nsw i32 2, %61
  store i32 %62, i32* %9, align 4
  br label %63

63:                                               ; preds = %144, %57
  %64 = load i32, i32* %9, align 4
  %65 = icmp sgt i32 %64, 0
  br i1 %65, label %66, label %147

66:                                               ; preds = %63
  store i32 0, i32* %11, align 4
  br label %67

67:                                               ; preds = %98, %66
  %68 = load i32, i32* %11, align 4
  %69 = icmp slt i32 %68, 4
  br i1 %69, label %70, label %101

70:                                               ; preds = %67
  %71 = getelementptr inbounds [2 x %struct.TYPE_12__], [2 x %struct.TYPE_12__]* %8, i64 0, i64 0
  %72 = load i32*, i32** %6, align 8
  %73 = load i32, i32* %11, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = and i32 %76, 15
  %78 = call i8* @AdpcmImaWavExpandNibble(%struct.TYPE_12__* %71, i32 %77)
  %79 = load i8**, i8*** %5, align 8
  %80 = load i32, i32* %11, align 4
  %81 = mul nsw i32 %80, 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i8*, i8** %79, i64 %82
  store i8* %78, i8** %83, align 8
  %84 = getelementptr inbounds [2 x %struct.TYPE_12__], [2 x %struct.TYPE_12__]* %8, i64 0, i64 0
  %85 = load i32*, i32** %6, align 8
  %86 = load i32, i32* %11, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = ashr i32 %89, 4
  %91 = call i8* @AdpcmImaWavExpandNibble(%struct.TYPE_12__* %84, i32 %90)
  %92 = load i8**, i8*** %5, align 8
  %93 = load i32, i32* %11, align 4
  %94 = mul nsw i32 %93, 4
  %95 = add nsw i32 %94, 2
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i8*, i8** %92, i64 %96
  store i8* %91, i8** %97, align 8
  br label %98

98:                                               ; preds = %70
  %99 = load i32, i32* %11, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %11, align 4
  br label %67

101:                                              ; preds = %67
  %102 = load i32*, i32** %6, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 4
  store i32* %103, i32** %6, align 8
  store i32 0, i32* %11, align 4
  br label %104

104:                                              ; preds = %136, %101
  %105 = load i32, i32* %11, align 4
  %106 = icmp slt i32 %105, 4
  br i1 %106, label %107, label %139

107:                                              ; preds = %104
  %108 = getelementptr inbounds [2 x %struct.TYPE_12__], [2 x %struct.TYPE_12__]* %8, i64 0, i64 1
  %109 = load i32*, i32** %6, align 8
  %110 = load i32, i32* %11, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %109, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = and i32 %113, 15
  %115 = call i8* @AdpcmImaWavExpandNibble(%struct.TYPE_12__* %108, i32 %114)
  %116 = load i8**, i8*** %5, align 8
  %117 = load i32, i32* %11, align 4
  %118 = mul nsw i32 %117, 4
  %119 = add nsw i32 %118, 1
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i8*, i8** %116, i64 %120
  store i8* %115, i8** %121, align 8
  %122 = getelementptr inbounds [2 x %struct.TYPE_12__], [2 x %struct.TYPE_12__]* %8, i64 0, i64 1
  %123 = load i32*, i32** %6, align 8
  %124 = load i32, i32* %11, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %123, i64 %125
  %127 = load i32, i32* %126, align 4
  %128 = ashr i32 %127, 4
  %129 = call i8* @AdpcmImaWavExpandNibble(%struct.TYPE_12__* %122, i32 %128)
  %130 = load i8**, i8*** %5, align 8
  %131 = load i32, i32* %11, align 4
  %132 = mul nsw i32 %131, 4
  %133 = add nsw i32 %132, 3
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i8*, i8** %130, i64 %134
  store i8* %129, i8** %135, align 8
  br label %136

136:                                              ; preds = %107
  %137 = load i32, i32* %11, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %11, align 4
  br label %104

139:                                              ; preds = %104
  %140 = load i32*, i32** %6, align 8
  %141 = getelementptr inbounds i32, i32* %140, i64 4
  store i32* %141, i32** %6, align 8
  %142 = load i8**, i8*** %5, align 8
  %143 = getelementptr inbounds i8*, i8** %142, i64 16
  store i8** %143, i8*** %5, align 8
  br label %144

144:                                              ; preds = %139
  %145 = load i32, i32* %9, align 4
  %146 = sub nsw i32 %145, 16
  store i32 %146, i32* %9, align 4
  br label %63

147:                                              ; preds = %63
  br label %178

148:                                              ; preds = %54
  %149 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %150 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = sub nsw i32 %151, 4
  %153 = mul nsw i32 2, %152
  store i32 %153, i32* %9, align 4
  br label %154

154:                                              ; preds = %172, %148
  %155 = load i32, i32* %9, align 4
  %156 = icmp sgt i32 %155, 0
  br i1 %156, label %157, label %177

157:                                              ; preds = %154
  %158 = getelementptr inbounds [2 x %struct.TYPE_12__], [2 x %struct.TYPE_12__]* %8, i64 0, i64 0
  %159 = load i32*, i32** %6, align 8
  %160 = load i32, i32* %159, align 4
  %161 = and i32 %160, 15
  %162 = call i8* @AdpcmImaWavExpandNibble(%struct.TYPE_12__* %158, i32 %161)
  %163 = load i8**, i8*** %5, align 8
  %164 = getelementptr inbounds i8*, i8** %163, i32 1
  store i8** %164, i8*** %5, align 8
  store i8* %162, i8** %163, align 8
  %165 = getelementptr inbounds [2 x %struct.TYPE_12__], [2 x %struct.TYPE_12__]* %8, i64 0, i64 0
  %166 = load i32*, i32** %6, align 8
  %167 = load i32, i32* %166, align 4
  %168 = ashr i32 %167, 4
  %169 = call i8* @AdpcmImaWavExpandNibble(%struct.TYPE_12__* %165, i32 %168)
  %170 = load i8**, i8*** %5, align 8
  %171 = getelementptr inbounds i8*, i8** %170, i32 1
  store i8** %171, i8*** %5, align 8
  store i8* %169, i8** %170, align 8
  br label %172

172:                                              ; preds = %157
  %173 = load i32, i32* %9, align 4
  %174 = sub nsw i32 %173, 2
  store i32 %174, i32* %9, align 4
  %175 = load i32*, i32** %6, align 8
  %176 = getelementptr inbounds i32, i32* %175, i32 1
  store i32* %176, i32** %6, align 8
  br label %154

177:                                              ; preds = %154
  br label %178

178:                                              ; preds = %177, %147
  ret void
}

declare dso_local i32 @GetWord(i32) #1

declare dso_local i32 @GetByte(i32) #1

declare dso_local i32 @CLAMP(i32, i32, i32) #1

declare dso_local i8* @AdpcmImaWavExpandNibble(%struct.TYPE_12__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
