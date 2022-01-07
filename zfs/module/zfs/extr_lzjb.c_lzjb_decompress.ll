; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_lzjb.c_lzjb_decompress.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_lzjb.c_lzjb_decompress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NBBY = common dso_local global i32 0, align 4
@MATCH_BITS = common dso_local global i32 0, align 4
@MATCH_MIN = common dso_local global i32 0, align 4
@OFFSET_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lzjb_decompress(i8* %0, i8* %1, i64 %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %20 = load i8*, i8** %7, align 8
  %21 = bitcast i8* %20 to i32*
  store i32* %21, i32** %12, align 8
  %22 = load i8*, i8** %8, align 8
  %23 = bitcast i8* %22 to i32*
  store i32* %23, i32** %13, align 8
  %24 = load i8*, i8** %8, align 8
  %25 = bitcast i8* %24 to i32*
  %26 = load i64, i64* %10, align 8
  %27 = getelementptr inbounds i32, i32* %25, i64 %26
  store i32* %27, i32** %14, align 8
  store i32 0, i32* %16, align 4
  %28 = load i32, i32* @NBBY, align 4
  %29 = sub nsw i32 %28, 1
  %30 = shl i32 1, %29
  store i32 %30, i32* %17, align 4
  br label %31

31:                                               ; preds = %106, %5
  %32 = load i32*, i32** %13, align 8
  %33 = load i32*, i32** %14, align 8
  %34 = icmp ult i32* %32, %33
  br i1 %34, label %35, label %107

35:                                               ; preds = %31
  %36 = load i32, i32* %17, align 4
  %37 = shl i32 %36, 1
  store i32 %37, i32* %17, align 4
  %38 = load i32, i32* @NBBY, align 4
  %39 = shl i32 1, %38
  %40 = icmp eq i32 %37, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %35
  store i32 1, i32* %17, align 4
  %42 = load i32*, i32** %12, align 8
  %43 = getelementptr inbounds i32, i32* %42, i32 1
  store i32* %43, i32** %12, align 8
  %44 = load i32, i32* %42, align 4
  store i32 %44, i32* %16, align 4
  br label %45

45:                                               ; preds = %41, %35
  %46 = load i32, i32* %16, align 4
  %47 = load i32, i32* %17, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %100

50:                                               ; preds = %45
  %51 = load i32*, i32** %12, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @NBBY, align 4
  %55 = load i32, i32* @MATCH_BITS, align 4
  %56 = sub nsw i32 %54, %55
  %57 = ashr i32 %53, %56
  %58 = load i32, i32* @MATCH_MIN, align 4
  %59 = add nsw i32 %57, %58
  store i32 %59, i32* %18, align 4
  %60 = load i32*, i32** %12, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @NBBY, align 4
  %64 = shl i32 %62, %63
  %65 = load i32*, i32** %12, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 1
  %67 = load i32, i32* %66, align 4
  %68 = or i32 %64, %67
  %69 = load i32, i32* @OFFSET_MASK, align 4
  %70 = and i32 %68, %69
  store i32 %70, i32* %19, align 4
  %71 = load i32*, i32** %12, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 2
  store i32* %72, i32** %12, align 8
  %73 = load i32*, i32** %13, align 8
  %74 = load i32, i32* %19, align 4
  %75 = sext i32 %74 to i64
  %76 = sub i64 0, %75
  %77 = getelementptr inbounds i32, i32* %73, i64 %76
  store i32* %77, i32** %15, align 8
  %78 = load i8*, i8** %8, align 8
  %79 = bitcast i8* %78 to i32*
  %80 = icmp ult i32* %77, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %50
  store i32 -1, i32* %6, align 4
  br label %108

82:                                               ; preds = %50
  br label %83

83:                                               ; preds = %93, %82
  %84 = load i32, i32* %18, align 4
  %85 = add nsw i32 %84, -1
  store i32 %85, i32* %18, align 4
  %86 = icmp sge i32 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %83
  %88 = load i32*, i32** %13, align 8
  %89 = load i32*, i32** %14, align 8
  %90 = icmp ult i32* %88, %89
  br label %91

91:                                               ; preds = %87, %83
  %92 = phi i1 [ false, %83 ], [ %90, %87 ]
  br i1 %92, label %93, label %99

93:                                               ; preds = %91
  %94 = load i32*, i32** %15, align 8
  %95 = getelementptr inbounds i32, i32* %94, i32 1
  store i32* %95, i32** %15, align 8
  %96 = load i32, i32* %94, align 4
  %97 = load i32*, i32** %13, align 8
  %98 = getelementptr inbounds i32, i32* %97, i32 1
  store i32* %98, i32** %13, align 8
  store i32 %96, i32* %97, align 4
  br label %83

99:                                               ; preds = %91
  br label %106

100:                                              ; preds = %45
  %101 = load i32*, i32** %12, align 8
  %102 = getelementptr inbounds i32, i32* %101, i32 1
  store i32* %102, i32** %12, align 8
  %103 = load i32, i32* %101, align 4
  %104 = load i32*, i32** %13, align 8
  %105 = getelementptr inbounds i32, i32* %104, i32 1
  store i32* %105, i32** %13, align 8
  store i32 %103, i32* %104, align 4
  br label %106

106:                                              ; preds = %100, %99
  br label %31

107:                                              ; preds = %31
  store i32 0, i32* %6, align 4
  br label %108

108:                                              ; preds = %107, %81
  %109 = load i32, i32* %6, align 4
  ret i32 %109
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
