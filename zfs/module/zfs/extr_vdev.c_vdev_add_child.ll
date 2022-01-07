; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_vdev.c_vdev_add_child.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_vdev.c_vdev_add_child.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, i64, %struct.TYPE_13__*, %struct.TYPE_11__*, i64, %struct.TYPE_12__*, %struct.TYPE_12__*, %struct.TYPE_12__** }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_11__ = type { i64 }

@SCL_ALL = common dso_local global i64 0, align 8
@RW_WRITER = common dso_local global i32 0, align 4
@KM_SLEEP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vdev_add_child(%struct.TYPE_12__* %0, %struct.TYPE_12__* %1) #0 {
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_12__**, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %4, align 8
  %9 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  store i64 %11, i64* %7, align 8
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 2
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %15 = load i64, i64* @SCL_ALL, align 8
  %16 = load i32, i32* @RW_WRITER, align 4
  %17 = call i64 @spa_config_held(%struct.TYPE_13__* %14, i64 %15, i32 %16)
  %18 = load i64, i64* @SCL_ALL, align 8
  %19 = icmp eq i64 %17, %18
  %20 = zext i1 %19 to i32
  %21 = call i32 @ASSERT(i32 %20)
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 5
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %23, align 8
  %25 = icmp eq %struct.TYPE_12__* %24, null
  %26 = zext i1 %25 to i32
  %27 = call i32 @ASSERT(i32 %26)
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 5
  store %struct.TYPE_12__* %28, %struct.TYPE_12__** %30, align 8
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %32 = icmp eq %struct.TYPE_12__* %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %2
  br label %158

34:                                               ; preds = %2
  %35 = load i64, i64* %7, align 8
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp uge i64 %35, %38
  br i1 %39, label %48, label %40

40:                                               ; preds = %34
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 7
  %43 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %42, align 8
  %44 = load i64, i64* %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %43, i64 %44
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %45, align 8
  %47 = icmp eq %struct.TYPE_12__* %46, null
  br label %48

48:                                               ; preds = %40, %34
  %49 = phi i1 [ true, %34 ], [ %47, %40 ]
  %50 = zext i1 %49 to i32
  %51 = call i32 @ASSERT(i32 %50)
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = mul i64 %54, 8
  store i64 %55, i64* %5, align 8
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = trunc i64 %58 to i32
  %60 = load i64, i64* %7, align 8
  %61 = add i64 %60, 1
  %62 = call i32 @MAX(i32 %59, i64 %61)
  %63 = sext i32 %62 to i64
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 1
  store i64 %63, i64* %65, align 8
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = mul i64 %68, 8
  store i64 %69, i64* %6, align 8
  %70 = load i64, i64* %6, align 8
  %71 = load i32, i32* @KM_SLEEP, align 4
  %72 = call %struct.TYPE_12__** @kmem_alloc(i64 %70, i32 %71)
  store %struct.TYPE_12__** %72, %struct.TYPE_12__*** %8, align 8
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 7
  %75 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %74, align 8
  %76 = icmp ne %struct.TYPE_12__** %75, null
  br i1 %76, label %77, label %89

77:                                               ; preds = %48
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 7
  %80 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %79, align 8
  %81 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %8, align 8
  %82 = load i64, i64* %5, align 8
  %83 = call i32 @bcopy(%struct.TYPE_12__** %80, %struct.TYPE_12__** %81, i64 %82)
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 7
  %86 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %85, align 8
  %87 = load i64, i64* %5, align 8
  %88 = call i32 @kmem_free(%struct.TYPE_12__** %86, i64 %87)
  br label %89

89:                                               ; preds = %77, %48
  %90 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %8, align 8
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %91, i32 0, i32 7
  store %struct.TYPE_12__** %90, %struct.TYPE_12__*** %92, align 8
  %93 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %94 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i32 0, i32 7
  %96 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %95, align 8
  %97 = load i64, i64* %7, align 8
  %98 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %96, i64 %97
  store %struct.TYPE_12__* %93, %struct.TYPE_12__** %98, align 8
  %99 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %99, i32 0, i32 6
  %101 = load %struct.TYPE_12__*, %struct.TYPE_12__** %100, align 8
  %102 = icmp ne %struct.TYPE_12__* %101, null
  br i1 %102, label %103, label %107

103:                                              ; preds = %89
  %104 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %104, i32 0, i32 6
  %106 = load %struct.TYPE_12__*, %struct.TYPE_12__** %105, align 8
  br label %109

107:                                              ; preds = %89
  %108 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  br label %109

109:                                              ; preds = %107, %103
  %110 = phi %struct.TYPE_12__* [ %106, %103 ], [ %108, %107 ]
  %111 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %111, i32 0, i32 6
  store %struct.TYPE_12__* %110, %struct.TYPE_12__** %112, align 8
  %113 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %113, i32 0, i32 6
  %115 = load %struct.TYPE_12__*, %struct.TYPE_12__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %115, i32 0, i32 5
  %117 = load %struct.TYPE_12__*, %struct.TYPE_12__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %117, i32 0, i32 5
  %119 = load %struct.TYPE_12__*, %struct.TYPE_12__** %118, align 8
  %120 = icmp eq %struct.TYPE_12__* %119, null
  %121 = zext i1 %120 to i32
  %122 = call i32 @ASSERT(i32 %121)
  br label %123

123:                                              ; preds = %134, %109
  %124 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %125 = icmp ne %struct.TYPE_12__* %124, null
  br i1 %125, label %126, label %138

126:                                              ; preds = %123
  %127 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %128 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %127, i32 0, i32 4
  %129 = load i64, i64* %128, align 8
  %130 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %131 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %130, i32 0, i32 4
  %132 = load i64, i64* %131, align 8
  %133 = add nsw i64 %132, %129
  store i64 %133, i64* %131, align 8
  br label %134

134:                                              ; preds = %126
  %135 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %136 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %135, i32 0, i32 5
  %137 = load %struct.TYPE_12__*, %struct.TYPE_12__** %136, align 8
  store %struct.TYPE_12__* %137, %struct.TYPE_12__** %3, align 8
  br label %123

138:                                              ; preds = %123
  %139 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %140 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %139, i32 0, i32 3
  %141 = load %struct.TYPE_11__*, %struct.TYPE_11__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %158

145:                                              ; preds = %138
  %146 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %147 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %146, i32 0, i32 2
  %148 = load %struct.TYPE_13__*, %struct.TYPE_13__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %148, i32 0, i32 1
  %150 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %151 = call i32 @list_insert_head(i32* %149, %struct.TYPE_12__* %150)
  %152 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %153 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %152, i32 0, i32 2
  %154 = load %struct.TYPE_13__*, %struct.TYPE_13__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %155, align 4
  br label %158

158:                                              ; preds = %33, %145, %138
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @spa_config_held(%struct.TYPE_13__*, i64, i32) #1

declare dso_local i32 @MAX(i32, i64) #1

declare dso_local %struct.TYPE_12__** @kmem_alloc(i64, i32) #1

declare dso_local i32 @bcopy(%struct.TYPE_12__**, %struct.TYPE_12__**, i64) #1

declare dso_local i32 @kmem_free(%struct.TYPE_12__**, i64) #1

declare dso_local i32 @list_insert_head(i32*, %struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
