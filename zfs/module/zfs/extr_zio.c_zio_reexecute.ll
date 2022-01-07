; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_zio.c_zio_reexecute.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_zio.c_zio_reexecute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i64, i32, i32, i64, i32, i32, i32**, i32, i64*, i64*, i64, i64, i64, i32, i32, i32*, i32* }

@ZIO_CHILD_LOGICAL = common dso_local global i64 0, align 8
@ZIO_STAGE_OPEN = common dso_local global i64 0, align 8
@ZIO_FLAG_REEXECUTED = common dso_local global i32 0, align 4
@ZIO_WAIT_TYPES = common dso_local global i32 0, align 4
@ZIO_CHILD_TYPES = common dso_local global i32 0, align 4
@ZIO_FLAG_GODFATHER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*)* @zio_reexecute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zio_reexecute(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @ZIO_CHILD_LOGICAL, align 8
  %13 = icmp eq i64 %11, %12
  %14 = zext i1 %13 to i32
  %15 = call i32 @ASSERT(i32 %14)
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @ZIO_STAGE_OPEN, align 8
  %20 = icmp eq i64 %18, %19
  %21 = zext i1 %20 to i32
  %22 = call i32 @ASSERT(i32 %21)
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 17
  %25 = load i32*, i32** %24, align 8
  %26 = icmp eq i32* %25, null
  %27 = zext i1 %26 to i32
  %28 = call i32 @ASSERT(i32 %27)
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 16
  %31 = load i32*, i32** %30, align 8
  %32 = icmp eq i32* %31, null
  %33 = zext i1 %32 to i32
  %34 = call i32 @ASSERT(i32 %33)
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 8
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 4
  store i64 %42, i64* %44, align 8
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 14
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 15
  store i32 %47, i32* %49, align 4
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 13
  store i64 0, i64* %51, align 8
  %52 = load i32, i32* @ZIO_FLAG_REEXECUTED, align 4
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = or i32 %55, %52
  store i32 %56, i32* %54, align 8
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 12
  store i64 0, i64* %58, align 8
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 11
  store i64 0, i64* %60, align 8
  store i32 0, i32* %5, align 4
  br label %61

61:                                               ; preds = %72, %1
  %62 = load i32, i32* %5, align 4
  %63 = load i32, i32* @ZIO_WAIT_TYPES, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %75

65:                                               ; preds = %61
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 10
  %68 = load i64*, i64** %67, align 8
  %69 = load i32, i32* %5, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i64, i64* %68, i64 %70
  store i64 0, i64* %71, align 8
  br label %72

72:                                               ; preds = %65
  %73 = load i32, i32* %5, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %5, align 4
  br label %61

75:                                               ; preds = %61
  store i32 0, i32* %6, align 4
  br label %76

76:                                               ; preds = %87, %75
  %77 = load i32, i32* %6, align 4
  %78 = load i32, i32* @ZIO_CHILD_TYPES, align 4
  %79 = icmp slt i32 %77, %78
  br i1 %79, label %80, label %90

80:                                               ; preds = %76
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 9
  %83 = load i64*, i64** %82, align 8
  %84 = load i32, i32* %6, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i64, i64* %83, i64 %85
  store i64 0, i64* %86, align 8
  br label %87

87:                                               ; preds = %80
  %88 = load i32, i32* %6, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %6, align 4
  br label %76

90:                                               ; preds = %76
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %92 = call i64 @IO_IS_ALLOCATING(%struct.TYPE_7__* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %99

94:                                               ; preds = %90
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 8
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @BP_ZERO(i32 %97)
  br label %99

99:                                               ; preds = %94, %90
  store i32* null, i32** %7, align 8
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 6
  %102 = call i32 @mutex_enter(i32* %101)
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %104 = call %struct.TYPE_7__* @zio_walk_children(%struct.TYPE_7__* %103, i32** %7)
  store %struct.TYPE_7__* %104, %struct.TYPE_7__** %3, align 8
  br label %105

105:                                              ; preds = %140, %99
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %107 = icmp ne %struct.TYPE_7__* %106, null
  br i1 %107, label %108, label %142

108:                                              ; preds = %105
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %110 = call %struct.TYPE_7__* @zio_walk_children(%struct.TYPE_7__* %109, i32** %7)
  store %struct.TYPE_7__* %110, %struct.TYPE_7__** %4, align 8
  store i32 0, i32* %8, align 4
  br label %111

111:                                              ; preds = %129, %108
  %112 = load i32, i32* %8, align 4
  %113 = load i32, i32* @ZIO_WAIT_TYPES, align 4
  %114 = icmp slt i32 %112, %113
  br i1 %114, label %115, label %132

115:                                              ; preds = %111
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 7
  %118 = load i32**, i32*** %117, align 8
  %119 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = getelementptr inbounds i32*, i32** %118, i64 %121
  %123 = load i32*, i32** %122, align 8
  %124 = load i32, i32* %8, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %123, i64 %125
  %127 = load i32, i32* %126, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %126, align 4
  br label %129

129:                                              ; preds = %115
  %130 = load i32, i32* %8, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %8, align 4
  br label %111

132:                                              ; preds = %111
  %133 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i32 0, i32 6
  %135 = call i32 @mutex_exit(i32* %134)
  %136 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  call void @zio_reexecute(%struct.TYPE_7__* %136)
  %137 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i32 0, i32 6
  %139 = call i32 @mutex_enter(i32* %138)
  br label %140

140:                                              ; preds = %132
  %141 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  store %struct.TYPE_7__* %141, %struct.TYPE_7__** %3, align 8
  br label %105

142:                                              ; preds = %105
  %143 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %144 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %143, i32 0, i32 6
  %145 = call i32 @mutex_exit(i32* %144)
  %146 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %147 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 8
  %149 = load i32, i32* @ZIO_FLAG_GODFATHER, align 4
  %150 = and i32 %148, %149
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %158, label %152

152:                                              ; preds = %142
  %153 = call i32 (...) @gethrtime()
  %154 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %155 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %154, i32 0, i32 5
  store i32 %153, i32* %155, align 8
  %156 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %157 = call i32 @__zio_execute(%struct.TYPE_7__* %156)
  br label %158

158:                                              ; preds = %152, %142
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @IO_IS_ALLOCATING(%struct.TYPE_7__*) #1

declare dso_local i32 @BP_ZERO(i32) #1

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local %struct.TYPE_7__* @zio_walk_children(%struct.TYPE_7__*, i32**) #1

declare dso_local i32 @mutex_exit(i32*) #1

declare dso_local i32 @gethrtime(...) #1

declare dso_local i32 @__zio_execute(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
