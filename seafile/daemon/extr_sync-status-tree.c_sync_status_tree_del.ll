; ModuleID = '/home/carl/AnghaBench/seafile/daemon/extr_sync-status-tree.c_sync_status_tree_del.c'
source_filename = "/home/carl/AnghaBench/seafile/daemon/extr_sync-status-tree.c_sync_status_tree_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32* }

@.str = private unnamed_addr constant [2 x i8] c"/\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sync_status_tree_del(%struct.TYPE_3__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i8* %1, i8** %4, align 8
  store i8** null, i8*** %5, align 8
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 1
  %10 = load i32*, i32** %9, align 8
  store i32* %10, i32** %7, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = call i8** @g_strsplit(i8* %11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 0)
  store i8** %12, i8*** %5, align 8
  %13 = load i8**, i8*** %5, align 8
  %14 = icmp ne i8** %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  br label %28

16:                                               ; preds = %2
  %17 = load i8**, i8*** %5, align 8
  %18 = call i32 @g_strv_length(i8** %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32*, i32** %7, align 8
  %20 = load i8**, i8*** %5, align 8
  %21 = load i32, i32* %6, align 4
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @delete_recursive(i32* %19, i8** %20, i32 %21, i32 0, i32 %24)
  %26 = load i8**, i8*** %5, align 8
  %27 = call i32 @g_strfreev(i8** %26)
  br label %28

28:                                               ; preds = %16, %15
  ret void
}

declare dso_local i8** @g_strsplit(i8*, i8*, i32) #1

declare dso_local i32 @g_strv_length(i8**) #1

declare dso_local i32 @delete_recursive(i32*, i8**, i32, i32, i32) #1

declare dso_local i32 @g_strfreev(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
