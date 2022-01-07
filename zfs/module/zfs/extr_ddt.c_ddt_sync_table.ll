; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_ddt.c_ddt_sync_table.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_ddt.c_ddt_sync_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, i32, i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i64, i64, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64 }

@SPA_VERSION_DEDUP = common dso_local global i64 0, align 8
@DMU_OT_DDT_STATS = common dso_local global i32 0, align 4
@DMU_POOL_DIRECTORY_OBJECT = common dso_local global i32 0, align 4
@DMU_POOL_DDT_STATS = common dso_local global i32 0, align 4
@DDT_TYPES = common dso_local global i32 0, align 4
@DDT_CLASSES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_12__*, i32*, i64)* @ddt_sync_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ddt_sync_table(%struct.TYPE_12__* %0, i32* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 4
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  store %struct.TYPE_11__* %17, %struct.TYPE_11__** %7, align 8
  store i8* null, i8** %9, align 8
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 2
  %20 = call i64 @avl_numnodes(i32* %19)
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %3
  br label %134

23:                                               ; preds = %3
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @SPA_VERSION_DEDUP, align 8
  %29 = icmp sge i64 %27, %28
  %30 = zext i1 %29 to i32
  %31 = call i32 @ASSERT(i32 %30)
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %47

36:                                               ; preds = %23
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @DMU_OT_DDT_STATS, align 4
  %41 = load i32, i32* @DMU_POOL_DIRECTORY_OBJECT, align 4
  %42 = load i32, i32* @DMU_POOL_DDT_STATS, align 4
  %43 = load i32*, i32** %5, align 8
  %44 = call i64 @zap_create_link(i32 %39, i32 %40, i32 %41, i32 %42, i32* %43)
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 0
  store i64 %44, i64* %46, align 8
  br label %47

47:                                               ; preds = %36, %23
  br label %48

48:                                               ; preds = %53, %47
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 2
  %51 = call i32* @avl_destroy_nodes(i32* %50, i8** %9)
  store i32* %51, i32** %8, align 8
  %52 = icmp ne i32* %51, null
  br i1 %52, label %53, label %61

53:                                               ; preds = %48
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %55 = load i32*, i32** %8, align 8
  %56 = load i32*, i32** %5, align 8
  %57 = load i64, i64* %6, align 8
  %58 = call i32 @ddt_sync_entry(%struct.TYPE_12__* %54, i32* %55, i32* %56, i64 %57)
  %59 = load i32*, i32** %8, align 8
  %60 = call i32 @ddt_free(i32* %59)
  br label %48

61:                                               ; preds = %48
  store i32 0, i32* %10, align 4
  br label %62

62:                                               ; preds = %122, %61
  %63 = load i32, i32* %10, align 4
  %64 = load i32, i32* @DDT_TYPES, align 4
  %65 = icmp ult i32 %63, %64
  br i1 %65, label %66, label %125

66:                                               ; preds = %62
  store i64 0, i64* %12, align 8
  store i32 0, i32* %13, align 4
  br label %67

67:                                               ; preds = %94, %66
  %68 = load i32, i32* %13, align 4
  %69 = load i32, i32* @DDT_CLASSES, align 4
  %70 = icmp ult i32 %68, %69
  br i1 %70, label %71, label %97

71:                                               ; preds = %67
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %73 = load i32, i32* %10, align 4
  %74 = load i32, i32* %13, align 4
  %75 = call i64 @ddt_object_exists(%struct.TYPE_12__* %72, i32 %73, i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %93

77:                                               ; preds = %71
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %79 = load i32, i32* %10, align 4
  %80 = load i32, i32* %13, align 4
  %81 = load i32*, i32** %5, align 8
  %82 = call i32 @ddt_object_sync(%struct.TYPE_12__* %78, i32 %79, i32 %80, i32* %81)
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %84 = load i32, i32* %10, align 4
  %85 = load i32, i32* %13, align 4
  %86 = call i64 @ddt_object_count(%struct.TYPE_12__* %83, i32 %84, i32 %85, i64* %11)
  %87 = icmp eq i64 %86, 0
  %88 = zext i1 %87 to i32
  %89 = call i32 @VERIFY(i32 %88)
  %90 = load i64, i64* %11, align 8
  %91 = load i64, i64* %12, align 8
  %92 = add nsw i64 %91, %90
  store i64 %92, i64* %12, align 8
  br label %93

93:                                               ; preds = %77, %71
  br label %94

94:                                               ; preds = %93
  %95 = load i32, i32* %13, align 4
  %96 = add i32 %95, 1
  store i32 %96, i32* %13, align 4
  br label %67

97:                                               ; preds = %67
  store i32 0, i32* %14, align 4
  br label %98

98:                                               ; preds = %118, %97
  %99 = load i32, i32* %14, align 4
  %100 = load i32, i32* @DDT_CLASSES, align 4
  %101 = icmp ult i32 %99, %100
  br i1 %101, label %102, label %121

102:                                              ; preds = %98
  %103 = load i64, i64* %12, align 8
  %104 = icmp eq i64 %103, 0
  br i1 %104, label %105, label %117

105:                                              ; preds = %102
  %106 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %107 = load i32, i32* %10, align 4
  %108 = load i32, i32* %14, align 4
  %109 = call i64 @ddt_object_exists(%struct.TYPE_12__* %106, i32 %107, i32 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %117

111:                                              ; preds = %105
  %112 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %113 = load i32, i32* %10, align 4
  %114 = load i32, i32* %14, align 4
  %115 = load i32*, i32** %5, align 8
  %116 = call i32 @ddt_object_destroy(%struct.TYPE_12__* %112, i32 %113, i32 %114, i32* %115)
  br label %117

117:                                              ; preds = %111, %105, %102
  br label %118

118:                                              ; preds = %117
  %119 = load i32, i32* %14, align 4
  %120 = add i32 %119, 1
  store i32 %120, i32* %14, align 4
  br label %98

121:                                              ; preds = %98
  br label %122

122:                                              ; preds = %121
  %123 = load i32, i32* %10, align 4
  %124 = add i32 %123, 1
  store i32 %124, i32* %10, align 4
  br label %62

125:                                              ; preds = %62
  %126 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %127 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %130 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %129, i32 0, i32 0
  %131 = call i32 @bcopy(i32 %128, i32* %130, i32 4)
  %132 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %133 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %132, i32 0, i32 1
  store i64 -1, i64* %133, align 8
  br label %134

134:                                              ; preds = %125, %22
  ret void
}

declare dso_local i64 @avl_numnodes(i32*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @zap_create_link(i32, i32, i32, i32, i32*) #1

declare dso_local i32* @avl_destroy_nodes(i32*, i8**) #1

declare dso_local i32 @ddt_sync_entry(%struct.TYPE_12__*, i32*, i32*, i64) #1

declare dso_local i32 @ddt_free(i32*) #1

declare dso_local i64 @ddt_object_exists(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @ddt_object_sync(%struct.TYPE_12__*, i32, i32, i32*) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i64 @ddt_object_count(%struct.TYPE_12__*, i32, i32, i64*) #1

declare dso_local i32 @ddt_object_destroy(%struct.TYPE_12__*, i32, i32, i32*) #1

declare dso_local i32 @bcopy(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
