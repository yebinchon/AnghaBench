; ModuleID = '/home/carl/AnghaBench/seafile/daemon/extr_clone-mgr.c_load_more_info_cb.c'
source_filename = "/home/carl/AnghaBench/seafile/daemon/extr_clone-mgr.c_load_more_info_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, i8*, i32 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [46 x i8] c"Failed to load more sync info from json: %s.\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"is_readonly\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"server_url\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"repo_salt\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*)* @load_more_info_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @load_more_info_cb(i32* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca %struct.TYPE_4__, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = bitcast i8* %13 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %14, %struct.TYPE_5__** %6, align 8
  store i32* null, i32** %8, align 8
  %15 = load i32*, i32** %4, align 8
  %16 = call i64 @sqlite3_column_text(i32* %15, i32 0)
  %17 = inttoptr i64 %16 to i8*
  store i8* %17, i8** %9, align 8
  %18 = load i8*, i8** %9, align 8
  %19 = call i32* @json_loads(i8* %18, i32 0, %struct.TYPE_4__* %7)
  store i32* %19, i32** %8, align 8
  %20 = load i32*, i32** %8, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %27, label %22

22:                                               ; preds = %2
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @seaf_warning(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load i32, i32* @FALSE, align 4
  store i32 %26, i32* %3, align 4
  br label %59

27:                                               ; preds = %2
  %28 = load i32*, i32** %8, align 8
  %29 = call i32* @json_object_get(i32* %28, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  store i32* %29, i32** %10, align 8
  %30 = load i32*, i32** %10, align 8
  %31 = call i32 @json_integer_value(i32* %30)
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 2
  store i32 %31, i32* %33, align 8
  %34 = load i32*, i32** %8, align 8
  %35 = call i32* @json_object_get(i32* %34, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  store i32* %35, i32** %11, align 8
  %36 = load i32*, i32** %11, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %38, label %44

38:                                               ; preds = %27
  %39 = load i32*, i32** %11, align 8
  %40 = call i32 @json_string_value(i32* %39)
  %41 = call i8* @g_strdup(i32 %40)
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 1
  store i8* %41, i8** %43, align 8
  br label %44

44:                                               ; preds = %38, %27
  %45 = load i32*, i32** %8, align 8
  %46 = call i32* @json_object_get(i32* %45, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  store i32* %46, i32** %12, align 8
  %47 = load i32*, i32** %12, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %49, label %55

49:                                               ; preds = %44
  %50 = load i32*, i32** %12, align 8
  %51 = call i32 @json_string_value(i32* %50)
  %52 = call i8* @g_strdup(i32 %51)
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  store i8* %52, i8** %54, align 8
  br label %55

55:                                               ; preds = %49, %44
  %56 = load i32*, i32** %8, align 8
  %57 = call i32 @json_decref(i32* %56)
  %58 = load i32, i32* @FALSE, align 4
  store i32 %58, i32* %3, align 4
  br label %59

59:                                               ; preds = %55, %22
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i64 @sqlite3_column_text(i32*, i32) #1

declare dso_local i32* @json_loads(i8*, i32, %struct.TYPE_4__*) #1

declare dso_local i32 @seaf_warning(i8*, i32) #1

declare dso_local i32* @json_object_get(i32*, i8*) #1

declare dso_local i32 @json_integer_value(i32*) #1

declare dso_local i8* @g_strdup(i32) #1

declare dso_local i32 @json_string_value(i32*) #1

declare dso_local i32 @json_decref(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
