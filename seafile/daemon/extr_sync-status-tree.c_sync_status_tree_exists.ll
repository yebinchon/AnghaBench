; ModuleID = '/home/carl/AnghaBench/seafile/daemon/extr_sync-status-tree.c_sync_status_tree_exists.c'
source_filename = "/home/carl/AnghaBench/seafile/daemon/extr_sync-status-tree.c_sync_status_tree_exists.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_8__*, i32 }

@.str = private unnamed_addr constant [2 x i8] c"/\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sync_status_tree_exists(%struct.TYPE_6__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_8__*, align 8
  %11 = alloca %struct.TYPE_7__*, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8** null, i8*** %6, align 8
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  store %struct.TYPE_8__* %15, %struct.TYPE_8__** %10, align 8
  store i32 0, i32* %12, align 4
  %16 = load i8*, i8** %5, align 8
  %17 = call i8** @g_strsplit(i8* %16, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 0)
  store i8** %17, i8*** %6, align 8
  %18 = load i8**, i8*** %6, align 8
  %19 = icmp ne i8** %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* %12, align 4
  store i32 %21, i32* %3, align 4
  br label %76

22:                                               ; preds = %2
  %23 = load i8**, i8*** %6, align 8
  %24 = call i64 @g_strv_length(i8** %23)
  store i64 %24, i64* %7, align 8
  store i64 0, i64* %8, align 8
  br label %25

25:                                               ; preds = %68, %22
  %26 = load i64, i64* %8, align 8
  %27 = load i64, i64* %7, align 8
  %28 = icmp ult i64 %26, %27
  br i1 %28, label %29, label %71

29:                                               ; preds = %25
  %30 = load i8**, i8*** %6, align 8
  %31 = load i64, i64* %8, align 8
  %32 = getelementptr inbounds i8*, i8** %30, i64 %31
  %33 = load i8*, i8** %32, align 8
  store i8* %33, i8** %9, align 8
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i8*, i8** %9, align 8
  %38 = call %struct.TYPE_7__* @g_hash_table_lookup(i32 %36, i8* %37)
  store %struct.TYPE_7__* %38, %struct.TYPE_7__** %11, align 8
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %40 = icmp ne %struct.TYPE_7__* %39, null
  br i1 %40, label %41, label %66

41:                                               ; preds = %29
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = call i64 @S_ISDIR(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %58

47:                                               ; preds = %41
  %48 = load i64, i64* %8, align 8
  %49 = load i64, i64* %7, align 8
  %50 = sub i64 %49, 1
  %51 = icmp eq i64 %48, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %47
  store i32 1, i32* %12, align 4
  br label %72

53:                                               ; preds = %47
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %55, align 8
  store %struct.TYPE_8__* %56, %struct.TYPE_8__** %10, align 8
  br label %57

57:                                               ; preds = %53
  br label %65

58:                                               ; preds = %41
  %59 = load i64, i64* %8, align 8
  %60 = load i64, i64* %7, align 8
  %61 = sub i64 %60, 1
  %62 = icmp eq i64 %59, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %58
  store i32 1, i32* %12, align 4
  br label %72

64:                                               ; preds = %58
  br label %72

65:                                               ; preds = %57
  br label %67

66:                                               ; preds = %29
  br label %72

67:                                               ; preds = %65
  br label %68

68:                                               ; preds = %67
  %69 = load i64, i64* %8, align 8
  %70 = add i64 %69, 1
  store i64 %70, i64* %8, align 8
  br label %25

71:                                               ; preds = %25
  br label %72

72:                                               ; preds = %71, %66, %64, %63, %52
  %73 = load i8**, i8*** %6, align 8
  %74 = call i32 @g_strfreev(i8** %73)
  %75 = load i32, i32* %12, align 4
  store i32 %75, i32* %3, align 4
  br label %76

76:                                               ; preds = %72, %20
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local i8** @g_strsplit(i8*, i8*, i32) #1

declare dso_local i64 @g_strv_length(i8**) #1

declare dso_local %struct.TYPE_7__* @g_hash_table_lookup(i32, i8*) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i32 @g_strfreev(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
