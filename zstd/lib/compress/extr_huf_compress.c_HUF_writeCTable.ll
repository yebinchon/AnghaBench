; ModuleID = '/home/carl/AnghaBench/zstd/lib/compress/extr_huf_compress.c_HUF_writeCTable.c'
source_filename = "/home/carl/AnghaBench/zstd/lib/compress/extr_huf_compress.c_HUF_writeCTable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }

@HUF_TABLELOG_MAX = common dso_local global i32 0, align 4
@HUF_SYMBOLVALUE_MAX = common dso_local global i32 0, align 4
@maxSymbolValue_tooLarge = common dso_local global i32 0, align 4
@hSize = common dso_local global i32 0, align 4
@GENERIC = common dso_local global i32 0, align 4
@dstSize_tooSmall = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @HUF_writeCTable(i8* %0, i64 %1, %struct.TYPE_3__* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_3__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i64 %1, i64* %8, align 8
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %18 = load i32, i32* @HUF_TABLELOG_MAX, align 4
  %19 = add nsw i32 %18, 1
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %12, align 8
  %22 = alloca i32, i64 %20, align 16
  store i64 %20, i64* %13, align 8
  %23 = load i32, i32* @HUF_SYMBOLVALUE_MAX, align 4
  %24 = zext i32 %23 to i64
  %25 = alloca i32, i64 %24, align 16
  store i64 %24, i64* %14, align 8
  %26 = load i8*, i8** %7, align 8
  %27 = bitcast i8* %26 to i32*
  store i32* %27, i32** %15, align 8
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* @HUF_SYMBOLVALUE_MAX, align 4
  %30 = icmp ugt i32 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %5
  %32 = load i32, i32* @maxSymbolValue_tooLarge, align 4
  %33 = call i64 @ERROR(i32 %32)
  store i64 %33, i64* %6, align 8
  store i32 1, i32* %17, align 4
  br label %155

34:                                               ; preds = %5
  %35 = getelementptr inbounds i32, i32* %22, i64 0
  store i32 0, i32* %35, align 16
  store i32 1, i32* %16, align 4
  br label %36

36:                                               ; preds = %49, %34
  %37 = load i32, i32* %16, align 4
  %38 = load i32, i32* %11, align 4
  %39 = add i32 %38, 1
  %40 = icmp ult i32 %37, %39
  br i1 %40, label %41, label %52

41:                                               ; preds = %36
  %42 = load i32, i32* %11, align 4
  %43 = add i32 %42, 1
  %44 = load i32, i32* %16, align 4
  %45 = sub i32 %43, %44
  %46 = load i32, i32* %16, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %22, i64 %47
  store i32 %45, i32* %48, align 4
  br label %49

49:                                               ; preds = %41
  %50 = load i32, i32* %16, align 4
  %51 = add i32 %50, 1
  store i32 %51, i32* %16, align 4
  br label %36

52:                                               ; preds = %36
  store i32 0, i32* %16, align 4
  br label %53

53:                                               ; preds = %69, %52
  %54 = load i32, i32* %16, align 4
  %55 = load i32, i32* %10, align 4
  %56 = icmp ult i32 %54, %55
  br i1 %56, label %57, label %72

57:                                               ; preds = %53
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %59 = load i32, i32* %16, align 4
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = getelementptr inbounds i32, i32* %22, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %16, align 4
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %25, i64 %67
  store i32 %65, i32* %68, align 4
  br label %69

69:                                               ; preds = %57
  %70 = load i32, i32* %16, align 4
  %71 = add i32 %70, 1
  store i32 %71, i32* %16, align 4
  br label %53

72:                                               ; preds = %53
  %73 = load i32, i32* @hSize, align 4
  %74 = load i32*, i32** %15, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 1
  %76 = load i64, i64* %8, align 8
  %77 = sub i64 %76, 1
  %78 = load i32, i32* %10, align 4
  %79 = call i32 @HUF_compressWeights(i32* %75, i64 %77, i32* %25, i32 %78)
  %80 = call i32 @CHECK_V_F(i32 %73, i32 %79)
  %81 = load i32, i32* @hSize, align 4
  %82 = icmp sgt i32 %81, 1
  %83 = zext i1 %82 to i32
  %84 = load i32, i32* @hSize, align 4
  %85 = load i32, i32* %10, align 4
  %86 = udiv i32 %85, 2
  %87 = icmp ult i32 %84, %86
  %88 = zext i1 %87 to i32
  %89 = and i32 %83, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %98

91:                                               ; preds = %72
  %92 = load i32, i32* @hSize, align 4
  %93 = load i32*, i32** %15, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 0
  store i32 %92, i32* %94, align 4
  %95 = load i32, i32* @hSize, align 4
  %96 = add nsw i32 %95, 1
  %97 = sext i32 %96 to i64
  store i64 %97, i64* %6, align 8
  store i32 1, i32* %17, align 4
  br label %155

98:                                               ; preds = %72
  %99 = load i32, i32* %10, align 4
  %100 = icmp ugt i32 %99, 128
  br i1 %100, label %101, label %104

101:                                              ; preds = %98
  %102 = load i32, i32* @GENERIC, align 4
  %103 = call i64 @ERROR(i32 %102)
  store i64 %103, i64* %6, align 8
  store i32 1, i32* %17, align 4
  br label %155

104:                                              ; preds = %98
  %105 = load i32, i32* %10, align 4
  %106 = add i32 %105, 1
  %107 = udiv i32 %106, 2
  %108 = add i32 %107, 1
  %109 = zext i32 %108 to i64
  %110 = load i64, i64* %8, align 8
  %111 = icmp ugt i64 %109, %110
  br i1 %111, label %112, label %115

112:                                              ; preds = %104
  %113 = load i32, i32* @dstSize_tooSmall, align 4
  %114 = call i64 @ERROR(i32 %113)
  store i64 %114, i64* %6, align 8
  store i32 1, i32* %17, align 4
  br label %155

115:                                              ; preds = %104
  %116 = load i32, i32* %10, align 4
  %117 = sub i32 %116, 1
  %118 = add i32 128, %117
  %119 = load i32*, i32** %15, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 0
  store i32 %118, i32* %120, align 4
  %121 = load i32, i32* %10, align 4
  %122 = zext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %25, i64 %122
  store i32 0, i32* %123, align 4
  store i32 0, i32* %16, align 4
  br label %124

124:                                              ; preds = %146, %115
  %125 = load i32, i32* %16, align 4
  %126 = load i32, i32* %10, align 4
  %127 = icmp ult i32 %125, %126
  br i1 %127, label %128, label %149

128:                                              ; preds = %124
  %129 = load i32, i32* %16, align 4
  %130 = zext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %25, i64 %130
  %132 = load i32, i32* %131, align 4
  %133 = shl i32 %132, 4
  %134 = load i32, i32* %16, align 4
  %135 = add i32 %134, 1
  %136 = zext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %25, i64 %136
  %138 = load i32, i32* %137, align 4
  %139 = add nsw i32 %133, %138
  %140 = load i32*, i32** %15, align 8
  %141 = load i32, i32* %16, align 4
  %142 = udiv i32 %141, 2
  %143 = add i32 %142, 1
  %144 = zext i32 %143 to i64
  %145 = getelementptr inbounds i32, i32* %140, i64 %144
  store i32 %139, i32* %145, align 4
  br label %146

146:                                              ; preds = %128
  %147 = load i32, i32* %16, align 4
  %148 = add i32 %147, 2
  store i32 %148, i32* %16, align 4
  br label %124

149:                                              ; preds = %124
  %150 = load i32, i32* %10, align 4
  %151 = add i32 %150, 1
  %152 = udiv i32 %151, 2
  %153 = add i32 %152, 1
  %154 = zext i32 %153 to i64
  store i64 %154, i64* %6, align 8
  store i32 1, i32* %17, align 4
  br label %155

155:                                              ; preds = %149, %112, %101, %91, %31
  %156 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %156)
  %157 = load i64, i64* %6, align 8
  ret i64 %157
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @ERROR(i32) #2

declare dso_local i32 @CHECK_V_F(i32, i32) #2

declare dso_local i32 @HUF_compressWeights(i32*, i64, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
