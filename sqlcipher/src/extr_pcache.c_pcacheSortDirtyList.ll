; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_pcache.c_pcacheSortDirtyList.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_pcache.c_pcacheSortDirtyList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_8__* }

@N_SORT_BUCKET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_8__* (%struct.TYPE_8__*)* @pcacheSortDirtyList to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_8__* @pcacheSortDirtyList(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %7 = load i32, i32* @N_SORT_BUCKET, align 4
  %8 = zext i32 %7 to i64
  %9 = call i8* @llvm.stacksave()
  store i8* %9, i8** %3, align 8
  %10 = alloca %struct.TYPE_8__*, i64 %8, align 16
  store i64 %8, i64* %4, align 8
  %11 = mul nuw i64 8, %8
  %12 = trunc i64 %11 to i32
  %13 = call i32 @memset(%struct.TYPE_8__** %10, i32 0, i32 %12)
  br label %14

14:                                               ; preds = %75, %1
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %16 = icmp ne %struct.TYPE_8__* %15, null
  br i1 %16, label %17, label %76

17:                                               ; preds = %14
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  store %struct.TYPE_8__* %18, %struct.TYPE_8__** %5, align 8
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  store %struct.TYPE_8__* %21, %struct.TYPE_8__** %2, align 8
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %23, align 8
  store i32 0, i32* %6, align 4
  br label %24

24:                                               ; preds = %54, %17
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @N_SORT_BUCKET, align 4
  %27 = sub nsw i32 %26, 1
  %28 = icmp slt i32 %25, %27
  %29 = zext i1 %28 to i32
  %30 = call i64 @ALWAYS(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %57

32:                                               ; preds = %24
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %10, i64 %34
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %35, align 8
  %37 = icmp eq %struct.TYPE_8__* %36, null
  br i1 %37, label %38, label %43

38:                                               ; preds = %32
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %40 = load i32, i32* %6, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %10, i64 %41
  store %struct.TYPE_8__* %39, %struct.TYPE_8__** %42, align 8
  br label %57

43:                                               ; preds = %32
  %44 = load i32, i32* %6, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %10, i64 %45
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %46, align 8
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %49 = call %struct.TYPE_8__* @pcacheMergeDirtyList(%struct.TYPE_8__* %47, %struct.TYPE_8__* %48)
  store %struct.TYPE_8__* %49, %struct.TYPE_8__** %5, align 8
  %50 = load i32, i32* %6, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %10, i64 %51
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %52, align 8
  br label %53

53:                                               ; preds = %43
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %6, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %6, align 4
  br label %24

57:                                               ; preds = %38, %24
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* @N_SORT_BUCKET, align 4
  %60 = sub nsw i32 %59, 1
  %61 = icmp eq i32 %58, %60
  %62 = zext i1 %61 to i32
  %63 = call i64 @NEVER(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %75

65:                                               ; preds = %57
  %66 = load i32, i32* %6, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %10, i64 %67
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %68, align 8
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %71 = call %struct.TYPE_8__* @pcacheMergeDirtyList(%struct.TYPE_8__* %69, %struct.TYPE_8__* %70)
  %72 = load i32, i32* %6, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %10, i64 %73
  store %struct.TYPE_8__* %71, %struct.TYPE_8__** %74, align 8
  br label %75

75:                                               ; preds = %65, %57
  br label %14

76:                                               ; preds = %14
  %77 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %10, i64 0
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %77, align 16
  store %struct.TYPE_8__* %78, %struct.TYPE_8__** %5, align 8
  store i32 1, i32* %6, align 4
  br label %79

79:                                               ; preds = %107, %76
  %80 = load i32, i32* %6, align 4
  %81 = load i32, i32* @N_SORT_BUCKET, align 4
  %82 = icmp slt i32 %80, %81
  br i1 %82, label %83, label %110

83:                                               ; preds = %79
  %84 = load i32, i32* %6, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %10, i64 %85
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %86, align 8
  %88 = icmp eq %struct.TYPE_8__* %87, null
  br i1 %88, label %89, label %90

89:                                               ; preds = %83
  br label %107

90:                                               ; preds = %83
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %92 = icmp ne %struct.TYPE_8__* %91, null
  br i1 %92, label %93, label %100

93:                                               ; preds = %90
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %95 = load i32, i32* %6, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %10, i64 %96
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %97, align 8
  %99 = call %struct.TYPE_8__* @pcacheMergeDirtyList(%struct.TYPE_8__* %94, %struct.TYPE_8__* %98)
  br label %105

100:                                              ; preds = %90
  %101 = load i32, i32* %6, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %10, i64 %102
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %103, align 8
  br label %105

105:                                              ; preds = %100, %93
  %106 = phi %struct.TYPE_8__* [ %99, %93 ], [ %104, %100 ]
  store %struct.TYPE_8__* %106, %struct.TYPE_8__** %5, align 8
  br label %107

107:                                              ; preds = %105, %89
  %108 = load i32, i32* %6, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %6, align 4
  br label %79

110:                                              ; preds = %79
  %111 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %112 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %112)
  ret %struct.TYPE_8__* %111
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(%struct.TYPE_8__**, i32, i32) #2

declare dso_local i64 @ALWAYS(i32) #2

declare dso_local %struct.TYPE_8__* @pcacheMergeDirtyList(%struct.TYPE_8__*, %struct.TYPE_8__*) #2

declare dso_local i64 @NEVER(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
