; ModuleID = '/home/carl/AnghaBench/systemd/src/basic/extr_hashmap.c_hashmap_remove_and_replace.c'
source_filename = "/home/carl/AnghaBench/systemd/src/basic/extr_hashmap.c_hashmap_remove_and_replace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.swap_entries = type { i32 }
%struct.plain_hashmap_entry = type { i8*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8* }
%struct.TYPE_6__ = type { i8* }
%struct.TYPE_5__ = type { %struct.plain_hashmap_entry }

@ENOENT = common dso_local global i32 0, align 4
@IDX_NIL = common dso_local global i32 0, align 4
@IDX_PUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hashmap_remove_and_replace(i32* %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.swap_entries, align 4
  %11 = alloca %struct.plain_hashmap_entry*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %4
  %19 = load i32, i32* @ENOENT, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %5, align 4
  br label %105

21:                                               ; preds = %4
  %22 = load i32*, i32** %6, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = call i32 @bucket_hash(i32* %22, i8* %23)
  store i32 %24, i32* %12, align 4
  %25 = load i32*, i32** %6, align 8
  %26 = load i32, i32* %12, align 4
  %27 = load i8*, i8** %7, align 8
  %28 = call i32 @bucket_scan(i32* %25, i32 %26, i8* %27)
  store i32 %28, i32* %14, align 4
  %29 = load i32, i32* %14, align 4
  %30 = load i32, i32* @IDX_NIL, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %21
  %33 = load i32, i32* @ENOENT, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %5, align 4
  br label %105

35:                                               ; preds = %21
  %36 = load i32*, i32** %6, align 8
  %37 = call i32 @HASHMAP_BASE(i32* %36)
  %38 = load i32, i32* %14, align 4
  %39 = call %struct.TYPE_6__* @bucket_at(i32 %37, i32 %38)
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  store i8* %41, i8** %7, align 8
  %42 = load i32*, i32** %6, align 8
  %43 = load i8*, i8** %8, align 8
  %44 = call i32 @bucket_hash(i32* %42, i8* %43)
  store i32 %44, i32* %13, align 4
  %45 = load i32*, i32** %6, align 8
  %46 = load i32, i32* %13, align 4
  %47 = load i8*, i8** %8, align 8
  %48 = call i32 @bucket_scan(i32* %45, i32 %46, i8* %47)
  store i32 %48, i32* %15, align 4
  %49 = load i32, i32* %15, align 4
  %50 = load i32, i32* @IDX_NIL, align 4
  %51 = icmp ne i32 %49, %50
  br i1 %51, label %52, label %85

52:                                               ; preds = %35
  %53 = load i32, i32* %14, align 4
  %54 = load i32, i32* %15, align 4
  %55 = icmp ne i32 %53, %54
  br i1 %55, label %56, label %84

56:                                               ; preds = %52
  %57 = load i32*, i32** %6, align 8
  %58 = load i32, i32* %15, align 4
  %59 = call i32 @remove_entry(i32* %57, i32 %58)
  %60 = load i8*, i8** %7, align 8
  %61 = load i32*, i32** %6, align 8
  %62 = call i32 @HASHMAP_BASE(i32* %61)
  %63 = load i32, i32* %14, align 4
  %64 = call %struct.TYPE_6__* @bucket_at(i32 %62, i32 %63)
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = load i8*, i8** %65, align 8
  %67 = icmp ne i8* %60, %66
  br i1 %67, label %68, label %73

68:                                               ; preds = %56
  %69 = load i32*, i32** %6, align 8
  %70 = call i32 @HASHMAP_BASE(i32* %69)
  %71 = load i32, i32* %14, align 4
  %72 = call i32 @prev_idx(i32 %70, i32 %71)
  store i32 %72, i32* %14, align 4
  br label %73

73:                                               ; preds = %68, %56
  %74 = load i8*, i8** %7, align 8
  %75 = load i32*, i32** %6, align 8
  %76 = call i32 @HASHMAP_BASE(i32* %75)
  %77 = load i32, i32* %14, align 4
  %78 = call %struct.TYPE_6__* @bucket_at(i32 %76, i32 %77)
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = load i8*, i8** %79, align 8
  %81 = icmp eq i8* %74, %80
  %82 = zext i1 %81 to i32
  %83 = call i32 @assert(i32 %82)
  br label %84

84:                                               ; preds = %73, %52
  br label %85

85:                                               ; preds = %84, %35
  %86 = load i32*, i32** %6, align 8
  %87 = load i32, i32* %14, align 4
  %88 = call i32 @remove_entry(i32* %86, i32 %87)
  %89 = load i32, i32* @IDX_PUT, align 4
  %90 = call %struct.TYPE_5__* @bucket_at_swap(%struct.swap_entries* %10, i32 %89)
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 0
  store %struct.plain_hashmap_entry* %91, %struct.plain_hashmap_entry** %11, align 8
  %92 = load i8*, i8** %8, align 8
  %93 = load %struct.plain_hashmap_entry*, %struct.plain_hashmap_entry** %11, align 8
  %94 = getelementptr inbounds %struct.plain_hashmap_entry, %struct.plain_hashmap_entry* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  store i8* %92, i8** %95, align 8
  %96 = load i8*, i8** %9, align 8
  %97 = load %struct.plain_hashmap_entry*, %struct.plain_hashmap_entry** %11, align 8
  %98 = getelementptr inbounds %struct.plain_hashmap_entry, %struct.plain_hashmap_entry* %97, i32 0, i32 0
  store i8* %96, i8** %98, align 8
  %99 = load i32*, i32** %6, align 8
  %100 = load i32, i32* %13, align 4
  %101 = call i32 @hashmap_put_boldly(i32* %99, i32 %100, %struct.swap_entries* %10, i32 0)
  %102 = icmp eq i32 %101, 1
  %103 = zext i1 %102 to i32
  %104 = call i32 @assert_se(i32 %103)
  store i32 0, i32* %5, align 4
  br label %105

105:                                              ; preds = %85, %32, %18
  %106 = load i32, i32* %5, align 4
  ret i32 %106
}

declare dso_local i32 @bucket_hash(i32*, i8*) #1

declare dso_local i32 @bucket_scan(i32*, i32, i8*) #1

declare dso_local %struct.TYPE_6__* @bucket_at(i32, i32) #1

declare dso_local i32 @HASHMAP_BASE(i32*) #1

declare dso_local i32 @remove_entry(i32*, i32) #1

declare dso_local i32 @prev_idx(i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.TYPE_5__* @bucket_at_swap(%struct.swap_entries*, i32) #1

declare dso_local i32 @assert_se(i32) #1

declare dso_local i32 @hashmap_put_boldly(i32*, i32, %struct.swap_entries*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
