; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_sorted.c_multiCursorDoCompare.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_sorted.c_multiCursorDoCompare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32*, i32 }

@LSM_INSERT = common dso_local global i32 0, align 4
@LSM_POINT_DELETE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i32, i32)* @multiCursorDoCompare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @multiCursorDoCompare(%struct.TYPE_5__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  %22 = zext i1 %21 to i64
  %23 = select i1 %21, i32 -1, i32 1
  store i32 %23, i32* %16, align 4
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %34

28:                                               ; preds = %3
  %29 = load i32, i32* %5, align 4
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = icmp slt i32 %29, %32
  br label %34

34:                                               ; preds = %28, %3
  %35 = phi i1 [ false, %3 ], [ %33, %28 ]
  %36 = zext i1 %35 to i32
  %37 = call i32 @assert(i32 %36)
  %38 = load i32, i32* %5, align 4
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = sdiv i32 %41, 2
  %43 = icmp sge i32 %38, %42
  br i1 %43, label %44, label %54

44:                                               ; preds = %34
  %45 = load i32, i32* %5, align 4
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = sdiv i32 %48, 2
  %50 = sub nsw i32 %45, %49
  %51 = mul nsw i32 %50, 2
  store i32 %51, i32* %7, align 4
  %52 = load i32, i32* %7, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %8, align 4
  br label %72

54:                                               ; preds = %34
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %5, align 4
  %59 = mul nsw i32 %58, 2
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %57, i64 %60
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %7, align 4
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = load i32, i32* %5, align 4
  %67 = mul nsw i32 %66, 2
  %68 = add nsw i32 %67, 1
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %65, i64 %69
  %71 = load i32, i32* %70, align 4
  store i32 %71, i32* %8, align 4
  br label %72

72:                                               ; preds = %54, %44
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %74 = load i32, i32* %7, align 4
  %75 = call i32 @multiCursorGetKey(%struct.TYPE_5__* %73, i32 %74, i32* %12, i8** %10, i32* %11)
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %77 = load i32, i32* %8, align 4
  %78 = call i32 @multiCursorGetKey(%struct.TYPE_5__* %76, i32 %77, i32* %15, i8** %13, i32* %14)
  %79 = load i8*, i8** %10, align 8
  %80 = icmp eq i8* %79, null
  br i1 %80, label %81, label %83

81:                                               ; preds = %72
  %82 = load i32, i32* %8, align 4
  store i32 %82, i32* %9, align 4
  br label %136

83:                                               ; preds = %72
  %84 = load i8*, i8** %13, align 8
  %85 = icmp eq i8* %84, null
  br i1 %85, label %86, label %88

86:                                               ; preds = %83
  %87 = load i32, i32* %7, align 4
  store i32 %87, i32* %9, align 4
  br label %135

88:                                               ; preds = %83
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %90 = load i32, i32* %12, align 4
  %91 = load i8*, i8** %10, align 8
  %92 = load i32, i32* %11, align 4
  %93 = load i32, i32* %15, align 4
  %94 = load i8*, i8** %13, align 8
  %95 = load i32, i32* %14, align 4
  %96 = call i32 @sortedDbKeyCompare(%struct.TYPE_5__* %89, i32 %90, i8* %91, i32 %92, i32 %93, i8* %94, i32 %95)
  store i32 %96, i32* %17, align 4
  %97 = load i32, i32* %17, align 4
  %98 = load i32, i32* %16, align 4
  %99 = mul nsw i32 %97, %98
  store i32 %99, i32* %17, align 4
  %100 = load i32, i32* %17, align 4
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %126

102:                                              ; preds = %88
  %103 = load i32, i32* %12, align 4
  %104 = load i32, i32* @LSM_INSERT, align 4
  %105 = load i32, i32* @LSM_POINT_DELETE, align 4
  %106 = or i32 %104, %105
  %107 = and i32 %103, %106
  %108 = icmp eq i32 %107, 0
  %109 = zext i1 %108 to i32
  store i32 %109, i32* %18, align 4
  %110 = load i32, i32* %15, align 4
  %111 = load i32, i32* @LSM_INSERT, align 4
  %112 = load i32, i32* @LSM_POINT_DELETE, align 4
  %113 = or i32 %111, %112
  %114 = and i32 %110, %113
  %115 = icmp eq i32 %114, 0
  %116 = zext i1 %115 to i32
  store i32 %116, i32* %19, align 4
  %117 = load i32, i32* %18, align 4
  %118 = load i32, i32* %19, align 4
  %119 = icmp sgt i32 %117, %118
  br i1 %119, label %120, label %122

120:                                              ; preds = %102
  %121 = load i32, i32* %8, align 4
  br label %124

122:                                              ; preds = %102
  %123 = load i32, i32* %7, align 4
  br label %124

124:                                              ; preds = %122, %120
  %125 = phi i32 [ %121, %120 ], [ %123, %122 ]
  store i32 %125, i32* %9, align 4
  br label %134

126:                                              ; preds = %88
  %127 = load i32, i32* %17, align 4
  %128 = icmp slt i32 %127, 0
  br i1 %128, label %129, label %131

129:                                              ; preds = %126
  %130 = load i32, i32* %7, align 4
  store i32 %130, i32* %9, align 4
  br label %133

131:                                              ; preds = %126
  %132 = load i32, i32* %8, align 4
  store i32 %132, i32* %9, align 4
  br label %133

133:                                              ; preds = %131, %129
  br label %134

134:                                              ; preds = %133, %124
  br label %135

135:                                              ; preds = %134, %86
  br label %136

136:                                              ; preds = %135, %81
  %137 = load i32, i32* %9, align 4
  %138 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %138, i32 0, i32 0
  %140 = load i32*, i32** %139, align 8
  %141 = load i32, i32* %5, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32, i32* %140, i64 %142
  store i32 %137, i32* %143, align 4
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @multiCursorGetKey(%struct.TYPE_5__*, i32, i32*, i8**, i32*) #1

declare dso_local i32 @sortedDbKeyCompare(%struct.TYPE_5__*, i32, i8*, i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
