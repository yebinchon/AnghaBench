; ModuleID = '/home/carl/AnghaBench/zfs/cmd/zfs/extr_zfs_project.c_zfs_project_sanity_check.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/zfs/extr_zfs_project.c_zfs_project_sanity_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64 }
%struct.stat = type { i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"failed to stat %s: %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [57 x i8] c"only support project quota on regular file or directory\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"'-d' option on non-dir target %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"'-r' option on non-dir target %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.TYPE_3__*, %struct.stat*)* @zfs_project_sanity_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfs_project_sanity_check(i8* %0, %struct.TYPE_3__* %1, %struct.stat* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca %struct.stat*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %6, align 8
  store %struct.stat* %2, %struct.stat** %7, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = load %struct.stat*, %struct.stat** %7, align 8
  %11 = call i32 @stat(i8* %9, %struct.stat* %10)
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %3
  %15 = load i32, i32* @stderr, align 4
  %16 = call i8* @gettext(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %17 = load i8*, i8** %5, align 8
  %18 = load i32, i32* @errno, align 4
  %19 = call i8* @strerror(i32 %18)
  %20 = call i32 (i32, i8*, ...) @fprintf(i32 %15, i8* %16, i8* %17, i8* %19)
  %21 = load i32, i32* %8, align 4
  store i32 %21, i32* %4, align 4
  br label %66

22:                                               ; preds = %3
  %23 = load %struct.stat*, %struct.stat** %7, align 8
  %24 = getelementptr inbounds %struct.stat, %struct.stat* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @S_ISREG(i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %38, label %28

28:                                               ; preds = %22
  %29 = load %struct.stat*, %struct.stat** %7, align 8
  %30 = getelementptr inbounds %struct.stat, %struct.stat* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @S_ISDIR(i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %28
  %35 = load i32, i32* @stderr, align 4
  %36 = call i8* @gettext(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0))
  %37 = call i32 (i32, i8*, ...) @fprintf(i32 %35, i8* %36)
  store i32 -1, i32* %4, align 4
  br label %66

38:                                               ; preds = %28, %22
  %39 = load %struct.stat*, %struct.stat** %7, align 8
  %40 = getelementptr inbounds %struct.stat, %struct.stat* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @S_ISDIR(i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %65, label %44

44:                                               ; preds = %38
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %44
  %50 = load i32, i32* @stderr, align 4
  %51 = call i8* @gettext(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %52 = load i8*, i8** %5, align 8
  %53 = call i32 (i32, i8*, ...) @fprintf(i32 %50, i8* %51, i8* %52)
  store i32 -1, i32* %4, align 4
  br label %66

54:                                               ; preds = %44
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %54
  %60 = load i32, i32* @stderr, align 4
  %61 = call i8* @gettext(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  %62 = load i8*, i8** %5, align 8
  %63 = call i32 (i32, i8*, ...) @fprintf(i32 %60, i8* %61, i8* %62)
  store i32 -1, i32* %4, align 4
  br label %66

64:                                               ; preds = %54
  br label %65

65:                                               ; preds = %64, %38
  store i32 0, i32* %4, align 4
  br label %66

66:                                               ; preds = %65, %59, %49, %34, %14
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

declare dso_local i32 @stat(i8*, %struct.stat*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i8* @gettext(i8*) #1

declare dso_local i8* @strerror(i32) #1

declare dso_local i32 @S_ISREG(i32) #1

declare dso_local i32 @S_ISDIR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
