; ModuleID = '/home/carl/AnghaBench/seafile/daemon/extr_repo-mgr.c_seaf_repo_load_ignore_files.c'
source_filename = "/home/carl/AnghaBench/seafile/daemon/extr_repo-mgr.c_seaf_repo_load_ignore_files.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@PATH_MAX = common dso_local global i32 0, align 4
@PATH_SEPERATOR = common dso_local global i32 0, align 4
@IGNORE_FILE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"%s/%s*\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @seaf_repo_load_ignore_files(i8* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_3__, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32* null, i32** %4, align 8
  %12 = load i32, i32* @PATH_MAX, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %9, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %10, align 8
  %16 = load i32, i32* @PATH_SEPERATOR, align 4
  %17 = load i8*, i8** %3, align 8
  %18 = load i32, i32* @IGNORE_FILE, align 4
  %19 = call i8* @g_build_path(i32 %16, i8* %17, i32 %18, i32* null)
  store i8* %19, i8** %7, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = call i64 @seaf_stat(i8* %20, %struct.TYPE_3__* %5)
  %22 = icmp slt i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %1
  br label %78

24:                                               ; preds = %1
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @S_ISREG(i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %24
  br label %78

30:                                               ; preds = %24
  %31 = load i8*, i8** %7, align 8
  %32 = call i32* @g_fopen(i8* %31, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %32, i32** %6, align 8
  %33 = load i32*, i32** %6, align 8
  %34 = icmp eq i32* %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  br label %78

36:                                               ; preds = %30
  br label %37

37:                                               ; preds = %68, %53, %36
  %38 = load i32, i32* @PATH_MAX, align 4
  %39 = load i32*, i32** %6, align 8
  %40 = call i32* @fgets(i8* %15, i32 %38, i32* %39)
  %41 = icmp ne i32* %40, null
  br i1 %41, label %42, label %72

42:                                               ; preds = %37
  %43 = call i32 @g_strstrip(i8* %15)
  %44 = getelementptr inbounds i8, i8* %15, i64 0
  %45 = load i8, i8* %44, align 16
  %46 = sext i8 %45 to i32
  %47 = icmp eq i32 %46, 35
  br i1 %47, label %53, label %48

48:                                               ; preds = %42
  %49 = getelementptr inbounds i8, i8* %15, i64 0
  %50 = load i8, i8* %49, align 16
  %51 = sext i8 %50 to i32
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %48, %42
  br label %37

54:                                               ; preds = %48
  %55 = call i32 @strlen(i8* %15)
  %56 = sub nsw i32 %55, 1
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8, i8* %15, i64 %57
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp eq i32 %60, 47
  br i1 %61, label %62, label %65

62:                                               ; preds = %54
  %63 = load i8*, i8** %3, align 8
  %64 = call i8* @g_strdup_printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %63, i8* %15)
  store i8* %64, i8** %8, align 8
  br label %68

65:                                               ; preds = %54
  %66 = load i8*, i8** %3, align 8
  %67 = call i8* @g_strdup_printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* %66, i8* %15)
  store i8* %67, i8** %8, align 8
  br label %68

68:                                               ; preds = %65, %62
  %69 = load i32*, i32** %4, align 8
  %70 = load i8*, i8** %8, align 8
  %71 = call i32* @g_list_prepend(i32* %69, i8* %70)
  store i32* %71, i32** %4, align 8
  br label %37

72:                                               ; preds = %37
  %73 = load i32*, i32** %6, align 8
  %74 = call i32 @fclose(i32* %73)
  %75 = load i8*, i8** %7, align 8
  %76 = call i32 @g_free(i8* %75)
  %77 = load i32*, i32** %4, align 8
  store i32* %77, i32** %2, align 8
  store i32 1, i32* %11, align 4
  br label %81

78:                                               ; preds = %35, %29, %23
  %79 = load i8*, i8** %7, align 8
  %80 = call i32 @g_free(i8* %79)
  store i32* null, i32** %2, align 8
  store i32 1, i32* %11, align 4
  br label %81

81:                                               ; preds = %78, %72
  %82 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %82)
  %83 = load i32*, i32** %2, align 8
  ret i32* %83
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @g_build_path(i32, i8*, i32, i32*) #2

declare dso_local i64 @seaf_stat(i8*, %struct.TYPE_3__*) #2

declare dso_local i32 @S_ISREG(i32) #2

declare dso_local i32* @g_fopen(i8*, i8*) #2

declare dso_local i32* @fgets(i8*, i32, i32*) #2

declare dso_local i32 @g_strstrip(i8*) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i8* @g_strdup_printf(i8*, i8*, i8*) #2

declare dso_local i32* @g_list_prepend(i32*, i8*) #2

declare dso_local i32 @fclose(i32*) #2

declare dso_local i32 @g_free(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
