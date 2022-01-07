; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/lsm1/lsm-test/extr_lsmtest1.c_doDataTest3.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/lsm1/lsm-test/extr_lsmtest1.c_doDataTest3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.TYPE_3__*, i32*)* @doDataTest3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @doDataTest3(i8* %0, %struct.TYPE_3__* %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca [6 x i32], align 16
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca [6 x i32], align 16
  %19 = alloca [6 x i32], align 16
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i8*, align 8
  %23 = alloca [6 x i32], align 16
  %24 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  store i32* %2, i32** %6, align 8
  store i32 0, i32* %7, align 4
  %25 = load i32*, i32** %6, align 8
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %8, align 4
  store i64 10, i64* %13, align 8
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = add nsw i32 %29, 1
  %31 = call i64 @testMalloc(i32 %30)
  %32 = inttoptr i64 %31 to i32*
  store i32* %32, i32** %10, align 8
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = add nsw i32 %35, 1
  %37 = call i64 @testMalloc(i32 %36)
  %38 = inttoptr i64 %37 to i8*
  store i8* %38, i8** %11, align 8
  %39 = load i8*, i8** %4, align 8
  %40 = call i32* @testOpen(i8* %39, i32 1, i32* %8)
  store i32* %40, i32** %9, align 8
  store i32 0, i32* %12, align 4
  br label %41

41:                                               ; preds = %195, %3
  %42 = load i32, i32* %12, align 4
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = icmp slt i32 %42, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %41
  %48 = load i32, i32* %8, align 4
  %49 = icmp eq i32 %48, 0
  br label %50

50:                                               ; preds = %47, %41
  %51 = phi i1 [ false, %41 ], [ %49, %47 ]
  br i1 %51, label %52, label %198

52:                                               ; preds = %50
  %53 = load i32, i32* %12, align 4
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = call i32 (...) @testCaseNDot()
  %58 = call i32 @testCaseProgress(i32 %53, i32 %56, i32 %57, i32* %7)
  store i32 0, i32* %14, align 4
  br label %59

59:                                               ; preds = %111, %52
  %60 = load i32, i32* %14, align 4
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = icmp slt i32 %60, %63
  br i1 %64, label %65, label %114

65:                                               ; preds = %59
  %66 = load i64, i64* %13, align 8
  %67 = add i64 %66, 1
  store i64 %67, i64* %13, align 8
  %68 = trunc i64 %66 to i32
  %69 = call i32 @testPrngValue(i32 %68)
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = srem i32 %69, %72
  %74 = add nsw i32 %73, 1
  %75 = sext i32 %74 to i64
  store i64 %75, i64* %16, align 8
  %76 = load i64, i64* %13, align 8
  %77 = add i64 %76, 1
  store i64 %77, i64* %13, align 8
  %78 = trunc i64 %76 to i32
  %79 = call i32 @testPrngValue(i32 %78)
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 4
  %85 = load i32, i32* %84, align 4
  %86 = sub nsw i32 %82, %85
  %87 = srem i32 %79, %86
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 4
  %90 = load i32, i32* %89, align 4
  %91 = add nsw i32 %87, %90
  store i32 %91, i32* %17, align 4
  %92 = load i64, i64* %13, align 8
  %93 = add i64 %92, 1
  store i64 %93, i64* %13, align 8
  %94 = trunc i64 %92 to i32
  %95 = call i32 @testPrngValue(i32 %94)
  %96 = load i8*, i8** %11, align 8
  %97 = load i32, i32* %17, align 4
  %98 = call i32 @testPrngString(i32 %95, i8* %96, i32 %97)
  %99 = getelementptr inbounds [6 x i32], [6 x i32]* %15, i64 0, i64 0
  %100 = load i64, i64* %16, align 8
  %101 = trunc i64 %100 to i32
  %102 = call i32 @dt3PutKey(i32* %99, i32 %101)
  %103 = load i32*, i32** %9, align 8
  %104 = getelementptr inbounds [6 x i32], [6 x i32]* %15, i64 0, i64 0
  %105 = load i8*, i8** %11, align 8
  %106 = load i32, i32* %17, align 4
  %107 = call i32 @testWrite(i32* %103, i32* %104, i32 23, i8* %105, i32 %106, i32* %8)
  %108 = load i32*, i32** %10, align 8
  %109 = load i64, i64* %16, align 8
  %110 = getelementptr inbounds i32, i32* %108, i64 %109
  store i32 1, i32* %110, align 4
  br label %111

111:                                              ; preds = %65
  %112 = load i32, i32* %14, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %14, align 4
  br label %59

114:                                              ; preds = %59
  store i32 0, i32* %14, align 4
  br label %115

115:                                              ; preds = %149, %114
  %116 = load i32, i32* %14, align 4
  %117 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i32 0, i32 5
  %119 = load i32, i32* %118, align 4
  %120 = icmp slt i32 %116, %119
  br i1 %120, label %121, label %152

121:                                              ; preds = %115
  %122 = load i64, i64* %13, align 8
  %123 = add i64 %122, 1
  store i64 %123, i64* %13, align 8
  %124 = trunc i64 %122 to i32
  %125 = call i32 @testPrngValue(i32 %124)
  %126 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = srem i32 %125, %128
  %130 = add nsw i32 %129, 1
  %131 = sext i32 %130 to i64
  store i64 %131, i64* %20, align 8
  %132 = getelementptr inbounds [6 x i32], [6 x i32]* %18, i64 0, i64 0
  %133 = load i64, i64* %20, align 8
  %134 = sub i64 %133, 1
  %135 = trunc i64 %134 to i32
  %136 = call i32 @dt3PutKey(i32* %132, i32 %135)
  %137 = getelementptr inbounds [6 x i32], [6 x i32]* %19, i64 0, i64 0
  %138 = load i64, i64* %20, align 8
  %139 = add i64 %138, 1
  %140 = trunc i64 %139 to i32
  %141 = call i32 @dt3PutKey(i32* %137, i32 %140)
  %142 = load i32*, i32** %9, align 8
  %143 = getelementptr inbounds [6 x i32], [6 x i32]* %18, i64 0, i64 0
  %144 = getelementptr inbounds [6 x i32], [6 x i32]* %19, i64 0, i64 0
  %145 = call i32 @testDeleteRange(i32* %142, i32* %143, i32 23, i32* %144, i32 23, i32* %8)
  %146 = load i32*, i32** %10, align 8
  %147 = load i64, i64* %20, align 8
  %148 = getelementptr inbounds i32, i32* %146, i64 %147
  store i32 0, i32* %148, align 4
  br label %149

149:                                              ; preds = %121
  %150 = load i32, i32* %14, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %14, align 4
  br label %115

152:                                              ; preds = %115
  %153 = call i32 @testReopen(i32** %9, i32* %8)
  store i32 1, i32* %14, align 4
  br label %154

154:                                              ; preds = %191, %152
  %155 = load i32, i32* %8, align 4
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %157, label %163

157:                                              ; preds = %154
  %158 = load i32, i32* %14, align 4
  %159 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %160 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = icmp sle i32 %158, %161
  br label %163

163:                                              ; preds = %157, %154
  %164 = phi i1 [ false, %154 ], [ %162, %157 ]
  br i1 %164, label %165, label %194

165:                                              ; preds = %163
  %166 = getelementptr inbounds [6 x i32], [6 x i32]* %23, i64 0, i64 0
  %167 = load i32, i32* %14, align 4
  %168 = call i32 @dt3PutKey(i32* %166, i32 %167)
  %169 = load i32*, i32** %9, align 8
  %170 = getelementptr inbounds [6 x i32], [6 x i32]* %23, i64 0, i64 0
  %171 = call i32 @tdb_fetch(i32* %169, i32* %170, i32 23, i8** %22, i32* %21)
  store i32 %171, i32* %24, align 4
  %172 = load i32, i32* %24, align 4
  %173 = call i32 @testCompareInt(i32 0, i32 %172, i32* %8)
  %174 = load i32*, i32** %10, align 8
  %175 = load i32, i32* %14, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i32, i32* %174, i64 %176
  %178 = load i32, i32* %177, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %185

180:                                              ; preds = %165
  %181 = load i32, i32* %21, align 4
  %182 = icmp sgt i32 %181, 0
  %183 = zext i1 %182 to i32
  %184 = call i32 @testCompareInt(i32 1, i32 %183, i32* %8)
  br label %190

185:                                              ; preds = %165
  %186 = load i32, i32* %21, align 4
  %187 = icmp slt i32 %186, 0
  %188 = zext i1 %187 to i32
  %189 = call i32 @testCompareInt(i32 1, i32 %188, i32* %8)
  br label %190

190:                                              ; preds = %185, %180
  br label %191

191:                                              ; preds = %190
  %192 = load i32, i32* %14, align 4
  %193 = add nsw i32 %192, 1
  store i32 %193, i32* %14, align 4
  br label %154

194:                                              ; preds = %163
  br label %195

195:                                              ; preds = %194
  %196 = load i32, i32* %12, align 4
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %12, align 4
  br label %41

198:                                              ; preds = %50
  %199 = call i32 @testClose(i32** %9)
  %200 = load i32, i32* %8, align 4
  %201 = call i32 @testCaseFinish(i32 %200)
  %202 = load i32, i32* %8, align 4
  %203 = load i32*, i32** %6, align 8
  store i32 %202, i32* %203, align 4
  ret void
}

declare dso_local i64 @testMalloc(i32) #1

declare dso_local i32* @testOpen(i8*, i32, i32*) #1

declare dso_local i32 @testCaseProgress(i32, i32, i32, i32*) #1

declare dso_local i32 @testCaseNDot(...) #1

declare dso_local i32 @testPrngValue(i32) #1

declare dso_local i32 @testPrngString(i32, i8*, i32) #1

declare dso_local i32 @dt3PutKey(i32*, i32) #1

declare dso_local i32 @testWrite(i32*, i32*, i32, i8*, i32, i32*) #1

declare dso_local i32 @testDeleteRange(i32*, i32*, i32, i32*, i32, i32*) #1

declare dso_local i32 @testReopen(i32**, i32*) #1

declare dso_local i32 @tdb_fetch(i32*, i32*, i32, i8**, i32*) #1

declare dso_local i32 @testCompareInt(i32, i32, i32*) #1

declare dso_local i32 @testClose(i32**) #1

declare dso_local i32 @testCaseFinish(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
