; ModuleID = '/home/carl/AnghaBench/vlc/test/libvlc/extr_slaves.c_test_media_has_slaves_from_parent.c'
source_filename = "/home/carl/AnghaBench/vlc/test/libvlc/extr_slaves.c_test_media_has_slaves_from_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SLAVES_DIR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Parse media dir to get subitems\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"Main media mrl: '%s'\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"Fetch main media from subitems\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"Found main media\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*, i32*, i32)* @test_media_has_slaves_from_parent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_media_has_slaves_from_parent(i32* %0, i8* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %16 = load i32*, i32** %5, align 8
  %17 = load i32, i32* @SLAVES_DIR, align 4
  %18 = call i32* @libvlc_media_new_path(i32* %16, i32 %17)
  store i32* %18, i32** %9, align 8
  %19 = load i32*, i32** %9, align 8
  %20 = icmp ne i32* %19, null
  %21 = zext i1 %20 to i32
  %22 = call i32 @assert(i32 %21)
  %23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %24 = load i32*, i32** %9, align 8
  %25 = call i32 @media_parse_sync(i32* %24)
  %26 = load i32*, i32** %5, align 8
  %27 = load i8*, i8** %6, align 8
  %28 = call i8* @path_to_mrl(i32* %26, i8* %27)
  store i8* %28, i8** %10, align 8
  %29 = load i8*, i8** %10, align 8
  %30 = icmp ne i8* %29, null
  %31 = zext i1 %30 to i32
  %32 = call i32 @assert(i32 %31)
  %33 = load i8*, i8** %10, align 8
  %34 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8* %33)
  %35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %36 = load i32*, i32** %9, align 8
  %37 = call i32* @libvlc_media_subitems(i32* %36)
  store i32* %37, i32** %11, align 8
  %38 = load i32*, i32** %11, align 8
  %39 = icmp ne i32* %38, null
  %40 = zext i1 %39 to i32
  %41 = call i32 @assert(i32 %40)
  %42 = load i32*, i32** %11, align 8
  %43 = call i32 @libvlc_media_list_lock(i32* %42)
  %44 = load i32*, i32** %11, align 8
  %45 = call i32 @libvlc_media_list_count(i32* %44)
  store i32 %45, i32* %12, align 4
  %46 = load i32, i32* %12, align 4
  %47 = icmp sgt i32 %46, 0
  %48 = zext i1 %47 to i32
  %49 = call i32 @assert(i32 %48)
  store i32* null, i32** %13, align 8
  store i32 0, i32* %14, align 4
  br label %50

50:                                               ; preds = %81, %4
  %51 = load i32, i32* %14, align 4
  %52 = load i32, i32* %12, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %84

54:                                               ; preds = %50
  %55 = load i32*, i32** %11, align 8
  %56 = load i32, i32* %14, align 4
  %57 = call i32* @libvlc_media_list_item_at_index(i32* %55, i32 %56)
  store i32* %57, i32** %13, align 8
  %58 = load i32*, i32** %13, align 8
  %59 = icmp ne i32* %58, null
  %60 = zext i1 %59 to i32
  %61 = call i32 @assert(i32 %60)
  %62 = load i32*, i32** %13, align 8
  %63 = call i8* @libvlc_media_get_mrl(i32* %62)
  store i8* %63, i8** %15, align 8
  %64 = load i8*, i8** %15, align 8
  %65 = icmp ne i8* %64, null
  %66 = zext i1 %65 to i32
  %67 = call i32 @assert(i32 %66)
  %68 = load i8*, i8** %10, align 8
  %69 = load i8*, i8** %15, align 8
  %70 = call i64 @strcmp(i8* %68, i8* %69)
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %54
  %73 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %74 = load i8*, i8** %15, align 8
  %75 = call i32 @free(i8* %74)
  br label %84

76:                                               ; preds = %54
  %77 = load i8*, i8** %15, align 8
  %78 = call i32 @free(i8* %77)
  %79 = load i32*, i32** %13, align 8
  %80 = call i32 @libvlc_media_release(i32* %79)
  store i32* null, i32** %13, align 8
  br label %81

81:                                               ; preds = %76
  %82 = load i32, i32* %14, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %14, align 4
  br label %50

84:                                               ; preds = %72, %50
  %85 = load i8*, i8** %10, align 8
  %86 = call i32 @free(i8* %85)
  %87 = load i32*, i32** %11, align 8
  %88 = call i32 @libvlc_media_list_unlock(i32* %87)
  %89 = load i32*, i32** %11, align 8
  %90 = call i32 @libvlc_media_list_release(i32* %89)
  %91 = load i32*, i32** %13, align 8
  %92 = icmp ne i32* %91, null
  %93 = zext i1 %92 to i32
  %94 = call i32 @assert(i32 %93)
  %95 = load i32*, i32** %13, align 8
  %96 = load i32*, i32** %7, align 8
  %97 = load i32, i32* %8, align 4
  %98 = call i32 @test_expected_slaves(i32* %95, i32* %96, i32 %97)
  %99 = load i32*, i32** %13, align 8
  %100 = call i32 @libvlc_media_release(i32* %99)
  %101 = load i32*, i32** %9, align 8
  %102 = call i32 @libvlc_media_release(i32* %101)
  ret void
}

declare dso_local i32* @libvlc_media_new_path(i32*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @media_parse_sync(i32*) #1

declare dso_local i8* @path_to_mrl(i32*, i8*) #1

declare dso_local i32* @libvlc_media_subitems(i32*) #1

declare dso_local i32 @libvlc_media_list_lock(i32*) #1

declare dso_local i32 @libvlc_media_list_count(i32*) #1

declare dso_local i32* @libvlc_media_list_item_at_index(i32*, i32) #1

declare dso_local i8* @libvlc_media_get_mrl(i32*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @libvlc_media_release(i32*) #1

declare dso_local i32 @libvlc_media_list_unlock(i32*) #1

declare dso_local i32 @libvlc_media_list_release(i32*) #1

declare dso_local i32 @test_expected_slaves(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
