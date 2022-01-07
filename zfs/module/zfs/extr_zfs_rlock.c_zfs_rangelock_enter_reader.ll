; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_zfs_rlock.c_zfs_rangelock_enter_reader.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_zfs_rlock.c_zfs_rangelock_enter_reader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_13__ = type { i64, i64, i64, i32, i8*, i64 }

@AVL_BEFORE = common dso_local global i32 0, align 4
@RL_WRITER = common dso_local global i64 0, align 8
@CV_DEFAULT = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i8* null, align 8
@AVL_AFTER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_12__*, %struct.TYPE_13__*)* @zfs_rangelock_enter_reader to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zfs_rangelock_enter_reader(%struct.TYPE_12__* %0, %struct.TYPE_13__* %1) #0 {
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %4, align 8
  %11 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 1
  store i32* %12, i32** %5, align 8
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %9, align 8
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %10, align 8
  br label %19

19:                                               ; preds = %136, %67, %2
  %20 = load i32*, i32** %5, align 8
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %22 = call %struct.TYPE_13__* @avl_find(i32* %20, %struct.TYPE_13__* %21, i32* %8)
  store %struct.TYPE_13__* %22, %struct.TYPE_13__** %6, align 8
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %24 = icmp eq %struct.TYPE_13__* %23, null
  br i1 %24, label %25, label %30

25:                                               ; preds = %19
  %26 = load i32*, i32** %5, align 8
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* @AVL_BEFORE, align 4
  %29 = call %struct.TYPE_13__* @avl_nearest(i32* %26, i32 %27, i32 %28)
  store %struct.TYPE_13__* %29, %struct.TYPE_13__** %6, align 8
  br label %30

30:                                               ; preds = %25, %19
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %32 = icmp ne %struct.TYPE_13__* %31, null
  br i1 %32, label %33, label %87

33:                                               ; preds = %30
  %34 = load i64, i64* %9, align 8
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = add nsw i64 %37, %40
  %42 = icmp slt i64 %34, %41
  br i1 %42, label %43, label %87

43:                                               ; preds = %33
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @RL_WRITER, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %54, label %49

49:                                               ; preds = %43
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 5
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %73

54:                                               ; preds = %49, %43
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 4
  %57 = load i8*, i8** %56, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %67, label %59

59:                                               ; preds = %54
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i32 0, i32 3
  %62 = load i32, i32* @CV_DEFAULT, align 4
  %63 = call i32 @cv_init(i32* %61, i32* null, i32 %62, i32* null)
  %64 = load i8*, i8** @B_TRUE, align 8
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %65, i32 0, i32 4
  store i8* %64, i8** %66, align 8
  br label %67

67:                                               ; preds = %59, %54
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 3
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 0
  %72 = call i32 @cv_wait(i32* %69, i32* %71)
  br label %19

73:                                               ; preds = %49
  %74 = load i64, i64* %9, align 8
  %75 = load i64, i64* %10, align 8
  %76 = add nsw i64 %74, %75
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = add nsw i64 %79, %82
  %84 = icmp slt i64 %76, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %73
  br label %161

86:                                               ; preds = %73
  br label %87

87:                                               ; preds = %86, %33, %30
  %88 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %89 = icmp ne %struct.TYPE_13__* %88, null
  br i1 %89, label %90, label %94

90:                                               ; preds = %87
  %91 = load i32*, i32** %5, align 8
  %92 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %93 = call %struct.TYPE_13__* @AVL_NEXT(i32* %91, %struct.TYPE_13__* %92)
  store %struct.TYPE_13__* %93, %struct.TYPE_13__** %7, align 8
  br label %99

94:                                               ; preds = %87
  %95 = load i32*, i32** %5, align 8
  %96 = load i32, i32* %8, align 4
  %97 = load i32, i32* @AVL_AFTER, align 4
  %98 = call %struct.TYPE_13__* @avl_nearest(i32* %95, i32 %96, i32 %97)
  store %struct.TYPE_13__* %98, %struct.TYPE_13__** %7, align 8
  br label %99

99:                                               ; preds = %94, %90
  br label %100

100:                                              ; preds = %156, %99
  %101 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %102 = icmp ne %struct.TYPE_13__* %101, null
  br i1 %102, label %103, label %160

103:                                              ; preds = %100
  %104 = load i64, i64* %9, align 8
  %105 = load i64, i64* %10, align 8
  %106 = add nsw i64 %104, %105
  %107 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %108 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = icmp sle i64 %106, %109
  br i1 %110, label %111, label %112

111:                                              ; preds = %103
  br label %161

112:                                              ; preds = %103
  %113 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %114 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %113, i32 0, i32 2
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @RL_WRITER, align 8
  %117 = icmp eq i64 %115, %116
  br i1 %117, label %123, label %118

118:                                              ; preds = %112
  %119 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %120 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %119, i32 0, i32 5
  %121 = load i64, i64* %120, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %142

123:                                              ; preds = %118, %112
  %124 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %125 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %124, i32 0, i32 4
  %126 = load i8*, i8** %125, align 8
  %127 = icmp ne i8* %126, null
  br i1 %127, label %136, label %128

128:                                              ; preds = %123
  %129 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %130 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %129, i32 0, i32 3
  %131 = load i32, i32* @CV_DEFAULT, align 4
  %132 = call i32 @cv_init(i32* %130, i32* null, i32 %131, i32* null)
  %133 = load i8*, i8** @B_TRUE, align 8
  %134 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %135 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %134, i32 0, i32 4
  store i8* %133, i8** %135, align 8
  br label %136

136:                                              ; preds = %128, %123
  %137 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %138 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %137, i32 0, i32 3
  %139 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %140 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %139, i32 0, i32 0
  %141 = call i32 @cv_wait(i32* %138, i32* %140)
  br label %19

142:                                              ; preds = %118
  %143 = load i64, i64* %9, align 8
  %144 = load i64, i64* %10, align 8
  %145 = add nsw i64 %143, %144
  %146 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %147 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %150 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %149, i32 0, i32 1
  %151 = load i64, i64* %150, align 8
  %152 = add nsw i64 %148, %151
  %153 = icmp sle i64 %145, %152
  br i1 %153, label %154, label %155

154:                                              ; preds = %142
  br label %161

155:                                              ; preds = %142
  br label %156

156:                                              ; preds = %155
  %157 = load i32*, i32** %5, align 8
  %158 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %159 = call %struct.TYPE_13__* @AVL_NEXT(i32* %157, %struct.TYPE_13__* %158)
  store %struct.TYPE_13__* %159, %struct.TYPE_13__** %7, align 8
  br label %100

160:                                              ; preds = %100
  br label %161

161:                                              ; preds = %160, %154, %111, %85
  %162 = load i32*, i32** %5, align 8
  %163 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %164 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %165 = load i32, i32* %8, align 4
  %166 = call i32 @zfs_rangelock_add_reader(i32* %162, %struct.TYPE_13__* %163, %struct.TYPE_13__* %164, i32 %165)
  ret void
}

declare dso_local %struct.TYPE_13__* @avl_find(i32*, %struct.TYPE_13__*, i32*) #1

declare dso_local %struct.TYPE_13__* @avl_nearest(i32*, i32, i32) #1

declare dso_local i32 @cv_init(i32*, i32*, i32, i32*) #1

declare dso_local i32 @cv_wait(i32*, i32*) #1

declare dso_local %struct.TYPE_13__* @AVL_NEXT(i32*, %struct.TYPE_13__*) #1

declare dso_local i32 @zfs_rangelock_add_reader(i32*, %struct.TYPE_13__*, %struct.TYPE_13__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
