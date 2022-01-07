; ModuleID = '/home/carl/AnghaBench/systemd/src/basic/extr_hashmap.c_set_remove_and_put.c'
source_filename = "/home/carl/AnghaBench/systemd/src/basic/extr_hashmap.c_set_remove_and_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.swap_entries = type { i32 }
%struct.hashmap_base_entry = type { i8* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.hashmap_base_entry }

@ENOENT = common dso_local global i32 0, align 4
@IDX_NIL = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@IDX_PUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @set_remove_and_put(i32* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.swap_entries, align 4
  %9 = alloca %struct.hashmap_base_entry*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %13 = load i32*, i32** %5, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @ENOENT, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %62

18:                                               ; preds = %3
  %19 = load i32*, i32** %5, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = call i32 @bucket_hash(i32* %19, i8* %20)
  store i32 %21, i32* %10, align 4
  %22 = load i32*, i32** %5, align 8
  %23 = load i32, i32* %10, align 4
  %24 = load i8*, i8** %6, align 8
  %25 = call i32 @bucket_scan(i32* %22, i32 %23, i8* %24)
  store i32 %25, i32* %12, align 4
  %26 = load i32, i32* %12, align 4
  %27 = load i32, i32* @IDX_NIL, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %18
  %30 = load i32, i32* @ENOENT, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %62

32:                                               ; preds = %18
  %33 = load i32*, i32** %5, align 8
  %34 = load i8*, i8** %7, align 8
  %35 = call i32 @bucket_hash(i32* %33, i8* %34)
  store i32 %35, i32* %11, align 4
  %36 = load i32*, i32** %5, align 8
  %37 = load i32, i32* %11, align 4
  %38 = load i8*, i8** %7, align 8
  %39 = call i32 @bucket_scan(i32* %36, i32 %37, i8* %38)
  %40 = load i32, i32* @IDX_NIL, align 4
  %41 = icmp ne i32 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %32
  %43 = load i32, i32* @EEXIST, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %4, align 4
  br label %62

45:                                               ; preds = %32
  %46 = load i32*, i32** %5, align 8
  %47 = load i32, i32* %12, align 4
  %48 = call i32 @remove_entry(i32* %46, i32 %47)
  %49 = load i32, i32* @IDX_PUT, align 4
  %50 = call %struct.TYPE_4__* @bucket_at_swap(%struct.swap_entries* %8, i32 %49)
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  store %struct.hashmap_base_entry* %52, %struct.hashmap_base_entry** %9, align 8
  %53 = load i8*, i8** %7, align 8
  %54 = load %struct.hashmap_base_entry*, %struct.hashmap_base_entry** %9, align 8
  %55 = getelementptr inbounds %struct.hashmap_base_entry, %struct.hashmap_base_entry* %54, i32 0, i32 0
  store i8* %53, i8** %55, align 8
  %56 = load i32*, i32** %5, align 8
  %57 = load i32, i32* %11, align 4
  %58 = call i32 @hashmap_put_boldly(i32* %56, i32 %57, %struct.swap_entries* %8, i32 0)
  %59 = icmp eq i32 %58, 1
  %60 = zext i1 %59 to i32
  %61 = call i32 @assert_se(i32 %60)
  store i32 0, i32* %4, align 4
  br label %62

62:                                               ; preds = %45, %42, %29, %15
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local i32 @bucket_hash(i32*, i8*) #1

declare dso_local i32 @bucket_scan(i32*, i32, i8*) #1

declare dso_local i32 @remove_entry(i32*, i32) #1

declare dso_local %struct.TYPE_4__* @bucket_at_swap(%struct.swap_entries*, i32) #1

declare dso_local i32 @assert_se(i32) #1

declare dso_local i32 @hashmap_put_boldly(i32*, i32, %struct.swap_entries*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
