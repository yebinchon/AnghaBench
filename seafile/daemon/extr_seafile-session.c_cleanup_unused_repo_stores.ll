; ModuleID = '/home/carl/AnghaBench/seafile/daemon/extr_seafile-session.c_cleanup_unused_repo_stores.c'
source_filename = "/home/carl/AnghaBench/seafile/daemon/extr_seafile-session.c_cleanup_unused_repo_stores.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }

@seaf = common dso_local global %struct.TYPE_5__* null, align 8
@.str = private unnamed_addr constant [8 x i8] c"storage\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"Failed to open store dir %s: %s.\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"Moving %s for deleted repo %s.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @cleanup_unused_repo_stores to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cleanup_unused_repo_stores(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32*, align 8
  store i8* %0, i8** %2, align 8
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** @seaf, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load i8*, i8** %2, align 8
  %11 = call i8* @g_build_filename(i32 %9, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %10, i32* null)
  store i8* %11, i8** %3, align 8
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %5, align 8
  %12 = load i8*, i8** %3, align 8
  %13 = call i32* @g_dir_open(i8* %12, i32 0, %struct.TYPE_4__** %5)
  store i32* %13, i32** %6, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %24, label %16

16:                                               ; preds = %1
  %17 = load i8*, i8** %3, align 8
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @seaf_warning(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i8* %17, i32 %20)
  %22 = load i8*, i8** %3, align 8
  %23 = call i32 @g_free(i8* %22)
  br label %49

24:                                               ; preds = %1
  br label %25

25:                                               ; preds = %43, %24
  %26 = load i32*, i32** %6, align 8
  %27 = call i8* @g_dir_read_name(i32* %26)
  store i8* %27, i8** %4, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %44

29:                                               ; preds = %25
  %30 = load i8*, i8** %4, align 8
  %31 = call i32 @is_repo_store_in_use(i8* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %43, label %33

33:                                               ; preds = %29
  %34 = load i8*, i8** %2, align 8
  %35 = load i8*, i8** %4, align 8
  %36 = call i32 @seaf_message(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i8* %34, i8* %35)
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** @seaf, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i8*, i8** %2, align 8
  %41 = load i8*, i8** %4, align 8
  %42 = call i32 @seaf_repo_manager_move_repo_store(i32 %39, i8* %40, i8* %41)
  br label %43

43:                                               ; preds = %33, %29
  br label %25

44:                                               ; preds = %25
  %45 = load i8*, i8** %3, align 8
  %46 = call i32 @g_free(i8* %45)
  %47 = load i32*, i32** %6, align 8
  %48 = call i32 @g_dir_close(i32* %47)
  br label %49

49:                                               ; preds = %44, %16
  ret void
}

declare dso_local i8* @g_build_filename(i32, i8*, i8*, i32*) #1

declare dso_local i32* @g_dir_open(i8*, i32, %struct.TYPE_4__**) #1

declare dso_local i32 @seaf_warning(i8*, i8*, i32) #1

declare dso_local i32 @g_free(i8*) #1

declare dso_local i8* @g_dir_read_name(i32*) #1

declare dso_local i32 @is_repo_store_in_use(i8*) #1

declare dso_local i32 @seaf_message(i8*, i8*, i8*) #1

declare dso_local i32 @seaf_repo_manager_move_repo_store(i32, i8*, i8*) #1

declare dso_local i32 @g_dir_close(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
