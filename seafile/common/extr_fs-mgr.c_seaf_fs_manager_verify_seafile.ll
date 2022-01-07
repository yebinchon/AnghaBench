; ModuleID = '/home/carl/AnghaBench/seafile/common/extr_fs-mgr.c_seaf_fs_manager_verify_seafile.c'
source_filename = "/home/carl/AnghaBench/seafile/common/extr_fs-mgr.c_seaf_fs_manager_verify_seafile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@EMPTY_SHA1 = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"[fs mgr] Failed to read file %s:%s.\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @seaf_fs_manager_verify_seafile(%struct.TYPE_3__* %0, i8* %1, i32 %2, i8* %3, i32 %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  %17 = load i8*, i8** %11, align 8
  %18 = load i32, i32* @EMPTY_SHA1, align 4
  %19 = call i64 @memcmp(i8* %17, i32 %18, i32 40)
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %6
  %22 = load i32, i32* @TRUE, align 4
  store i32 %22, i32* %7, align 4
  br label %51

23:                                               ; preds = %6
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i8*, i8** %9, align 8
  %28 = load i32, i32* %10, align 4
  %29 = load i8*, i8** %11, align 8
  %30 = call i64 @seaf_obj_store_read_obj(i32 %26, i8* %27, i32 %28, i8* %29, i8** %14, i32* %15)
  %31 = icmp slt i64 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %23
  %33 = load i8*, i8** %9, align 8
  %34 = load i8*, i8** %11, align 8
  %35 = call i32 @seaf_warning(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i8* %33, i8* %34)
  %36 = load i32, i32* @TRUE, align 4
  %37 = load i32*, i32** %13, align 8
  store i32 %36, i32* %37, align 4
  %38 = load i32, i32* @FALSE, align 4
  store i32 %38, i32* %7, align 4
  br label %51

39:                                               ; preds = %23
  %40 = load i8*, i8** %11, align 8
  %41 = load i8*, i8** %14, align 8
  %42 = load i32, i32* %15, align 4
  %43 = load i32, i32* %12, align 4
  %44 = load i32, i32* %10, align 4
  %45 = icmp sgt i32 %44, 0
  %46 = zext i1 %45 to i32
  %47 = call i32 @verify_seafile(i8* %40, i8* %41, i32 %42, i32 %43, i32 %46)
  store i32 %47, i32* %16, align 4
  %48 = load i8*, i8** %14, align 8
  %49 = call i32 @g_free(i8* %48)
  %50 = load i32, i32* %16, align 4
  store i32 %50, i32* %7, align 4
  br label %51

51:                                               ; preds = %39, %32, %21
  %52 = load i32, i32* %7, align 4
  ret i32 %52
}

declare dso_local i64 @memcmp(i8*, i32, i32) #1

declare dso_local i64 @seaf_obj_store_read_obj(i32, i8*, i32, i8*, i8**, i32*) #1

declare dso_local i32 @seaf_warning(i8*, i8*, i8*) #1

declare dso_local i32 @verify_seafile(i8*, i8*, i32, i32, i32) #1

declare dso_local i32 @g_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
