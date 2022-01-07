; ModuleID = '/home/carl/AnghaBench/seafile/common/extr_fs-mgr.c_parse_metadata_type_json.c'
source_filename = "/home/carl/AnghaBench/seafile/common/extr_fs-mgr.c_parse_metadata_type_json.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8* }

@.str = private unnamed_addr constant [36 x i8] c"Failed to decompress fs object %s.\0A\00", align 1
@SEAF_METADATA_TYPE_INVALID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Failed to load fs json object: %s.\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, i32)* @parse_metadata_type_json to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_metadata_type_json(i8* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_3__, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load i32*, i32** %6, align 8
  %14 = load i32, i32* %7, align 4
  %15 = call i64 @seaf_decompress(i32* %13, i32 %14, i32** %8, i32* %9)
  %16 = icmp slt i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %3
  %18 = load i8*, i8** %5, align 8
  %19 = call i32 @seaf_warning(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i8* %18)
  %20 = load i32, i32* @SEAF_METADATA_TYPE_INVALID, align 4
  store i32 %20, i32* %4, align 4
  br label %41

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
  br i1 %29, label %35, label %30

30:                                               ; preds = %21
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = call i32 @seaf_warning(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i8* %32)
  %34 = load i32, i32* @SEAF_METADATA_TYPE_INVALID, align 4
  store i32 %34, i32* %4, align 4
  br label %41

35:                                               ; preds = %21
  %36 = load i32*, i32** %10, align 8
  %37 = call i32 @json_object_get_int_member(i32* %36, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  store i32 %37, i32* %12, align 4
  %38 = load i32*, i32** %10, align 8
  %39 = call i32 @json_decref(i32* %38)
  %40 = load i32, i32* %12, align 4
  store i32 %40, i32* %4, align 4
  br label %41

41:                                               ; preds = %35, %30, %17
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local i64 @seaf_decompress(i32*, i32, i32**, i32*) #1

declare dso_local i32 @seaf_warning(i8*, i8*) #1

declare dso_local i32* @json_loadb(i8*, i32, i32, %struct.TYPE_3__*) #1

declare dso_local i32 @g_free(i32*) #1

declare dso_local i32 @json_object_get_int_member(i32*, i8*) #1

declare dso_local i32 @json_decref(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
