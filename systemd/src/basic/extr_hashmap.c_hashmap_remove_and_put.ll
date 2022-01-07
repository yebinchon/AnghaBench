; ModuleID = '/home/carl/AnghaBench/systemd/src/basic/extr_hashmap.c_hashmap_remove_and_put.c'
source_filename = "/home/carl/AnghaBench/systemd/src/basic/extr_hashmap.c_hashmap_remove_and_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.swap_entries = type { i32 }
%struct.plain_hashmap_entry = type { i8*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8* }
%struct.TYPE_4__ = type { %struct.plain_hashmap_entry }

@ENOENT = common dso_local global i32 0, align 4
@IDX_NIL = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@IDX_PUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hashmap_remove_and_put(i32* %0, i8* %1, i8* %2, i8* %3) #0 {
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
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %15 = load i32*, i32** %6, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %4
  %18 = load i32, i32* @ENOENT, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %5, align 4
  br label %67

20:                                               ; preds = %4
  %21 = load i32*, i32** %6, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = call i32 @bucket_hash(i32* %21, i8* %22)
  store i32 %23, i32* %12, align 4
  %24 = load i32*, i32** %6, align 8
  %25 = load i32, i32* %12, align 4
  %26 = load i8*, i8** %7, align 8
  %27 = call i32 @bucket_scan(i32* %24, i32 %25, i8* %26)
  store i32 %27, i32* %14, align 4
  %28 = load i32, i32* %14, align 4
  %29 = load i32, i32* @IDX_NIL, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %20
  %32 = load i32, i32* @ENOENT, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %5, align 4
  br label %67

34:                                               ; preds = %20
  %35 = load i32*, i32** %6, align 8
  %36 = load i8*, i8** %8, align 8
  %37 = call i32 @bucket_hash(i32* %35, i8* %36)
  store i32 %37, i32* %13, align 4
  %38 = load i32*, i32** %6, align 8
  %39 = load i32, i32* %13, align 4
  %40 = load i8*, i8** %8, align 8
  %41 = call i32 @bucket_scan(i32* %38, i32 %39, i8* %40)
  %42 = load i32, i32* @IDX_NIL, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %34
  %45 = load i32, i32* @EEXIST, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %5, align 4
  br label %67

47:                                               ; preds = %34
  %48 = load i32*, i32** %6, align 8
  %49 = load i32, i32* %14, align 4
  %50 = call i32 @remove_entry(i32* %48, i32 %49)
  %51 = load i32, i32* @IDX_PUT, align 4
  %52 = call %struct.TYPE_4__* @bucket_at_swap(%struct.swap_entries* %10, i32 %51)
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  store %struct.plain_hashmap_entry* %53, %struct.plain_hashmap_entry** %11, align 8
  %54 = load i8*, i8** %8, align 8
  %55 = load %struct.plain_hashmap_entry*, %struct.plain_hashmap_entry** %11, align 8
  %56 = getelementptr inbounds %struct.plain_hashmap_entry, %struct.plain_hashmap_entry* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  store i8* %54, i8** %57, align 8
  %58 = load i8*, i8** %9, align 8
  %59 = load %struct.plain_hashmap_entry*, %struct.plain_hashmap_entry** %11, align 8
  %60 = getelementptr inbounds %struct.plain_hashmap_entry, %struct.plain_hashmap_entry* %59, i32 0, i32 0
  store i8* %58, i8** %60, align 8
  %61 = load i32*, i32** %6, align 8
  %62 = load i32, i32* %13, align 4
  %63 = call i32 @hashmap_put_boldly(i32* %61, i32 %62, %struct.swap_entries* %10, i32 0)
  %64 = icmp eq i32 %63, 1
  %65 = zext i1 %64 to i32
  %66 = call i32 @assert_se(i32 %65)
  store i32 0, i32* %5, align 4
  br label %67

67:                                               ; preds = %47, %44, %31, %17
  %68 = load i32, i32* %5, align 4
  ret i32 %68
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
