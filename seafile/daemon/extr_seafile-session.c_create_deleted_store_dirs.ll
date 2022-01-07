; ModuleID = '/home/carl/AnghaBench/seafile/daemon/extr_seafile-session.c_create_deleted_store_dirs.c'
source_filename = "/home/carl/AnghaBench/seafile/daemon/extr_seafile-session.c_create_deleted_store_dirs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [53 x i8] c"Directory %s does not exist and is unable to create\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"commits\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"fs\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"blocks\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @create_deleted_store_dirs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_deleted_store_dirs(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8* null, i8** %4, align 8
  store i8* null, i8** %5, align 8
  store i8* null, i8** %6, align 8
  store i32 0, i32* %7, align 4
  %8 = load i8*, i8** %3, align 8
  %9 = call i64 @checkdir_with_mkdir(i8* %8)
  %10 = icmp slt i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load i8*, i8** %3, align 8
  %13 = call i32 @seaf_warning(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i8* %12)
  store i32 -1, i32* %2, align 4
  br label %50

14:                                               ; preds = %1
  %15 = load i8*, i8** %3, align 8
  %16 = call i8* @g_build_filename(i8* %15, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32* null)
  store i8* %16, i8** %4, align 8
  %17 = load i8*, i8** %4, align 8
  %18 = call i64 @checkdir_with_mkdir(i8* %17)
  %19 = icmp slt i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %14
  %21 = load i8*, i8** %4, align 8
  %22 = call i32 @seaf_warning(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i8* %21)
  store i32 -1, i32* %7, align 4
  br label %42

23:                                               ; preds = %14
  %24 = load i8*, i8** %3, align 8
  %25 = call i8* @g_build_filename(i8* %24, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32* null)
  store i8* %25, i8** %5, align 8
  %26 = load i8*, i8** %5, align 8
  %27 = call i64 @checkdir_with_mkdir(i8* %26)
  %28 = icmp slt i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %23
  %30 = load i8*, i8** %5, align 8
  %31 = call i32 @seaf_warning(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i8* %30)
  store i32 -1, i32* %7, align 4
  br label %42

32:                                               ; preds = %23
  %33 = load i8*, i8** %3, align 8
  %34 = call i8* @g_build_filename(i8* %33, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32* null)
  store i8* %34, i8** %6, align 8
  %35 = load i8*, i8** %6, align 8
  %36 = call i64 @checkdir_with_mkdir(i8* %35)
  %37 = icmp slt i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %32
  %39 = load i8*, i8** %6, align 8
  %40 = call i32 @seaf_warning(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i8* %39)
  store i32 -1, i32* %7, align 4
  br label %42

41:                                               ; preds = %32
  br label %42

42:                                               ; preds = %41, %38, %29, %20
  %43 = load i8*, i8** %4, align 8
  %44 = call i32 @g_free(i8* %43)
  %45 = load i8*, i8** %5, align 8
  %46 = call i32 @g_free(i8* %45)
  %47 = load i8*, i8** %6, align 8
  %48 = call i32 @g_free(i8* %47)
  %49 = load i32, i32* %7, align 4
  store i32 %49, i32* %2, align 4
  br label %50

50:                                               ; preds = %42, %11
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local i64 @checkdir_with_mkdir(i8*) #1

declare dso_local i32 @seaf_warning(i8*, i8*) #1

declare dso_local i8* @g_build_filename(i8*, i8*, i32*) #1

declare dso_local i32 @g_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
