; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_index.c_fts5AllocateSegid.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/fts5/extr_fts5_index.c_fts5AllocateSegid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64 }
%struct.TYPE_10__ = type { i32, i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }

@SQLITE_OK = common dso_local global i64 0, align 8
@FTS5_MAX_SEGMENT = common dso_local global i32 0, align 4
@SQLITE_FULL = common dso_local global i64 0, align 8
@SQLITE_ROW = common dso_local global i64 0, align 8
@SQLITE_STATIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, %struct.TYPE_10__*)* @fts5AllocateSegid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fts5AllocateSegid(%struct.TYPE_11__* %0, %struct.TYPE_10__* %1) #0 {
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %4, align 8
  store i32 0, i32* %5, align 4
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @SQLITE_OK, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %130

18:                                               ; preds = %2
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @FTS5_MAX_SEGMENT, align 4
  %23 = icmp sge i32 %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %18
  %25 = load i64, i64* @SQLITE_FULL, align 8
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 0
  store i64 %25, i64* %27, align 8
  br label %129

28:                                               ; preds = %18
  %29 = load i32, i32* @FTS5_MAX_SEGMENT, align 4
  %30 = add nsw i32 %29, 31
  %31 = sdiv i32 %30, 32
  %32 = zext i32 %31 to i64
  %33 = call i8* @llvm.stacksave()
  store i8* %33, i8** %6, align 8
  %34 = alloca i32, i64 %32, align 16
  store i64 %32, i64* %7, align 8
  %35 = mul nuw i64 4, %32
  %36 = trunc i64 %35 to i32
  %37 = call i32 @memset(i32* %34, i32 0, i32 %36)
  store i32 0, i32* %8, align 4
  br label %38

38:                                               ; preds = %93, %28
  %39 = load i32, i32* %8, align 4
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = icmp slt i32 %39, %42
  br i1 %43, label %44, label %96

44:                                               ; preds = %38
  store i32 0, i32* %9, align 4
  br label %45

45:                                               ; preds = %89, %44
  %46 = load i32, i32* %9, align 4
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 2
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %48, align 8
  %50 = load i32, i32* %8, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp slt i32 %46, %54
  br i1 %55, label %56, label %92

56:                                               ; preds = %45
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 2
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %58, align 8
  %60 = load i32, i32* %8, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 1
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %63, align 8
  %65 = load i32, i32* %9, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  store i32 %69, i32* %12, align 4
  %70 = load i32, i32* %12, align 4
  %71 = load i32, i32* @FTS5_MAX_SEGMENT, align 4
  %72 = icmp sle i32 %70, %71
  br i1 %72, label %73, label %88

73:                                               ; preds = %56
  %74 = load i32, i32* %12, align 4
  %75 = icmp sgt i32 %74, 0
  br i1 %75, label %76, label %88

76:                                               ; preds = %73
  %77 = load i32, i32* %12, align 4
  %78 = sub nsw i32 %77, 1
  %79 = srem i32 %78, 32
  %80 = shl i32 1, %79
  %81 = load i32, i32* %12, align 4
  %82 = sub nsw i32 %81, 1
  %83 = sdiv i32 %82, 32
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %34, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = or i32 %86, %80
  store i32 %87, i32* %85, align 4
  br label %88

88:                                               ; preds = %76, %73, %56
  br label %89

89:                                               ; preds = %88
  %90 = load i32, i32* %9, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %9, align 4
  br label %45

92:                                               ; preds = %45
  br label %93

93:                                               ; preds = %92
  %94 = load i32, i32* %8, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %8, align 4
  br label %38

96:                                               ; preds = %38
  store i32 0, i32* %10, align 4
  br label %97

97:                                               ; preds = %104, %96
  %98 = load i32, i32* %10, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %34, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = icmp eq i32 %101, -1
  br i1 %102, label %103, label %107

103:                                              ; preds = %97
  br label %104

104:                                              ; preds = %103
  %105 = load i32, i32* %10, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %10, align 4
  br label %97

107:                                              ; preds = %97
  %108 = load i32, i32* %10, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %34, i64 %109
  %111 = load i32, i32* %110, align 4
  store i32 %111, i32* %11, align 4
  store i32 0, i32* %5, align 4
  br label %112

112:                                              ; preds = %119, %107
  %113 = load i32, i32* %11, align 4
  %114 = load i32, i32* %5, align 4
  %115 = shl i32 1, %114
  %116 = and i32 %113, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %122

118:                                              ; preds = %112
  br label %119

119:                                              ; preds = %118
  %120 = load i32, i32* %5, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %5, align 4
  br label %112

122:                                              ; preds = %112
  %123 = load i32, i32* %10, align 4
  %124 = mul nsw i32 %123, 32
  %125 = add nsw i32 1, %124
  %126 = load i32, i32* %5, align 4
  %127 = add nsw i32 %126, %125
  store i32 %127, i32* %5, align 4
  %128 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %128)
  br label %129

129:                                              ; preds = %122, %24
  br label %130

130:                                              ; preds = %129, %2
  %131 = load i32, i32* %5, align 4
  ret i32 %131
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i32*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
