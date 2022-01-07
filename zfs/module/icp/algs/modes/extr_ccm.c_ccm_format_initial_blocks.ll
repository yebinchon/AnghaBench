; ModuleID = '/home/carl/AnghaBench/zfs/module/icp/algs/modes/extr_ccm.c_ccm_format_initial_blocks.c'
source_filename = "/home/carl/AnghaBench/zfs/module/icp/algs/modes/extr_ccm.c_ccm_format_initial_blocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32, i32*, %struct.TYPE_3__*)* @ccm_format_initial_blocks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ccm_format_initial_blocks(i32* %0, i32 %1, i32 %2, i32* %3, %struct.TYPE_3__* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_3__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store %struct.TYPE_3__* %4, %struct.TYPE_3__** %10, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %19, align 4
  %21 = load i32, i32* %7, align 4
  %22 = sub nsw i32 15, %21
  %23 = and i32 %22, 255
  store i32 %23, i32* %13, align 4
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = and i32 %26, 255
  store i32 %27, i32* %12, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %5
  store i32 1, i32* %14, align 4
  br label %31

31:                                               ; preds = %30, %5
  %32 = load i32, i32* %14, align 4
  %33 = shl i32 %32, 6
  %34 = load i32, i32* %12, align 4
  %35 = sub nsw i32 %34, 2
  %36 = sdiv i32 %35, 2
  %37 = shl i32 %36, 3
  %38 = or i32 %33, %37
  %39 = load i32, i32* %13, align 4
  %40 = sub nsw i32 %39, 1
  %41 = or i32 %38, %40
  %42 = load i32*, i32** %9, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 0
  store i32 %41, i32* %43, align 4
  %44 = load i32*, i32** %6, align 8
  %45 = load i32*, i32** %9, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 1
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @bcopy(i32* %44, i32* %46, i32 %47)
  %49 = load i32*, i32** %9, align 8
  %50 = load i32, i32* %7, align 4
  %51 = add nsw i32 1, %50
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %49, i64 %52
  %54 = load i32, i32* %13, align 4
  %55 = call i32 @bzero(i32* %53, i32 %54)
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %11, align 4
  %59 = load i32, i32* %13, align 4
  %60 = icmp slt i32 8, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %31
  br label %64

62:                                               ; preds = %31
  %63 = load i32, i32* %13, align 4
  br label %64

64:                                               ; preds = %62, %61
  %65 = phi i32 [ 8, %61 ], [ %63, %62 ]
  %66 = sext i32 %65 to i64
  store i64 %66, i64* %15, align 8
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 15, i32* %18, align 4
  br label %67

67:                                               ; preds = %81, %64
  %68 = load i32, i32* %16, align 4
  %69 = sext i32 %68 to i64
  %70 = load i64, i64* %15, align 8
  %71 = icmp ult i64 %69, %70
  br i1 %71, label %72, label %88

72:                                               ; preds = %67
  %73 = load i32, i32* %11, align 4
  %74 = load i32, i32* %17, align 4
  %75 = ashr i32 %73, %74
  %76 = and i32 %75, 255
  %77 = load i32*, i32** %9, align 8
  %78 = load i32, i32* %18, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  store i32 %76, i32* %80, align 4
  br label %81

81:                                               ; preds = %72
  %82 = load i32, i32* %16, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %16, align 4
  %84 = load i32, i32* %17, align 4
  %85 = add nsw i32 %84, 8
  store i32 %85, i32* %17, align 4
  %86 = load i32, i32* %18, align 4
  %87 = add nsw i32 %86, -1
  store i32 %87, i32* %18, align 4
  br label %67

88:                                               ; preds = %67
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 3
  %91 = load i64, i64* %90, align 8
  %92 = inttoptr i64 %91 to i32*
  store i32* %92, i32** %20, align 8
  %93 = load i32, i32* %13, align 4
  %94 = sub nsw i32 %93, 1
  %95 = and i32 7, %94
  %96 = load i32*, i32** %20, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 0
  store i32 %95, i32* %97, align 4
  %98 = load i32*, i32** %6, align 8
  %99 = load i32*, i32** %20, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 1
  %101 = load i32, i32* %7, align 4
  %102 = call i32 @bcopy(i32* %98, i32* %100, i32 %101)
  %103 = load i32*, i32** %20, align 8
  %104 = load i32, i32* %7, align 4
  %105 = add nsw i32 1, %104
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %103, i64 %106
  %108 = load i32, i32* %13, align 4
  %109 = call i32 @bzero(i32* %107, i32 %108)
  %110 = load i32, i32* %13, align 4
  %111 = shl i32 %110, 3
  store i32 %111, i32* %13, align 4
  br label %112

112:                                              ; preds = %116, %88
  %113 = load i32, i32* %13, align 4
  %114 = add nsw i32 %113, -1
  store i32 %114, i32* %13, align 4
  %115 = icmp sgt i32 %113, 0
  br i1 %115, label %116, label %124

116:                                              ; preds = %112
  %117 = load i32, i32* %13, align 4
  %118 = zext i32 %117 to i64
  %119 = shl i64 1, %118
  %120 = load i32, i32* %19, align 4
  %121 = sext i32 %120 to i64
  %122 = or i64 %121, %119
  %123 = trunc i64 %122 to i32
  store i32 %123, i32* %19, align 4
  br label %112

124:                                              ; preds = %112
  %125 = load i32, i32* %19, align 4
  %126 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i32 0, i32 2
  store i32 %125, i32* %127, align 8
  %128 = load i32*, i32** %20, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 15
  store i32 1, i32* %129, align 4
  ret void
}

declare dso_local i32 @bcopy(i32*, i32*, i32) #1

declare dso_local i32 @bzero(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
