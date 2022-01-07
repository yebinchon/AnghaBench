; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_dsl_bookmark.c_dsl_bookmark_destroy_check.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_dsl_bookmark.c_dsl_bookmark_destroy_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i32, i32, i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i64 }

@SPA_FEATURE_BOOKMARKS = common dso_local global i32 0, align 4
@FTAG = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@ESRCH = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.TYPE_14__*)* @dsl_bookmark_destroy_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsl_bookmark_destroy_check(i8* %0, %struct.TYPE_14__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_11__, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %5, align 8
  %16 = load i8*, i8** %4, align 8
  %17 = bitcast i8* %16 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %17, %struct.TYPE_13__** %6, align 8
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %19 = call %struct.TYPE_12__* @dmu_tx_pool(%struct.TYPE_14__* %18)
  store %struct.TYPE_12__* %19, %struct.TYPE_12__** %7, align 8
  store i32 0, i32* %8, align 4
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @nvlist_empty(i32 %22)
  %24 = call i32 @ASSERT(i32 %23)
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @nvlist_empty(i32 %27)
  %29 = call i32 @ASSERT(i32 %28)
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @SPA_FEATURE_BOOKMARKS, align 4
  %34 = call i32 @spa_feature_is_enabled(i32 %32, i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %140

37:                                               ; preds = %2
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = call i32* @nvlist_next_nvpair(i32 %40, i32* null)
  store i32* %41, i32** %9, align 8
  br label %42

42:                                               ; preds = %132, %37
  %43 = load i32*, i32** %9, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %45, label %138

45:                                               ; preds = %42
  %46 = load i32*, i32** %9, align 8
  %47 = call i8* @nvpair_name(i32* %46)
  store i8* %47, i8** %10, align 8
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %49 = load i8*, i8** %10, align 8
  %50 = load i32, i32* @FTAG, align 4
  %51 = call i32 @dsl_bookmark_hold_ds(%struct.TYPE_12__* %48, i8* %49, i32** %11, i32 %50, i8** %14)
  store i32 %51, i32* %13, align 4
  %52 = load i32, i32* %13, align 4
  %53 = load i32, i32* @ENOENT, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %45
  br label %132

56:                                               ; preds = %45
  %57 = load i32, i32* %13, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %109

59:                                               ; preds = %56
  %60 = load i32*, i32** %11, align 8
  %61 = load i8*, i8** %14, align 8
  %62 = call i32 @dsl_bookmark_lookup_impl(i32* %60, i8* %61, %struct.TYPE_11__* %12)
  store i32 %62, i32* %13, align 4
  %63 = load i32*, i32** %11, align 8
  %64 = load i32, i32* @FTAG, align 4
  %65 = call i32 @dsl_dataset_rele(i32* %63, i32 %64)
  %66 = load i32, i32* %13, align 4
  %67 = load i32, i32* @ESRCH, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %59
  br label %132

70:                                               ; preds = %59
  %71 = load i32, i32* %13, align 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %108

73:                                               ; preds = %70
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %108

77:                                               ; preds = %73
  store i32* null, i32** %15, align 8
  %78 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i32, i32* @FTAG, align 4
  %84 = call i32 @dsl_redaction_list_hold_obj(i32 %80, i64 %82, i32 %83, i32** %15)
  store i32 %84, i32* %13, align 4
  %85 = load i32, i32* %13, align 4
  %86 = load i32, i32* @ENOENT, align 4
  %87 = icmp eq i32 %85, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %77
  store i32 0, i32* %13, align 4
  br label %100

89:                                               ; preds = %77
  %90 = load i32, i32* %13, align 4
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %99

92:                                               ; preds = %89
  %93 = load i32*, i32** %15, align 8
  %94 = call i64 @dsl_redaction_list_long_held(i32* %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %92
  %97 = load i32, i32* @EBUSY, align 4
  %98 = call i32 @SET_ERROR(i32 %97)
  store i32 %98, i32* %13, align 4
  br label %99

99:                                               ; preds = %96, %92, %89
  br label %100

100:                                              ; preds = %99, %88
  %101 = load i32*, i32** %15, align 8
  %102 = icmp ne i32* %101, null
  br i1 %102, label %103, label %107

103:                                              ; preds = %100
  %104 = load i32*, i32** %15, align 8
  %105 = load i32, i32* @FTAG, align 4
  %106 = call i32 @dsl_redaction_list_rele(i32* %104, i32 %105)
  br label %107

107:                                              ; preds = %103, %100
  br label %108

108:                                              ; preds = %107, %73, %70
  br label %109

109:                                              ; preds = %108, %56
  %110 = load i32, i32* %13, align 4
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %123

112:                                              ; preds = %109
  %113 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %114 = call i64 @dmu_tx_is_syncing(%struct.TYPE_14__* %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %122

116:                                              ; preds = %112
  %117 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %118 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = load i8*, i8** %10, align 8
  %121 = call i32 @fnvlist_add_boolean(i32 %119, i8* %120)
  br label %122

122:                                              ; preds = %116, %112
  br label %131

123:                                              ; preds = %109
  %124 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %125 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load i8*, i8** %10, align 8
  %128 = load i32, i32* %13, align 4
  %129 = call i32 @fnvlist_add_int32(i32 %126, i8* %127, i32 %128)
  %130 = load i32, i32* %13, align 4
  store i32 %130, i32* %8, align 4
  br label %131

131:                                              ; preds = %123, %122
  br label %132

132:                                              ; preds = %131, %69, %55
  %133 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %134 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 4
  %136 = load i32*, i32** %9, align 8
  %137 = call i32* @nvlist_next_nvpair(i32 %135, i32* %136)
  store i32* %137, i32** %9, align 8
  br label %42

138:                                              ; preds = %42
  %139 = load i32, i32* %8, align 4
  store i32 %139, i32* %3, align 4
  br label %140

140:                                              ; preds = %138, %36
  %141 = load i32, i32* %3, align 4
  ret i32 %141
}

declare dso_local %struct.TYPE_12__* @dmu_tx_pool(%struct.TYPE_14__*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @nvlist_empty(i32) #1

declare dso_local i32 @spa_feature_is_enabled(i32, i32) #1

declare dso_local i32* @nvlist_next_nvpair(i32, i32*) #1

declare dso_local i8* @nvpair_name(i32*) #1

declare dso_local i32 @dsl_bookmark_hold_ds(%struct.TYPE_12__*, i8*, i32**, i32, i8**) #1

declare dso_local i32 @dsl_bookmark_lookup_impl(i32*, i8*, %struct.TYPE_11__*) #1

declare dso_local i32 @dsl_dataset_rele(i32*, i32) #1

declare dso_local i32 @dsl_redaction_list_hold_obj(i32, i64, i32, i32**) #1

declare dso_local i64 @dsl_redaction_list_long_held(i32*) #1

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i32 @dsl_redaction_list_rele(i32*, i32) #1

declare dso_local i64 @dmu_tx_is_syncing(%struct.TYPE_14__*) #1

declare dso_local i32 @fnvlist_add_boolean(i32, i8*) #1

declare dso_local i32 @fnvlist_add_int32(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
