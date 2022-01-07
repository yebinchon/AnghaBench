; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_dsl_userhold.c_dsl_dataset_user_release_check_one.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_dsl_userhold.c_dsl_dataset_user_release_check_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32*, i32* }
%struct.TYPE_14__ = type { i32, %struct.TYPE_12__*, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32* }
%struct.TYPE_15__ = type { i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@NV_UNIQUE_NAME = common dso_local global i32 0, align 4
@KM_SLEEP = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s#%s\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, %struct.TYPE_14__*, i32*, i8*)* @dsl_dataset_user_release_check_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsl_dataset_user_release_check_one(%struct.TYPE_13__* %0, %struct.TYPE_14__* %1, i32* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %6, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %4
  %24 = load i32, i32* @EINVAL, align 4
  %25 = call i32 @SET_ERROR(i32 %24)
  store i32 %25, i32* %5, align 4
  br label %148

26:                                               ; preds = %4
  %27 = load i32*, i32** %8, align 8
  %28 = call i64 @nvlist_empty(i32* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  store i32 0, i32* %5, align 4
  br label %148

31:                                               ; preds = %26
  store i32 0, i32* %13, align 4
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  store i32* %38, i32** %12, align 8
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %40 = call %struct.TYPE_15__* @dsl_dataset_phys(%struct.TYPE_14__* %39)
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  store i64 %42, i64* %10, align 8
  %43 = load i32, i32* @NV_UNIQUE_NAME, align 4
  %44 = load i32, i32* @KM_SLEEP, align 4
  %45 = call i32 @nvlist_alloc(i32** %11, i32 %43, i32 %44)
  %46 = call i32 @VERIFY0(i32 %45)
  %47 = load i32*, i32** %8, align 8
  %48 = call i32* @nvlist_next_nvpair(i32* %47, i32* null)
  store i32* %48, i32** %14, align 8
  br label %49

49:                                               ; preds = %100, %31
  %50 = load i32*, i32** %14, align 8
  %51 = icmp ne i32* %50, null
  br i1 %51, label %52, label %104

52:                                               ; preds = %49
  %53 = load i32*, i32** %14, align 8
  %54 = call i8* @nvpair_name(i32* %53)
  store i8* %54, i8** %17, align 8
  %55 = load i64, i64* %10, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %52
  %58 = load i32*, i32** %12, align 8
  %59 = load i64, i64* %10, align 8
  %60 = load i8*, i8** %17, align 8
  %61 = call i32 @zap_lookup(i32* %58, i64 %59, i8* %60, i32 8, i32 1, i64* %15)
  store i32 %61, i32* %16, align 4
  br label %65

62:                                               ; preds = %52
  %63 = load i32, i32* @ENOENT, align 4
  %64 = call i32 @SET_ERROR(i32 %63)
  store i32 %64, i32* %16, align 4
  br label %65

65:                                               ; preds = %62, %57
  %66 = load i32, i32* %16, align 4
  %67 = load i32, i32* @ENOENT, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %87

69:                                               ; preds = %65
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i32 0, i32 2
  %72 = load i32*, i32** %71, align 8
  %73 = icmp ne i32* %72, null
  br i1 %73, label %74, label %86

74:                                               ; preds = %69
  %75 = load i8*, i8** %9, align 8
  %76 = load i8*, i8** %17, align 8
  %77 = call i8* @kmem_asprintf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %75, i8* %76)
  store i8* %77, i8** %18, align 8
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i32 0, i32 2
  %80 = load i32*, i32** %79, align 8
  %81 = load i8*, i8** %18, align 8
  %82 = load i32, i32* @ENOENT, align 4
  %83 = call i32 @fnvlist_add_int32(i32* %80, i8* %81, i32 %82)
  %84 = load i8*, i8** %18, align 8
  %85 = call i32 @kmem_strfree(i8* %84)
  br label %86

86:                                               ; preds = %74, %69
  br label %100

87:                                               ; preds = %65
  %88 = load i32, i32* %16, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %87
  %91 = load i32*, i32** %11, align 8
  %92 = call i32 @fnvlist_free(i32* %91)
  %93 = load i32, i32* %16, align 4
  store i32 %93, i32* %5, align 4
  br label %148

94:                                               ; preds = %87
  %95 = load i32*, i32** %11, align 8
  %96 = load i8*, i8** %17, align 8
  %97 = call i32 @fnvlist_add_boolean(i32* %95, i8* %96)
  %98 = load i32, i32* %13, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %13, align 4
  br label %100

100:                                              ; preds = %94, %86
  %101 = load i32*, i32** %8, align 8
  %102 = load i32*, i32** %14, align 8
  %103 = call i32* @nvlist_next_nvpair(i32* %101, i32* %102)
  store i32* %103, i32** %14, align 8
  br label %49

104:                                              ; preds = %49
  %105 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %106 = call i64 @DS_IS_DEFER_DESTROY(%struct.TYPE_14__* %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %135

108:                                              ; preds = %104
  %109 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %110 = call %struct.TYPE_15__* @dsl_dataset_phys(%struct.TYPE_14__* %109)
  %111 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  %113 = icmp eq i32 %112, 1
  br i1 %113, label %114, label %135

114:                                              ; preds = %108
  %115 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %116 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* %13, align 4
  %119 = icmp eq i32 %117, %118
  br i1 %119, label %120, label %135

120:                                              ; preds = %114
  %121 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %122 = call i64 @dsl_dataset_long_held(%struct.TYPE_14__* %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %129

124:                                              ; preds = %120
  %125 = load i32*, i32** %11, align 8
  %126 = call i32 @fnvlist_free(i32* %125)
  %127 = load i32, i32* @EBUSY, align 4
  %128 = call i32 @SET_ERROR(i32 %127)
  store i32 %128, i32* %5, align 4
  br label %148

129:                                              ; preds = %120
  %130 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %131 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %130, i32 0, i32 1
  %132 = load i32*, i32** %131, align 8
  %133 = load i8*, i8** %9, align 8
  %134 = call i32 @fnvlist_add_boolean(i32* %132, i8* %133)
  br label %135

135:                                              ; preds = %129, %114, %108, %104
  %136 = load i32, i32* %13, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %145

138:                                              ; preds = %135
  %139 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %140 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = load i8*, i8** %9, align 8
  %143 = load i32*, i32** %11, align 8
  %144 = call i32 @fnvlist_add_nvlist(i32 %141, i8* %142, i32* %143)
  br label %145

145:                                              ; preds = %138, %135
  %146 = load i32*, i32** %11, align 8
  %147 = call i32 @fnvlist_free(i32* %146)
  store i32 0, i32* %5, align 4
  br label %148

148:                                              ; preds = %145, %124, %90, %30, %23
  %149 = load i32, i32* %5, align 4
  ret i32 %149
}

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i64 @nvlist_empty(i32*) #1

declare dso_local %struct.TYPE_15__* @dsl_dataset_phys(%struct.TYPE_14__*) #1

declare dso_local i32 @VERIFY0(i32) #1

declare dso_local i32 @nvlist_alloc(i32**, i32, i32) #1

declare dso_local i32* @nvlist_next_nvpair(i32*, i32*) #1

declare dso_local i8* @nvpair_name(i32*) #1

declare dso_local i32 @zap_lookup(i32*, i64, i8*, i32, i32, i64*) #1

declare dso_local i8* @kmem_asprintf(i8*, i8*, i8*) #1

declare dso_local i32 @fnvlist_add_int32(i32*, i8*, i32) #1

declare dso_local i32 @kmem_strfree(i8*) #1

declare dso_local i32 @fnvlist_free(i32*) #1

declare dso_local i32 @fnvlist_add_boolean(i32*, i8*) #1

declare dso_local i64 @DS_IS_DEFER_DESTROY(%struct.TYPE_14__*) #1

declare dso_local i64 @dsl_dataset_long_held(%struct.TYPE_14__*) #1

declare dso_local i32 @fnvlist_add_nvlist(i32, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
