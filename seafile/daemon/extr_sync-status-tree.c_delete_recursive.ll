; ModuleID = '/home/carl/AnghaBench/seafile/daemon/extr_sync-status-tree.c_delete_recursive.c'
source_filename = "/home/carl/AnghaBench/seafile/daemon/extr_sync-status-tree.c_delete_recursive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_8__*, i32 }

@.str = private unnamed_addr constant [2 x i8] c"/\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*, i8**, i64, i64, i8*)* @delete_recursive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @delete_recursive(%struct.TYPE_8__* %0, i8** %1, i64 %2, i64 %3, i8* %4) #0 {
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_7__*, align 8
  %13 = alloca i8*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %6, align 8
  store i8** %1, i8*** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i8* %4, i8** %10, align 8
  store i8* null, i8** %13, align 8
  %14 = load i8**, i8*** %7, align 8
  %15 = load i64, i64* %9, align 8
  %16 = getelementptr inbounds i8*, i8** %14, i64 %15
  %17 = load i8*, i8** %16, align 8
  store i8* %17, i8** %11, align 8
  %18 = load i8*, i8** %10, align 8
  %19 = load i8*, i8** %11, align 8
  %20 = call i8* @g_strconcat(i8* %18, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8* %19, i32* null)
  store i8* %20, i8** %13, align 8
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i8*, i8** %11, align 8
  %25 = call %struct.TYPE_7__* @g_hash_table_lookup(i32 %23, i8* %24)
  store %struct.TYPE_7__* %25, %struct.TYPE_7__** %12, align 8
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %27 = icmp ne %struct.TYPE_7__* %26, null
  br i1 %27, label %28, label %80

28:                                               ; preds = %5
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = call i64 @S_ISDIR(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %68

34:                                               ; preds = %28
  %35 = load i64, i64* %9, align 8
  %36 = load i64, i64* %8, align 8
  %37 = sub i64 %36, 1
  %38 = icmp eq i64 %35, %37
  br i1 %38, label %39, label %49

39:                                               ; preds = %34
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %41 = call i64 @is_empty_dir(%struct.TYPE_7__* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %39
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %45 = load i8*, i8** %11, align 8
  %46 = load i8*, i8** %13, align 8
  %47 = call i32 @remove_item(%struct.TYPE_8__* %44, i8* %45, i8* %46)
  br label %48

48:                                               ; preds = %43, %39
  br label %67

49:                                               ; preds = %34
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %51, align 8
  %53 = load i8**, i8*** %7, align 8
  %54 = load i64, i64* %8, align 8
  %55 = load i64, i64* %9, align 8
  %56 = add i64 %55, 1
  store i64 %56, i64* %9, align 8
  %57 = load i8*, i8** %13, align 8
  call void @delete_recursive(%struct.TYPE_8__* %52, i8** %53, i64 %54, i64 %56, i8* %57)
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %59 = call i64 @is_empty_dir(%struct.TYPE_7__* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %49
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %63 = load i8*, i8** %11, align 8
  %64 = load i8*, i8** %13, align 8
  %65 = call i32 @remove_item(%struct.TYPE_8__* %62, i8* %63, i8* %64)
  br label %66

66:                                               ; preds = %61, %49
  br label %67

67:                                               ; preds = %66, %48
  br label %79

68:                                               ; preds = %28
  %69 = load i64, i64* %9, align 8
  %70 = load i64, i64* %8, align 8
  %71 = sub i64 %70, 1
  %72 = icmp eq i64 %69, %71
  br i1 %72, label %73, label %78

73:                                               ; preds = %68
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %75 = load i8*, i8** %11, align 8
  %76 = load i8*, i8** %13, align 8
  %77 = call i32 @remove_item(%struct.TYPE_8__* %74, i8* %75, i8* %76)
  br label %78

78:                                               ; preds = %73, %68
  br label %79

79:                                               ; preds = %78, %67
  br label %80

80:                                               ; preds = %79, %5
  %81 = load i8*, i8** %13, align 8
  %82 = call i32 @g_free(i8* %81)
  ret void
}

declare dso_local i8* @g_strconcat(i8*, i8*, i8*, i32*) #1

declare dso_local %struct.TYPE_7__* @g_hash_table_lookup(i32, i8*) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i64 @is_empty_dir(%struct.TYPE_7__*) #1

declare dso_local i32 @remove_item(%struct.TYPE_8__*, i8*, i8*) #1

declare dso_local i32 @g_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
