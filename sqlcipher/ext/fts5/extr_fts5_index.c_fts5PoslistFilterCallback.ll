; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_index.c_fts5PoslistFilterCallback.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_index.c_fts5PoslistFilterCallback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*, i32*, i32)* @fts5PoslistFilterCallback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fts5PoslistFilterCallback(i32* %0, i8* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_2__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %14 = load i8*, i8** %6, align 8
  %15 = bitcast i8* %14 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %15, %struct.TYPE_2__** %9, align 8
  %16 = load i32*, i32** %5, align 8
  %17 = call i32 @UNUSED_PARAM(i32* %16)
  %18 = load i32, i32* %8, align 4
  %19 = icmp sge i32 %18, 0
  %20 = zext i1 %19 to i32
  %21 = call i32 @assert_nc(i32 %20)
  %22 = load i32, i32* %8, align 4
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %24, label %149

24:                                               ; preds = %4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp eq i32 %27, 2
  br i1 %28, label %29, label %51

29:                                               ; preds = %24
  %30 = load i32*, i32** %7, align 8
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* %12, align 4
  %33 = call i32 @fts5FastGetVarint32(i32* %30, i32 %31, i32 %32)
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %12, align 4
  %38 = call i32 @fts5IndexColsetTest(i32 %36, i32 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %29
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  store i32 1, i32* %42, align 4
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @fts5BufferSafeAppendVarint(i32 %45, i32 1)
  br label %50

47:                                               ; preds = %29
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  store i32 0, i32* %49, align 4
  br label %50

50:                                               ; preds = %47, %40
  br label %51

51:                                               ; preds = %50, %24
  br label %52

52:                                               ; preds = %144, %51
  br label %53

53:                                               ; preds = %78, %52
  %54 = load i32, i32* %10, align 4
  %55 = load i32, i32* %8, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %64

57:                                               ; preds = %53
  %58 = load i32*, i32** %7, align 8
  %59 = load i32, i32* %10, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = icmp ne i32 %62, 1
  br label %64

64:                                               ; preds = %57, %53
  %65 = phi i1 [ false, %53 ], [ %63, %57 ]
  br i1 %65, label %66, label %81

66:                                               ; preds = %64
  br label %67

67:                                               ; preds = %75, %66
  %68 = load i32*, i32** %7, align 8
  %69 = load i32, i32* %10, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = and i32 %72, 128
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %67
  %76 = load i32, i32* %10, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %10, align 4
  br label %67

78:                                               ; preds = %67
  %79 = load i32, i32* %10, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %10, align 4
  br label %53

81:                                               ; preds = %64
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %98

86:                                               ; preds = %81
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load i32*, i32** %7, align 8
  %91 = load i32, i32* %11, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  %94 = load i32, i32* %10, align 4
  %95 = load i32, i32* %11, align 4
  %96 = sub nsw i32 %94, %95
  %97 = call i32 @fts5BufferSafeAppendBlob(i32 %89, i32* %93, i32 %96)
  br label %98

98:                                               ; preds = %86, %81
  %99 = load i32, i32* %10, align 4
  %100 = load i32, i32* %8, align 4
  %101 = icmp slt i32 %99, %100
  br i1 %101, label %102, label %143

102:                                              ; preds = %98
  %103 = load i32, i32* %10, align 4
  store i32 %103, i32* %11, align 4
  %104 = load i32, i32* %10, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %10, align 4
  %106 = load i32, i32* %10, align 4
  %107 = load i32, i32* %8, align 4
  %108 = icmp sge i32 %106, %107
  br i1 %108, label %109, label %112

109:                                              ; preds = %102
  %110 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 0
  store i32 2, i32* %111, align 4
  br label %142

112:                                              ; preds = %102
  %113 = load i32*, i32** %7, align 8
  %114 = load i32, i32* %10, align 4
  %115 = load i32, i32* %13, align 4
  %116 = call i32 @fts5FastGetVarint32(i32* %113, i32 %114, i32 %115)
  %117 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* %13, align 4
  %121 = call i32 @fts5IndexColsetTest(i32 %119, i32 %120)
  %122 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i32 0, i32 0
  store i32 %121, i32* %123, align 4
  %124 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %141

128:                                              ; preds = %112
  %129 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = load i32*, i32** %7, align 8
  %133 = load i32, i32* %11, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32, i32* %132, i64 %134
  %136 = load i32, i32* %10, align 4
  %137 = load i32, i32* %11, align 4
  %138 = sub nsw i32 %136, %137
  %139 = call i32 @fts5BufferSafeAppendBlob(i32 %131, i32* %135, i32 %138)
  %140 = load i32, i32* %10, align 4
  store i32 %140, i32* %11, align 4
  br label %141

141:                                              ; preds = %128, %112
  br label %142

142:                                              ; preds = %141, %109
  br label %143

143:                                              ; preds = %142, %98
  br label %144

144:                                              ; preds = %143
  %145 = load i32, i32* %10, align 4
  %146 = load i32, i32* %8, align 4
  %147 = icmp slt i32 %145, %146
  br i1 %147, label %52, label %148

148:                                              ; preds = %144
  br label %149

149:                                              ; preds = %148, %4
  ret void
}

declare dso_local i32 @UNUSED_PARAM(i32*) #1

declare dso_local i32 @assert_nc(i32) #1

declare dso_local i32 @fts5FastGetVarint32(i32*, i32, i32) #1

declare dso_local i32 @fts5IndexColsetTest(i32, i32) #1

declare dso_local i32 @fts5BufferSafeAppendVarint(i32, i32) #1

declare dso_local i32 @fts5BufferSafeAppendBlob(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
