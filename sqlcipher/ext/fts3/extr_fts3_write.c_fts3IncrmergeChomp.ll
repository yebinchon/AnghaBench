; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts3/extr_fts3_write.c_fts3IncrmergeChomp.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts3/extr_fts3_write.c_fts3IncrmergeChomp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_5__** }
%struct.TYPE_5__ = type { i32, i64, i8*, i32 }

@SQLITE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, %struct.TYPE_6__*, i32*)* @fts3IncrmergeChomp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fts3IncrmergeChomp(i32* %0, i32 %1, %struct.TYPE_6__* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_5__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %7, align 8
  store i32* %3, i32** %8, align 8
  store i32 0, i32* %10, align 4
  %16 = load i32, i32* @SQLITE_OK, align 4
  store i32 %16, i32* %11, align 4
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = sub nsw i32 %19, 1
  store i32 %20, i32* %9, align 4
  br label %21

21:                                               ; preds = %112, %4
  %22 = load i32, i32* %9, align 4
  %23 = icmp sge i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %21
  %25 = load i32, i32* %11, align 4
  %26 = load i32, i32* @SQLITE_OK, align 4
  %27 = icmp eq i32 %25, %26
  br label %28

28:                                               ; preds = %24, %21
  %29 = phi i1 [ false, %21 ], [ %27, %24 ]
  br i1 %29, label %30, label %115

30:                                               ; preds = %28
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %12, align 8
  store i32 0, i32* %13, align 4
  br label %31

31:                                               ; preds = %55, %30
  %32 = load i32, i32* %13, align 4
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp slt i32 %32, %35
  %37 = zext i1 %36 to i32
  %38 = call i64 @ALWAYS(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %58

40:                                               ; preds = %31
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 1
  %43 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %42, align 8
  %44 = load i32, i32* %13, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %43, i64 %45
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %46, align 8
  store %struct.TYPE_5__* %47, %struct.TYPE_5__** %12, align 8
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* %9, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %40
  br label %58

54:                                               ; preds = %40
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %13, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %13, align 4
  br label %31

58:                                               ; preds = %53, %31
  %59 = load i32, i32* %13, align 4
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp slt i32 %59, %62
  br i1 %63, label %64, label %70

64:                                               ; preds = %58
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* %9, align 4
  %69 = icmp eq i32 %67, %68
  br label %70

70:                                               ; preds = %64, %58
  %71 = phi i1 [ false, %58 ], [ %69, %64 ]
  %72 = zext i1 %71 to i32
  %73 = call i32 @assert(i32 %72)
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %78, label %94

78:                                               ; preds = %70
  %79 = load i32*, i32** %5, align 8
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %81 = call i32 @fts3DeleteSegment(i32* %79, %struct.TYPE_5__* %80)
  store i32 %81, i32* %11, align 4
  %82 = load i32, i32* %11, align 4
  %83 = load i32, i32* @SQLITE_OK, align 4
  %84 = icmp eq i32 %82, %83
  br i1 %84, label %85, label %92

85:                                               ; preds = %78
  %86 = load i32*, i32** %5, align 8
  %87 = load i32, i32* %6, align 4
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @fts3RemoveSegdirEntry(i32* %86, i32 %87, i32 %90)
  store i32 %91, i32* %11, align 4
  br label %92

92:                                               ; preds = %85, %78
  %93 = load i32*, i32** %8, align 8
  store i32 0, i32* %93, align 4
  br label %111

94:                                               ; preds = %70
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 2
  %97 = load i8*, i8** %96, align 8
  store i8* %97, i8** %14, align 8
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 8
  store i32 %100, i32* %15, align 4
  %101 = load i32*, i32** %5, align 8
  %102 = load i32, i32* %6, align 4
  %103 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load i8*, i8** %14, align 8
  %107 = load i32, i32* %15, align 4
  %108 = call i32 @fts3TruncateSegment(i32* %101, i32 %102, i32 %105, i8* %106, i32 %107)
  store i32 %108, i32* %11, align 4
  %109 = load i32, i32* %10, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %10, align 4
  br label %111

111:                                              ; preds = %94, %92
  br label %112

112:                                              ; preds = %111
  %113 = load i32, i32* %9, align 4
  %114 = add nsw i32 %113, -1
  store i32 %114, i32* %9, align 4
  br label %21

115:                                              ; preds = %28
  %116 = load i32, i32* %11, align 4
  %117 = load i32, i32* @SQLITE_OK, align 4
  %118 = icmp eq i32 %116, %117
  br i1 %118, label %119, label %129

119:                                              ; preds = %115
  %120 = load i32, i32* %10, align 4
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = icmp ne i32 %120, %123
  br i1 %124, label %125, label %129

125:                                              ; preds = %119
  %126 = load i32*, i32** %5, align 8
  %127 = load i32, i32* %6, align 4
  %128 = call i32 @fts3RepackSegdirLevel(i32* %126, i32 %127)
  store i32 %128, i32* %11, align 4
  br label %129

129:                                              ; preds = %125, %119, %115
  %130 = load i32, i32* %10, align 4
  %131 = load i32*, i32** %8, align 8
  store i32 %130, i32* %131, align 4
  %132 = load i32, i32* %11, align 4
  ret i32 %132
}

declare dso_local i64 @ALWAYS(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @fts3DeleteSegment(i32*, %struct.TYPE_5__*) #1

declare dso_local i32 @fts3RemoveSegdirEntry(i32*, i32, i32) #1

declare dso_local i32 @fts3TruncateSegment(i32*, i32, i32, i8*, i32) #1

declare dso_local i32 @fts3RepackSegdirLevel(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
