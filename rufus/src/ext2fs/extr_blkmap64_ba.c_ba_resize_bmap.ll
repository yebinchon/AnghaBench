; ModuleID = '/home/carl/AnghaBench/rufus/src/ext2fs/extr_blkmap64_ba.c_ba_resize_bmap.c'
source_filename = "/home/carl/AnghaBench/rufus/src/ext2fs/extr_blkmap64_ba.c_ba_resize_bmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64, i64, i32 }
%struct.TYPE_5__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_4__*, i64, i64)* @ba_resize_bmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ba_resize_bmap(%struct.TYPE_4__* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 8
  %16 = sext i32 %15 to i64
  %17 = inttoptr i64 %16 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %17, %struct.TYPE_5__** %8, align 8
  %18 = load i64, i64* %6, align 8
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp sgt i64 %18, %21
  br i1 %22, label %23, label %53

23:                                               ; preds = %3
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %12, align 8
  %27 = load i64, i64* %12, align 8
  %28 = load i64, i64* %6, align 8
  %29 = icmp sgt i64 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %23
  %31 = load i64, i64* %6, align 8
  store i64 %31, i64* %12, align 8
  br label %32

32:                                               ; preds = %30, %23
  br label %33

33:                                               ; preds = %49, %32
  %34 = load i64, i64* %12, align 8
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp sgt i64 %34, %37
  br i1 %38, label %39, label %52

39:                                               ; preds = %33
  %40 = load i64, i64* %12, align 8
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = sub nsw i64 %40, %43
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = call i32 @ext2fs_clear_bit64(i64 %44, i64 %47)
  br label %49

49:                                               ; preds = %39
  %50 = load i64, i64* %12, align 8
  %51 = add nsw i64 %50, -1
  store i64 %51, i64* %12, align 8
  br label %33

52:                                               ; preds = %33
  br label %53

53:                                               ; preds = %52, %3
  %54 = load i64, i64* %7, align 8
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp eq i64 %54, %57
  br i1 %58, label %59, label %63

59:                                               ; preds = %53
  %60 = load i64, i64* %6, align 8
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  store i64 %60, i64* %62, align 8
  store i64 0, i64* %4, align 8
  br label %115

63:                                               ; preds = %53
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = sub nsw i64 %66, %69
  %71 = sdiv i64 %70, 8
  %72 = add nsw i64 %71, 1
  store i64 %72, i64* %10, align 8
  %73 = load i64, i64* %7, align 8
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = sub nsw i64 %73, %76
  %78 = sdiv i64 %77, 8
  %79 = add nsw i64 %78, 1
  store i64 %79, i64* %11, align 8
  %80 = load i64, i64* %10, align 8
  %81 = load i64, i64* %11, align 8
  %82 = icmp ne i64 %80, %81
  br i1 %82, label %83, label %94

83:                                               ; preds = %63
  %84 = load i64, i64* %10, align 8
  %85 = load i64, i64* %11, align 8
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 0
  %88 = call i64 @ext2fs_resize_mem(i64 %84, i64 %85, i64* %87)
  store i64 %88, i64* %9, align 8
  %89 = load i64, i64* %9, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %83
  %92 = load i64, i64* %9, align 8
  store i64 %92, i64* %4, align 8
  br label %115

93:                                               ; preds = %83
  br label %94

94:                                               ; preds = %93, %63
  %95 = load i64, i64* %11, align 8
  %96 = load i64, i64* %10, align 8
  %97 = icmp ugt i64 %95, %96
  br i1 %97, label %98, label %108

98:                                               ; preds = %94
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* %10, align 8
  %103 = add i64 %101, %102
  %104 = load i64, i64* %11, align 8
  %105 = load i64, i64* %10, align 8
  %106 = sub i64 %104, %105
  %107 = call i32 @memset(i64 %103, i32 0, i64 %106)
  br label %108

108:                                              ; preds = %98, %94
  %109 = load i64, i64* %6, align 8
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 0
  store i64 %109, i64* %111, align 8
  %112 = load i64, i64* %7, align 8
  %113 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 1
  store i64 %112, i64* %114, align 8
  store i64 0, i64* %4, align 8
  br label %115

115:                                              ; preds = %108, %91, %59
  %116 = load i64, i64* %4, align 8
  ret i64 %116
}

declare dso_local i32 @ext2fs_clear_bit64(i64, i64) #1

declare dso_local i64 @ext2fs_resize_mem(i64, i64, i64*) #1

declare dso_local i32 @memset(i64, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
