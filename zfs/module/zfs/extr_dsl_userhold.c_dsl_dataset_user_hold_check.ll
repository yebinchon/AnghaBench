; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_dsl_userhold.c_dsl_dataset_user_hold_check.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_dsl_userhold.c_dsl_dataset_user_hold_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32, i32*, i32* }
%struct.TYPE_5__ = type { i32 }

@SPA_VERSION_USERREFS = common dso_local global i64 0, align 8
@ENOTSUP = common dso_local global i32 0, align 4
@KM_SLEEP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"@\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@EEXIST = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@FTAG = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*)* @dsl_dataset_user_hold_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsl_dataset_user_hold_check(i8* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %18 = load i8*, i8** %4, align 8
  %19 = bitcast i8* %18 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %19, %struct.TYPE_6__** %6, align 8
  %20 = load i32*, i32** %5, align 8
  %21 = call %struct.TYPE_5__* @dmu_tx_pool(i32* %20)
  store %struct.TYPE_5__* %21, %struct.TYPE_5__** %7, align 8
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @spa_version(i32 %24)
  %26 = load i64, i64* @SPA_VERSION_USERREFS, align 8
  %27 = icmp slt i64 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %2
  %29 = load i32, i32* @ENOTSUP, align 4
  %30 = call i32 @SET_ERROR(i32 %29)
  store i32 %30, i32* %3, align 4
  br label %172

31:                                               ; preds = %2
  %32 = load i32*, i32** %5, align 8
  %33 = call i32 @dmu_tx_is_syncing(i32* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %31
  store i32 0, i32* %3, align 4
  br label %172

36:                                               ; preds = %31
  %37 = call i32* (...) @fnvlist_alloc()
  store i32* %37, i32** %8, align 8
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 3
  %40 = load i32*, i32** %39, align 8
  %41 = call i32* @nvlist_next_nvpair(i32* %40, i32* null)
  store i32* %41, i32** %9, align 8
  br label %42

42:                                               ; preds = %74, %36
  %43 = load i32*, i32** %9, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %45, label %80

45:                                               ; preds = %42
  %46 = load i32*, i32** %9, align 8
  %47 = call i8* @nvpair_name(i32* %46)
  %48 = call i64 @strlen(i8* %47)
  %49 = load i32*, i32** %9, align 8
  %50 = call i8* @fnvpair_value_string(i32* %49)
  %51 = call i64 @strlen(i8* %50)
  %52 = add i64 %48, %51
  store i64 %52, i64* %10, align 8
  %53 = load i64, i64* %10, align 8
  %54 = add i64 %53, 2
  %55 = load i32, i32* @KM_SLEEP, align 4
  %56 = call i8* @kmem_zalloc(i64 %54, i32 %55)
  store i8* %56, i8** %11, align 8
  %57 = load i8*, i8** %11, align 8
  %58 = load i32*, i32** %9, align 8
  %59 = call i8* @nvpair_name(i32* %58)
  %60 = call i32 @strcpy(i8* %57, i8* %59)
  %61 = load i8*, i8** %11, align 8
  %62 = call i32 @strcat(i8* %61, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %63 = load i8*, i8** %11, align 8
  %64 = load i32*, i32** %9, align 8
  %65 = call i8* @fnvpair_value_string(i32* %64)
  %66 = call i32 @strcat(i8* %63, i8* %65)
  %67 = load i32*, i32** %8, align 8
  %68 = load i8*, i8** %11, align 8
  %69 = call i32 @fnvlist_add_string(i32* %67, i8* %68, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %70 = load i8*, i8** %11, align 8
  %71 = load i64, i64* %10, align 8
  %72 = add i64 %71, 2
  %73 = call i32 @kmem_free(i8* %70, i64 %72)
  br label %74

74:                                               ; preds = %45
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 3
  %77 = load i32*, i32** %76, align 8
  %78 = load i32*, i32** %9, align 8
  %79 = call i32* @nvlist_next_nvpair(i32* %77, i32* %78)
  store i32* %79, i32** %9, align 8
  br label %42

80:                                               ; preds = %42
  %81 = load i32*, i32** %8, align 8
  %82 = call i64 @fnvlist_num_pairs(i32* %81)
  store i64 %82, i64* %12, align 8
  %83 = load i32*, i32** %8, align 8
  %84 = call i32 @fnvlist_free(i32* %83)
  %85 = load i64, i64* %12, align 8
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 3
  %88 = load i32*, i32** %87, align 8
  %89 = call i64 @fnvlist_num_pairs(i32* %88)
  %90 = icmp ne i64 %85, %89
  br i1 %90, label %91, label %94

91:                                               ; preds = %80
  %92 = load i32, i32* @EEXIST, align 4
  %93 = call i32 @SET_ERROR(i32 %92)
  store i32 %93, i32* %3, align 4
  br label %172

94:                                               ; preds = %80
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 3
  %97 = load i32*, i32** %96, align 8
  %98 = call i32* @nvlist_next_nvpair(i32* %97, i32* null)
  store i32* %98, i32** %13, align 8
  br label %99

99:                                               ; preds = %165, %94
  %100 = load i32*, i32** %13, align 8
  %101 = icmp ne i32* %100, null
  br i1 %101, label %102, label %171

102:                                              ; preds = %99
  store i32 0, i32* %15, align 4
  %103 = load i32*, i32** %13, align 8
  %104 = call i8* @nvpair_name(i32* %103)
  store i8* %104, i8** %17, align 8
  %105 = load i8*, i8** %17, align 8
  %106 = call i32* @strchr(i8* %105, i8 signext 64)
  %107 = icmp eq i32* %106, null
  br i1 %107, label %108, label %111

108:                                              ; preds = %102
  %109 = load i32, i32* @EINVAL, align 4
  %110 = call i32 @SET_ERROR(i32 %109)
  store i32 %110, i32* %15, align 4
  br label %111

111:                                              ; preds = %108, %102
  %112 = load i32, i32* %15, align 4
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %111
  %115 = load i32*, i32** %13, align 8
  %116 = call i32 @nvpair_value_string(i32* %115, i8** %16)
  store i32 %116, i32* %15, align 4
  br label %117

117:                                              ; preds = %114, %111
  %118 = load i32, i32* %15, align 4
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %125

120:                                              ; preds = %117
  %121 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %122 = load i8*, i8** %17, align 8
  %123 = load i32, i32* @FTAG, align 4
  %124 = call i32 @dsl_dataset_hold(%struct.TYPE_5__* %121, i8* %122, i32 %123, i32** %14)
  store i32 %124, i32* %15, align 4
  br label %125

125:                                              ; preds = %120, %117
  %126 = load i32, i32* %15, align 4
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %128, label %141

128:                                              ; preds = %125
  %129 = load i32*, i32** %14, align 8
  %130 = load i8*, i8** %16, align 8
  %131 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = icmp ne i64 %133, 0
  %135 = zext i1 %134 to i32
  %136 = load i32*, i32** %5, align 8
  %137 = call i32 @dsl_dataset_user_hold_check_one(i32* %129, i8* %130, i32 %135, i32* %136)
  store i32 %137, i32* %15, align 4
  %138 = load i32*, i32** %14, align 8
  %139 = load i32, i32* @FTAG, align 4
  %140 = call i32 @dsl_dataset_rele(i32* %138, i32 %139)
  br label %141

141:                                              ; preds = %128, %125
  %142 = load i32, i32* %15, align 4
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %144, label %151

144:                                              ; preds = %141
  %145 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 2
  %147 = load i32*, i32** %146, align 8
  %148 = load i8*, i8** %17, align 8
  %149 = load i8*, i8** %16, align 8
  %150 = call i32 @fnvlist_add_string(i32* %147, i8* %148, i8* %149)
  br label %164

151:                                              ; preds = %141
  %152 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 8
  %155 = load i8*, i8** %17, align 8
  %156 = load i32, i32* %15, align 4
  %157 = call i32 @fnvlist_add_int32(i32 %154, i8* %155, i32 %156)
  %158 = load i32, i32* %15, align 4
  %159 = load i32, i32* @ENOENT, align 4
  %160 = icmp ne i32 %158, %159
  br i1 %160, label %161, label %163

161:                                              ; preds = %151
  %162 = load i32, i32* %15, align 4
  store i32 %162, i32* %3, align 4
  br label %172

163:                                              ; preds = %151
  br label %164

164:                                              ; preds = %163, %144
  br label %165

165:                                              ; preds = %164
  %166 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %167 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %166, i32 0, i32 3
  %168 = load i32*, i32** %167, align 8
  %169 = load i32*, i32** %13, align 8
  %170 = call i32* @nvlist_next_nvpair(i32* %168, i32* %169)
  store i32* %170, i32** %13, align 8
  br label %99

171:                                              ; preds = %99
  store i32 0, i32* %3, align 4
  br label %172

172:                                              ; preds = %171, %161, %91, %35, %28
  %173 = load i32, i32* %3, align 4
  ret i32 %173
}

declare dso_local %struct.TYPE_5__* @dmu_tx_pool(i32*) #1

declare dso_local i64 @spa_version(i32) #1

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i32 @dmu_tx_is_syncing(i32*) #1

declare dso_local i32* @fnvlist_alloc(...) #1

declare dso_local i32* @nvlist_next_nvpair(i32*, i32*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @nvpair_name(i32*) #1

declare dso_local i8* @fnvpair_value_string(i32*) #1

declare dso_local i8* @kmem_zalloc(i64, i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i32 @fnvlist_add_string(i32*, i8*, i8*) #1

declare dso_local i32 @kmem_free(i8*, i64) #1

declare dso_local i64 @fnvlist_num_pairs(i32*) #1

declare dso_local i32 @fnvlist_free(i32*) #1

declare dso_local i32* @strchr(i8*, i8 signext) #1

declare dso_local i32 @nvpair_value_string(i32*, i8**) #1

declare dso_local i32 @dsl_dataset_hold(%struct.TYPE_5__*, i8*, i32, i32**) #1

declare dso_local i32 @dsl_dataset_user_hold_check_one(i32*, i8*, i32, i32*) #1

declare dso_local i32 @dsl_dataset_rele(i32*, i32) #1

declare dso_local i32 @fnvlist_add_int32(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
