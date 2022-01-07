; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_dmu.c_dmu_write_impl.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_dmu.c_dmu_write_impl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__**, i32, i64, i64, i8*, i32*)* @dmu_write_impl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dmu_write_impl(%struct.TYPE_6__** %0, i32 %1, i64 %2, i64 %3, i8* %4, i32* %5) #0 {
  %7 = alloca %struct.TYPE_6__**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_6__** %0, %struct.TYPE_6__*** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i8* %4, i8** %11, align 8
  store i32* %5, i32** %12, align 8
  store i32 0, i32* %13, align 4
  br label %17

17:                                               ; preds = %107, %6
  %18 = load i32, i32* %13, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %110

21:                                               ; preds = %17
  %22 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %7, align 8
  %23 = load i32, i32* %13, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %22, i64 %24
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  store %struct.TYPE_6__* %26, %struct.TYPE_6__** %16, align 8
  %27 = load i64, i64* %10, align 8
  %28 = icmp sgt i64 %27, 0
  %29 = zext i1 %28 to i32
  %30 = call i32 @ASSERT(i32 %29)
  %31 = load i64, i64* %9, align 8
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = sub nsw i64 %31, %34
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %15, align 4
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* %15, align 4
  %41 = sub nsw i32 %39, %40
  %42 = load i64, i64* %10, align 8
  %43 = call i64 @MIN(i32 %41, i64 %42)
  store i64 %43, i64* %14, align 8
  %44 = load i32, i32* %13, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %58, label %46

46:                                               ; preds = %21
  %47 = load i32, i32* %13, align 4
  %48 = load i32, i32* %8, align 4
  %49 = sub nsw i32 %48, 1
  %50 = icmp eq i32 %47, %49
  br i1 %50, label %58, label %51

51:                                               ; preds = %46
  %52 = load i64, i64* %14, align 8
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = sext i32 %55 to i64
  %57 = icmp eq i64 %52, %56
  br label %58

58:                                               ; preds = %51, %46, %21
  %59 = phi i1 [ true, %46 ], [ true, %21 ], [ %57, %51 ]
  %60 = zext i1 %59 to i32
  %61 = call i32 @ASSERT(i32 %60)
  %62 = load i64, i64* %14, align 8
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = sext i32 %65 to i64
  %67 = icmp eq i64 %62, %66
  br i1 %67, label %68, label %72

68:                                               ; preds = %58
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %70 = load i32*, i32** %12, align 8
  %71 = call i32 @dmu_buf_will_fill(%struct.TYPE_6__* %69, i32* %70)
  br label %76

72:                                               ; preds = %58
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %74 = load i32*, i32** %12, align 8
  %75 = call i32 @dmu_buf_will_dirty(%struct.TYPE_6__* %73, i32* %74)
  br label %76

76:                                               ; preds = %72, %68
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = inttoptr i64 %79 to i8*
  %81 = load i32, i32* %15, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i8, i8* %80, i64 %82
  %84 = load i8*, i8** %11, align 8
  %85 = load i64, i64* %14, align 8
  %86 = call i32 @memcpy(i8* %83, i8* %84, i64 %85)
  %87 = load i64, i64* %14, align 8
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = sext i32 %90 to i64
  %92 = icmp eq i64 %87, %91
  br i1 %92, label %93, label %97

93:                                               ; preds = %76
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %95 = load i32*, i32** %12, align 8
  %96 = call i32 @dmu_buf_fill_done(%struct.TYPE_6__* %94, i32* %95)
  br label %97

97:                                               ; preds = %93, %76
  %98 = load i64, i64* %14, align 8
  %99 = load i64, i64* %9, align 8
  %100 = add nsw i64 %99, %98
  store i64 %100, i64* %9, align 8
  %101 = load i64, i64* %14, align 8
  %102 = load i64, i64* %10, align 8
  %103 = sub nsw i64 %102, %101
  store i64 %103, i64* %10, align 8
  %104 = load i8*, i8** %11, align 8
  %105 = load i64, i64* %14, align 8
  %106 = getelementptr inbounds i8, i8* %104, i64 %105
  store i8* %106, i8** %11, align 8
  br label %107

107:                                              ; preds = %97
  %108 = load i32, i32* %13, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %13, align 4
  br label %17

110:                                              ; preds = %17
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @MIN(i32, i64) #1

declare dso_local i32 @dmu_buf_will_fill(%struct.TYPE_6__*, i32*) #1

declare dso_local i32 @dmu_buf_will_dirty(%struct.TYPE_6__*, i32*) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @dmu_buf_fill_done(%struct.TYPE_6__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
