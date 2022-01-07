; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/unarr/lzmasdk/extr_Ppmd7.c_Ppmd7_Construct.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/unarr/lzmasdk/extr_Ppmd7.c_Ppmd7_Construct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i32*, i8**, i8**, i8**, i64 }

@PPMD_NUM_INDEXES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Ppmd7_Construct(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 5
  store i64 0, i64* %8, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %9

9:                                                ; preds = %48, %1
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @PPMD_NUM_INDEXES, align 4
  %12 = icmp ult i32 %10, %11
  br i1 %12, label %13, label %51

13:                                               ; preds = %9
  %14 = load i32, i32* %3, align 4
  %15 = icmp uge i32 %14, 12
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  br label %21

17:                                               ; preds = %13
  %18 = load i32, i32* %3, align 4
  %19 = lshr i32 %18, 2
  %20 = add i32 %19, 1
  br label %21

21:                                               ; preds = %17, %16
  %22 = phi i32 [ 4, %16 ], [ %20, %17 ]
  store i32 %22, i32* %6, align 4
  br label %23

23:                                               ; preds = %34, %21
  %24 = load i32, i32* %3, align 4
  %25 = zext i32 %24 to i64
  %26 = inttoptr i64 %25 to i8*
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 4
  %29 = load i8**, i8*** %28, align 8
  %30 = load i32, i32* %4, align 4
  %31 = add i32 %30, 1
  store i32 %31, i32* %4, align 4
  %32 = zext i32 %30 to i64
  %33 = getelementptr inbounds i8*, i8** %29, i64 %32
  store i8* %26, i8** %33, align 8
  br label %34

34:                                               ; preds = %23
  %35 = load i32, i32* %6, align 4
  %36 = add i32 %35, -1
  store i32 %36, i32* %6, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %23, label %38

38:                                               ; preds = %34
  %39 = load i32, i32* %4, align 4
  %40 = zext i32 %39 to i64
  %41 = inttoptr i64 %40 to i8*
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 3
  %44 = load i8**, i8*** %43, align 8
  %45 = load i32, i32* %3, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds i8*, i8** %44, i64 %46
  store i8* %41, i8** %47, align 8
  br label %48

48:                                               ; preds = %38
  %49 = load i32, i32* %3, align 4
  %50 = add i32 %49, 1
  store i32 %50, i32* %3, align 4
  br label %9

51:                                               ; preds = %9
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 0
  store i32 0, i32* %55, align 4
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 1
  store i32 2, i32* %59, align 4
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 2
  %64 = call i32 @memset(i32* %63, i32 4, i32 9)
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 11
  %69 = call i32 @memset(i32* %68, i32 6, i32 245)
  store i32 0, i32* %3, align 4
  br label %70

70:                                               ; preds = %83, %51
  %71 = load i32, i32* %3, align 4
  %72 = icmp ult i32 %71, 3
  br i1 %72, label %73, label %86

73:                                               ; preds = %70
  %74 = load i32, i32* %3, align 4
  %75 = zext i32 %74 to i64
  %76 = inttoptr i64 %75 to i8*
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 2
  %79 = load i8**, i8*** %78, align 8
  %80 = load i32, i32* %3, align 4
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds i8*, i8** %79, i64 %81
  store i8* %76, i8** %82, align 8
  br label %83

83:                                               ; preds = %73
  %84 = load i32, i32* %3, align 4
  %85 = add i32 %84, 1
  store i32 %85, i32* %3, align 4
  br label %70

86:                                               ; preds = %70
  %87 = load i32, i32* %3, align 4
  store i32 %87, i32* %5, align 4
  store i32 1, i32* %4, align 4
  br label %88

88:                                               ; preds = %109, %86
  %89 = load i32, i32* %3, align 4
  %90 = icmp ult i32 %89, 256
  br i1 %90, label %91, label %112

91:                                               ; preds = %88
  %92 = load i32, i32* %5, align 4
  %93 = zext i32 %92 to i64
  %94 = inttoptr i64 %93 to i8*
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 2
  %97 = load i8**, i8*** %96, align 8
  %98 = load i32, i32* %3, align 4
  %99 = zext i32 %98 to i64
  %100 = getelementptr inbounds i8*, i8** %97, i64 %99
  store i8* %94, i8** %100, align 8
  %101 = load i32, i32* %4, align 4
  %102 = add i32 %101, -1
  store i32 %102, i32* %4, align 4
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %108

104:                                              ; preds = %91
  %105 = load i32, i32* %5, align 4
  %106 = add i32 %105, 1
  store i32 %106, i32* %5, align 4
  %107 = sub i32 %106, 2
  store i32 %107, i32* %4, align 4
  br label %108

108:                                              ; preds = %104, %91
  br label %109

109:                                              ; preds = %108
  %110 = load i32, i32* %3, align 4
  %111 = add i32 %110, 1
  store i32 %111, i32* %3, align 4
  br label %88

112:                                              ; preds = %88
  %113 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 1
  %115 = load i32*, i32** %114, align 8
  %116 = call i32 @memset(i32* %115, i32 0, i32 64)
  %117 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i32 0, i32 1
  %119 = load i32*, i32** %118, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 64
  %121 = call i32 @memset(i32* %120, i32 8, i32 192)
  ret void
}

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
