; ModuleID = '/home/carl/AnghaBench/rufus/src/ext2fs/extr_gen_bitmap.c_ext2fs_resize_generic_bitmap.c'
source_filename = "/home/carl/AnghaBench/rufus/src/ext2fs/extr_gen_bitmap.c_ext2fs_resize_generic_bitmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i64, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ext2fs_resize_generic_bitmap(i64 %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_2__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load i32, i32* %9, align 4
  %16 = sext i32 %15 to i64
  %17 = inttoptr i64 %16 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %17, %struct.TYPE_2__** %10, align 8
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %19 = icmp ne %struct.TYPE_2__* %18, null
  br i1 %19, label %20, label %26

20:                                               ; preds = %4
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* %6, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %20, %4
  %27 = load i64, i64* %6, align 8
  store i64 %27, i64* %5, align 8
  br label %126

28:                                               ; preds = %20
  %29 = load i64, i64* %7, align 8
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp sgt i64 %29, %32
  br i1 %33, label %34, label %64

34:                                               ; preds = %28
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  store i64 %37, i64* %14, align 8
  %38 = load i64, i64* %14, align 8
  %39 = load i64, i64* %7, align 8
  %40 = icmp sgt i64 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %34
  %42 = load i64, i64* %7, align 8
  store i64 %42, i64* %14, align 8
  br label %43

43:                                               ; preds = %41, %34
  br label %44

44:                                               ; preds = %60, %43
  %45 = load i64, i64* %14, align 8
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp sgt i64 %45, %48
  br i1 %49, label %50, label %63

50:                                               ; preds = %44
  %51 = load i64, i64* %14, align 8
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 3
  %54 = load i64, i64* %53, align 8
  %55 = sub nsw i64 %51, %54
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 4
  %58 = load i64, i64* %57, align 8
  %59 = call i32 @ext2fs_clear_bit(i64 %55, i64 %58)
  br label %60

60:                                               ; preds = %50
  %61 = load i64, i64* %14, align 8
  %62 = add nsw i64 %61, -1
  store i64 %62, i64* %14, align 8
  br label %44

63:                                               ; preds = %44
  br label %64

64:                                               ; preds = %63, %28
  %65 = load i64, i64* %8, align 8
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = icmp eq i64 %65, %68
  br i1 %69, label %70, label %74

70:                                               ; preds = %64
  %71 = load i64, i64* %7, align 8
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 1
  store i64 %71, i64* %73, align 8
  store i64 0, i64* %5, align 8
  br label %126

74:                                               ; preds = %64
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 3
  %80 = load i64, i64* %79, align 8
  %81 = sub nsw i64 %77, %80
  %82 = sdiv i64 %81, 8
  %83 = add nsw i64 %82, 1
  store i64 %83, i64* %12, align 8
  %84 = load i64, i64* %8, align 8
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 3
  %87 = load i64, i64* %86, align 8
  %88 = sub nsw i64 %84, %87
  %89 = sdiv i64 %88, 8
  %90 = add nsw i64 %89, 1
  store i64 %90, i64* %13, align 8
  %91 = load i64, i64* %12, align 8
  %92 = load i64, i64* %13, align 8
  %93 = icmp ne i64 %91, %92
  br i1 %93, label %94, label %105

94:                                               ; preds = %74
  %95 = load i64, i64* %12, align 8
  %96 = load i64, i64* %13, align 8
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 4
  %99 = call i64 @ext2fs_resize_mem(i64 %95, i64 %96, i64* %98)
  store i64 %99, i64* %11, align 8
  %100 = load i64, i64* %11, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %94
  %103 = load i64, i64* %11, align 8
  store i64 %103, i64* %5, align 8
  br label %126

104:                                              ; preds = %94
  br label %105

105:                                              ; preds = %104, %74
  %106 = load i64, i64* %13, align 8
  %107 = load i64, i64* %12, align 8
  %108 = icmp ugt i64 %106, %107
  br i1 %108, label %109, label %119

109:                                              ; preds = %105
  %110 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 4
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* %12, align 8
  %114 = add i64 %112, %113
  %115 = load i64, i64* %13, align 8
  %116 = load i64, i64* %12, align 8
  %117 = sub i64 %115, %116
  %118 = call i32 @memset(i64 %114, i32 0, i64 %117)
  br label %119

119:                                              ; preds = %109, %105
  %120 = load i64, i64* %7, align 8
  %121 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 1
  store i64 %120, i64* %122, align 8
  %123 = load i64, i64* %8, align 8
  %124 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 2
  store i64 %123, i64* %125, align 8
  store i64 0, i64* %5, align 8
  br label %126

126:                                              ; preds = %119, %102, %70, %26
  %127 = load i64, i64* %5, align 8
  ret i64 %127
}

declare dso_local i32 @ext2fs_clear_bit(i64, i64) #1

declare dso_local i64 @ext2fs_resize_mem(i64, i64, i64*) #1

declare dso_local i32 @memset(i64, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
