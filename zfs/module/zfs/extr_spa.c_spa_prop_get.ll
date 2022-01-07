; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_spa.c_spa_prop_get.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_spa.c_spa_prop_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i32, i32* }
%struct.TYPE_7__ = type { i32, i32, i32, i32 }

@NV_UNIQUE_NAME = common dso_local global i32 0, align 4
@KM_SLEEP = common dso_local global i32 0, align 4
@ZPROP_SRC_DEFAULT = common dso_local global i32 0, align 4
@ZPOOL_PROP_INVAL = common dso_local global i32 0, align 4
@ZPROP_SRC_LOCAL = common dso_local global i32 0, align 4
@ZPOOL_PROP_BOOTFS = common dso_local global i32 0, align 4
@FTAG = common dso_local global i32 0, align 4
@ZFS_MAX_DATASET_NAME_LEN = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @spa_prop_get(%struct.TYPE_8__* %0, i32** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_7__, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i32** %1, i32*** %5, align 8
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 2
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %6, align 8
  %19 = load i32**, i32*** %5, align 8
  %20 = load i32, i32* @NV_UNIQUE_NAME, align 4
  %21 = load i32, i32* @KM_SLEEP, align 4
  %22 = call i32 @nvlist_alloc(i32** %19, i32 %20, i32 %21)
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %2
  %26 = load i32, i32* %9, align 4
  store i32 %26, i32* %3, align 4
  br label %181

27:                                               ; preds = %2
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 1
  %30 = call i32 @mutex_enter(i32* %29)
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %32 = load i32**, i32*** %5, align 8
  %33 = call i32 @spa_prop_get_config(%struct.TYPE_8__* %31, i32** %32)
  %34 = load i32*, i32** %6, align 8
  %35 = icmp eq i32* %34, null
  br i1 %35, label %41, label %36

36:                                               ; preds = %27
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %36, %27
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 1
  %44 = call i32 @mutex_exit(i32* %43)
  br label %167

45:                                               ; preds = %36
  %46 = load i32*, i32** %6, align 8
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = call i32 @zap_cursor_init(i32* %7, i32* %46, i64 %49)
  br label %51

51:                                               ; preds = %160, %45
  %52 = call i32 @zap_cursor_retrieve(i32* %7, %struct.TYPE_7__* %8)
  store i32 %52, i32* %9, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %162

54:                                               ; preds = %51
  store i32 0, i32* %10, align 4
  store i8* null, i8** %11, align 8
  %55 = load i32, i32* @ZPROP_SRC_DEFAULT, align 4
  store i32 %55, i32* %12, align 4
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @zpool_name_to_prop(i32 %57)
  store i32 %58, i32* %13, align 4
  %59 = load i32, i32* @ZPOOL_PROP_INVAL, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %54
  br label %160

62:                                               ; preds = %54
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  switch i32 %64, label %158 [
    i32 8, label %65
    i32 1, label %125
  ]

65:                                               ; preds = %62
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %13, align 4
  %69 = call i32 @zpool_prop_default_numeric(i32 %68)
  %70 = icmp ne i32 %67, %69
  br i1 %70, label %71, label %73

71:                                               ; preds = %65
  %72 = load i32, i32* @ZPROP_SRC_LOCAL, align 4
  store i32 %72, i32* %12, align 4
  br label %73

73:                                               ; preds = %71, %65
  %74 = load i32, i32* %13, align 4
  %75 = load i32, i32* @ZPOOL_PROP_BOOTFS, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %77, label %107

77:                                               ; preds = %73
  store i32* null, i32** %15, align 8
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %79 = call i32* @spa_get_dsl(%struct.TYPE_8__* %78)
  store i32* %79, i32** %14, align 8
  %80 = load i32*, i32** %14, align 8
  %81 = load i32, i32* @FTAG, align 4
  %82 = call i32 @dsl_pool_config_enter(i32* %80, i32 %81)
  %83 = load i32*, i32** %14, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @FTAG, align 4
  %87 = call i32 @dsl_dataset_hold_obj(i32* %83, i32 %85, i32 %86, i32** %15)
  store i32 %87, i32* %9, align 4
  %88 = load i32, i32* %9, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %77
  %91 = load i32*, i32** %14, align 8
  %92 = load i32, i32* @FTAG, align 4
  %93 = call i32 @dsl_pool_config_exit(i32* %91, i32 %92)
  br label %159

94:                                               ; preds = %77
  %95 = load i32, i32* @ZFS_MAX_DATASET_NAME_LEN, align 4
  %96 = load i32, i32* @KM_SLEEP, align 4
  %97 = call i8* @kmem_alloc(i32 %95, i32 %96)
  store i8* %97, i8** %11, align 8
  %98 = load i32*, i32** %15, align 8
  %99 = load i8*, i8** %11, align 8
  %100 = call i32 @dsl_dataset_name(i32* %98, i8* %99)
  %101 = load i32*, i32** %15, align 8
  %102 = load i32, i32* @FTAG, align 4
  %103 = call i32 @dsl_dataset_rele(i32* %101, i32 %102)
  %104 = load i32*, i32** %14, align 8
  %105 = load i32, i32* @FTAG, align 4
  %106 = call i32 @dsl_pool_config_exit(i32* %104, i32 %105)
  br label %110

107:                                              ; preds = %73
  store i8* null, i8** %11, align 8
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 3
  %109 = load i32, i32* %108, align 4
  store i32 %109, i32* %10, align 4
  br label %110

110:                                              ; preds = %107, %94
  %111 = load i32**, i32*** %5, align 8
  %112 = load i32*, i32** %111, align 8
  %113 = load i32, i32* %13, align 4
  %114 = load i8*, i8** %11, align 8
  %115 = load i32, i32* %10, align 4
  %116 = load i32, i32* %12, align 4
  %117 = call i32 @spa_prop_add_list(i32* %112, i32 %113, i8* %114, i32 %115, i32 %116)
  %118 = load i8*, i8** %11, align 8
  %119 = icmp ne i8* %118, null
  br i1 %119, label %120, label %124

120:                                              ; preds = %110
  %121 = load i8*, i8** %11, align 8
  %122 = load i32, i32* @ZFS_MAX_DATASET_NAME_LEN, align 4
  %123 = call i32 @kmem_free(i8* %121, i32 %122)
  br label %124

124:                                              ; preds = %120, %110
  br label %159

125:                                              ; preds = %62
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* @KM_SLEEP, align 4
  %129 = call i8* @kmem_alloc(i32 %127, i32 %128)
  store i8* %129, i8** %11, align 8
  %130 = load i32*, i32** %6, align 8
  %131 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 2
  %135 = load i32, i32* %134, align 4
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = load i8*, i8** %11, align 8
  %139 = call i32 @zap_lookup(i32* %130, i64 %133, i32 %135, i32 1, i32 %137, i8* %138)
  store i32 %139, i32* %9, align 4
  %140 = load i32, i32* %9, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %147

142:                                              ; preds = %125
  %143 = load i8*, i8** %11, align 8
  %144 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @kmem_free(i8* %143, i32 %145)
  br label %159

147:                                              ; preds = %125
  %148 = load i32**, i32*** %5, align 8
  %149 = load i32*, i32** %148, align 8
  %150 = load i32, i32* %13, align 4
  %151 = load i8*, i8** %11, align 8
  %152 = load i32, i32* %12, align 4
  %153 = call i32 @spa_prop_add_list(i32* %149, i32 %150, i8* %151, i32 0, i32 %152)
  %154 = load i8*, i8** %11, align 8
  %155 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = call i32 @kmem_free(i8* %154, i32 %156)
  br label %159

158:                                              ; preds = %62
  br label %159

159:                                              ; preds = %158, %147, %142, %124, %90
  br label %160

160:                                              ; preds = %159, %61
  %161 = call i32 @zap_cursor_advance(i32* %7)
  br label %51

162:                                              ; preds = %51
  %163 = call i32 @zap_cursor_fini(i32* %7)
  %164 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %165 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %164, i32 0, i32 1
  %166 = call i32 @mutex_exit(i32* %165)
  br label %167

167:                                              ; preds = %162, %41
  %168 = load i32, i32* %9, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %180

170:                                              ; preds = %167
  %171 = load i32, i32* %9, align 4
  %172 = load i32, i32* @ENOENT, align 4
  %173 = icmp ne i32 %171, %172
  br i1 %173, label %174, label %180

174:                                              ; preds = %170
  %175 = load i32**, i32*** %5, align 8
  %176 = load i32*, i32** %175, align 8
  %177 = call i32 @nvlist_free(i32* %176)
  %178 = load i32**, i32*** %5, align 8
  store i32* null, i32** %178, align 8
  %179 = load i32, i32* %9, align 4
  store i32 %179, i32* %3, align 4
  br label %181

180:                                              ; preds = %170, %167
  store i32 0, i32* %3, align 4
  br label %181

181:                                              ; preds = %180, %174, %25
  %182 = load i32, i32* %3, align 4
  ret i32 %182
}

declare dso_local i32 @nvlist_alloc(i32**, i32, i32) #1

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local i32 @spa_prop_get_config(%struct.TYPE_8__*, i32**) #1

declare dso_local i32 @mutex_exit(i32*) #1

declare dso_local i32 @zap_cursor_init(i32*, i32*, i64) #1

declare dso_local i32 @zap_cursor_retrieve(i32*, %struct.TYPE_7__*) #1

declare dso_local i32 @zpool_name_to_prop(i32) #1

declare dso_local i32 @zpool_prop_default_numeric(i32) #1

declare dso_local i32* @spa_get_dsl(%struct.TYPE_8__*) #1

declare dso_local i32 @dsl_pool_config_enter(i32*, i32) #1

declare dso_local i32 @dsl_dataset_hold_obj(i32*, i32, i32, i32**) #1

declare dso_local i32 @dsl_pool_config_exit(i32*, i32) #1

declare dso_local i8* @kmem_alloc(i32, i32) #1

declare dso_local i32 @dsl_dataset_name(i32*, i8*) #1

declare dso_local i32 @dsl_dataset_rele(i32*, i32) #1

declare dso_local i32 @spa_prop_add_list(i32*, i32, i8*, i32, i32) #1

declare dso_local i32 @kmem_free(i8*, i32) #1

declare dso_local i32 @zap_lookup(i32*, i64, i32, i32, i32, i8*) #1

declare dso_local i32 @zap_cursor_advance(i32*) #1

declare dso_local i32 @zap_cursor_fini(i32*) #1

declare dso_local i32 @nvlist_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
