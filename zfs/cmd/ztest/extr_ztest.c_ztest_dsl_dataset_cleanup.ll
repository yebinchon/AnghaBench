; ModuleID = '/home/carl/AnghaBench/zfs/cmd/ztest/extr_ztest.c_ztest_dsl_dataset_cleanup.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/ztest/extr_ztest.c_ztest_dsl_dataset_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ZFS_MAX_DATASET_NAME_LEN = common dso_local global i32 0, align 4
@UMEM_NOFAIL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"%s@s1_%llu\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"%s/c1_%llu\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"%s@s2_%llu\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"%s/c2_%llu\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"%s@s3_%llu\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [26 x i8] c"dsl_destroy_head(%s) = %d\00", align 1
@B_FALSE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [30 x i8] c"dsl_destroy_snapshot(%s) = %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ztest_dsl_dataset_cleanup(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %11 = load i32, i32* @ZFS_MAX_DATASET_NAME_LEN, align 4
  %12 = load i32, i32* @UMEM_NOFAIL, align 4
  %13 = call i8* @umem_alloc(i32 %11, i32 %12)
  store i8* %13, i8** %5, align 8
  %14 = load i32, i32* @ZFS_MAX_DATASET_NAME_LEN, align 4
  %15 = load i32, i32* @UMEM_NOFAIL, align 4
  %16 = call i8* @umem_alloc(i32 %14, i32 %15)
  store i8* %16, i8** %6, align 8
  %17 = load i32, i32* @ZFS_MAX_DATASET_NAME_LEN, align 4
  %18 = load i32, i32* @UMEM_NOFAIL, align 4
  %19 = call i8* @umem_alloc(i32 %17, i32 %18)
  store i8* %19, i8** %7, align 8
  %20 = load i32, i32* @ZFS_MAX_DATASET_NAME_LEN, align 4
  %21 = load i32, i32* @UMEM_NOFAIL, align 4
  %22 = call i8* @umem_alloc(i32 %20, i32 %21)
  store i8* %22, i8** %8, align 8
  %23 = load i32, i32* @ZFS_MAX_DATASET_NAME_LEN, align 4
  %24 = load i32, i32* @UMEM_NOFAIL, align 4
  %25 = call i8* @umem_alloc(i32 %23, i32 %24)
  store i8* %25, i8** %9, align 8
  %26 = load i8*, i8** %5, align 8
  %27 = load i32, i32* @ZFS_MAX_DATASET_NAME_LEN, align 4
  %28 = load i8*, i8** %3, align 8
  %29 = load i64, i64* %4, align 8
  %30 = trunc i64 %29 to i32
  %31 = call i32 @snprintf(i8* %26, i32 %27, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %28, i32 %30)
  %32 = load i8*, i8** %6, align 8
  %33 = load i32, i32* @ZFS_MAX_DATASET_NAME_LEN, align 4
  %34 = load i8*, i8** %3, align 8
  %35 = load i64, i64* %4, align 8
  %36 = trunc i64 %35 to i32
  %37 = call i32 @snprintf(i8* %32, i32 %33, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* %34, i32 %36)
  %38 = load i8*, i8** %7, align 8
  %39 = load i32, i32* @ZFS_MAX_DATASET_NAME_LEN, align 4
  %40 = load i8*, i8** %6, align 8
  %41 = load i64, i64* %4, align 8
  %42 = trunc i64 %41 to i32
  %43 = call i32 @snprintf(i8* %38, i32 %39, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* %40, i32 %42)
  %44 = load i8*, i8** %8, align 8
  %45 = load i32, i32* @ZFS_MAX_DATASET_NAME_LEN, align 4
  %46 = load i8*, i8** %3, align 8
  %47 = load i64, i64* %4, align 8
  %48 = trunc i64 %47 to i32
  %49 = call i32 @snprintf(i8* %44, i32 %45, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8* %46, i32 %48)
  %50 = load i8*, i8** %9, align 8
  %51 = load i32, i32* @ZFS_MAX_DATASET_NAME_LEN, align 4
  %52 = load i8*, i8** %6, align 8
  %53 = load i64, i64* %4, align 8
  %54 = trunc i64 %53 to i32
  %55 = call i32 @snprintf(i8* %50, i32 %51, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i8* %52, i32 %54)
  %56 = load i8*, i8** %8, align 8
  %57 = call i32 @dsl_destroy_head(i8* %56)
  store i32 %57, i32* %10, align 4
  %58 = load i32, i32* %10, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %68

60:                                               ; preds = %2
  %61 = load i32, i32* %10, align 4
  %62 = load i32, i32* @ENOENT, align 4
  %63 = icmp ne i32 %61, %62
  br i1 %63, label %64, label %68

64:                                               ; preds = %60
  %65 = load i8*, i8** %8, align 8
  %66 = load i32, i32* %10, align 4
  %67 = call i32 @fatal(i32 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i8* %65, i32 %66)
  br label %68

68:                                               ; preds = %64, %60, %2
  %69 = load i8*, i8** %9, align 8
  %70 = load i32, i32* @B_FALSE, align 4
  %71 = call i32 @dsl_destroy_snapshot(i8* %69, i32 %70)
  store i32 %71, i32* %10, align 4
  %72 = load i32, i32* %10, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %82

74:                                               ; preds = %68
  %75 = load i32, i32* %10, align 4
  %76 = load i32, i32* @ENOENT, align 4
  %77 = icmp ne i32 %75, %76
  br i1 %77, label %78, label %82

78:                                               ; preds = %74
  %79 = load i8*, i8** %9, align 8
  %80 = load i32, i32* %10, align 4
  %81 = call i32 @fatal(i32 0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0), i8* %79, i32 %80)
  br label %82

82:                                               ; preds = %78, %74, %68
  %83 = load i8*, i8** %7, align 8
  %84 = load i32, i32* @B_FALSE, align 4
  %85 = call i32 @dsl_destroy_snapshot(i8* %83, i32 %84)
  store i32 %85, i32* %10, align 4
  %86 = load i32, i32* %10, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %96

88:                                               ; preds = %82
  %89 = load i32, i32* %10, align 4
  %90 = load i32, i32* @ENOENT, align 4
  %91 = icmp ne i32 %89, %90
  br i1 %91, label %92, label %96

92:                                               ; preds = %88
  %93 = load i8*, i8** %7, align 8
  %94 = load i32, i32* %10, align 4
  %95 = call i32 @fatal(i32 0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0), i8* %93, i32 %94)
  br label %96

96:                                               ; preds = %92, %88, %82
  %97 = load i8*, i8** %6, align 8
  %98 = call i32 @dsl_destroy_head(i8* %97)
  store i32 %98, i32* %10, align 4
  %99 = load i32, i32* %10, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %109

101:                                              ; preds = %96
  %102 = load i32, i32* %10, align 4
  %103 = load i32, i32* @ENOENT, align 4
  %104 = icmp ne i32 %102, %103
  br i1 %104, label %105, label %109

105:                                              ; preds = %101
  %106 = load i8*, i8** %6, align 8
  %107 = load i32, i32* %10, align 4
  %108 = call i32 @fatal(i32 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i8* %106, i32 %107)
  br label %109

109:                                              ; preds = %105, %101, %96
  %110 = load i8*, i8** %5, align 8
  %111 = load i32, i32* @B_FALSE, align 4
  %112 = call i32 @dsl_destroy_snapshot(i8* %110, i32 %111)
  store i32 %112, i32* %10, align 4
  %113 = load i32, i32* %10, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %123

115:                                              ; preds = %109
  %116 = load i32, i32* %10, align 4
  %117 = load i32, i32* @ENOENT, align 4
  %118 = icmp ne i32 %116, %117
  br i1 %118, label %119, label %123

119:                                              ; preds = %115
  %120 = load i8*, i8** %5, align 8
  %121 = load i32, i32* %10, align 4
  %122 = call i32 @fatal(i32 0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0), i8* %120, i32 %121)
  br label %123

123:                                              ; preds = %119, %115, %109
  %124 = load i8*, i8** %5, align 8
  %125 = load i32, i32* @ZFS_MAX_DATASET_NAME_LEN, align 4
  %126 = call i32 @umem_free(i8* %124, i32 %125)
  %127 = load i8*, i8** %6, align 8
  %128 = load i32, i32* @ZFS_MAX_DATASET_NAME_LEN, align 4
  %129 = call i32 @umem_free(i8* %127, i32 %128)
  %130 = load i8*, i8** %7, align 8
  %131 = load i32, i32* @ZFS_MAX_DATASET_NAME_LEN, align 4
  %132 = call i32 @umem_free(i8* %130, i32 %131)
  %133 = load i8*, i8** %8, align 8
  %134 = load i32, i32* @ZFS_MAX_DATASET_NAME_LEN, align 4
  %135 = call i32 @umem_free(i8* %133, i32 %134)
  %136 = load i8*, i8** %9, align 8
  %137 = load i32, i32* @ZFS_MAX_DATASET_NAME_LEN, align 4
  %138 = call i32 @umem_free(i8* %136, i32 %137)
  ret void
}

declare dso_local i8* @umem_alloc(i32, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i32) #1

declare dso_local i32 @dsl_destroy_head(i8*) #1

declare dso_local i32 @fatal(i32, i8*, i8*, i32) #1

declare dso_local i32 @dsl_destroy_snapshot(i8*, i32) #1

declare dso_local i32 @umem_free(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
