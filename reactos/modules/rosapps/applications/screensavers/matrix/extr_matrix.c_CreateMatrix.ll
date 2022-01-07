; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/screensavers/matrix/extr_matrix.c_CreateMatrix.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/screensavers/matrix/extr_matrix.c_CreateMatrix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32, i64, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i64*, i32 }

@GLYPH_HEIGHT = common dso_local global i32 0, align 4
@GLYPH_WIDTH = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@IDB_BITMAP1 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_5__* @CreateMatrix(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* @GLYPH_HEIGHT, align 4
  %16 = sdiv i32 %14, %15
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %12, align 4
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @GLYPH_WIDTH, align 4
  %20 = sdiv i32 %18, %19
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %13, align 4
  %22 = load i32, i32* %13, align 4
  %23 = sext i32 %22 to i64
  %24 = mul i64 4, %23
  %25 = add i64 40, %24
  %26 = trunc i64 %25 to i32
  %27 = call i8* @malloc(i32 %26)
  %28 = bitcast i8* %27 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %28, %struct.TYPE_5__** %8, align 8
  %29 = icmp eq %struct.TYPE_5__* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %3
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %4, align 8
  br label %170

31:                                               ; preds = %3
  %32 = load i32, i32* %13, align 4
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  %35 = load i32, i32* %12, align 4
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* %6, align 4
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 8
  %41 = load i32, i32* %7, align 4
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 3
  store i32 %41, i32* %43, align 4
  store i32 0, i32* %10, align 4
  br label %44

44:                                               ; preds = %127, %31
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* %13, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %130

48:                                               ; preds = %44
  %49 = load i32, i32* %12, align 4
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 7
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = load i32, i32* %10, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  store i32 %49, i32* %56, align 8
  %57 = load i32, i32* @FALSE, align 4
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 7
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = load i32, i32* %10, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 5
  store i32 %57, i32* %64, align 8
  %65 = call i32 (...) @crc_rand()
  %66 = srem i32 %65, 100
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 7
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = load i32, i32* %10, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 1
  store i32 %66, i32* %73, align 4
  %74 = call i32 (...) @crc_rand()
  %75 = srem i32 %74, 2
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 7
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %77, align 8
  %79 = load i32, i32* %10, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 2
  store i32 %75, i32* %82, align 8
  %83 = call i32 (...) @crc_rand()
  %84 = srem i32 %83, 20
  %85 = add nsw i32 %84, 3
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 7
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %87, align 8
  %89 = load i32, i32* %10, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 3
  store i32 %85, i32* %92, align 4
  %93 = load i32, i32* %12, align 4
  %94 = add nsw i32 %93, 16
  %95 = sext i32 %94 to i64
  %96 = mul i64 4, %95
  %97 = trunc i64 %96 to i32
  %98 = call i8* @malloc(i32 %97)
  %99 = bitcast i8* %98 to i64*
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 7
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %101, align 8
  %103 = load i32, i32* %10, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 4
  store i64* %99, i64** %106, align 8
  store i32 0, i32* %11, align 4
  br label %107

107:                                              ; preds = %123, %48
  %108 = load i32, i32* %11, align 4
  %109 = load i32, i32* %12, align 4
  %110 = icmp slt i32 %108, %109
  br i1 %110, label %111, label %126

111:                                              ; preds = %107
  %112 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 7
  %114 = load %struct.TYPE_4__*, %struct.TYPE_4__** %113, align 8
  %115 = load i32, i32* %10, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 4
  %119 = load i64*, i64** %118, align 8
  %120 = load i32, i32* %11, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i64, i64* %119, i64 %121
  store i64 0, i64* %122, align 8
  br label %123

123:                                              ; preds = %111
  %124 = load i32, i32* %11, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %11, align 4
  br label %107

126:                                              ; preds = %107
  br label %127

127:                                              ; preds = %126
  %128 = load i32, i32* %10, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %10, align 4
  br label %44

130:                                              ; preds = %44
  %131 = call i32 @GetDC(i32* null)
  store i32 %131, i32* %9, align 4
  %132 = call i32 @GetModuleHandle(i32 0)
  %133 = load i32, i32* @IDB_BITMAP1, align 4
  %134 = call i32 @MAKEINTRESOURCE(i32 %133)
  %135 = call i32 @LoadBitmap(i32 %132, i32 %134)
  %136 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i32 0, i32 5
  store i32 %135, i32* %137, align 8
  %138 = load i32, i32* %9, align 4
  %139 = call i32 @CreateCompatibleDC(i32 %138)
  %140 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %141 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %140, i32 0, i32 6
  store i32 %139, i32* %141, align 4
  %142 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %143 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %142, i32 0, i32 6
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %146 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %145, i32 0, i32 5
  %147 = load i32, i32* %146, align 8
  %148 = call i32 @SelectObject(i32 %144, i32 %147)
  %149 = load i32, i32* %9, align 4
  %150 = call i32 @ReleaseDC(i32* null, i32 %149)
  %151 = load i32, i32* %5, align 4
  %152 = call i64 @GetParent(i32 %151)
  %153 = icmp eq i64 %152, 0
  br i1 %153, label %154, label %165

154:                                              ; preds = %130
  %155 = load i32, i32* %5, align 4
  %156 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %157 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %160 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = call i64 @InitMatrixMessage(i32 %155, i32 %158, i32 %161)
  %163 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %164 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %163, i32 0, i32 4
  store i64 %162, i64* %164, align 8
  br label %168

165:                                              ; preds = %130
  %166 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %167 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %166, i32 0, i32 4
  store i64 0, i64* %167, align 8
  br label %168

168:                                              ; preds = %165, %154
  %169 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  store %struct.TYPE_5__* %169, %struct.TYPE_5__** %4, align 8
  br label %170

170:                                              ; preds = %168, %30
  %171 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  ret %struct.TYPE_5__* %171
}

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @crc_rand(...) #1

declare dso_local i32 @GetDC(i32*) #1

declare dso_local i32 @LoadBitmap(i32, i32) #1

declare dso_local i32 @GetModuleHandle(i32) #1

declare dso_local i32 @MAKEINTRESOURCE(i32) #1

declare dso_local i32 @CreateCompatibleDC(i32) #1

declare dso_local i32 @SelectObject(i32, i32) #1

declare dso_local i32 @ReleaseDC(i32*, i32) #1

declare dso_local i64 @GetParent(i32) #1

declare dso_local i64 @InitMatrixMessage(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
