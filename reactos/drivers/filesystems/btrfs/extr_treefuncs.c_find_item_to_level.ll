; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/btrfs/extr_treefuncs.c_find_item_to_level.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/btrfs/extr_treefuncs.c_find_item_to_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_8__ = type { i32*, i64 }

@.str = private unnamed_addr constant [28 x i8] c"do_load_tree returned %08x\0A\00", align 1
@STATUS_NOT_FOUND = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"find_item_in_tree returned %08x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @find_item_to_level(i32* %0, %struct.TYPE_9__* %1, %struct.TYPE_8__* %2, i32* %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca %struct.TYPE_8__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  store i32* %0, i32** %9, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %10, align 8
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %11, align 8
  store i32* %3, i32** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %37, label %22

22:                                               ; preds = %7
  %23 = load i32*, i32** %9, align 8
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %27 = load i32, i32* %15, align 4
  %28 = call i64 @do_load_tree(i32* %23, %struct.TYPE_10__* %25, %struct.TYPE_9__* %26, i32* null, i32* null, i32 %27)
  store i64 %28, i64* %16, align 8
  %29 = load i64, i64* %16, align 8
  %30 = call i32 @NT_SUCCESS(i64 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %22
  %33 = load i64, i64* %16, align 8
  %34 = call i32 @ERR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i64 %33)
  %35 = load i64, i64* %16, align 8
  store i64 %35, i64* %8, align 8
  br label %74

36:                                               ; preds = %22
  br label %37

37:                                               ; preds = %36, %7
  %38 = load i32*, i32** %9, align 8
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %44 = load i32*, i32** %12, align 8
  %45 = load i32, i32* %13, align 4
  %46 = load i32, i32* %14, align 4
  %47 = load i32, i32* %15, align 4
  %48 = call i64 @find_item_in_tree(i32* %38, i64 %42, %struct.TYPE_8__* %43, i32* %44, i32 %45, i32 %46, i32 %47)
  store i64 %48, i64* %16, align 8
  %49 = load i64, i64* %16, align 8
  %50 = call i32 @NT_SUCCESS(i64 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %59, label %52

52:                                               ; preds = %37
  %53 = load i64, i64* %16, align 8
  %54 = load i64, i64* @STATUS_NOT_FOUND, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %52
  %57 = load i64, i64* %16, align 8
  %58 = call i32 @ERR(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i64 %57)
  br label %59

59:                                               ; preds = %56, %52, %37
  %60 = load i64, i64* %16, align 8
  %61 = load i64, i64* @STATUS_NOT_FOUND, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %72

63:                                               ; preds = %59
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 1
  store i64 %67, i64* %69, align 8
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 0
  store i32* null, i32** %71, align 8
  br label %72

72:                                               ; preds = %63, %59
  %73 = load i64, i64* %16, align 8
  store i64 %73, i64* %8, align 8
  br label %74

74:                                               ; preds = %72, %32
  %75 = load i64, i64* %8, align 8
  ret i64 %75
}

declare dso_local i64 @do_load_tree(i32*, %struct.TYPE_10__*, %struct.TYPE_9__*, i32*, i32*, i32) #1

declare dso_local i32 @NT_SUCCESS(i64) #1

declare dso_local i32 @ERR(i8*, i64) #1

declare dso_local i64 @find_item_in_tree(i32*, i64, %struct.TYPE_8__*, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
