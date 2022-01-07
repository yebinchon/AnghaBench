; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts3/extr_fts3_tokenizer1.c_simpleNext.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts3/extr_fts3_tokenizer1.c_simpleNext.c"
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
  %20 = alloca i8*, align 8
  %21 = alloca i8, align 1
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %8, align 8
  store i8** %1, i8*** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %23 = bitcast %struct.TYPE_4__* %22 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %23, %struct.TYPE_5__** %14, align 8
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to i32*
  store i32* %27, i32** %15, align 8
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 5
  %30 = load i64, i64* %29, align 8
  %31 = inttoptr i64 %30 to i8*
  store i8* %31, i8** %16, align 8
  br label %32

32:                                               ; preds = %197, %6
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp ult i64 %35, %38
  br i1 %39, label %40, label %198

40:                                               ; preds = %32
  br label %41

41:                                               ; preds = %61, %40
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp ult i64 %44, %47
  br i1 %48, label %49, label %59

49:                                               ; preds = %41
  %50 = load i32*, i32** %15, align 8
  %51 = load i8*, i8** %16, align 8
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = getelementptr inbounds i8, i8* %51, i64 %54
  %56 = load i8, i8* %55, align 1
  %57 = call i64 @simpleDelim(i32* %50, i8 zeroext %56)
  %58 = icmp ne i64 %57, 0
  br label %59

59:                                               ; preds = %49, %41
  %60 = phi i1 [ false, %41 ], [ %58, %49 ]
  br i1 %60, label %61, label %66

61:                                               ; preds = %59
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = add i64 %64, 1
  store i64 %65, i64* %63, align 8
  br label %41

66:                                               ; preds = %59
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = trunc i64 %69 to i32
  store i32 %70, i32* %17, align 4
  br label %71

71:                                               ; preds = %92, %66
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = icmp ult i64 %74, %77
  br i1 %78, label %79, label %90

79:                                               ; preds = %71
  %80 = load i32*, i32** %15, align 8
  %81 = load i8*, i8** %16, align 8
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = getelementptr inbounds i8, i8* %81, i64 %84
  %86 = load i8, i8* %85, align 1
  %87 = call i64 @simpleDelim(i32* %80, i8 zeroext %86)
  %88 = icmp ne i64 %87, 0
  %89 = xor i1 %88, true
  br label %90

90:                                               ; preds = %79, %71
  %91 = phi i1 [ false, %71 ], [ %89, %79 ]
  br i1 %91, label %92, label %97

92:                                               ; preds = %90
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = add i64 %95, 1
  store i64 %96, i64* %94, align 8
  br label %71

97:                                               ; preds = %90
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load i32, i32* %17, align 4
  %102 = sext i32 %101 to i64
  %103 = icmp ugt i64 %100, %102
  br i1 %103, label %104, label %197

104:                                              ; preds = %97
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load i32, i32* %17, align 4
  %109 = sext i32 %108 to i64
  %110 = sub i64 %107, %109
  %111 = trunc i64 %110 to i32
  store i32 %111, i32* %19, align 4
  %112 = load i32, i32* %19, align 4
  %113 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = icmp sgt i32 %112, %115
  br i1 %116, label %117, label %137

117:                                              ; preds = %104
  %118 = load i32, i32* %19, align 4
  %119 = add nsw i32 %118, 20
  %120 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 2
  store i32 %119, i32* %121, align 8
  %122 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 3
  %124 = load i8*, i8** %123, align 8
  %125 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 8
  %128 = call i8* @sqlite3_realloc(i8* %124, i32 %127)
  store i8* %128, i8** %20, align 8
  %129 = load i8*, i8** %20, align 8
  %130 = icmp ne i8* %129, null
  br i1 %130, label %133, label %131

131:                                              ; preds = %117
  %132 = load i32, i32* @SQLITE_NOMEM, align 4
  store i32 %132, i32* %7, align 4
  br label %200

133:                                              ; preds = %117
  %134 = load i8*, i8** %20, align 8
  %135 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i32 0, i32 3
  store i8* %134, i8** %136, align 8
  br label %137

137:                                              ; preds = %133, %104
  store i32 0, i32* %18, align 4
  br label %138

138:                                              ; preds = %174, %137
  %139 = load i32, i32* %18, align 4
  %140 = load i32, i32* %19, align 4
  %141 = icmp slt i32 %139, %140
  br i1 %141, label %142, label %177

142:                                              ; preds = %138
  %143 = load i8*, i8** %16, align 8
  %144 = load i32, i32* %17, align 4
  %145 = load i32, i32* %18, align 4
  %146 = add nsw i32 %144, %145
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i8, i8* %143, i64 %147
  %149 = load i8, i8* %148, align 1
  store i8 %149, i8* %21, align 1
  %150 = load i8, i8* %21, align 1
  %151 = zext i8 %150 to i32
  %152 = icmp sge i32 %151, 65
  br i1 %152, label %153, label %162

153:                                              ; preds = %142
  %154 = load i8, i8* %21, align 1
  %155 = zext i8 %154 to i32
  %156 = icmp sle i32 %155, 90
  br i1 %156, label %157, label %162

157:                                              ; preds = %153
  %158 = load i8, i8* %21, align 1
  %159 = zext i8 %158 to i32
  %160 = sub nsw i32 %159, 65
  %161 = add nsw i32 %160, 97
  br label %165

162:                                              ; preds = %153, %142
  %163 = load i8, i8* %21, align 1
  %164 = zext i8 %163 to i32
  br label %165

165:                                              ; preds = %162, %157
  %166 = phi i32 [ %161, %157 ], [ %164, %162 ]
  %167 = trunc i32 %166 to i8
  %168 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %169 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %168, i32 0, i32 3
  %170 = load i8*, i8** %169, align 8
  %171 = load i32, i32* %18, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i8, i8* %170, i64 %172
  store i8 %167, i8* %173, align 1
  br label %174

174:                                              ; preds = %165
  %175 = load i32, i32* %18, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %18, align 4
  br label %138

177:                                              ; preds = %138
  %178 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %179 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %178, i32 0, i32 3
  %180 = load i8*, i8** %179, align 8
  %181 = load i8**, i8*** %9, align 8
  store i8* %180, i8** %181, align 8
  %182 = load i32, i32* %19, align 4
  %183 = load i32*, i32** %10, align 8
  store i32 %182, i32* %183, align 4
  %184 = load i32, i32* %17, align 4
  %185 = load i32*, i32** %11, align 8
  store i32 %184, i32* %185, align 4
  %186 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %187 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %186, i32 0, i32 0
  %188 = load i64, i64* %187, align 8
  %189 = trunc i64 %188 to i32
  %190 = load i32*, i32** %12, align 8
  store i32 %189, i32* %190, align 4
  %191 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %192 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %191, i32 0, i32 4
  %193 = load i32, i32* %192, align 8
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* %192, align 8
  %195 = load i32*, i32** %13, align 8
  store i32 %193, i32* %195, align 4
  %196 = load i32, i32* @SQLITE_OK, align 4
  store i32 %196, i32* %7, align 4
  br label %200

197:                                              ; preds = %97
  br label %32

198:                                              ; preds = %32
  %199 = load i32, i32* @SQLITE_DONE, align 4
  store i32 %199, i32* %7, align 4
  br label %200

200:                                              ; preds = %198, %177, %131
  %201 = load i32, i32* %7, align 4
  ret i32 %201
}

declare dso_local i64 @simpleDelim(i32*, i8 zeroext) #1

declare dso_local i8* @sqlite3_realloc(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
