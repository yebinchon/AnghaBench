; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_vdev_raidz_math.c_vdev_raidz_impl_set.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_vdev_raidz_math.c_vdev_raidz_impl_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32 }
%struct.TYPE_4__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@RAIDZ_IMPL_NAME_MAX = common dso_local global i32 0, align 4
@user_sel_impl = common dso_local global i32 0, align 4
@math_impl_opts = common dso_local global %struct.TYPE_5__* null, align 8
@raidz_math_initialized = common dso_local global i64 0, align 8
@raidz_supp_impl_cnt = common dso_local global i64 0, align 8
@raidz_supp_impl = common dso_local global %struct.TYPE_4__** null, align 8
@zfs_vdev_raidz_impl = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vdev_raidz_impl_set(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %10 = load i32, i32* @EINVAL, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* @RAIDZ_IMPL_NAME_MAX, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %5, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %6, align 8
  %16 = load i32, i32* @user_sel_impl, align 4
  %17 = call i64 @RAIDZ_IMPL_READ(i32 %16)
  store i64 %17, i64* %7, align 8
  %18 = load i8*, i8** %3, align 8
  %19 = load i32, i32* @RAIDZ_IMPL_NAME_MAX, align 4
  %20 = call i64 @strnlen(i8* %18, i32 %19)
  store i64 %20, i64* %8, align 8
  %21 = load i64, i64* %8, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %1
  %24 = load i64, i64* %8, align 8
  %25 = load i32, i32* @RAIDZ_IMPL_NAME_MAX, align 4
  %26 = sext i32 %25 to i64
  %27 = icmp eq i64 %24, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %23, %1
  %29 = load i32, i32* %4, align 4
  store i32 %29, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %119

30:                                               ; preds = %23
  %31 = load i8*, i8** %3, align 8
  %32 = load i32, i32* @RAIDZ_IMPL_NAME_MAX, align 4
  %33 = call i32 @strlcpy(i8* %15, i8* %31, i32 %32)
  br label %34

34:                                               ; preds = %48, %30
  %35 = load i64, i64* %8, align 8
  %36 = icmp ugt i64 %35, 0
  br i1 %36, label %37, label %46

37:                                               ; preds = %34
  %38 = load i64, i64* %8, align 8
  %39 = sub i64 %38, 1
  %40 = getelementptr inbounds i8, i8* %15, i64 %39
  %41 = load i8, i8* %40, align 1
  %42 = call i32 @isspace(i8 signext %41)
  %43 = icmp ne i32 %42, 0
  %44 = xor i1 %43, true
  %45 = xor i1 %44, true
  br label %46

46:                                               ; preds = %37, %34
  %47 = phi i1 [ false, %34 ], [ %45, %37 ]
  br i1 %47, label %48, label %51

48:                                               ; preds = %46
  %49 = load i64, i64* %8, align 8
  %50 = add i64 %49, -1
  store i64 %50, i64* %8, align 8
  br label %34

51:                                               ; preds = %46
  %52 = load i64, i64* %8, align 8
  %53 = getelementptr inbounds i8, i8* %15, i64 %52
  store i8 0, i8* %53, align 1
  store i64 0, i64* %8, align 8
  br label %54

54:                                               ; preds = %74, %51
  %55 = load i64, i64* %8, align 8
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** @math_impl_opts, align 8
  %57 = call i64 @ARRAY_SIZE(%struct.TYPE_5__* %56)
  %58 = icmp ult i64 %55, %57
  br i1 %58, label %59, label %77

59:                                               ; preds = %54
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** @math_impl_opts, align 8
  %61 = load i64, i64* %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = call i64 @strcmp(i8* %15, i32 %64)
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %59
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** @math_impl_opts, align 8
  %69 = load i64, i64* %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  store i64 %72, i64* %7, align 8
  store i32 0, i32* %4, align 4
  br label %77

73:                                               ; preds = %59
  br label %74

74:                                               ; preds = %73
  %75 = load i64, i64* %8, align 8
  %76 = add i64 %75, 1
  store i64 %76, i64* %8, align 8
  br label %54

77:                                               ; preds = %67, %54
  %78 = load i32, i32* %4, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %104

80:                                               ; preds = %77
  %81 = load i64, i64* @raidz_math_initialized, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %104

83:                                               ; preds = %80
  store i64 0, i64* %8, align 8
  br label %84

84:                                               ; preds = %100, %83
  %85 = load i64, i64* %8, align 8
  %86 = load i64, i64* @raidz_supp_impl_cnt, align 8
  %87 = icmp ult i64 %85, %86
  br i1 %87, label %88, label %103

88:                                               ; preds = %84
  %89 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @raidz_supp_impl, align 8
  %90 = load i64, i64* %8, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %89, i64 %90
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i64 @strcmp(i8* %15, i32 %94)
  %96 = icmp eq i64 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %88
  %98 = load i64, i64* %8, align 8
  store i64 %98, i64* %7, align 8
  store i32 0, i32* %4, align 4
  br label %103

99:                                               ; preds = %88
  br label %100

100:                                              ; preds = %99
  %101 = load i64, i64* %8, align 8
  %102 = add i64 %101, 1
  store i64 %102, i64* %8, align 8
  br label %84

103:                                              ; preds = %97, %84
  br label %104

104:                                              ; preds = %103, %80, %77
  %105 = load i32, i32* %4, align 4
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %117

107:                                              ; preds = %104
  %108 = load i64, i64* @raidz_math_initialized, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %107
  %111 = load i64, i64* %7, align 8
  %112 = call i32 @atomic_swap_32(i32* @zfs_vdev_raidz_impl, i64 %111)
  br label %116

113:                                              ; preds = %107
  %114 = load i64, i64* %7, align 8
  %115 = call i32 @atomic_swap_32(i32* @user_sel_impl, i64 %114)
  br label %116

116:                                              ; preds = %113, %110
  br label %117

117:                                              ; preds = %116, %104
  %118 = load i32, i32* %4, align 4
  store i32 %118, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %119

119:                                              ; preds = %117, %28
  %120 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %120)
  %121 = load i32, i32* %2, align 4
  ret i32 %121
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @RAIDZ_IMPL_READ(i32) #2

declare dso_local i64 @strnlen(i8*, i32) #2

declare dso_local i32 @strlcpy(i8*, i8*, i32) #2

declare dso_local i32 @isspace(i8 signext) #2

declare dso_local i64 @ARRAY_SIZE(%struct.TYPE_5__*) #2

declare dso_local i64 @strcmp(i8*, i32) #2

declare dso_local i32 @atomic_swap_32(i32*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
