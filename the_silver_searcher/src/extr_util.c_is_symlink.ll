; ModuleID = '/home/carl/AnghaBench/the_silver_searcher/src/extr_util.c_is_symlink.c'
source_filename = "/home/carl/AnghaBench/the_silver_searcher/src/extr_util.c_is_symlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dirent = type { i8*, i64 }
%struct.stat = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@FALSE = common dso_local global i32 0, align 4
@DT_LNK = common dso_local global i64 0, align 8
@DT_UNKNOWN = common dso_local global i64 0, align 8
@FILE_ATTRIBUTE_REPARSE_POINT = common dso_local global i32 0, align 4
@MAX_PATH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @is_symlink(i8* %0, %struct.dirent* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.dirent*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.stat, align 4
  store i8* %0, i8** %4, align 8
  store %struct.dirent* %1, %struct.dirent** %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = load %struct.dirent*, %struct.dirent** %5, align 8
  %10 = getelementptr inbounds %struct.dirent, %struct.dirent* %9, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8
  %12 = call i32 @ag_asprintf(i8** %6, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %8, i8* %11)
  %13 = load i8*, i8** %6, align 8
  %14 = call i64 @lstat(i8* %13, %struct.stat* %7)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = load i8*, i8** %6, align 8
  %18 = call i32 @free(i8* %17)
  %19 = load i32, i32* @FALSE, align 4
  store i32 %19, i32* %3, align 4
  br label %26

20:                                               ; preds = %2
  %21 = load i8*, i8** %6, align 8
  %22 = call i32 @free(i8* %21)
  %23 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @S_ISLNK(i32 %24)
  store i32 %25, i32* %3, align 4
  br label %26

26:                                               ; preds = %20, %16
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

declare dso_local i32 @ag_asprintf(i8**, i8*, i8*, i8*) #1

declare dso_local i64 @lstat(i8*, %struct.stat*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @S_ISLNK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
