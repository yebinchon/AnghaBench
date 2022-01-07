; ModuleID = '/home/carl/AnghaBench/seafile/daemon/extr_http-tx-mgr.c_check_quota_and_active_paths_diff_dirs.c'
source_filename = "/home/carl/AnghaBench/seafile/daemon/extr_http-tx-mgr.c_check_quota_and_active_paths_diff_dirs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32 }

@EMPTY_SHA1 = common dso_local global i32 0, align 4
@S_IFDIR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, %struct.TYPE_4__**, i8*, i32*)* @check_quota_and_active_paths_diff_dirs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_quota_and_active_paths_diff_dirs(i32 %0, i8* %1, %struct.TYPE_4__** %2, i8* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_4__**, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_5__*, align 8
  %12 = alloca %struct.TYPE_4__*, align 8
  %13 = alloca %struct.TYPE_4__*, align 8
  %14 = alloca i8*, align 8
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store %struct.TYPE_4__** %2, %struct.TYPE_4__*** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32* %4, i32** %10, align 8
  %15 = load i8*, i8** %9, align 8
  %16 = bitcast i8* %15 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %16, %struct.TYPE_5__** %11, align 8
  %17 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %17, i64 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  store %struct.TYPE_4__* %19, %struct.TYPE_4__** %12, align 8
  %20 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %20, i64 1
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  store %struct.TYPE_4__* %22, %struct.TYPE_4__** %13, align 8
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %24 = icmp ne %struct.TYPE_4__* %23, null
  br i1 %24, label %35, label %25

25:                                               ; preds = %5
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %27 = icmp ne %struct.TYPE_4__* %26, null
  br i1 %27, label %28, label %35

28:                                               ; preds = %25
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @EMPTY_SHA1, align 4
  %33 = call i64 @strcmp(i32 %31, i32 %32)
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %55, label %35

35:                                               ; preds = %28, %25, %5
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %37 = icmp ne %struct.TYPE_4__* %36, null
  br i1 %37, label %38, label %68

38:                                               ; preds = %35
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %40 = icmp ne %struct.TYPE_4__* %39, null
  br i1 %40, label %41, label %68

41:                                               ; preds = %38
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @EMPTY_SHA1, align 4
  %46 = call i64 @strcmp(i32 %44, i32 %45)
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %68

48:                                               ; preds = %41
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @EMPTY_SHA1, align 4
  %53 = call i64 @strcmp(i32 %51, i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %68

55:                                               ; preds = %48, %28
  %56 = load i8*, i8** %7, align 8
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i8* @g_strconcat(i8* %56, i32 %59, i32* null)
  store i8* %60, i8** %14, align 8
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i8*, i8** %14, align 8
  %65 = load i64, i64* @S_IFDIR, align 8
  %66 = inttoptr i64 %65 to i8*
  %67 = call i32 @g_hash_table_replace(i32 %63, i8* %64, i8* %66)
  br label %68

68:                                               ; preds = %55, %48, %41, %38, %35
  ret i32 0
}

declare dso_local i64 @strcmp(i32, i32) #1

declare dso_local i8* @g_strconcat(i8*, i32, i32*) #1

declare dso_local i32 @g_hash_table_replace(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
