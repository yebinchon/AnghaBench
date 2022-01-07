; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts2/extr_fts2.c_segmentMerge.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts2/extr_fts2.c_segmentMerge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MERGE_COUNT = common dso_local global i32 0, align 4
@SQLITE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @segmentMerge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @segmentMerge(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load i32, i32* @MERGE_COUNT, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %7, align 8
  %16 = alloca i32, i64 %14, align 16
  store i64 %14, i64* %8, align 8
  store i32 0, i32* %11, align 4
  %17 = load i32*, i32** %4, align 8
  %18 = load i32, i32* %5, align 4
  %19 = add nsw i32 %18, 1
  %20 = call i32 @segdirNextIndex(i32* %17, i32 %19, i32* %11)
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %10, align 4
  %22 = load i32, i32* @SQLITE_OK, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %2
  %25 = load i32, i32* %10, align 4
  store i32 %25, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %152

26:                                               ; preds = %2
  %27 = bitcast i32* %16 to i32**
  %28 = mul nuw i64 4, %14
  %29 = trunc i64 %28 to i32
  %30 = call i32 @memset(i32** %27, i8 signext 0, i32 %29)
  %31 = load i32*, i32** %4, align 8
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @leavesReadersInit(i32* %31, i32 %32, i32* %16, i32* %9)
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* @SQLITE_OK, align 4
  %36 = icmp ne i32 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %26
  %38 = load i32, i32* %10, align 4
  store i32 %38, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %152

39:                                               ; preds = %26
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* @MERGE_COUNT, align 4
  %42 = icmp eq i32 %40, %41
  %43 = zext i1 %42 to i32
  %44 = call i32 @assert(i32 %43)
  %45 = load i32, i32* %5, align 4
  %46 = add nsw i32 %45, 1
  %47 = load i32, i32* %11, align 4
  %48 = call i32 @leafWriterInit(i32 %46, i32 %47, i32* %6)
  br label %49

49:                                               ; preds = %109, %39
  %50 = call i32 @leavesReaderAtEnd(i32* %16)
  %51 = icmp ne i32 %50, 0
  %52 = xor i1 %51, true
  br i1 %52, label %53, label %110

53:                                               ; preds = %49
  store i32 1, i32* %9, align 4
  br label %54

54:                                               ; preds = %75, %53
  %55 = load i32, i32* %9, align 4
  %56 = load i32, i32* @MERGE_COUNT, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %65

58:                                               ; preds = %54
  %59 = load i32, i32* %9, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %16, i64 %60
  %62 = call i32 @leavesReaderAtEnd(i32* %61)
  %63 = icmp ne i32 %62, 0
  %64 = xor i1 %63, true
  br label %65

65:                                               ; preds = %58, %54
  %66 = phi i1 [ false, %54 ], [ %64, %58 ]
  br i1 %66, label %67, label %78

67:                                               ; preds = %65
  %68 = load i32, i32* %9, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %16, i64 %69
  %71 = call i64 @leavesReaderTermCmp(i32* %16, i32* %70)
  %72 = icmp ne i64 0, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %67
  br label %78

74:                                               ; preds = %67
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* %9, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %9, align 4
  br label %54

78:                                               ; preds = %73, %65
  %79 = load i32*, i32** %4, align 8
  %80 = load i32, i32* %9, align 4
  %81 = call i32 @leavesReadersMerge(i32* %79, i32* %16, i32 %80, i32* %6)
  store i32 %81, i32* %10, align 4
  %82 = load i32, i32* %10, align 4
  %83 = load i32, i32* @SQLITE_OK, align 4
  %84 = icmp ne i32 %82, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %78
  br label %136

86:                                               ; preds = %78
  br label %87

87:                                               ; preds = %101, %86
  %88 = load i32, i32* %9, align 4
  %89 = add nsw i32 %88, -1
  store i32 %89, i32* %9, align 4
  %90 = icmp sgt i32 %88, 0
  br i1 %90, label %91, label %109

91:                                               ; preds = %87
  %92 = load i32*, i32** %4, align 8
  %93 = load i32, i32* %9, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %16, i64 %94
  %96 = call i32 @leavesReaderStep(i32* %92, i32* %95)
  store i32 %96, i32* %10, align 4
  %97 = load i32, i32* %10, align 4
  %98 = load i32, i32* @SQLITE_OK, align 4
  %99 = icmp ne i32 %97, %98
  br i1 %99, label %100, label %101

100:                                              ; preds = %91
  br label %136

101:                                              ; preds = %91
  %102 = load i32, i32* %9, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %16, i64 %103
  %105 = load i32, i32* @MERGE_COUNT, align 4
  %106 = load i32, i32* %9, align 4
  %107 = sub nsw i32 %105, %106
  %108 = call i32 @leavesReaderReorder(i32* %104, i32 %107)
  br label %87

109:                                              ; preds = %87
  br label %49

110:                                              ; preds = %49
  store i32 0, i32* %9, align 4
  br label %111

111:                                              ; preds = %120, %110
  %112 = load i32, i32* %9, align 4
  %113 = load i32, i32* @MERGE_COUNT, align 4
  %114 = icmp slt i32 %112, %113
  br i1 %114, label %115, label %123

115:                                              ; preds = %111
  %116 = load i32, i32* %9, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %16, i64 %117
  %119 = call i32 @leavesReaderDestroy(i32* %118)
  br label %120

120:                                              ; preds = %115
  %121 = load i32, i32* %9, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %9, align 4
  br label %111

123:                                              ; preds = %111
  %124 = load i32*, i32** %4, align 8
  %125 = call i32 @leafWriterFinalize(i32* %124, i32* %6)
  store i32 %125, i32* %10, align 4
  %126 = call i32 @leafWriterDestroy(i32* %6)
  %127 = load i32, i32* %10, align 4
  %128 = load i32, i32* @SQLITE_OK, align 4
  %129 = icmp ne i32 %127, %128
  br i1 %129, label %130, label %132

130:                                              ; preds = %123
  %131 = load i32, i32* %10, align 4
  store i32 %131, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %152

132:                                              ; preds = %123
  %133 = load i32*, i32** %4, align 8
  %134 = load i32, i32* %5, align 4
  %135 = call i32 @segdir_delete(i32* %133, i32 %134)
  store i32 %135, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %152

136:                                              ; preds = %100, %85
  store i32 0, i32* %9, align 4
  br label %137

137:                                              ; preds = %146, %136
  %138 = load i32, i32* %9, align 4
  %139 = load i32, i32* @MERGE_COUNT, align 4
  %140 = icmp slt i32 %138, %139
  br i1 %140, label %141, label %149

141:                                              ; preds = %137
  %142 = load i32, i32* %9, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %16, i64 %143
  %145 = call i32 @leavesReaderDestroy(i32* %144)
  br label %146

146:                                              ; preds = %141
  %147 = load i32, i32* %9, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %9, align 4
  br label %137

149:                                              ; preds = %137
  %150 = call i32 @leafWriterDestroy(i32* %6)
  %151 = load i32, i32* %10, align 4
  store i32 %151, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %152

152:                                              ; preds = %149, %132, %130, %37, %24
  %153 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %153)
  %154 = load i32, i32* %3, align 4
  ret i32 %154
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @segdirNextIndex(i32*, i32, i32*) #2

declare dso_local i32 @memset(i32**, i8 signext, i32) #2

declare dso_local i32 @leavesReadersInit(i32*, i32, i32*, i32*) #2

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @leafWriterInit(i32, i32, i32*) #2

declare dso_local i32 @leavesReaderAtEnd(i32*) #2

declare dso_local i64 @leavesReaderTermCmp(i32*, i32*) #2

declare dso_local i32 @leavesReadersMerge(i32*, i32*, i32, i32*) #2

declare dso_local i32 @leavesReaderStep(i32*, i32*) #2

declare dso_local i32 @leavesReaderReorder(i32*, i32) #2

declare dso_local i32 @leavesReaderDestroy(i32*) #2

declare dso_local i32 @leafWriterFinalize(i32*, i32*) #2

declare dso_local i32 @leafWriterDestroy(i32*) #2

declare dso_local i32 @segdir_delete(i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
