; ModuleID = '/home/carl/AnghaBench/seafile/common/extr_obj-backend-fs.c_save_obj_contents.c'
source_filename = "/home/carl/AnghaBench/seafile/common/extr_obj-backend-fs.c_save_obj_contents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SEAF_PATH_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"%s.XXXXXX\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"[obj backend] Failed to open tmp file %s: %s.\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"[obj backend] Failed to write obj %s: %s.\0A\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"[obj backend Failed close obj %s: %s.\0A\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"[obj backend] Failed to rename %s: %s.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32, i64)* @save_obj_contents to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @save_obj_contents(i8* %0, i8* %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %14 = load i32, i32* @SEAF_PATH_MAX, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %10, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %11, align 8
  %18 = load i32, i32* @SEAF_PATH_MAX, align 4
  %19 = load i8*, i8** %6, align 8
  %20 = call i32 @snprintf(i8* %17, i32 %18, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %19)
  %21 = call i32 @g_mkstemp(i8* %17)
  store i32 %21, i32* %12, align 4
  %22 = load i32, i32* %12, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %4
  %25 = load i32, i32* @errno, align 4
  %26 = call i32 @strerror(i32 %25)
  %27 = call i32 @seaf_warning(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i8* %17, i32 %26)
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %13, align 4
  br label %74

28:                                               ; preds = %4
  %29 = load i32, i32* %12, align 4
  %30 = load i8*, i8** %7, align 8
  %31 = load i32, i32* %8, align 4
  %32 = call i64 @writen(i32 %29, i8* %30, i32 %31)
  %33 = icmp slt i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %28
  %35 = load i32, i32* @errno, align 4
  %36 = call i32 @strerror(i32 %35)
  %37 = call i32 @seaf_warning(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i8* %17, i32 %36)
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %13, align 4
  br label %74

38:                                               ; preds = %28
  %39 = load i64, i64* %9, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %38
  %42 = load i32, i32* %12, align 4
  %43 = call i64 @fsync_obj_contents(i32 %42)
  %44 = icmp slt i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %41
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %13, align 4
  br label %74

46:                                               ; preds = %41, %38
  %47 = load i32, i32* %12, align 4
  %48 = call i64 @close(i32 %47)
  %49 = icmp slt i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %46
  %51 = load i32, i32* @errno, align 4
  %52 = call i32 @strerror(i32 %51)
  %53 = call i32 @seaf_warning(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i8* %17, i32 %52)
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %13, align 4
  br label %74

54:                                               ; preds = %46
  %55 = load i64, i64* %9, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %54
  %58 = load i8*, i8** %6, align 8
  %59 = call i64 @rename_and_sync(i8* %17, i8* %58)
  %60 = icmp slt i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %57
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %13, align 4
  br label %74

62:                                               ; preds = %57
  br label %73

63:                                               ; preds = %54
  %64 = load i8*, i8** %6, align 8
  %65 = call i64 @g_rename(i8* %17, i8* %64)
  %66 = icmp slt i64 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %63
  %68 = load i8*, i8** %6, align 8
  %69 = load i32, i32* @errno, align 4
  %70 = call i32 @strerror(i32 %69)
  %71 = call i32 @seaf_warning(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0), i8* %68, i32 %70)
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %13, align 4
  br label %74

72:                                               ; preds = %63
  br label %73

73:                                               ; preds = %72, %62
  store i32 0, i32* %5, align 4
  store i32 1, i32* %13, align 4
  br label %74

74:                                               ; preds = %73, %67, %61, %50, %45, %34, %24
  %75 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %75)
  %76 = load i32, i32* %5, align 4
  ret i32 %76
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #2

declare dso_local i32 @g_mkstemp(i8*) #2

declare dso_local i32 @seaf_warning(i8*, i8*, i32) #2

declare dso_local i32 @strerror(i32) #2

declare dso_local i64 @writen(i32, i8*, i32) #2

declare dso_local i64 @fsync_obj_contents(i32) #2

declare dso_local i64 @close(i32) #2

declare dso_local i64 @rename_and_sync(i8*, i8*) #2

declare dso_local i64 @g_rename(i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
