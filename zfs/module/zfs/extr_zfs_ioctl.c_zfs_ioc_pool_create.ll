; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_zfs_ioctl.c_zfs_ioc_pool_create.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_zfs_ioctl.c_zfs_ioc_pool_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i64, i64, i32, i32, i32 }

@B_TRUE = common dso_local global i64 0, align 8
@SPA_VERSION = common dso_local global i32 0, align 4
@ZPOOL_PROP_VERSION = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ZPOOL_ROOTFS_PROPS = common dso_local global i32 0, align 4
@KM_SLEEP = common dso_local global i32 0, align 4
@ZPOOL_HIDDEN_ARGS = common dso_local global i32 0, align 4
@DCP_CMD_NONE = common dso_local global i32 0, align 4
@NV_UNIQUE_NAME = common dso_local global i32 0, align 4
@ZPOOL_PROP_TNAME = common dso_local global i32 0, align 4
@ZPROP_SRC_LOCAL = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*)* @zfs_ioc_pool_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfs_ioc_pool_create(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32* null, i32** %6, align 8
  store i32* null, i32** %7, align 8
  store i32* null, i32** %8, align 8
  store i32* null, i32** %9, align 8
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  store i8* %18, i8** %10, align 8
  %19 = load i64, i64* @B_TRUE, align 8
  store i64 %19, i64* %11, align 8
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 5
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @get_nvlist(i32 %22, i64 %25, i32 %28, i32** %5)
  store i32 %29, i32* %4, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %1
  %32 = load i32, i32* %4, align 4
  store i32 %32, i32* %2, align 4
  br label %167

33:                                               ; preds = %1
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %54

38:                                               ; preds = %33
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @get_nvlist(i32 %41, i64 %44, i32 %47, i32** %6)
  store i32 %48, i32* %4, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %38
  %51 = load i32*, i32** %5, align 8
  %52 = call i32 @nvlist_free(i32* %51)
  %53 = load i32, i32* %4, align 4
  store i32 %53, i32* %2, align 4
  br label %167

54:                                               ; preds = %38, %33
  %55 = load i32*, i32** %6, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %57, label %123

57:                                               ; preds = %54
  store i32* null, i32** %12, align 8
  store i32* null, i32** %13, align 8
  %58 = load i32, i32* @SPA_VERSION, align 4
  store i32 %58, i32* %14, align 4
  %59 = load i32*, i32** %6, align 8
  %60 = load i32, i32* @ZPOOL_PROP_VERSION, align 4
  %61 = call i32 @zpool_prop_to_name(i32 %60)
  %62 = call i32 @nvlist_lookup_uint64(i32* %59, i32 %61, i32* %14)
  %63 = load i32, i32* %14, align 4
  %64 = call i32 @SPA_VERSION_IS_SUPPORTED(i32 %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %69, label %66

66:                                               ; preds = %57
  %67 = load i32, i32* @EINVAL, align 4
  %68 = call i32 @SET_ERROR(i32 %67)
  store i32 %68, i32* %4, align 4
  br label %145

69:                                               ; preds = %57
  %70 = load i32*, i32** %6, align 8
  %71 = load i32, i32* @ZPOOL_ROOTFS_PROPS, align 4
  %72 = call i32 @nvlist_lookup_nvlist(i32* %70, i32 %71, i32** %12)
  %73 = load i32*, i32** %12, align 8
  %74 = icmp ne i32* %73, null
  br i1 %74, label %75, label %86

75:                                               ; preds = %69
  %76 = load i32*, i32** %12, align 8
  %77 = load i32, i32* @KM_SLEEP, align 4
  %78 = call i32 @nvlist_dup(i32* %76, i32** %7, i32 %77)
  store i32 %78, i32* %4, align 4
  %79 = load i32, i32* %4, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %75
  br label %145

82:                                               ; preds = %75
  %83 = load i32*, i32** %6, align 8
  %84 = load i32, i32* @ZPOOL_ROOTFS_PROPS, align 4
  %85 = call i32 @nvlist_remove_all(i32* %83, i32 %84)
  br label %86

86:                                               ; preds = %82, %69
  %87 = load i32*, i32** %6, align 8
  %88 = load i32, i32* @ZPOOL_HIDDEN_ARGS, align 4
  %89 = call i32 @nvlist_lookup_nvlist(i32* %87, i32 %88, i32** %13)
  %90 = load i32, i32* @DCP_CMD_NONE, align 4
  %91 = load i32*, i32** %7, align 8
  %92 = load i32*, i32** %13, align 8
  %93 = call i32 @dsl_crypto_params_create_nvlist(i32 %90, i32* %91, i32* %92, i32** %9)
  store i32 %93, i32* %4, align 4
  %94 = load i32, i32* %4, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %86
  br label %145

97:                                               ; preds = %86
  %98 = load i32*, i32** %6, align 8
  %99 = load i32, i32* @ZPOOL_HIDDEN_ARGS, align 4
  %100 = call i32 @nvlist_remove_all(i32* %98, i32 %99)
  %101 = load i32, i32* @NV_UNIQUE_NAME, align 4
  %102 = load i32, i32* @KM_SLEEP, align 4
  %103 = call i64 @nvlist_alloc(i32** %8, i32 %101, i32 %102)
  %104 = icmp eq i64 %103, 0
  %105 = zext i1 %104 to i32
  %106 = call i32 @VERIFY(i32 %105)
  %107 = load i32, i32* %14, align 4
  %108 = load i32*, i32** %7, align 8
  %109 = load i32*, i32** %8, align 8
  %110 = call i32 @zfs_fill_zplprops_root(i32 %107, i32* %108, i32* %109, i32* null)
  store i32 %110, i32* %4, align 4
  %111 = load i32, i32* %4, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %97
  br label %145

114:                                              ; preds = %97
  %115 = load i32*, i32** %6, align 8
  %116 = load i32, i32* @ZPOOL_PROP_TNAME, align 4
  %117 = call i32 @zpool_prop_to_name(i32 %116)
  %118 = call i64 @nvlist_lookup_string(i32* %115, i32 %117, i8** %15)
  %119 = icmp eq i64 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %114
  %121 = load i8*, i8** %15, align 8
  store i8* %121, i8** %10, align 8
  br label %122

122:                                              ; preds = %120, %114
  br label %123

123:                                              ; preds = %122, %54
  %124 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 0
  %126 = load i8*, i8** %125, align 8
  %127 = load i32*, i32** %5, align 8
  %128 = load i32*, i32** %6, align 8
  %129 = load i32*, i32** %8, align 8
  %130 = load i32*, i32** %9, align 8
  %131 = call i32 @spa_create(i8* %126, i32* %127, i32* %128, i32* %129, i32* %130)
  store i32 %131, i32* %4, align 4
  %132 = load i32, i32* %4, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %144, label %134

134:                                              ; preds = %123
  %135 = load i8*, i8** %10, align 8
  %136 = load i32, i32* @ZPROP_SRC_LOCAL, align 4
  %137 = load i32*, i32** %7, align 8
  %138 = call i32 @zfs_set_prop_nvlist(i8* %135, i32 %136, i32* %137, i32* null)
  store i32 %138, i32* %4, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %144

140:                                              ; preds = %134
  %141 = load i8*, i8** %10, align 8
  %142 = call i32 @spa_destroy(i8* %141)
  %143 = load i64, i64* @B_FALSE, align 8
  store i64 %143, i64* %11, align 8
  br label %144

144:                                              ; preds = %140, %134, %123
  br label %145

145:                                              ; preds = %144, %113, %96, %81, %66
  %146 = load i32*, i32** %7, align 8
  %147 = call i32 @nvlist_free(i32* %146)
  %148 = load i32*, i32** %8, align 8
  %149 = call i32 @nvlist_free(i32* %148)
  %150 = load i32*, i32** %5, align 8
  %151 = call i32 @nvlist_free(i32* %150)
  %152 = load i32*, i32** %6, align 8
  %153 = call i32 @nvlist_free(i32* %152)
  %154 = load i32*, i32** %9, align 8
  %155 = load i64, i64* %11, align 8
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %162

157:                                              ; preds = %145
  %158 = load i32, i32* %4, align 4
  %159 = icmp ne i32 %158, 0
  %160 = xor i1 %159, true
  %161 = xor i1 %160, true
  br label %162

162:                                              ; preds = %157, %145
  %163 = phi i1 [ false, %145 ], [ %161, %157 ]
  %164 = zext i1 %163 to i32
  %165 = call i32 @dsl_crypto_params_free(i32* %154, i32 %164)
  %166 = load i32, i32* %4, align 4
  store i32 %166, i32* %2, align 4
  br label %167

167:                                              ; preds = %162, %50, %31
  %168 = load i32, i32* %2, align 4
  ret i32 %168
}

declare dso_local i32 @get_nvlist(i32, i64, i32, i32**) #1

declare dso_local i32 @nvlist_free(i32*) #1

declare dso_local i32 @nvlist_lookup_uint64(i32*, i32, i32*) #1

declare dso_local i32 @zpool_prop_to_name(i32) #1

declare dso_local i32 @SPA_VERSION_IS_SUPPORTED(i32) #1

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i32 @nvlist_lookup_nvlist(i32*, i32, i32**) #1

declare dso_local i32 @nvlist_dup(i32*, i32**, i32) #1

declare dso_local i32 @nvlist_remove_all(i32*, i32) #1

declare dso_local i32 @dsl_crypto_params_create_nvlist(i32, i32*, i32*, i32**) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i64 @nvlist_alloc(i32**, i32, i32) #1

declare dso_local i32 @zfs_fill_zplprops_root(i32, i32*, i32*, i32*) #1

declare dso_local i64 @nvlist_lookup_string(i32*, i32, i8**) #1

declare dso_local i32 @spa_create(i8*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @zfs_set_prop_nvlist(i8*, i32, i32*, i32*) #1

declare dso_local i32 @spa_destroy(i8*) #1

declare dso_local i32 @dsl_crypto_params_free(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
