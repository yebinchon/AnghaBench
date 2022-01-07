; ModuleID = '/home/carl/AnghaBench/tmux/extr_tmux.c_make_label.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_tmux.c_make_label.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32, i64 }

@PATH_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"default\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"TMUX_TMPDIR\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"%s/tmux-%ld\00", align 1
@_PATH_TMP = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i64 0, align 8
@errno = common dso_local global i64 0, align 8
@S_IRWXU = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i64 0, align 8
@ENOTDIR = common dso_local global i64 0, align 8
@S_IRWXO = common dso_local global i32 0, align 4
@EACCES = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"error creating %s (%s)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i8**)* @make_label to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @make_label(i8* %0, i8** %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.stat, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8** %1, i8*** %5, align 8
  %14 = load i32, i32* @PATH_MAX, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %7, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %8, align 8
  %18 = load i8**, i8*** %5, align 8
  store i8* null, i8** %18, align 8
  %19 = load i8*, i8** %4, align 8
  %20 = icmp eq i8* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  br label %22

22:                                               ; preds = %21, %2
  %23 = call i64 (...) @getuid()
  store i64 %23, i64* %12, align 8
  %24 = call i8* @getenv(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  store i8* %24, i8** %10, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %35

26:                                               ; preds = %22
  %27 = load i8*, i8** %10, align 8
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %26
  %32 = load i8*, i8** %10, align 8
  %33 = load i64, i64* %12, align 8
  %34 = call i32 (i8**, i8*, i8*, ...) @xasprintf(i8** %6, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8* %32, i64 %33)
  br label %41

35:                                               ; preds = %26, %22
  %36 = load i32, i32* @_PATH_TMP, align 4
  %37 = sext i32 %36 to i64
  %38 = inttoptr i64 %37 to i8*
  %39 = load i64, i64* %12, align 8
  %40 = call i32 (i8**, i8*, i8*, ...) @xasprintf(i8** %6, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8* %38, i64 %39)
  br label %41

41:                                               ; preds = %35, %31
  %42 = load i8*, i8** %6, align 8
  %43 = call i32* @realpath(i8* %42, i8* %17)
  %44 = icmp eq i32* %43, null
  br i1 %44, label %45, label %55

45:                                               ; preds = %41
  %46 = load i8*, i8** %6, align 8
  %47 = trunc i64 %15 to i32
  %48 = call i32 @strlcpy(i8* %17, i8* %46, i32 %47)
  %49 = sext i32 %48 to i64
  %50 = icmp uge i64 %49, %15
  br i1 %50, label %51, label %55

51:                                               ; preds = %45
  %52 = load i64, i64* @ERANGE, align 8
  store i64 %52, i64* @errno, align 8
  %53 = load i8*, i8** %6, align 8
  %54 = call i32 @free(i8* %53)
  br label %94

55:                                               ; preds = %45, %41
  %56 = load i8*, i8** %6, align 8
  %57 = call i32 @free(i8* %56)
  %58 = load i32, i32* @S_IRWXU, align 4
  %59 = call i64 @mkdir(i8* %17, i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %55
  %62 = load i64, i64* @errno, align 8
  %63 = load i64, i64* @EEXIST, align 8
  %64 = icmp ne i64 %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %61
  br label %94

66:                                               ; preds = %61, %55
  %67 = call i64 @lstat(i8* %17, %struct.stat* %11)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %66
  br label %94

70:                                               ; preds = %66
  %71 = getelementptr inbounds %struct.stat, %struct.stat* %11, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @S_ISDIR(i32 %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %77, label %75

75:                                               ; preds = %70
  %76 = load i64, i64* @ENOTDIR, align 8
  store i64 %76, i64* @errno, align 8
  br label %94

77:                                               ; preds = %70
  %78 = getelementptr inbounds %struct.stat, %struct.stat* %11, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* %12, align 8
  %81 = icmp ne i64 %79, %80
  br i1 %81, label %88, label %82

82:                                               ; preds = %77
  %83 = getelementptr inbounds %struct.stat, %struct.stat* %11, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @S_IRWXO, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %82, %77
  %89 = load i64, i64* @EACCES, align 8
  store i64 %89, i64* @errno, align 8
  br label %94

90:                                               ; preds = %82
  %91 = load i8*, i8** %4, align 8
  %92 = call i32 (i8**, i8*, i8*, ...) @xasprintf(i8** %9, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* %17, i8* %91)
  %93 = load i8*, i8** %9, align 8
  store i8* %93, i8** %3, align 8
  store i32 1, i32* %13, align 4
  br label %99

94:                                               ; preds = %88, %75, %69, %65, %51
  %95 = load i8**, i8*** %5, align 8
  %96 = load i64, i64* @errno, align 8
  %97 = call i8* @strerror(i64 %96)
  %98 = call i32 (i8**, i8*, i8*, ...) @xasprintf(i8** %95, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i8* %17, i8* %97)
  store i8* null, i8** %3, align 8
  store i32 1, i32* %13, align 4
  br label %99

99:                                               ; preds = %94, %90
  %100 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %100)
  %101 = load i8*, i8** %3, align 8
  ret i8* %101
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @getuid(...) #2

declare dso_local i8* @getenv(i8*) #2

declare dso_local i32 @xasprintf(i8**, i8*, i8*, ...) #2

declare dso_local i32* @realpath(i8*, i8*) #2

declare dso_local i32 @strlcpy(i8*, i8*, i32) #2

declare dso_local i32 @free(i8*) #2

declare dso_local i64 @mkdir(i8*, i32) #2

declare dso_local i64 @lstat(i8*, %struct.stat*) #2

declare dso_local i32 @S_ISDIR(i32) #2

declare dso_local i8* @strerror(i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
