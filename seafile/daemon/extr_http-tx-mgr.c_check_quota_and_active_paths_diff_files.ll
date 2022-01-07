; ModuleID = '/home/carl/AnghaBench/seafile/daemon/extr_http-tx-mgr.c_check_quota_and_active_paths_diff_files.c'
source_filename = "/home/carl/AnghaBench/seafile/daemon/extr_http-tx-mgr.c_check_quota_and_active_paths_diff_files.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32 }
%struct.TYPE_7__ = type { i32, i32 }

@S_IFREG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, %struct.TYPE_6__**, i8*)* @check_quota_and_active_paths_diff_files to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_quota_and_active_paths_diff_files(i32 %0, i8* %1, %struct.TYPE_6__** %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_6__**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca %struct.TYPE_6__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store %struct.TYPE_6__** %2, %struct.TYPE_6__*** %7, align 8
  store i8* %3, i8** %8, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = bitcast i8* %15 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %16, %struct.TYPE_7__** %9, align 8
  %17 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %17, i64 0
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  store %struct.TYPE_6__* %19, %struct.TYPE_6__** %10, align 8
  %20 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %20, i64 1
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  store %struct.TYPE_6__* %22, %struct.TYPE_6__** %11, align 8
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %24 = icmp ne %struct.TYPE_6__* %23, null
  br i1 %24, label %25, label %62

25:                                               ; preds = %4
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %27 = icmp ne %struct.TYPE_6__* %26, null
  br i1 %27, label %28, label %62

28:                                               ; preds = %25
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* %12, align 8
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %13, align 8
  %35 = load i64, i64* %12, align 8
  %36 = load i64, i64* %13, align 8
  %37 = sub nsw i64 %35, %36
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = sext i32 %40 to i64
  %42 = add nsw i64 %41, %37
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %39, align 4
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %46 = call i32 @dirent_same(%struct.TYPE_6__* %44, %struct.TYPE_6__* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %61, label %48

48:                                               ; preds = %28
  %49 = load i8*, i8** %6, align 8
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = call i8* @g_strconcat(i8* %49, i32 %52, i32* null)
  store i8* %53, i8** %14, align 8
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i8*, i8** %14, align 8
  %58 = load i64, i64* @S_IFREG, align 8
  %59 = inttoptr i64 %58 to i8*
  %60 = call i32 @g_hash_table_replace(i32 %56, i8* %57, i8* %59)
  br label %61

61:                                               ; preds = %48, %28
  br label %108

62:                                               ; preds = %25, %4
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %64 = icmp ne %struct.TYPE_6__* %63, null
  br i1 %64, label %65, label %90

65:                                               ; preds = %62
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %67 = icmp ne %struct.TYPE_6__* %66, null
  br i1 %67, label %90, label %68

68:                                               ; preds = %65
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = sext i32 %74 to i64
  %76 = add nsw i64 %75, %71
  %77 = trunc i64 %76 to i32
  store i32 %77, i32* %73, align 4
  %78 = load i8*, i8** %6, align 8
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = call i8* @g_strconcat(i8* %78, i32 %81, i32* null)
  store i8* %82, i8** %14, align 8
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load i8*, i8** %14, align 8
  %87 = load i64, i64* @S_IFREG, align 8
  %88 = inttoptr i64 %87 to i8*
  %89 = call i32 @g_hash_table_replace(i32 %85, i8* %86, i8* %88)
  br label %107

90:                                               ; preds = %65, %62
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %92 = icmp ne %struct.TYPE_6__* %91, null
  br i1 %92, label %106, label %93

93:                                               ; preds = %90
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %95 = icmp ne %struct.TYPE_6__* %94, null
  br i1 %95, label %96, label %106

96:                                               ; preds = %93
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = sext i32 %102 to i64
  %104 = sub nsw i64 %103, %99
  %105 = trunc i64 %104 to i32
  store i32 %105, i32* %101, align 4
  br label %106

106:                                              ; preds = %96, %93, %90
  br label %107

107:                                              ; preds = %106, %68
  br label %108

108:                                              ; preds = %107, %61
  ret i32 0
}

declare dso_local i32 @dirent_same(%struct.TYPE_6__*, %struct.TYPE_6__*) #1

declare dso_local i8* @g_strconcat(i8*, i32, i32*) #1

declare dso_local i32 @g_hash_table_replace(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
