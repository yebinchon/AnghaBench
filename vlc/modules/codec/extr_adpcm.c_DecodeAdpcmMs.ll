; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/extr_adpcm.c_DecodeAdpcmMs.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/extr_adpcm.c_DecodeAdpcmMs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.TYPE_11__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_12__ = type { i32, i32, i32, i8*, i8* }

@i_adaptation_coeff1 = common dso_local global i8** null, align 8
@i_adaptation_coeff2 = common dso_local global i8** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*, i32*, i32*)* @DecodeAdpcmMs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @DecodeAdpcmMs(%struct.TYPE_10__* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca [2 x %struct.TYPE_12__], align 16
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  store %struct.TYPE_11__* %14, %struct.TYPE_11__** %7, align 8
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %11, align 8
  %18 = load i64, i64* %11, align 8
  %19 = icmp ult i64 %18, 2
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  br label %173

21:                                               ; preds = %3
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp eq i32 %26, 2
  %28 = zext i1 %27 to i64
  %29 = select i1 %27, i32 1, i32 0
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %10, align 4
  %31 = call i32 @GetByte(i32 %30)
  %32 = load i32, i32* %10, align 4
  %33 = call i32 @CLAMP(i32 %32, i32 0, i32 6)
  %34 = load i8**, i8*** @i_adaptation_coeff1, align 8
  %35 = load i32, i32* %10, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8*, i8** %34, i64 %36
  %38 = load i8*, i8** %37, align 8
  %39 = getelementptr inbounds [2 x %struct.TYPE_12__], [2 x %struct.TYPE_12__]* %8, i64 0, i64 0
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 4
  store i8* %38, i8** %40, align 8
  %41 = load i8**, i8*** @i_adaptation_coeff2, align 8
  %42 = load i32, i32* %10, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8*, i8** %41, i64 %43
  %45 = load i8*, i8** %44, align 8
  %46 = getelementptr inbounds [2 x %struct.TYPE_12__], [2 x %struct.TYPE_12__]* %8, i64 0, i64 0
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 3
  store i8* %45, i8** %47, align 16
  %48 = load i32, i32* %9, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %69

50:                                               ; preds = %21
  %51 = load i32, i32* %10, align 4
  %52 = call i32 @GetByte(i32 %51)
  %53 = load i32, i32* %10, align 4
  %54 = call i32 @CLAMP(i32 %53, i32 0, i32 6)
  %55 = load i8**, i8*** @i_adaptation_coeff1, align 8
  %56 = load i32, i32* %10, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8*, i8** %55, i64 %57
  %59 = load i8*, i8** %58, align 8
  %60 = getelementptr inbounds [2 x %struct.TYPE_12__], [2 x %struct.TYPE_12__]* %8, i64 0, i64 1
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 4
  store i8* %59, i8** %61, align 8
  %62 = load i8**, i8*** @i_adaptation_coeff2, align 8
  %63 = load i32, i32* %10, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8*, i8** %62, i64 %64
  %66 = load i8*, i8** %65, align 8
  %67 = getelementptr inbounds [2 x %struct.TYPE_12__], [2 x %struct.TYPE_12__]* %8, i64 0, i64 1
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 3
  store i8* %66, i8** %68, align 16
  br label %69

69:                                               ; preds = %50, %21
  %70 = getelementptr inbounds [2 x %struct.TYPE_12__], [2 x %struct.TYPE_12__]* %8, i64 0, i64 0
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @GetWord(i32 %72)
  %74 = load i32, i32* %9, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %69
  %77 = getelementptr inbounds [2 x %struct.TYPE_12__], [2 x %struct.TYPE_12__]* %8, i64 0, i64 1
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @GetWord(i32 %79)
  br label %81

81:                                               ; preds = %76, %69
  %82 = getelementptr inbounds [2 x %struct.TYPE_12__], [2 x %struct.TYPE_12__]* %8, i64 0, i64 0
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 16
  %85 = call i32 @GetWord(i32 %84)
  %86 = load i32, i32* %9, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %81
  %89 = getelementptr inbounds [2 x %struct.TYPE_12__], [2 x %struct.TYPE_12__]* %8, i64 0, i64 1
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 16
  %92 = call i32 @GetWord(i32 %91)
  br label %93

93:                                               ; preds = %88, %81
  %94 = getelementptr inbounds [2 x %struct.TYPE_12__], [2 x %struct.TYPE_12__]* %8, i64 0, i64 0
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @GetWord(i32 %96)
  %98 = load i32, i32* %9, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %105

100:                                              ; preds = %93
  %101 = getelementptr inbounds [2 x %struct.TYPE_12__], [2 x %struct.TYPE_12__]* %8, i64 0, i64 1
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @GetWord(i32 %103)
  br label %105

105:                                              ; preds = %100, %93
  %106 = load i32, i32* %9, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %129

108:                                              ; preds = %105
  %109 = getelementptr inbounds [2 x %struct.TYPE_12__], [2 x %struct.TYPE_12__]* %8, i64 0, i64 0
  %110 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = load i32*, i32** %5, align 8
  %113 = getelementptr inbounds i32, i32* %112, i32 1
  store i32* %113, i32** %5, align 8
  store i32 %111, i32* %112, align 4
  %114 = getelementptr inbounds [2 x %struct.TYPE_12__], [2 x %struct.TYPE_12__]* %8, i64 0, i64 1
  %115 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load i32*, i32** %5, align 8
  %118 = getelementptr inbounds i32, i32* %117, i32 1
  store i32* %118, i32** %5, align 8
  store i32 %116, i32* %117, align 4
  %119 = getelementptr inbounds [2 x %struct.TYPE_12__], [2 x %struct.TYPE_12__]* %8, i64 0, i64 0
  %120 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 16
  %122 = load i32*, i32** %5, align 8
  %123 = getelementptr inbounds i32, i32* %122, i32 1
  store i32* %123, i32** %5, align 8
  store i32 %121, i32* %122, align 4
  %124 = getelementptr inbounds [2 x %struct.TYPE_12__], [2 x %struct.TYPE_12__]* %8, i64 0, i64 1
  %125 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 16
  %127 = load i32*, i32** %5, align 8
  %128 = getelementptr inbounds i32, i32* %127, i32 1
  store i32* %128, i32** %5, align 8
  store i32 %126, i32* %127, align 4
  br label %140

129:                                              ; preds = %105
  %130 = getelementptr inbounds [2 x %struct.TYPE_12__], [2 x %struct.TYPE_12__]* %8, i64 0, i64 0
  %131 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = load i32*, i32** %5, align 8
  %134 = getelementptr inbounds i32, i32* %133, i32 1
  store i32* %134, i32** %5, align 8
  store i32 %132, i32* %133, align 4
  %135 = getelementptr inbounds [2 x %struct.TYPE_12__], [2 x %struct.TYPE_12__]* %8, i64 0, i64 0
  %136 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 16
  %138 = load i32*, i32** %5, align 8
  %139 = getelementptr inbounds i32, i32* %138, i32 1
  store i32* %139, i32** %5, align 8
  store i32 %137, i32* %138, align 4
  br label %140

140:                                              ; preds = %129, %108
  %141 = load i64, i64* %11, align 8
  %142 = sub i64 %141, 2
  store i64 %142, i64* %11, align 8
  br label %143

143:                                              ; preds = %168, %140
  %144 = load i64, i64* %11, align 8
  %145 = icmp uge i64 %144, 2
  br i1 %145, label %146, label %173

146:                                              ; preds = %143
  %147 = getelementptr inbounds [2 x %struct.TYPE_12__], [2 x %struct.TYPE_12__]* %8, i64 0, i64 0
  %148 = load i32*, i32** %6, align 8
  %149 = load i32, i32* %148, align 4
  %150 = ashr i32 %149, 4
  %151 = call i8* @AdpcmMsExpandNibble(%struct.TYPE_12__* %147, i32 %150)
  %152 = ptrtoint i8* %151 to i32
  %153 = load i32*, i32** %5, align 8
  %154 = getelementptr inbounds i32, i32* %153, i32 1
  store i32* %154, i32** %5, align 8
  store i32 %152, i32* %153, align 4
  %155 = load i32, i32* %9, align 4
  %156 = icmp ne i32 %155, 0
  %157 = zext i1 %156 to i64
  %158 = select i1 %156, i32 1, i32 0
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds [2 x %struct.TYPE_12__], [2 x %struct.TYPE_12__]* %8, i64 0, i64 %159
  %161 = load i32*, i32** %6, align 8
  %162 = load i32, i32* %161, align 4
  %163 = and i32 %162, 15
  %164 = call i8* @AdpcmMsExpandNibble(%struct.TYPE_12__* %160, i32 %163)
  %165 = ptrtoint i8* %164 to i32
  %166 = load i32*, i32** %5, align 8
  %167 = getelementptr inbounds i32, i32* %166, i32 1
  store i32* %167, i32** %5, align 8
  store i32 %165, i32* %166, align 4
  br label %168

168:                                              ; preds = %146
  %169 = load i64, i64* %11, align 8
  %170 = sub i64 %169, 2
  store i64 %170, i64* %11, align 8
  %171 = load i32*, i32** %6, align 8
  %172 = getelementptr inbounds i32, i32* %171, i32 1
  store i32* %172, i32** %6, align 8
  br label %143

173:                                              ; preds = %20, %143
  ret void
}

declare dso_local i32 @GetByte(i32) #1

declare dso_local i32 @CLAMP(i32, i32, i32) #1

declare dso_local i32 @GetWord(i32) #1

declare dso_local i8* @AdpcmMsExpandNibble(%struct.TYPE_12__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
