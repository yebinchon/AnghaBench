; ModuleID = '/home/carl/AnghaBench/rufus/src/ext2fs/extr_mkjournal.c_get_midpoint_journal_block.c'
source_filename = "/home/carl/AnghaBench/rufus/src/ext2fs/extr_mkjournal.c_get_midpoint_journal_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*)* @get_midpoint_journal_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_midpoint_journal_block(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 1
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %12 = call i32 @ext2fs_blocks_count(%struct.TYPE_8__* %11)
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = sub nsw i32 %12, %17
  %19 = sdiv i32 %18, 2
  %20 = call i32 @ext2fs_group_of_blk2(%struct.TYPE_7__* %8, i32 %19)
  store i32 %20, i32* %3, align 4
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = shl i32 1, %25
  store i32 %26, i32* %7, align 4
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %68

33:                                               ; preds = %1
  %34 = load i32, i32* %3, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp sgt i32 %34, %35
  br i1 %36, label %37, label %68

37:                                               ; preds = %33
  %38 = load i32, i32* %3, align 4
  %39 = load i32, i32* %7, align 4
  %40 = sub nsw i32 %39, 1
  %41 = xor i32 %40, -1
  %42 = and i32 %38, %41
  store i32 %42, i32* %3, align 4
  br label %43

43:                                               ; preds = %56, %37
  %44 = load i32, i32* %3, align 4
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp slt i32 %44, %47
  br i1 %48, label %49, label %54

49:                                               ; preds = %43
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %51 = load i32, i32* %3, align 4
  %52 = call i64 @ext2fs_bg_free_blocks_count(%struct.TYPE_7__* %50, i32 %51)
  %53 = icmp eq i64 %52, 0
  br label %54

54:                                               ; preds = %49, %43
  %55 = phi i1 [ false, %43 ], [ %53, %49 ]
  br i1 %55, label %56, label %59

56:                                               ; preds = %54
  %57 = load i32, i32* %3, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %3, align 4
  br label %43

59:                                               ; preds = %54
  %60 = load i32, i32* %3, align 4
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = icmp eq i32 %60, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %59
  store i32 0, i32* %3, align 4
  br label %66

66:                                               ; preds = %65, %59
  %67 = load i32, i32* %3, align 4
  store i32 %67, i32* %4, align 4
  br label %78

68:                                               ; preds = %33, %1
  %69 = load i32, i32* %3, align 4
  %70 = icmp sgt i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %68
  %72 = load i32, i32* %3, align 4
  %73 = sub nsw i32 %72, 1
  br label %76

74:                                               ; preds = %68
  %75 = load i32, i32* %3, align 4
  br label %76

76:                                               ; preds = %74, %71
  %77 = phi i32 [ %73, %71 ], [ %75, %74 ]
  store i32 %77, i32* %4, align 4
  br label %78

78:                                               ; preds = %76, %66
  %79 = load i32, i32* %3, align 4
  %80 = add nsw i32 %79, 1
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = icmp slt i32 %80, %83
  br i1 %84, label %85, label %88

85:                                               ; preds = %78
  %86 = load i32, i32* %3, align 4
  %87 = add nsw i32 %86, 1
  br label %90

88:                                               ; preds = %78
  %89 = load i32, i32* %3, align 4
  br label %90

90:                                               ; preds = %88, %85
  %91 = phi i32 [ %87, %85 ], [ %89, %88 ]
  store i32 %91, i32* %5, align 4
  %92 = load i32, i32* %4, align 4
  store i32 %92, i32* %3, align 4
  %93 = load i32, i32* %4, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %6, align 4
  br label %95

95:                                               ; preds = %110, %90
  %96 = load i32, i32* %6, align 4
  %97 = load i32, i32* %5, align 4
  %98 = icmp sle i32 %96, %97
  br i1 %98, label %99, label %113

99:                                               ; preds = %95
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %101 = load i32, i32* %6, align 4
  %102 = call i64 @ext2fs_bg_free_blocks_count(%struct.TYPE_7__* %100, i32 %101)
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %104 = load i32, i32* %3, align 4
  %105 = call i64 @ext2fs_bg_free_blocks_count(%struct.TYPE_7__* %103, i32 %104)
  %106 = icmp sgt i64 %102, %105
  br i1 %106, label %107, label %109

107:                                              ; preds = %99
  %108 = load i32, i32* %6, align 4
  store i32 %108, i32* %3, align 4
  br label %109

109:                                              ; preds = %107, %99
  br label %110

110:                                              ; preds = %109
  %111 = load i32, i32* %6, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %6, align 4
  br label %95

113:                                              ; preds = %95
  %114 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %115 = load i32, i32* %3, align 4
  %116 = call i32 @ext2fs_group_first_block2(%struct.TYPE_7__* %114, i32 %115)
  ret i32 %116
}

declare dso_local i32 @ext2fs_group_of_blk2(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @ext2fs_blocks_count(%struct.TYPE_8__*) #1

declare dso_local i64 @ext2fs_bg_free_blocks_count(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @ext2fs_group_first_block2(%struct.TYPE_7__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
