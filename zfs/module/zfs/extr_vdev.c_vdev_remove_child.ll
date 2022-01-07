; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_vdev.c_vdev_remove_child.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_vdev.c_vdev_remove_child.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i64, i64, %struct.TYPE_9__*, %struct.TYPE_10__*, %struct.TYPE_8__*, %struct.TYPE_9__** }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_8__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vdev_remove_child(%struct.TYPE_9__* %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %4, align 8
  %8 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %6, align 8
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 3
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %15 = icmp eq %struct.TYPE_9__* %13, %14
  %16 = zext i1 %15 to i32
  %17 = call i32 @ASSERT(i32 %16)
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %19 = icmp eq %struct.TYPE_9__* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  br label %122

21:                                               ; preds = %2
  %22 = load i64, i64* %6, align 8
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ult i64 %22, %25
  %27 = zext i1 %26 to i32
  %28 = call i32 @ASSERT(i32 %27)
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 6
  %31 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %30, align 8
  %32 = load i64, i64* %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %31, i64 %32
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %33, align 8
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %36 = icmp eq %struct.TYPE_9__* %34, %35
  %37 = zext i1 %36 to i32
  %38 = call i32 @ASSERT(i32 %37)
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 6
  %41 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %40, align 8
  %42 = load i64, i64* %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %41, i64 %42
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %43, align 8
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 3
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %45, align 8
  store i32 0, i32* %5, align 4
  br label %46

46:                                               ; preds = %64, %21
  %47 = load i32, i32* %5, align 4
  %48 = sext i32 %47 to i64
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = icmp ult i64 %48, %51
  br i1 %52, label %53, label %67

53:                                               ; preds = %46
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 6
  %56 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %55, align 8
  %57 = load i32, i32* %5, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %56, i64 %58
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %59, align 8
  %61 = icmp ne %struct.TYPE_9__* %60, null
  br i1 %61, label %62, label %63

62:                                               ; preds = %53
  br label %67

63:                                               ; preds = %53
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %5, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %5, align 4
  br label %46

67:                                               ; preds = %62, %46
  %68 = load i32, i32* %5, align 4
  %69 = sext i32 %68 to i64
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = icmp eq i64 %69, %72
  br i1 %73, label %74, label %87

74:                                               ; preds = %67
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 6
  %77 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %76, align 8
  %78 = load i32, i32* %5, align 4
  %79 = sext i32 %78 to i64
  %80 = mul i64 %79, 8
  %81 = trunc i64 %80 to i32
  %82 = call i32 @kmem_free(%struct.TYPE_9__** %77, i32 %81)
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 6
  store %struct.TYPE_9__** null, %struct.TYPE_9__*** %84, align 8
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 1
  store i64 0, i64* %86, align 8
  br label %87

87:                                               ; preds = %74, %67
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 5
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %106

94:                                               ; preds = %87
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 4
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %96, align 8
  store %struct.TYPE_10__* %97, %struct.TYPE_10__** %7, align 8
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 1
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %101 = call i32 @list_remove(i32* %99, %struct.TYPE_9__* %100)
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %103, align 4
  br label %106

106:                                              ; preds = %94, %87
  br label %107

107:                                              ; preds = %118, %106
  %108 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %109 = icmp ne %struct.TYPE_9__* %108, null
  br i1 %109, label %110, label %122

110:                                              ; preds = %107
  %111 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i32 0, i32 2
  %113 = load i64, i64* %112, align 8
  %114 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 2
  %116 = load i64, i64* %115, align 8
  %117 = sub nsw i64 %116, %113
  store i64 %117, i64* %115, align 8
  br label %118

118:                                              ; preds = %110
  %119 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %119, i32 0, i32 3
  %121 = load %struct.TYPE_9__*, %struct.TYPE_9__** %120, align 8
  store %struct.TYPE_9__* %121, %struct.TYPE_9__** %3, align 8
  br label %107

122:                                              ; preds = %20, %107
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @kmem_free(%struct.TYPE_9__**, i32) #1

declare dso_local i32 @list_remove(i32*, %struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
