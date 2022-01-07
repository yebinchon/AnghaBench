; ModuleID = '/home/carl/AnghaBench/zfs/module/zcommon/extr_zfs_namecheck.c_pool_namecheck.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zcommon/extr_zfs_namecheck.c_pool_namecheck.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ZFS_MAX_DATASET_NAME_LEN = common dso_local global i32 0, align 4
@ORIGIN_DIR_NAME = common dso_local global i8* null, align 8
@NAME_ERR_TOOLONG = common dso_local global i32 0, align 4
@NAME_ERR_INVALCHAR = common dso_local global i32 0, align 4
@NAME_ERR_NOLETTER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"mirror\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"raidz\00", align 1
@NAME_ERR_RESERVED = common dso_local global i32 0, align 4
@NAME_ERR_DISKLIKE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pool_namecheck(i8* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = call i32 @strlen(i8* %9)
  %11 = load i32, i32* @ZFS_MAX_DATASET_NAME_LEN, align 4
  %12 = sub nsw i32 %11, 2
  %13 = load i8*, i8** @ORIGIN_DIR_NAME, align 8
  %14 = call i32 @strlen(i8* %13)
  %15 = mul nsw i32 %14, 2
  %16 = sub nsw i32 %12, %15
  %17 = icmp sge i32 %10, %16
  br i1 %17, label %18, label %25

18:                                               ; preds = %3
  %19 = load i32*, i32** %6, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = load i32, i32* @NAME_ERR_TOOLONG, align 4
  %23 = load i32*, i32** %6, align 8
  store i32 %22, i32* %23, align 4
  br label %24

24:                                               ; preds = %21, %18
  store i32 -1, i32* %4, align 4
  br label %118

25:                                               ; preds = %3
  %26 = load i8*, i8** %5, align 8
  store i8* %26, i8** %8, align 8
  br label %27

27:                                               ; preds = %47, %25
  %28 = load i8*, i8** %8, align 8
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %50

32:                                               ; preds = %27
  %33 = load i8*, i8** %8, align 8
  %34 = load i8, i8* %33, align 1
  %35 = call i32 @valid_char(i8 signext %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %47, label %37

37:                                               ; preds = %32
  %38 = load i32*, i32** %6, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %40, label %46

40:                                               ; preds = %37
  %41 = load i32, i32* @NAME_ERR_INVALCHAR, align 4
  %42 = load i32*, i32** %6, align 8
  store i32 %41, i32* %42, align 4
  %43 = load i8*, i8** %8, align 8
  %44 = load i8, i8* %43, align 1
  %45 = load i8*, i8** %7, align 8
  store i8 %44, i8* %45, align 1
  br label %46

46:                                               ; preds = %40, %37
  store i32 -1, i32* %4, align 4
  br label %118

47:                                               ; preds = %32
  %48 = load i8*, i8** %8, align 8
  %49 = getelementptr inbounds i8, i8* %48, i32 1
  store i8* %49, i8** %8, align 8
  br label %27

50:                                               ; preds = %27
  %51 = load i8*, i8** %5, align 8
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp sge i32 %53, 97
  br i1 %54, label %55, label %60

55:                                               ; preds = %50
  %56 = load i8*, i8** %5, align 8
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp sle i32 %58, 122
  br i1 %59, label %77, label %60

60:                                               ; preds = %55, %50
  %61 = load i8*, i8** %5, align 8
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp sge i32 %63, 65
  br i1 %64, label %65, label %70

65:                                               ; preds = %60
  %66 = load i8*, i8** %5, align 8
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp sle i32 %68, 90
  br i1 %69, label %77, label %70

70:                                               ; preds = %65, %60
  %71 = load i32*, i32** %6, align 8
  %72 = icmp ne i32* %71, null
  br i1 %72, label %73, label %76

73:                                               ; preds = %70
  %74 = load i32, i32* @NAME_ERR_NOLETTER, align 4
  %75 = load i32*, i32** %6, align 8
  store i32 %74, i32* %75, align 4
  br label %76

76:                                               ; preds = %73, %70
  store i32 -1, i32* %4, align 4
  br label %118

77:                                               ; preds = %65, %55
  %78 = load i8*, i8** %5, align 8
  %79 = call i64 @strcmp(i8* %78, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %85, label %81

81:                                               ; preds = %77
  %82 = load i8*, i8** %5, align 8
  %83 = call i64 @strcmp(i8* %82, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %84 = icmp eq i64 %83, 0
  br i1 %84, label %85, label %92

85:                                               ; preds = %81, %77
  %86 = load i32*, i32** %6, align 8
  %87 = icmp ne i32* %86, null
  br i1 %87, label %88, label %91

88:                                               ; preds = %85
  %89 = load i32, i32* @NAME_ERR_RESERVED, align 4
  %90 = load i32*, i32** %6, align 8
  store i32 %89, i32* %90, align 4
  br label %91

91:                                               ; preds = %88, %85
  store i32 -1, i32* %4, align 4
  br label %118

92:                                               ; preds = %81
  %93 = load i8*, i8** %5, align 8
  %94 = getelementptr inbounds i8, i8* %93, i64 0
  %95 = load i8, i8* %94, align 1
  %96 = sext i8 %95 to i32
  %97 = icmp eq i32 %96, 99
  br i1 %97, label %98, label %117

98:                                               ; preds = %92
  %99 = load i8*, i8** %5, align 8
  %100 = getelementptr inbounds i8, i8* %99, i64 1
  %101 = load i8, i8* %100, align 1
  %102 = sext i8 %101 to i32
  %103 = icmp sge i32 %102, 48
  br i1 %103, label %104, label %117

104:                                              ; preds = %98
  %105 = load i8*, i8** %5, align 8
  %106 = getelementptr inbounds i8, i8* %105, i64 1
  %107 = load i8, i8* %106, align 1
  %108 = sext i8 %107 to i32
  %109 = icmp sle i32 %108, 57
  br i1 %109, label %110, label %117

110:                                              ; preds = %104
  %111 = load i32*, i32** %6, align 8
  %112 = icmp ne i32* %111, null
  br i1 %112, label %113, label %116

113:                                              ; preds = %110
  %114 = load i32, i32* @NAME_ERR_DISKLIKE, align 4
  %115 = load i32*, i32** %6, align 8
  store i32 %114, i32* %115, align 4
  br label %116

116:                                              ; preds = %113, %110
  store i32 -1, i32* %4, align 4
  br label %118

117:                                              ; preds = %104, %98, %92
  store i32 0, i32* %4, align 4
  br label %118

118:                                              ; preds = %117, %116, %91, %76, %46, %24
  %119 = load i32, i32* %4, align 4
  ret i32 %119
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @valid_char(i8 signext) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
