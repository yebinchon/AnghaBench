; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_zap.c_fzap_update.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_zap.c_fzap_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_11__*, i32 }
%struct.TYPE_11__ = type { i32 }

@RW_WRITER = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@ZAP_NEED_CD = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fzap_update(%struct.TYPE_12__* %0, i32 %1, i32 %2, i8* %3, i8* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store i32* %5, i32** %13, align 8
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %20, align 8
  store %struct.TYPE_11__* %21, %struct.TYPE_11__** %18, align 8
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 0
  %24 = call i32 @RW_LOCK_HELD(i32* %23)
  %25 = call i32 @ASSERT(i32 %24)
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* %10, align 4
  %29 = call i32 @fzap_check(%struct.TYPE_12__* %26, i32 %27, i32 %28)
  store i32 %29, i32* %15, align 4
  %30 = load i32, i32* %15, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %6
  %33 = load i32, i32* %15, align 4
  store i32 %33, i32* %7, align 4
  br label %115

34:                                               ; preds = %6
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load i32*, i32** %13, align 8
  %40 = load i32, i32* @RW_WRITER, align 4
  %41 = call i32 @zap_deref_leaf(%struct.TYPE_11__* %35, i32 %38, i32* %39, i32 %40, i32** %14)
  store i32 %41, i32* %15, align 4
  %42 = load i32, i32* %15, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %34
  %45 = load i32, i32* %15, align 4
  store i32 %45, i32* %7, align 4
  br label %115

46:                                               ; preds = %34
  br label %47

47:                                               ; preds = %102, %46
  %48 = load i32*, i32** %14, align 8
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %50 = call i32 @zap_leaf_lookup(i32* %48, %struct.TYPE_12__* %49, i32* %17)
  store i32 %50, i32* %15, align 4
  %51 = load i32, i32* %15, align 4
  %52 = load i32, i32* @ENOENT, align 4
  %53 = icmp eq i32 %51, %52
  %54 = zext i1 %53 to i32
  store i32 %54, i32* %16, align 4
  %55 = load i32, i32* %15, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %61, label %57

57:                                               ; preds = %47
  %58 = load i32, i32* %15, align 4
  %59 = load i32, i32* @ENOENT, align 4
  %60 = icmp eq i32 %58, %59
  br label %61

61:                                               ; preds = %57, %47
  %62 = phi i1 [ true, %47 ], [ %60, %57 ]
  %63 = zext i1 %62 to i32
  %64 = call i32 @ASSERT(i32 %63)
  %65 = load i32, i32* %16, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %82

67:                                               ; preds = %61
  %68 = load i32*, i32** %14, align 8
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %70 = load i32, i32* @ZAP_NEED_CD, align 4
  %71 = load i32, i32* %9, align 4
  %72 = load i32, i32* %10, align 4
  %73 = load i8*, i8** %11, align 8
  %74 = call i32 @zap_entry_create(i32* %68, %struct.TYPE_12__* %69, i32 %70, i32 %71, i32 %72, i8* %73, i32* %17)
  store i32 %74, i32* %15, align 4
  %75 = load i32, i32* %15, align 4
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %67
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %79 = load i32*, i32** %13, align 8
  %80 = call i32 @zap_increment_num_entries(%struct.TYPE_11__* %78, i32 1, i32* %79)
  br label %81

81:                                               ; preds = %77, %67
  br label %87

82:                                               ; preds = %61
  %83 = load i32, i32* %9, align 4
  %84 = load i32, i32* %10, align 4
  %85 = load i8*, i8** %11, align 8
  %86 = call i32 @zap_entry_update(i32* %17, i32 %83, i32 %84, i8* %85)
  store i32 %86, i32* %15, align 4
  br label %87

87:                                               ; preds = %82, %81
  %88 = load i32, i32* %15, align 4
  %89 = load i32, i32* @EAGAIN, align 4
  %90 = icmp eq i32 %88, %89
  br i1 %90, label %91, label %104

91:                                               ; preds = %87
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %93 = load i32*, i32** %14, align 8
  %94 = load i8*, i8** %12, align 8
  %95 = load i32*, i32** %13, align 8
  %96 = call i32 @zap_expand_leaf(%struct.TYPE_12__* %92, i32* %93, i8* %94, i32* %95, i32** %14)
  store i32 %96, i32* %15, align 4
  %97 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 0
  %99 = load %struct.TYPE_11__*, %struct.TYPE_11__** %98, align 8
  store %struct.TYPE_11__* %99, %struct.TYPE_11__** %18, align 8
  %100 = load i32, i32* %15, align 4
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %91
  br label %47

103:                                              ; preds = %91
  br label %104

104:                                              ; preds = %103, %87
  %105 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %106 = icmp ne %struct.TYPE_11__* %105, null
  br i1 %106, label %107, label %113

107:                                              ; preds = %104
  %108 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %109 = load i32*, i32** %14, align 8
  %110 = load i8*, i8** %12, align 8
  %111 = load i32*, i32** %13, align 8
  %112 = call i32 @zap_put_leaf_maybe_grow_ptrtbl(%struct.TYPE_12__* %108, i32* %109, i8* %110, i32* %111)
  br label %113

113:                                              ; preds = %107, %104
  %114 = load i32, i32* %15, align 4
  store i32 %114, i32* %7, align 4
  br label %115

115:                                              ; preds = %113, %44, %32
  %116 = load i32, i32* %7, align 4
  ret i32 %116
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @RW_LOCK_HELD(i32*) #1

declare dso_local i32 @fzap_check(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @zap_deref_leaf(%struct.TYPE_11__*, i32, i32*, i32, i32**) #1

declare dso_local i32 @zap_leaf_lookup(i32*, %struct.TYPE_12__*, i32*) #1

declare dso_local i32 @zap_entry_create(i32*, %struct.TYPE_12__*, i32, i32, i32, i8*, i32*) #1

declare dso_local i32 @zap_increment_num_entries(%struct.TYPE_11__*, i32, i32*) #1

declare dso_local i32 @zap_entry_update(i32*, i32, i32, i8*) #1

declare dso_local i32 @zap_expand_leaf(%struct.TYPE_12__*, i32*, i8*, i32*, i32**) #1

declare dso_local i32 @zap_put_leaf_maybe_grow_ptrtbl(%struct.TYPE_12__*, i32*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
