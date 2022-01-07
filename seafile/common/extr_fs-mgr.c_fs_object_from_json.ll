; ModuleID = '/home/carl/AnghaBench/seafile/common/extr_fs-mgr.c_fs_object_from_json.c'
source_filename = "/home/carl/AnghaBench/seafile/common/extr_fs-mgr.c_fs_object_from_json.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"Failed to decompress fs object %s.\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"Failed to load fs json object: %s.\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@SEAF_METADATA_TYPE_FILE = common dso_local global i32 0, align 4
@SEAF_METADATA_TYPE_DIR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"Invalid fs type %d.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @fs_object_from_json(i8* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_3__, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load i32*, i32** %6, align 8
  %15 = load i32, i32* %7, align 4
  %16 = call i64 @seaf_decompress(i32* %14, i32 %15, i32** %8, i32* %9)
  %17 = icmp slt i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load i8*, i8** %5, align 8
  %20 = call i32 (i8*, ...) @seaf_warning(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i8* %19)
  store i32* null, i32** %4, align 8
  br label %64

21:                                               ; preds = %3
  %22 = load i32*, i32** %8, align 8
  %23 = bitcast i32* %22 to i8*
  %24 = load i32, i32* %9, align 4
  %25 = call i32* @json_loadb(i8* %23, i32 %24, i32 0, %struct.TYPE_3__* %11)
  store i32* %25, i32** %10, align 8
  %26 = load i32*, i32** %8, align 8
  %27 = call i32 @g_free(i32* %26)
  %28 = load i32*, i32** %10, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %34, label %30

30:                                               ; preds = %21
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 (i8*, ...) @seaf_warning(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %32)
  store i32* null, i32** %4, align 8
  br label %64

34:                                               ; preds = %21
  %35 = load i32*, i32** %10, align 8
  %36 = call i32 @json_object_get_int_member(i32* %35, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  store i32 %36, i32* %12, align 4
  %37 = load i32, i32* %12, align 4
  %38 = load i32, i32* @SEAF_METADATA_TYPE_FILE, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %34
  %41 = load i8*, i8** %5, align 8
  %42 = load i32*, i32** %10, align 8
  %43 = call i64 @seafile_from_json_object(i8* %41, i32* %42)
  %44 = inttoptr i64 %43 to i32*
  store i32* %44, i32** %13, align 8
  br label %60

45:                                               ; preds = %34
  %46 = load i32, i32* %12, align 4
  %47 = load i32, i32* @SEAF_METADATA_TYPE_DIR, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %54

49:                                               ; preds = %45
  %50 = load i8*, i8** %5, align 8
  %51 = load i32*, i32** %10, align 8
  %52 = call i64 @seaf_dir_from_json_object(i8* %50, i32* %51)
  %53 = inttoptr i64 %52 to i32*
  store i32* %53, i32** %13, align 8
  br label %59

54:                                               ; preds = %45
  %55 = load i32, i32* %12, align 4
  %56 = call i32 (i8*, ...) @seaf_warning(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %55)
  %57 = load i32*, i32** %10, align 8
  %58 = call i32 @json_decref(i32* %57)
  store i32* null, i32** %4, align 8
  br label %64

59:                                               ; preds = %49
  br label %60

60:                                               ; preds = %59, %40
  %61 = load i32*, i32** %10, align 8
  %62 = call i32 @json_decref(i32* %61)
  %63 = load i32*, i32** %13, align 8
  store i32* %63, i32** %4, align 8
  br label %64

64:                                               ; preds = %60, %54, %30, %18
  %65 = load i32*, i32** %4, align 8
  ret i32* %65
}

declare dso_local i64 @seaf_decompress(i32*, i32, i32**, i32*) #1

declare dso_local i32 @seaf_warning(i8*, ...) #1

declare dso_local i32* @json_loadb(i8*, i32, i32, %struct.TYPE_3__*) #1

declare dso_local i32 @g_free(i32*) #1

declare dso_local i32 @json_object_get_int_member(i32*, i8*) #1

declare dso_local i64 @seafile_from_json_object(i8*, i32*) #1

declare dso_local i64 @seaf_dir_from_json_object(i8*, i32*) #1

declare dso_local i32 @json_decref(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
