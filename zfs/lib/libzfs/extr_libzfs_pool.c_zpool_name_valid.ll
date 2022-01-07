; ModuleID = '/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_pool.c_zpool_name_valid.c'
source_filename = "/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_pool.c_zpool_name_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"mirror\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"raidz\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"spare\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"log\00", align 1
@TEXT_DOMAIN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [17 x i8] c"name is reserved\00", align 1
@B_FALSE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [17 x i8] c"name is too long\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"invalid character '%c' in pool name\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"name must begin with a letter\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"pool name is reserved\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"leading slash in name\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"empty component in name\00", align 1
@.str.11 = private unnamed_addr constant [23 x i8] c"trailing slash in name\00", align 1
@.str.12 = private unnamed_addr constant [43 x i8] c"multiple '@' and/or '#' delimiters in name\00", align 1
@.str.13 = private unnamed_addr constant [30 x i8] c"permission set is missing '@'\00", align 1
@.str.14 = private unnamed_addr constant [17 x i8] c"(%d) not defined\00", align 1
@B_TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zpool_name_valid(i32* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = call i32 @pool_namecheck(i8* %11, i32* %8, i8* %9)
  store i32 %12, i32* %10, align 4
  %13 = load i32, i32* %10, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %44

15:                                               ; preds = %3
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %44, label %18

18:                                               ; preds = %15
  %19 = load i8*, i8** %7, align 8
  %20 = call i64 @strncmp(i8* %19, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 6)
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %34, label %22

22:                                               ; preds = %18
  %23 = load i8*, i8** %7, align 8
  %24 = call i64 @strncmp(i8* %23, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 5)
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %34, label %26

26:                                               ; preds = %22
  %27 = load i8*, i8** %7, align 8
  %28 = call i64 @strncmp(i8* %27, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 5)
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %26
  %31 = load i8*, i8** %7, align 8
  %32 = call i64 @strcmp(i8* %31, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %44

34:                                               ; preds = %30, %26, %22, %18
  %35 = load i32*, i32** %5, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %42

37:                                               ; preds = %34
  %38 = load i32*, i32** %5, align 8
  %39 = load i32, i32* @TEXT_DOMAIN, align 4
  %40 = call i32 @dgettext(i32 %39, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  %41 = call i32 (i32*, i32, ...) @zfs_error_aux(i32* %38, i32 %40)
  br label %42

42:                                               ; preds = %37, %34
  %43 = load i32, i32* @B_FALSE, align 4
  store i32 %43, i32* %4, align 4
  br label %115

44:                                               ; preds = %30, %15, %3
  %45 = load i32, i32* %10, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %113

47:                                               ; preds = %44
  %48 = load i32*, i32** %5, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %50, label %111

50:                                               ; preds = %47
  %51 = load i32, i32* %8, align 4
  switch i32 %51, label %104 [
    i32 129, label %52
    i32 135, label %57
    i32 132, label %64
    i32 130, label %69
    i32 137, label %74
    i32 134, label %79
    i32 136, label %84
    i32 128, label %89
    i32 133, label %94
    i32 131, label %99
  ]

52:                                               ; preds = %50
  %53 = load i32*, i32** %5, align 8
  %54 = load i32, i32* @TEXT_DOMAIN, align 4
  %55 = call i32 @dgettext(i32 %54, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0))
  %56 = call i32 (i32*, i32, ...) @zfs_error_aux(i32* %53, i32 %55)
  br label %110

57:                                               ; preds = %50
  %58 = load i32*, i32** %5, align 8
  %59 = load i32, i32* @TEXT_DOMAIN, align 4
  %60 = call i32 @dgettext(i32 %59, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0))
  %61 = load i8, i8* %9, align 1
  %62 = sext i8 %61 to i32
  %63 = call i32 (i32*, i32, ...) @zfs_error_aux(i32* %58, i32 %60, i32 %62)
  br label %110

64:                                               ; preds = %50
  %65 = load i32*, i32** %5, align 8
  %66 = load i32, i32* @TEXT_DOMAIN, align 4
  %67 = call i32 @dgettext(i32 %66, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0))
  %68 = call i32 (i32*, i32, ...) @zfs_error_aux(i32* %65, i32 %67)
  br label %110

69:                                               ; preds = %50
  %70 = load i32*, i32** %5, align 8
  %71 = load i32, i32* @TEXT_DOMAIN, align 4
  %72 = call i32 @dgettext(i32 %71, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  %73 = call i32 (i32*, i32, ...) @zfs_error_aux(i32* %70, i32 %72)
  br label %110

74:                                               ; preds = %50
  %75 = load i32*, i32** %5, align 8
  %76 = load i32, i32* @TEXT_DOMAIN, align 4
  %77 = call i32 @dgettext(i32 %76, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0))
  %78 = call i32 (i32*, i32, ...) @zfs_error_aux(i32* %75, i32 %77)
  br label %110

79:                                               ; preds = %50
  %80 = load i32*, i32** %5, align 8
  %81 = load i32, i32* @TEXT_DOMAIN, align 4
  %82 = call i32 @dgettext(i32 %81, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0))
  %83 = call i32 (i32*, i32, ...) @zfs_error_aux(i32* %80, i32 %82)
  br label %110

84:                                               ; preds = %50
  %85 = load i32*, i32** %5, align 8
  %86 = load i32, i32* @TEXT_DOMAIN, align 4
  %87 = call i32 @dgettext(i32 %86, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0))
  %88 = call i32 (i32*, i32, ...) @zfs_error_aux(i32* %85, i32 %87)
  br label %110

89:                                               ; preds = %50
  %90 = load i32*, i32** %5, align 8
  %91 = load i32, i32* @TEXT_DOMAIN, align 4
  %92 = call i32 @dgettext(i32 %91, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i64 0, i64 0))
  %93 = call i32 (i32*, i32, ...) @zfs_error_aux(i32* %90, i32 %92)
  br label %110

94:                                               ; preds = %50
  %95 = load i32*, i32** %5, align 8
  %96 = load i32, i32* @TEXT_DOMAIN, align 4
  %97 = call i32 @dgettext(i32 %96, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.12, i64 0, i64 0))
  %98 = call i32 (i32*, i32, ...) @zfs_error_aux(i32* %95, i32 %97)
  br label %110

99:                                               ; preds = %50
  %100 = load i32*, i32** %5, align 8
  %101 = load i32, i32* @TEXT_DOMAIN, align 4
  %102 = call i32 @dgettext(i32 %101, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.13, i64 0, i64 0))
  %103 = call i32 (i32*, i32, ...) @zfs_error_aux(i32* %100, i32 %102)
  br label %110

104:                                              ; preds = %50
  %105 = load i32*, i32** %5, align 8
  %106 = load i32, i32* @TEXT_DOMAIN, align 4
  %107 = call i32 @dgettext(i32 %106, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i64 0, i64 0))
  %108 = load i32, i32* %8, align 4
  %109 = call i32 (i32*, i32, ...) @zfs_error_aux(i32* %105, i32 %107, i32 %108)
  br label %110

110:                                              ; preds = %104, %99, %94, %89, %84, %79, %74, %69, %64, %57, %52
  br label %111

111:                                              ; preds = %110, %47
  %112 = load i32, i32* @B_FALSE, align 4
  store i32 %112, i32* %4, align 4
  br label %115

113:                                              ; preds = %44
  %114 = load i32, i32* @B_TRUE, align 4
  store i32 %114, i32* %4, align 4
  br label %115

115:                                              ; preds = %113, %111, %42
  %116 = load i32, i32* %4, align 4
  ret i32 %116
}

declare dso_local i32 @pool_namecheck(i8*, i32*, i8*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @zfs_error_aux(i32*, i32, ...) #1

declare dso_local i32 @dgettext(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
