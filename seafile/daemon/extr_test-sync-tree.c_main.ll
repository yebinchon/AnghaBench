; ModuleID = '/home/carl/AnghaBench/seafile/daemon/extr_test-sync-tree.c_main.c'
source_filename = "/home/carl/AnghaBench/seafile/daemon/extr_test-sync-tree.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SyncStatusTree = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"a/b/c.txt\00", align 1
@S_IFREG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"a/b/c/d\00", align 1
@S_IFDIR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"a/xxx.txt\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"test after add\0A\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"a/b/c.txt: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"a/b/c/d: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"a/d/f.foo\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"a/d/f.foo: %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"a/b\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"a/b: %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"a/c.pdf\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"test after del\0A\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"a: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca %struct.SyncStatusTree*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %7 = call %struct.SyncStatusTree* (...) @sync_status_tree_new()
  store %struct.SyncStatusTree* %7, %struct.SyncStatusTree** %5, align 8
  %8 = load %struct.SyncStatusTree*, %struct.SyncStatusTree** %5, align 8
  %9 = load i32, i32* @S_IFREG, align 4
  %10 = call i32 @sync_status_tree_add(%struct.SyncStatusTree* %8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %9)
  %11 = load %struct.SyncStatusTree*, %struct.SyncStatusTree** %5, align 8
  %12 = load i32, i32* @S_IFDIR, align 4
  %13 = call i32 @sync_status_tree_add(%struct.SyncStatusTree* %11, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %12)
  %14 = load %struct.SyncStatusTree*, %struct.SyncStatusTree** %5, align 8
  %15 = load i32, i32* @S_IFREG, align 4
  %16 = call i32 @sync_status_tree_add(%struct.SyncStatusTree* %14, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %15)
  %17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  %18 = load %struct.SyncStatusTree*, %struct.SyncStatusTree** %5, align 8
  %19 = call i32 @sync_status_tree_exists(%struct.SyncStatusTree* %18, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32 %20)
  %22 = load %struct.SyncStatusTree*, %struct.SyncStatusTree** %5, align 8
  %23 = call i32 @sync_status_tree_exists(%struct.SyncStatusTree* %22, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i32 %24)
  %26 = load %struct.SyncStatusTree*, %struct.SyncStatusTree** %5, align 8
  %27 = call i32 @sync_status_tree_exists(%struct.SyncStatusTree* %26, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0), i32 %28)
  %30 = load %struct.SyncStatusTree*, %struct.SyncStatusTree** %5, align 8
  %31 = call i32 @sync_status_tree_exists(%struct.SyncStatusTree* %30, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0))
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), i32 %32)
  %34 = load %struct.SyncStatusTree*, %struct.SyncStatusTree** %5, align 8
  %35 = call i32 @sync_status_tree_del(%struct.SyncStatusTree* %34, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %36 = load %struct.SyncStatusTree*, %struct.SyncStatusTree** %5, align 8
  %37 = call i32 @sync_status_tree_del(%struct.SyncStatusTree* %36, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %38 = load %struct.SyncStatusTree*, %struct.SyncStatusTree** %5, align 8
  %39 = call i32 @sync_status_tree_del(%struct.SyncStatusTree* %38, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %40 = load %struct.SyncStatusTree*, %struct.SyncStatusTree** %5, align 8
  %41 = call i32 @sync_status_tree_del(%struct.SyncStatusTree* %40, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0))
  %42 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0))
  %43 = load %struct.SyncStatusTree*, %struct.SyncStatusTree** %5, align 8
  %44 = call i32 @sync_status_tree_exists(%struct.SyncStatusTree* %43, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %6, align 4
  %46 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32 %45)
  %47 = load %struct.SyncStatusTree*, %struct.SyncStatusTree** %5, align 8
  %48 = call i32 @sync_status_tree_exists(%struct.SyncStatusTree* %47, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* %6, align 4
  %50 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i32 %49)
  %51 = load %struct.SyncStatusTree*, %struct.SyncStatusTree** %5, align 8
  %52 = call i32 @sync_status_tree_exists(%struct.SyncStatusTree* %51, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0))
  store i32 %52, i32* %6, align 4
  %53 = load i32, i32* %6, align 4
  %54 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), i32 %53)
  %55 = load %struct.SyncStatusTree*, %struct.SyncStatusTree** %5, align 8
  %56 = call i32 @sync_status_tree_exists(%struct.SyncStatusTree* %55, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0))
  store i32 %56, i32* %6, align 4
  %57 = load i32, i32* %6, align 4
  %58 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0), i32 %57)
  ret i32 0
}

declare dso_local %struct.SyncStatusTree* @sync_status_tree_new(...) #1

declare dso_local i32 @sync_status_tree_add(%struct.SyncStatusTree*, i8*, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @sync_status_tree_exists(%struct.SyncStatusTree*, i8*) #1

declare dso_local i32 @sync_status_tree_del(%struct.SyncStatusTree*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
