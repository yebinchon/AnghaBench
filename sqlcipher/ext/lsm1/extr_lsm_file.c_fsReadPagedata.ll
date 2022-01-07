; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_file.c_fsReadPagedata.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/lsm1/extr_lsm_file.c_fsReadPagedata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32*, i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 (i32, i8*, i32*, i8*, i32)*, i32 }
%struct.TYPE_12__ = type { i32, %struct.TYPE_10__*, i64, i32 }
%struct.TYPE_10__ = type { i32 }

@LSM_NOMEM = common dso_local global i32 0, align 4
@LSM_OK = common dso_local global i32 0, align 4
@LSM_CORRUPT_BKPT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, i32*, %struct.TYPE_12__*, i32*)* @fsReadPagedata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsReadPagedata(%struct.TYPE_13__* %0, i32* %1, %struct.TYPE_12__* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca [3 x i32], align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %6, align 8
  store i32* %1, i32** %7, align 8
  store %struct.TYPE_12__* %2, %struct.TYPE_12__** %8, align 8
  store i32* %3, i32** %9, align 8
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 3
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  store %struct.TYPE_11__* %18, %struct.TYPE_11__** %10, align 8
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %11, align 4
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %23 = icmp ne %struct.TYPE_11__* %22, null
  br i1 %23, label %24, label %29

24:                                               ; preds = %4
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp eq i32 %27, 0
  br label %29

29:                                               ; preds = %24, %4
  %30 = phi i1 [ false, %4 ], [ %28, %24 ]
  %31 = zext i1 %30 to i32
  %32 = call i32 @assert(i32 %31)
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %34 = call i64 @fsAllocateBuffer(%struct.TYPE_13__* %33, i32 0)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %29
  %37 = load i32, i32* @LSM_NOMEM, align 4
  store i32 %37, i32* %5, align 4
  br label %157

38:                                               ; preds = %29
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %40 = load i32*, i32** %7, align 8
  %41 = load i32, i32* %11, align 4
  %42 = getelementptr inbounds [3 x i32], [3 x i32]* %12, i64 0, i64 0
  %43 = call i32 @fsReadData(%struct.TYPE_13__* %39, i32* %40, i32 %41, i32* %42, i32 12)
  store i32 %43, i32* %13, align 4
  %44 = load i32, i32* %13, align 4
  %45 = load i32, i32* @LSM_OK, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %155

47:                                               ; preds = %38
  %48 = getelementptr inbounds [3 x i32], [3 x i32]* %12, i64 0, i64 0
  %49 = load i32, i32* %48, align 4
  %50 = and i32 %49, 128
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %47
  %53 = getelementptr inbounds [3 x i32], [3 x i32]* %12, i64 0, i64 0
  %54 = call i64 @getRecordSize(i32* %53, i32* %14)
  %55 = trunc i64 %54 to i32
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 8
  br label %66

58:                                               ; preds = %47
  %59 = getelementptr inbounds [3 x i32], [3 x i32]* %12, i64 0, i64 0
  %60 = load i32, i32* %59, align 4
  %61 = sext i32 %60 to i64
  %62 = sub i64 %61, 24
  %63 = trunc i64 %62 to i32
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 8
  store i32 1, i32* %14, align 4
  br label %66

66:                                               ; preds = %58, %52
  %67 = load i32, i32* %14, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %83

69:                                               ; preds = %66
  %70 = load i32*, i32** %9, align 8
  %71 = icmp ne i32* %70, null
  br i1 %71, label %72, label %80

72:                                               ; preds = %69
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = sext i32 %75 to i64
  %77 = add i64 %76, 24
  %78 = trunc i64 %77 to i32
  %79 = load i32*, i32** %9, align 8
  store i32 %78, i32* %79, align 4
  br label %82

80:                                               ; preds = %69
  %81 = load i32, i32* @LSM_CORRUPT_BKPT, align 4
  store i32 %81, i32* %13, align 4
  br label %82

82:                                               ; preds = %80, %72
  br label %154

83:                                               ; preds = %66
  %84 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %85 = load i32*, i32** %7, align 8
  %86 = load i32, i32* %11, align 4
  %87 = call i32 @fsAddOffset(%struct.TYPE_13__* %84, i32* %85, i32 %86, i32 3, i32* %11)
  store i32 %87, i32* %13, align 4
  %88 = load i32, i32* %13, align 4
  %89 = load i32, i32* @LSM_OK, align 4
  %90 = icmp eq i32 %88, %89
  br i1 %90, label %91, label %153

91:                                               ; preds = %83
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = icmp sgt i32 %94, %97
  br i1 %98, label %99, label %101

99:                                               ; preds = %91
  %100 = load i32, i32* @LSM_CORRUPT_BKPT, align 4
  store i32 %100, i32* %13, align 4
  br label %112

101:                                              ; preds = %91
  %102 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %103 = load i32*, i32** %7, align 8
  %104 = load i32, i32* %11, align 4
  %105 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %105, i32 0, i32 1
  %107 = load i32*, i32** %106, align 8
  %108 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @fsReadData(%struct.TYPE_13__* %102, i32* %103, i32 %104, i32* %107, i32 %110)
  store i32 %111, i32* %13, align 4
  br label %112

112:                                              ; preds = %101, %99
  %113 = load i32, i32* %13, align 4
  %114 = load i32, i32* @LSM_OK, align 4
  %115 = icmp eq i32 %113, %114
  br i1 %115, label %116, label %152

116:                                              ; preds = %112
  %117 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %118 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  store i32 %119, i32* %15, align 4
  %120 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %121 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %120, i32 0, i32 0
  %122 = load i32 (i32, i8*, i32*, i8*, i32)*, i32 (i32, i8*, i32*, i8*, i32)** %121, align 8
  %123 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %124 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 8
  %126 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %127 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %126, i32 0, i32 2
  %128 = load i64, i64* %127, align 8
  %129 = inttoptr i64 %128 to i8*
  %130 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %131 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %130, i32 0, i32 1
  %132 = load i32*, i32** %131, align 8
  %133 = bitcast i32* %132 to i8*
  %134 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %135 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = call i32 %122(i32 %125, i8* %129, i32* %15, i8* %133, i32 %136)
  store i32 %137, i32* %13, align 4
  %138 = load i32, i32* %13, align 4
  %139 = load i32, i32* @LSM_OK, align 4
  %140 = icmp eq i32 %138, %139
  br i1 %140, label %141, label %151

141:                                              ; preds = %116
  %142 = load i32, i32* %15, align 4
  %143 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %144 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %143, i32 0, i32 1
  %145 = load %struct.TYPE_10__*, %struct.TYPE_10__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = icmp ne i32 %142, %147
  br i1 %148, label %149, label %151

149:                                              ; preds = %141
  %150 = load i32, i32* @LSM_CORRUPT_BKPT, align 4
  store i32 %150, i32* %13, align 4
  br label %151

151:                                              ; preds = %149, %141, %116
  br label %152

152:                                              ; preds = %151, %112
  br label %153

153:                                              ; preds = %152, %83
  br label %154

154:                                              ; preds = %153, %82
  br label %155

155:                                              ; preds = %154, %38
  %156 = load i32, i32* %13, align 4
  store i32 %156, i32* %5, align 4
  br label %157

157:                                              ; preds = %155, %36
  %158 = load i32, i32* %5, align 4
  ret i32 %158
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @fsAllocateBuffer(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @fsReadData(%struct.TYPE_13__*, i32*, i32, i32*, i32) #1

declare dso_local i64 @getRecordSize(i32*, i32*) #1

declare dso_local i32 @fsAddOffset(%struct.TYPE_13__*, i32*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
