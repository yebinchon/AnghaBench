; ModuleID = '/home/carl/AnghaBench/seafile/common/extr_fs-mgr.c_seafile_to_json.c'
source_filename = "/home/carl/AnghaBench/seafile/common/extr_fs-mgr.c_seafile_to_json.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32*, i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"type\00", align 1
@SEAF_METADATA_TYPE_FILE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"block_ids\00", align 1
@JSON_SORT_KEYS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_3__*, i32*)* @seafile_to_json to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @seafile_to_json(%struct.TYPE_3__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca [20 x i8], align 16
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32* %1, i32** %4, align 8
  %10 = call i32* (...) @json_object()
  store i32* %10, i32** %5, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = load i32, i32* @SEAF_METADATA_TYPE_FILE, align 4
  %13 = call i32 @json_object_set_int_member(i32* %11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = load i32*, i32** %5, align 8
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @json_object_set_int_member(i32* %14, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %17)
  %19 = load i32*, i32** %5, align 8
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @json_object_set_int_member(i32* %19, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %22)
  %24 = call i32* (...) @json_array()
  store i32* %24, i32** %6, align 8
  store i32 0, i32* %7, align 4
  br label %25

25:                                               ; preds = %42, %2
  %26 = load i32, i32* %7, align 4
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp slt i32 %26, %29
  br i1 %30, label %31, label %45

31:                                               ; preds = %25
  %32 = load i32*, i32** %6, align 8
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 2
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %7, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @json_string(i32 %39)
  %41 = call i32 @json_array_append_new(i32* %32, i32 %40)
  br label %42

42:                                               ; preds = %31
  %43 = load i32, i32* %7, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %7, align 4
  br label %25

45:                                               ; preds = %25
  %46 = load i32*, i32** %5, align 8
  %47 = load i32*, i32** %6, align 8
  %48 = call i32 @json_object_set_new(i32* %46, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32* %47)
  %49 = load i32*, i32** %5, align 8
  %50 = load i32, i32* @JSON_SORT_KEYS, align 4
  %51 = call i8* @json_dumps(i32* %49, i32 %50)
  store i8* %51, i8** %8, align 8
  %52 = load i8*, i8** %8, align 8
  %53 = call i32 @strlen(i8* %52)
  %54 = load i32*, i32** %4, align 8
  store i32 %53, i32* %54, align 4
  %55 = getelementptr inbounds [20 x i8], [20 x i8]* %9, i64 0, i64 0
  %56 = load i8*, i8** %8, align 8
  %57 = load i32*, i32** %4, align 8
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @calculate_sha1(i8* %55, i8* %56, i32 %58)
  %60 = getelementptr inbounds [20 x i8], [20 x i8]* %9, i64 0, i64 0
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @rawdata_to_hex(i8* %60, i32 %63, i32 20)
  %65 = load i32*, i32** %5, align 8
  %66 = call i32 @json_decref(i32* %65)
  %67 = load i8*, i8** %8, align 8
  %68 = bitcast i8* %67 to i32*
  ret i32* %68
}

declare dso_local i32* @json_object(...) #1

declare dso_local i32 @json_object_set_int_member(i32*, i8*, i32) #1

declare dso_local i32* @json_array(...) #1

declare dso_local i32 @json_array_append_new(i32*, i32) #1

declare dso_local i32 @json_string(i32) #1

declare dso_local i32 @json_object_set_new(i32*, i8*, i32*) #1

declare dso_local i8* @json_dumps(i32*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @calculate_sha1(i8*, i8*, i32) #1

declare dso_local i32 @rawdata_to_hex(i8*, i32, i32) #1

declare dso_local i32 @json_decref(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
