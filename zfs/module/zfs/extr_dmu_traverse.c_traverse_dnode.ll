; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_dmu_traverse.c_traverse_dnode.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_dmu_traverse.c_traverse_dnode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32 (i32, i32*, i32*, i32*, %struct.TYPE_13__*, i32)*, i32, i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_13__ = type { i32, i32, i32*, i64 }

@DMU_META_DNODE_OBJECT = common dso_local global i32 0, align 4
@TRAVERSE_PRE = common dso_local global i32 0, align 4
@ZB_DNODE_LEVEL = common dso_local global i64 0, align 8
@ZB_DNODE_BLKID = common dso_local global i32 0, align 4
@TRAVERSE_VISIT_NO_CHILDREN = common dso_local global i32 0, align 4
@DNODE_FLAG_SPILL_BLKPTR = common dso_local global i32 0, align 4
@DMU_SPILL_BLKID = common dso_local global i32 0, align 4
@TRAVERSE_POST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, i32*, %struct.TYPE_13__*, i32, i32)* @traverse_dnode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @traverse_dnode(%struct.TYPE_12__* %0, i32* %1, %struct.TYPE_13__* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %7, align 8
  store i32* %1, i32** %8, align 8
  store %struct.TYPE_13__* %2, %struct.TYPE_13__** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %13, align 4
  %15 = load i32, i32* %11, align 4
  %16 = load i32, i32* @DMU_META_DNODE_OBJECT, align 4
  %17 = icmp ne i32 %15, %16
  br i1 %17, label %18, label %32

18:                                               ; preds = %5
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 4
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %20, align 8
  %22 = icmp ne %struct.TYPE_11__* %21, null
  br i1 %22, label %23, label %32

23:                                               ; preds = %18
  %24 = load i32, i32* %11, align 4
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 4
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp slt i32 %24, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %23
  store i32 0, i32* %6, align 4
  br label %159

32:                                               ; preds = %23, %18, %5
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @TRAVERSE_PRE, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %67

39:                                               ; preds = %32
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* %11, align 4
  %42 = load i64, i64* @ZB_DNODE_LEVEL, align 8
  %43 = load i32, i32* @ZB_DNODE_BLKID, align 4
  %44 = call i32 @SET_BOOKMARK(i32* %14, i32 %40, i32 %41, i64 %42, i32 %43)
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 1
  %47 = load i32 (i32, i32*, i32*, i32*, %struct.TYPE_13__*, i32)*, i32 (i32, i32*, i32*, i32*, %struct.TYPE_13__*, i32)** %46, align 8
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = load i32*, i32** %8, align 8
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = call i32 %47(i32 %50, i32* null, i32* %51, i32* %14, %struct.TYPE_13__* %52, i32 %55)
  store i32 %56, i32* %13, align 4
  %57 = load i32, i32* %13, align 4
  %58 = load i32, i32* @TRAVERSE_VISIT_NO_CHILDREN, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %39
  store i32 0, i32* %6, align 4
  br label %159

61:                                               ; preds = %39
  %62 = load i32, i32* %13, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %61
  %65 = load i32, i32* %13, align 4
  store i32 %65, i32* %6, align 4
  br label %159

66:                                               ; preds = %61
  br label %67

67:                                               ; preds = %66, %32
  store i32 0, i32* %12, align 4
  br label %68

68:                                               ; preds = %96, %67
  %69 = load i32, i32* %12, align 4
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = icmp slt i32 %69, %72
  br i1 %73, label %74, label %99

74:                                               ; preds = %68
  %75 = load i32, i32* %10, align 4
  %76 = load i32, i32* %11, align 4
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 3
  %79 = load i64, i64* %78, align 8
  %80 = sub nsw i64 %79, 1
  %81 = load i32, i32* %12, align 4
  %82 = call i32 @SET_BOOKMARK(i32* %14, i32 %75, i32 %76, i64 %80, i32 %81)
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %84 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %85 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %86 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %85, i32 0, i32 2
  %87 = load i32*, i32** %86, align 8
  %88 = load i32, i32* %12, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  %91 = call i32 @traverse_visitbp(%struct.TYPE_12__* %83, %struct.TYPE_13__* %84, i32* %90, i32* %14)
  store i32 %91, i32* %13, align 4
  %92 = load i32, i32* %13, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %74
  br label %99

95:                                               ; preds = %74
  br label %96

96:                                               ; preds = %95
  %97 = load i32, i32* %12, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %12, align 4
  br label %68

99:                                               ; preds = %94, %68
  %100 = load i32, i32* %13, align 4
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %119

102:                                              ; preds = %99
  %103 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %104 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @DNODE_FLAG_SPILL_BLKPTR, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %119

109:                                              ; preds = %102
  %110 = load i32, i32* %10, align 4
  %111 = load i32, i32* %11, align 4
  %112 = load i32, i32* @DMU_SPILL_BLKID, align 4
  %113 = call i32 @SET_BOOKMARK(i32* %14, i32 %110, i32 %111, i64 0, i32 %112)
  %114 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %115 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %116 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %117 = call i32* @DN_SPILL_BLKPTR(%struct.TYPE_13__* %116)
  %118 = call i32 @traverse_visitbp(%struct.TYPE_12__* %114, %struct.TYPE_13__* %115, i32* %117, i32* %14)
  store i32 %118, i32* %13, align 4
  br label %119

119:                                              ; preds = %109, %102, %99
  %120 = load i32, i32* %13, align 4
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %157

122:                                              ; preds = %119
  %123 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %124 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = load i32, i32* @TRAVERSE_POST, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %157

129:                                              ; preds = %122
  %130 = load i32, i32* %10, align 4
  %131 = load i32, i32* %11, align 4
  %132 = load i64, i64* @ZB_DNODE_LEVEL, align 8
  %133 = load i32, i32* @ZB_DNODE_BLKID, align 4
  %134 = call i32 @SET_BOOKMARK(i32* %14, i32 %130, i32 %131, i64 %132, i32 %133)
  %135 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %136 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %135, i32 0, i32 1
  %137 = load i32 (i32, i32*, i32*, i32*, %struct.TYPE_13__*, i32)*, i32 (i32, i32*, i32*, i32*, %struct.TYPE_13__*, i32)** %136, align 8
  %138 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %139 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %138, i32 0, i32 3
  %140 = load i32, i32* %139, align 4
  %141 = load i32*, i32** %8, align 8
  %142 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %143 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %144 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 8
  %146 = call i32 %137(i32 %140, i32* null, i32* %141, i32* %14, %struct.TYPE_13__* %142, i32 %145)
  store i32 %146, i32* %13, align 4
  %147 = load i32, i32* %13, align 4
  %148 = load i32, i32* @TRAVERSE_VISIT_NO_CHILDREN, align 4
  %149 = icmp eq i32 %147, %148
  br i1 %149, label %150, label %151

150:                                              ; preds = %129
  store i32 0, i32* %6, align 4
  br label %159

151:                                              ; preds = %129
  %152 = load i32, i32* %13, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %156

154:                                              ; preds = %151
  %155 = load i32, i32* %13, align 4
  store i32 %155, i32* %6, align 4
  br label %159

156:                                              ; preds = %151
  br label %157

157:                                              ; preds = %156, %122, %119
  %158 = load i32, i32* %13, align 4
  store i32 %158, i32* %6, align 4
  br label %159

159:                                              ; preds = %157, %154, %150, %64, %60, %31
  %160 = load i32, i32* %6, align 4
  ret i32 %160
}

declare dso_local i32 @SET_BOOKMARK(i32*, i32, i32, i64, i32) #1

declare dso_local i32 @traverse_visitbp(%struct.TYPE_12__*, %struct.TYPE_13__*, i32*, i32*) #1

declare dso_local i32* @DN_SPILL_BLKPTR(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
