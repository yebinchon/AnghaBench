; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_test_demovfs.c_demoWrite.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_test_demovfs.c_demoWrite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64, i32* }

@SQLITE_DEMOVFS_BUFFERSZ = common dso_local global i64 0, align 8
@SQLITE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32, i64)* @demoWrite to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @demoWrite(i32* %0, i8* %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_4__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = bitcast i32* %16 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %17, %struct.TYPE_4__** %10, align 8
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 2
  %20 = load i32*, i32** %19, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %120

22:                                               ; preds = %4
  %23 = load i8*, i8** %7, align 8
  store i8* %23, i8** %11, align 8
  %24 = load i32, i32* %8, align 4
  store i32 %24, i32* %12, align 4
  %25 = load i64, i64* %9, align 8
  store i64 %25, i64* %13, align 8
  br label %26

26:                                               ; preds = %91, %22
  %27 = load i32, i32* %12, align 4
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %119

29:                                               ; preds = %26
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @SQLITE_DEMOVFS_BUFFERSZ, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %45, label %35

35:                                               ; preds = %29
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = add nsw i64 %38, %41
  %43 = load i64, i64* %13, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %54

45:                                               ; preds = %35, %29
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %47 = call i32 @demoFlushBuffer(%struct.TYPE_4__* %46)
  store i32 %47, i32* %15, align 4
  %48 = load i32, i32* %15, align 4
  %49 = load i32, i32* @SQLITE_OK, align 4
  %50 = icmp ne i32 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %45
  %52 = load i32, i32* %15, align 4
  store i32 %52, i32* %5, align 4
  br label %128

53:                                               ; preds = %45
  br label %54

54:                                               ; preds = %53, %35
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %69, label %59

59:                                               ; preds = %54
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = add nsw i64 %62, %65
  %67 = load i64, i64* %13, align 8
  %68 = icmp eq i64 %66, %67
  br label %69

69:                                               ; preds = %59, %54
  %70 = phi i1 [ true, %54 ], [ %68, %59 ]
  %71 = zext i1 %70 to i32
  %72 = call i32 @assert(i32 %71)
  %73 = load i64, i64* %13, align 8
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = sub nsw i64 %73, %76
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 1
  store i64 %77, i64* %79, align 8
  %80 = load i64, i64* @SQLITE_DEMOVFS_BUFFERSZ, align 8
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = sub nsw i64 %80, %83
  %85 = trunc i64 %84 to i32
  store i32 %85, i32* %14, align 4
  %86 = load i32, i32* %14, align 4
  %87 = load i32, i32* %12, align 4
  %88 = icmp sgt i32 %86, %87
  br i1 %88, label %89, label %91

89:                                               ; preds = %69
  %90 = load i32, i32* %12, align 4
  store i32 %90, i32* %14, align 4
  br label %91

91:                                               ; preds = %89, %69
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 2
  %94 = load i32*, i32** %93, align 8
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = getelementptr inbounds i32, i32* %94, i64 %97
  %99 = load i8*, i8** %11, align 8
  %100 = load i32, i32* %14, align 4
  %101 = call i32 @memcpy(i32* %98, i8* %99, i32 %100)
  %102 = load i32, i32* %14, align 4
  %103 = sext i32 %102 to i64
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = add nsw i64 %106, %103
  store i64 %107, i64* %105, align 8
  %108 = load i32, i32* %14, align 4
  %109 = load i32, i32* %12, align 4
  %110 = sub nsw i32 %109, %108
  store i32 %110, i32* %12, align 4
  %111 = load i32, i32* %14, align 4
  %112 = sext i32 %111 to i64
  %113 = load i64, i64* %13, align 8
  %114 = add nsw i64 %113, %112
  store i64 %114, i64* %13, align 8
  %115 = load i32, i32* %14, align 4
  %116 = load i8*, i8** %11, align 8
  %117 = sext i32 %115 to i64
  %118 = getelementptr inbounds i8, i8* %116, i64 %117
  store i8* %118, i8** %11, align 8
  br label %26

119:                                              ; preds = %26
  br label %126

120:                                              ; preds = %4
  %121 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %122 = load i8*, i8** %7, align 8
  %123 = load i32, i32* %8, align 4
  %124 = load i64, i64* %9, align 8
  %125 = call i32 @demoDirectWrite(%struct.TYPE_4__* %121, i8* %122, i32 %123, i64 %124)
  store i32 %125, i32* %5, align 4
  br label %128

126:                                              ; preds = %119
  %127 = load i32, i32* @SQLITE_OK, align 4
  store i32 %127, i32* %5, align 4
  br label %128

128:                                              ; preds = %126, %120, %51
  %129 = load i32, i32* %5, align 4
  ret i32 %129
}

declare dso_local i32 @demoFlushBuffer(%struct.TYPE_4__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

declare dso_local i32 @demoDirectWrite(%struct.TYPE_4__*, i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
