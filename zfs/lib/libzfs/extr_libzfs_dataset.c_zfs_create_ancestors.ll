; ModuleID = '/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_dataset.c_zfs_create_ancestors.c'
source_filename = "/home/carl/AnghaBench/zfs/lib/libzfs/extr_libzfs_dataset.c_zfs_create_ancestors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TEXT_DOMAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"cannot create '%s'\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"maximum name nesting depth exceeded\00", align 1
@EZFS_INVALIDNAME = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfs_create_ancestors(i32* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca [1024 x i8], align 16
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %9, align 4
  %10 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 0
  %11 = load i32, i32* @TEXT_DOMAIN, align 4
  %12 = call i8* @dgettext(i32 %11, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %13 = load i8*, i8** %5, align 8
  %14 = call i32 @snprintf(i8* %10, i32 1024, i8* %12, i8* %13)
  %15 = load i8*, i8** %5, align 8
  %16 = call i64 @dataset_nestcheck(i8* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %27

18:                                               ; preds = %2
  %19 = load i32*, i32** %4, align 8
  %20 = load i32, i32* @TEXT_DOMAIN, align 4
  %21 = call i8* @dgettext(i32 %20, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %22 = call i32 @zfs_error_aux(i32* %19, i8* %21)
  %23 = load i32*, i32** %4, align 8
  %24 = load i32, i32* @EZFS_INVALIDNAME, align 4
  %25 = getelementptr inbounds [1024 x i8], [1024 x i8]* %8, i64 0, i64 0
  %26 = call i32 @zfs_error(i32* %23, i32 %24, i8* %25)
  store i32 %26, i32* %3, align 4
  br label %53

27:                                               ; preds = %2
  %28 = load i32*, i32** %4, align 8
  %29 = load i8*, i8** %5, align 8
  %30 = load i32, i32* @B_TRUE, align 4
  %31 = call i64 @check_parents(i32* %28, i8* %29, i32* null, i32 %30, i32* %6)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  store i32 -1, i32* %3, align 4
  br label %53

34:                                               ; preds = %27
  %35 = load i8*, i8** %5, align 8
  %36 = call i8* @strdup(i8* %35)
  store i8* %36, i8** %7, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %45

38:                                               ; preds = %34
  %39 = load i32*, i32** %4, align 8
  %40 = load i8*, i8** %7, align 8
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @create_parents(i32* %39, i8* %40, i32 %41)
  store i32 %42, i32* %9, align 4
  %43 = load i8*, i8** %7, align 8
  %44 = call i32 @free(i8* %43)
  br label %45

45:                                               ; preds = %38, %34
  %46 = load i8*, i8** %7, align 8
  %47 = icmp eq i8* %46, null
  br i1 %47, label %51, label %48

48:                                               ; preds = %45
  %49 = load i32, i32* %9, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %48, %45
  store i32 -1, i32* %3, align 4
  br label %53

52:                                               ; preds = %48
  store i32 0, i32* %3, align 4
  br label %53

53:                                               ; preds = %52, %51, %33, %18
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i8* @dgettext(i32, i8*) #1

declare dso_local i64 @dataset_nestcheck(i8*) #1

declare dso_local i32 @zfs_error_aux(i32*, i8*) #1

declare dso_local i32 @zfs_error(i32*, i32, i8*) #1

declare dso_local i64 @check_parents(i32*, i8*, i32*, i32, i32*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @create_parents(i32*, i8*, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
