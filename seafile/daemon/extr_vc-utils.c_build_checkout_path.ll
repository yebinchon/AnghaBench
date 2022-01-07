; ModuleID = '/home/carl/AnghaBench/seafile/daemon/extr_vc-utils.c_build_checkout_path.c'
source_filename = "/home/carl/AnghaBench/seafile/daemon/extr_vc-utils.c_build_checkout_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@SEAF_PATH_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"entry name should not be empty.\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%s/\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"Failed to create directory %s.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @build_checkout_path(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_3__, align 4
  %14 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load i8*, i8** %5, align 8
  %16 = call i32 @strlen(i8* %15)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* @SEAF_PATH_MAX, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %10, align 8
  %20 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %11, align 8
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %3
  %24 = call i32 (i8*, ...) @seaf_warning(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  store i8* null, i8** %4, align 8
  store i32 1, i32* %14, align 4
  br label %99

25:                                               ; preds = %3
  %26 = load i32, i32* @SEAF_PATH_MAX, align 4
  %27 = load i8*, i8** %5, align 8
  %28 = call i32 @snprintf(i8* %20, i32 %26, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %27)
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* %7, align 4
  %31 = add nsw i32 %29, %30
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %8, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %12, align 4
  br label %35

35:                                               ; preds = %93, %87, %25
  %36 = load i32, i32* %12, align 4
  %37 = load i32, i32* %9, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %94

39:                                               ; preds = %35
  br label %40

40:                                               ; preds = %69, %39
  %41 = load i8*, i8** %6, align 8
  %42 = load i32, i32* %12, align 4
  %43 = load i32, i32* %8, align 4
  %44 = sub nsw i32 %42, %43
  %45 = sub nsw i32 %44, 1
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8, i8* %41, i64 %46
  %48 = load i8, i8* %47, align 1
  %49 = load i32, i32* %12, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8, i8* %20, i64 %50
  store i8 %48, i8* %51, align 1
  %52 = load i32, i32* %12, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %12, align 4
  br label %54

54:                                               ; preds = %40
  %55 = load i32, i32* %12, align 4
  %56 = load i32, i32* %9, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %69

58:                                               ; preds = %54
  %59 = load i8*, i8** %6, align 8
  %60 = load i32, i32* %12, align 4
  %61 = load i32, i32* %8, align 4
  %62 = sub nsw i32 %60, %61
  %63 = sub nsw i32 %62, 1
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8, i8* %59, i64 %64
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp ne i32 %67, 47
  br label %69

69:                                               ; preds = %58, %54
  %70 = phi i1 [ false, %54 ], [ %68, %58 ]
  br i1 %70, label %40, label %71

71:                                               ; preds = %69
  %72 = load i32, i32* %12, align 4
  %73 = load i32, i32* %9, align 4
  %74 = icmp sge i32 %72, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %71
  br label %94

76:                                               ; preds = %71
  %77 = load i32, i32* %12, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i8, i8* %20, i64 %78
  store i8 0, i8* %79, align 1
  %80 = call i64 @seaf_stat(i8* %20, %struct.TYPE_3__* %13)
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %82, label %88

82:                                               ; preds = %76
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i64 @S_ISDIR(i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %82
  br label %35

88:                                               ; preds = %82, %76
  %89 = call i64 @seaf_util_mkdir(i8* %20, i32 511)
  %90 = icmp slt i64 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %88
  %92 = call i32 (i8*, ...) @seaf_warning(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i8* %20)
  store i8* null, i8** %4, align 8
  store i32 1, i32* %14, align 4
  br label %99

93:                                               ; preds = %88
  br label %35

94:                                               ; preds = %75, %35
  %95 = load i32, i32* %12, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i8, i8* %20, i64 %96
  store i8 0, i8* %97, align 1
  %98 = call i8* @g_strdup(i8* %20)
  store i8* %98, i8** %4, align 8
  store i32 1, i32* %14, align 4
  br label %99

99:                                               ; preds = %94, %91, %23
  %100 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %100)
  %101 = load i8*, i8** %4, align 8
  ret i8* %101
}

declare dso_local i32 @strlen(i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @seaf_warning(i8*, ...) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i64 @seaf_stat(i8*, %struct.TYPE_3__*) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i64 @seaf_util_mkdir(i8*, i32) #1

declare dso_local i8* @g_strdup(i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
