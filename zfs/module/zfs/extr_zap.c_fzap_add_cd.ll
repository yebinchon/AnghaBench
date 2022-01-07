; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_zap.c_fzap_add_cd.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_zap.c_fzap_add_cd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_11__*, i32 }
%struct.TYPE_11__ = type { i32, i32 }

@RW_WRITER = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fzap_add_cd(%struct.TYPE_12__* %0, i32 %1, i32 %2, i8* %3, i32 %4, i8* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i8* %3, i8** %12, align 8
  store i32 %4, i32* %13, align 4
  store i8* %5, i8** %14, align 8
  store i32* %6, i32** %15, align 8
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %21, align 8
  store %struct.TYPE_11__* %22, %struct.TYPE_11__** %19, align 8
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 1
  %25 = call i32 @RW_LOCK_HELD(i32* %24)
  %26 = call i32 @ASSERT(i32 %25)
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  %33 = call i32 @ASSERT(i32 %32)
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* %11, align 4
  %37 = call i64 @fzap_check(%struct.TYPE_12__* %34, i32 %35, i32 %36)
  %38 = icmp eq i64 %37, 0
  %39 = zext i1 %38 to i32
  %40 = call i32 @ASSERT(i32 %39)
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = load i32*, i32** %15, align 8
  %46 = load i32, i32* @RW_WRITER, align 4
  %47 = call i32 @zap_deref_leaf(%struct.TYPE_11__* %41, i32 %44, i32* %45, i32 %46, i32** %16)
  store i32 %47, i32* %17, align 4
  %48 = load i32, i32* %17, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %7
  %51 = load i32, i32* %17, align 4
  store i32 %51, i32* %8, align 4
  br label %118

52:                                               ; preds = %7
  br label %53

53:                                               ; preds = %96, %52
  %54 = load i32*, i32** %16, align 8
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %56 = call i32 @zap_leaf_lookup(i32* %54, %struct.TYPE_12__* %55, i32* %18)
  store i32 %56, i32* %17, align 4
  %57 = load i32, i32* %17, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %53
  %60 = load i32, i32* @EEXIST, align 4
  %61 = call i32 @SET_ERROR(i32 %60)
  store i32 %61, i32* %17, align 4
  br label %107

62:                                               ; preds = %53
  %63 = load i32, i32* %17, align 4
  %64 = load i32, i32* @ENOENT, align 4
  %65 = icmp ne i32 %63, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %62
  br label %107

67:                                               ; preds = %62
  %68 = load i32*, i32** %16, align 8
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %70 = load i32, i32* %13, align 4
  %71 = load i32, i32* %10, align 4
  %72 = load i32, i32* %11, align 4
  %73 = load i8*, i8** %12, align 8
  %74 = call i32 @zap_entry_create(i32* %68, %struct.TYPE_12__* %69, i32 %70, i32 %71, i32 %72, i8* %73, i32* %18)
  store i32 %74, i32* %17, align 4
  %75 = load i32, i32* %17, align 4
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %67
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %79 = load i32*, i32** %15, align 8
  %80 = call i32 @zap_increment_num_entries(%struct.TYPE_11__* %78, i32 1, i32* %79)
  br label %106

81:                                               ; preds = %67
  %82 = load i32, i32* %17, align 4
  %83 = load i32, i32* @EAGAIN, align 4
  %84 = icmp eq i32 %82, %83
  br i1 %84, label %85, label %105

85:                                               ; preds = %81
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %87 = load i32*, i32** %16, align 8
  %88 = load i8*, i8** %14, align 8
  %89 = load i32*, i32** %15, align 8
  %90 = call i32 @zap_expand_leaf(%struct.TYPE_12__* %86, i32* %87, i8* %88, i32* %89, i32** %16)
  store i32 %90, i32* %17, align 4
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %91, i32 0, i32 0
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %92, align 8
  store %struct.TYPE_11__* %93, %struct.TYPE_11__** %19, align 8
  %94 = load i32, i32* %17, align 4
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %85
  br label %53

97:                                               ; preds = %85
  %98 = load i32, i32* %17, align 4
  %99 = load i32, i32* @ENOSPC, align 4
  %100 = icmp eq i32 %98, %99
  br i1 %100, label %101, label %103

101:                                              ; preds = %97
  %102 = load i32, i32* %17, align 4
  store i32 %102, i32* %8, align 4
  br label %118

103:                                              ; preds = %97
  br label %104

104:                                              ; preds = %103
  br label %105

105:                                              ; preds = %104, %81
  br label %106

106:                                              ; preds = %105, %77
  br label %107

107:                                              ; preds = %106, %66, %59
  %108 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %109 = icmp ne %struct.TYPE_11__* %108, null
  br i1 %109, label %110, label %116

110:                                              ; preds = %107
  %111 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %112 = load i32*, i32** %16, align 8
  %113 = load i8*, i8** %14, align 8
  %114 = load i32*, i32** %15, align 8
  %115 = call i32 @zap_put_leaf_maybe_grow_ptrtbl(%struct.TYPE_12__* %111, i32* %112, i8* %113, i32* %114)
  br label %116

116:                                              ; preds = %110, %107
  %117 = load i32, i32* %17, align 4
  store i32 %117, i32* %8, align 4
  br label %118

118:                                              ; preds = %116, %101, %50
  %119 = load i32, i32* %8, align 4
  ret i32 %119
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @RW_LOCK_HELD(i32*) #1

declare dso_local i64 @fzap_check(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @zap_deref_leaf(%struct.TYPE_11__*, i32, i32*, i32, i32**) #1

declare dso_local i32 @zap_leaf_lookup(i32*, %struct.TYPE_12__*, i32*) #1

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i32 @zap_entry_create(i32*, %struct.TYPE_12__*, i32, i32, i32, i8*, i32*) #1

declare dso_local i32 @zap_increment_num_entries(%struct.TYPE_11__*, i32, i32*) #1

declare dso_local i32 @zap_expand_leaf(%struct.TYPE_12__*, i32*, i8*, i32*, i32**) #1

declare dso_local i32 @zap_put_leaf_maybe_grow_ptrtbl(%struct.TYPE_12__*, i32*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
