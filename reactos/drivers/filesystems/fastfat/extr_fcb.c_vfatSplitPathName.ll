; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/fastfat/extr_fcb.c_vfatSplitPathName.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/fastfat/extr_fcb.c_vfatSplitPathName.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32*, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vfatSplitPathName(%struct.TYPE_5__* %0, %struct.TYPE_5__* %1, %struct.TYPE_5__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %6, align 8
  store %struct.TYPE_5__* %2, %struct.TYPE_5__** %7, align 8
  store i32 0, i32* %9, align 4
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = sext i32 %15 to i64
  %17 = udiv i64 %16, 4
  %18 = getelementptr inbounds i32, i32* %12, i64 %17
  %19 = getelementptr inbounds i32, i32* %18, i64 -1
  store i32* %19, i32** %8, align 8
  br label %20

20:                                               ; preds = %32, %3
  %21 = load i32*, i32** %8, align 8
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 92
  br i1 %23, label %24, label %30

24:                                               ; preds = %20
  %25 = load i32*, i32** %8, align 8
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = icmp uge i32* %25, %28
  br label %30

30:                                               ; preds = %24, %20
  %31 = phi i1 [ false, %20 ], [ %29, %24 ]
  br i1 %31, label %32, label %37

32:                                               ; preds = %30
  %33 = load i32*, i32** %8, align 8
  %34 = getelementptr inbounds i32, i32* %33, i32 -1
  store i32* %34, i32** %8, align 8
  %35 = load i32, i32* %9, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %9, align 4
  br label %20

37:                                               ; preds = %30
  %38 = load i32*, i32** %8, align 8
  %39 = load i32, i32* %38, align 4
  %40 = icmp eq i32 %39, 92
  br i1 %40, label %47, label %41

41:                                               ; preds = %37
  %42 = load i32*, i32** %8, align 8
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = icmp ult i32* %42, %45
  br label %47

47:                                               ; preds = %41, %37
  %48 = phi i1 [ true, %37 ], [ %46, %41 ]
  %49 = zext i1 %48 to i32
  %50 = call i32 @ASSERT(i32 %49)
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %52 = icmp ne %struct.TYPE_5__* %51, null
  br i1 %52, label %53, label %66

53:                                               ; preds = %47
  %54 = load i32*, i32** %8, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 1
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  store i32* %55, i32** %57, align 8
  %58 = load i32, i32* %9, align 4
  %59 = sext i32 %58 to i64
  %60 = mul i64 %59, 4
  %61 = trunc i64 %60 to i32
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 2
  store i32 %61, i32* %63, align 4
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 1
  store i32 %61, i32* %65, align 8
  br label %66

66:                                               ; preds = %53, %47
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %68 = icmp ne %struct.TYPE_5__* %67, null
  br i1 %68, label %69, label %93

69:                                               ; preds = %66
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  store i32* %72, i32** %74, align 8
  %75 = load i32*, i32** %8, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 1
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = ptrtoint i32* %76 to i64
  %81 = ptrtoint i32* %79 to i64
  %82 = sub i64 %80, %81
  %83 = sdiv exact i64 %82, 4
  %84 = mul i64 %83, 4
  %85 = trunc i64 %84 to i32
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 1
  store i32 %85, i32* %87, align 8
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 2
  store i32 %90, i32* %92, align 4
  br label %93

93:                                               ; preds = %69, %66
  %94 = load i32, i32* %4, align 4
  ret i32 %94
}

declare dso_local i32 @ASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
