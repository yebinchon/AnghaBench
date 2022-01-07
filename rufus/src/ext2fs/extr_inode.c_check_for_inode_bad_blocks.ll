; ModuleID = '/home/carl/AnghaBench/rufus/src/ext2fs/extr_inode.c_check_for_inode_bad_blocks.c'
source_filename = "/home/carl/AnghaBench/rufus/src/ext2fs/extr_inode.c_check_for_inode_bad_blocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64*, i64 }

@EXT2_SF_CHK_BADBLOCKS = common dso_local global i32 0, align 4
@EXT2_SF_BAD_INODE_BLK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i64*)* @check_for_inode_bad_blocks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_for_inode_bad_blocks(%struct.TYPE_6__* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i64* %1, i64** %5, align 8
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %6, align 8
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 3
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  store %struct.TYPE_7__* %15, %struct.TYPE_7__** %7, align 8
  %16 = load i64, i64* %6, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %111

19:                                               ; preds = %2
  br label %20

20:                                               ; preds = %47, %19
  %21 = load i64, i64* %6, align 8
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load i64*, i64** %23, align 8
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds i64, i64* %24, i64 %27
  %29 = load i64, i64* %28, align 8
  %30 = icmp sgt i64 %21, %29
  br i1 %30, label %31, label %48

31:                                               ; preds = %20
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = add i64 %34, 1
  store i64 %35, i64* %33, align 8
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp uge i64 %35, %38
  br i1 %39, label %40, label %47

40:                                               ; preds = %31
  %41 = load i32, i32* @EXT2_SF_CHK_BADBLOCKS, align 4
  %42 = xor i32 %41, -1
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = and i32 %45, %42
  store i32 %46, i32* %44, align 8
  store i32 0, i32* %3, align 4
  br label %111

47:                                               ; preds = %31
  br label %20

48:                                               ; preds = %20
  %49 = load i64, i64* %6, align 8
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = load i64*, i64** %51, align 8
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = getelementptr inbounds i64, i64* %52, i64 %55
  %57 = load i64, i64* %56, align 8
  %58 = icmp eq i64 %49, %57
  br i1 %58, label %59, label %82

59:                                               ; preds = %48
  %60 = load i32, i32* @EXT2_SF_BAD_INODE_BLK, align 4
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = or i32 %63, %60
  store i32 %64, i32* %62, align 8
  %65 = load i64*, i64** %5, align 8
  store i64 1, i64* %65, align 8
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = add i64 %68, 1
  store i64 %69, i64* %67, align 8
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = icmp uge i64 %69, %72
  br i1 %73, label %74, label %81

74:                                               ; preds = %59
  %75 = load i32, i32* @EXT2_SF_CHK_BADBLOCKS, align 4
  %76 = xor i32 %75, -1
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = and i32 %79, %76
  store i32 %80, i32* %78, align 8
  br label %81

81:                                               ; preds = %74, %59
  store i32 0, i32* %3, align 4
  br label %111

82:                                               ; preds = %48
  %83 = load i64, i64* %6, align 8
  %84 = load i64*, i64** %5, align 8
  %85 = load i64, i64* %84, align 8
  %86 = add nsw i64 %83, %85
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 0
  %89 = load i64*, i64** %88, align 8
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = getelementptr inbounds i64, i64* %89, i64 %92
  %94 = load i64, i64* %93, align 8
  %95 = icmp sgt i64 %86, %94
  br i1 %95, label %96, label %110

96:                                               ; preds = %82
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 0
  %99 = load i64*, i64** %98, align 8
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = getelementptr inbounds i64, i64* %99, i64 %102
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* %6, align 8
  %106 = sub nsw i64 %104, %105
  %107 = trunc i64 %106 to i32
  %108 = sext i32 %107 to i64
  %109 = load i64*, i64** %5, align 8
  store i64 %108, i64* %109, align 8
  br label %110

110:                                              ; preds = %96, %82
  store i32 0, i32* %3, align 4
  br label %111

111:                                              ; preds = %110, %81, %40, %18
  %112 = load i32, i32* %3, align 4
  ret i32 %112
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
