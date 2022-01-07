; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts1/extr_fts1_tokenizer1.c_simpleNext.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts1/extr_fts1_tokenizer1.c_simpleNext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.TYPE_5__ = type { i64, i64, i32, i8*, i32, i64 }

@SQLITE_NOMEM = common dso_local global i32 0, align 4
@SQLITE_OK = common dso_local global i32 0, align 4
@SQLITE_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i8**, i32*, i32*, i32*, i32*)* @simpleNext to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @simpleNext(%struct.TYPE_4__* %0, i8** %1, i32* %2, i32* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_5__*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8, align 1
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %8, align 8
  store i8** %1, i8*** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %22 = bitcast %struct.TYPE_4__* %21 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %22, %struct.TYPE_5__** %14, align 8
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to i32*
  store i32* %26, i32** %15, align 8
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 5
  %29 = load i64, i64* %28, align 8
  %30 = inttoptr i64 %29 to i8*
  store i8* %30, i8** %16, align 8
  br label %31

31:                                               ; preds = %192, %6
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp ult i64 %34, %37
  br i1 %38, label %39, label %193

39:                                               ; preds = %31
  br label %40

40:                                               ; preds = %60, %39
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp ult i64 %43, %46
  br i1 %47, label %48, label %58

48:                                               ; preds = %40
  %49 = load i32*, i32** %15, align 8
  %50 = load i8*, i8** %16, align 8
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = getelementptr inbounds i8, i8* %50, i64 %53
  %55 = load i8, i8* %54, align 1
  %56 = call i64 @isDelim(i32* %49, i8 zeroext %55)
  %57 = icmp ne i64 %56, 0
  br label %58

58:                                               ; preds = %48, %40
  %59 = phi i1 [ false, %40 ], [ %57, %48 ]
  br i1 %59, label %60, label %65

60:                                               ; preds = %58
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = add i64 %63, 1
  store i64 %64, i64* %62, align 8
  br label %40

65:                                               ; preds = %58
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = trunc i64 %68 to i32
  store i32 %69, i32* %17, align 4
  br label %70

70:                                               ; preds = %91, %65
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = icmp ult i64 %73, %76
  br i1 %77, label %78, label %89

78:                                               ; preds = %70
  %79 = load i32*, i32** %15, align 8
  %80 = load i8*, i8** %16, align 8
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = getelementptr inbounds i8, i8* %80, i64 %83
  %85 = load i8, i8* %84, align 1
  %86 = call i64 @isDelim(i32* %79, i8 zeroext %85)
  %87 = icmp ne i64 %86, 0
  %88 = xor i1 %87, true
  br label %89

89:                                               ; preds = %78, %70
  %90 = phi i1 [ false, %70 ], [ %88, %78 ]
  br i1 %90, label %91, label %96

91:                                               ; preds = %89
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = add i64 %94, 1
  store i64 %95, i64* %93, align 8
  br label %70

96:                                               ; preds = %89
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i32, i32* %17, align 4
  %101 = sext i32 %100 to i64
  %102 = icmp ugt i64 %99, %101
  br i1 %102, label %103, label %192

103:                                              ; preds = %96
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load i32, i32* %17, align 4
  %108 = sext i32 %107 to i64
  %109 = sub i64 %106, %108
  %110 = trunc i64 %109 to i32
  store i32 %110, i32* %19, align 4
  %111 = load i32, i32* %19, align 4
  %112 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = icmp sgt i32 %111, %114
  br i1 %115, label %116, label %137

116:                                              ; preds = %103
  %117 = load i32, i32* %19, align 4
  %118 = add nsw i32 %117, 20
  %119 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 2
  store i32 %118, i32* %120, align 8
  %121 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 3
  %123 = load i8*, i8** %122, align 8
  %124 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 8
  %127 = call i8* @realloc(i8* %123, i32 %126)
  %128 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 3
  store i8* %127, i8** %129, align 8
  %130 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i32 0, i32 3
  %132 = load i8*, i8** %131, align 8
  %133 = icmp eq i8* %132, null
  br i1 %133, label %134, label %136

134:                                              ; preds = %116
  %135 = load i32, i32* @SQLITE_NOMEM, align 4
  store i32 %135, i32* %7, align 4
  br label %195

136:                                              ; preds = %116
  br label %137

137:                                              ; preds = %136, %103
  store i32 0, i32* %18, align 4
  br label %138

138:                                              ; preds = %169, %137
  %139 = load i32, i32* %18, align 4
  %140 = load i32, i32* %19, align 4
  %141 = icmp slt i32 %139, %140
  br i1 %141, label %142, label %172

142:                                              ; preds = %138
  %143 = load i8*, i8** %16, align 8
  %144 = load i32, i32* %17, align 4
  %145 = load i32, i32* %18, align 4
  %146 = add nsw i32 %144, %145
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i8, i8* %143, i64 %147
  %149 = load i8, i8* %148, align 1
  store i8 %149, i8* %20, align 1
  %150 = load i8, i8* %20, align 1
  %151 = zext i8 %150 to i32
  %152 = icmp slt i32 %151, 128
  br i1 %152, label %153, label %157

153:                                              ; preds = %142
  %154 = load i8, i8* %20, align 1
  %155 = call zeroext i8 @tolower(i8 zeroext %154)
  %156 = zext i8 %155 to i32
  br label %160

157:                                              ; preds = %142
  %158 = load i8, i8* %20, align 1
  %159 = zext i8 %158 to i32
  br label %160

160:                                              ; preds = %157, %153
  %161 = phi i32 [ %156, %153 ], [ %159, %157 ]
  %162 = trunc i32 %161 to i8
  %163 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %164 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %163, i32 0, i32 3
  %165 = load i8*, i8** %164, align 8
  %166 = load i32, i32* %18, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i8, i8* %165, i64 %167
  store i8 %162, i8* %168, align 1
  br label %169

169:                                              ; preds = %160
  %170 = load i32, i32* %18, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %18, align 4
  br label %138

172:                                              ; preds = %138
  %173 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %174 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %173, i32 0, i32 3
  %175 = load i8*, i8** %174, align 8
  %176 = load i8**, i8*** %9, align 8
  store i8* %175, i8** %176, align 8
  %177 = load i32, i32* %19, align 4
  %178 = load i32*, i32** %10, align 8
  store i32 %177, i32* %178, align 4
  %179 = load i32, i32* %17, align 4
  %180 = load i32*, i32** %11, align 8
  store i32 %179, i32* %180, align 4
  %181 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %182 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = trunc i64 %183 to i32
  %185 = load i32*, i32** %12, align 8
  store i32 %184, i32* %185, align 4
  %186 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %187 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %186, i32 0, i32 4
  %188 = load i32, i32* %187, align 8
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %187, align 8
  %190 = load i32*, i32** %13, align 8
  store i32 %188, i32* %190, align 4
  %191 = load i32, i32* @SQLITE_OK, align 4
  store i32 %191, i32* %7, align 4
  br label %195

192:                                              ; preds = %96
  br label %31

193:                                              ; preds = %31
  %194 = load i32, i32* @SQLITE_DONE, align 4
  store i32 %194, i32* %7, align 4
  br label %195

195:                                              ; preds = %193, %172, %134
  %196 = load i32, i32* %7, align 4
  ret i32 %196
}

declare dso_local i64 @isDelim(i32*, i8 zeroext) #1

declare dso_local i8* @realloc(i8*, i32) #1

declare dso_local zeroext i8 @tolower(i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
