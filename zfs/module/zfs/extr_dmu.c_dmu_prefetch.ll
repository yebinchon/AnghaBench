; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_dmu.c_dmu_prefetch.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_dmu.c_dmu_prefetch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i32, i32 }

@DN_MAX_OBJECT = common dso_local global i32 0, align 4
@RW_READER = common dso_local global i32 0, align 4
@dmu_prefetch_max = common dso_local global i32 0, align 4
@FTAG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dmu_prefetch(i32* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_7__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %18 = load i32, i32* %11, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %50

20:                                               ; preds = %6
  %21 = load i32*, i32** %7, align 8
  %22 = call %struct.TYPE_7__* @DMU_META_DNODE(i32* %21)
  store %struct.TYPE_7__* %22, %struct.TYPE_7__** %13, align 8
  %23 = load i32, i32* %8, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %20
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* @DN_MAX_OBJECT, align 4
  %28 = icmp sge i32 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %25, %20
  br label %125

30:                                               ; preds = %25
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 2
  %33 = load i32, i32* @RW_READER, align 4
  %34 = call i32 @rw_enter(i32* %32, i32 %33)
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* %8, align 4
  %38 = sext i32 %37 to i64
  %39 = mul i64 %38, 4
  %40 = trunc i64 %39 to i32
  %41 = call i32 @dbuf_whichblock(%struct.TYPE_7__* %35, i32 %36, i32 %40)
  store i32 %41, i32* %14, align 4
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* %14, align 4
  %45 = load i32, i32* %12, align 4
  %46 = call i32 @dbuf_prefetch(%struct.TYPE_7__* %42, i32 %43, i32 %44, i32 %45, i32 0)
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 2
  %49 = call i32 @rw_exit(i32* %48)
  br label %125

50:                                               ; preds = %6
  %51 = load i32, i32* %11, align 4
  %52 = load i32, i32* @dmu_prefetch_max, align 4
  %53 = call i32 @MIN(i32 %51, i32 %52)
  store i32 %53, i32* %11, align 4
  %54 = load i32*, i32** %7, align 8
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* @FTAG, align 4
  %57 = call i32 @dnode_hold(i32* %54, i32 %55, i32 %56, %struct.TYPE_7__** %13)
  store i32 %57, i32* %16, align 4
  %58 = load i32, i32* %16, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %50
  br label %125

61:                                               ; preds = %50
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 2
  %64 = load i32, i32* @RW_READER, align 4
  %65 = call i32 @rw_enter(i32* %63, i32 %64)
  %66 = load i32, i32* %9, align 4
  %67 = icmp sgt i32 %66, 0
  br i1 %67, label %73, label %68

68:                                               ; preds = %61
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %87

73:                                               ; preds = %68, %61
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %75 = load i32, i32* %9, align 4
  %76 = load i32, i32* %10, align 4
  %77 = load i32, i32* %11, align 4
  %78 = add nsw i32 %76, %77
  %79 = sub nsw i32 %78, 1
  %80 = call i32 @dbuf_whichblock(%struct.TYPE_7__* %74, i32 %75, i32 %79)
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %82 = load i32, i32* %9, align 4
  %83 = load i32, i32* %10, align 4
  %84 = call i32 @dbuf_whichblock(%struct.TYPE_7__* %81, i32 %82, i32 %83)
  %85 = sub nsw i32 %80, %84
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %15, align 4
  br label %94

87:                                               ; preds = %68
  %88 = load i32, i32* %10, align 4
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = icmp slt i32 %88, %91
  %93 = zext i1 %92 to i32
  store i32 %93, i32* %15, align 4
  br label %94

94:                                               ; preds = %87, %73
  %95 = load i32, i32* %15, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %118

97:                                               ; preds = %94
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %99 = load i32, i32* %9, align 4
  %100 = load i32, i32* %10, align 4
  %101 = call i32 @dbuf_whichblock(%struct.TYPE_7__* %98, i32 %99, i32 %100)
  store i32 %101, i32* %14, align 4
  store i32 0, i32* %17, align 4
  br label %102

102:                                              ; preds = %114, %97
  %103 = load i32, i32* %17, align 4
  %104 = load i32, i32* %15, align 4
  %105 = icmp slt i32 %103, %104
  br i1 %105, label %106, label %117

106:                                              ; preds = %102
  %107 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %108 = load i32, i32* %9, align 4
  %109 = load i32, i32* %14, align 4
  %110 = load i32, i32* %17, align 4
  %111 = add nsw i32 %109, %110
  %112 = load i32, i32* %12, align 4
  %113 = call i32 @dbuf_prefetch(%struct.TYPE_7__* %107, i32 %108, i32 %111, i32 %112, i32 0)
  br label %114

114:                                              ; preds = %106
  %115 = load i32, i32* %17, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %17, align 4
  br label %102

117:                                              ; preds = %102
  br label %118

118:                                              ; preds = %117, %94
  %119 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 2
  %121 = call i32 @rw_exit(i32* %120)
  %122 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %123 = load i32, i32* @FTAG, align 4
  %124 = call i32 @dnode_rele(%struct.TYPE_7__* %122, i32 %123)
  br label %125

125:                                              ; preds = %118, %60, %30, %29
  ret void
}

declare dso_local %struct.TYPE_7__* @DMU_META_DNODE(i32*) #1

declare dso_local i32 @rw_enter(i32*, i32) #1

declare dso_local i32 @dbuf_whichblock(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @dbuf_prefetch(%struct.TYPE_7__*, i32, i32, i32, i32) #1

declare dso_local i32 @rw_exit(i32*) #1

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i32 @dnode_hold(i32*, i32, i32, %struct.TYPE_7__**) #1

declare dso_local i32 @dnode_rele(%struct.TYPE_7__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
