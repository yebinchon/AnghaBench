; ModuleID = '/home/carl/AnghaBench/zfs/lib/libuutil/extr_uu_list.c_uu_list_insert_before.c'
source_filename = "/home/carl/AnghaBench/zfs/lib/libuutil/extr_uu_list.c_uu_list_insert_before.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i64, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32* }

@.str = private unnamed_addr constant [66 x i8] c"uu_list_insert_before(%p, %p, %p): %p is not currently on a list\0A\00", align 1
@.str.1 = private unnamed_addr constant [56 x i8] c"uu_list_insert_before(%p, ...): list is UU_LIST_SORTED\0A\00", align 1
@UU_ERROR_NOT_SUPPORTED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uu_list_insert_before(%struct.TYPE_9__* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = call %struct.TYPE_10__* @ELEM_TO_NODE(%struct.TYPE_9__* %9, i8* %10)
  store %struct.TYPE_10__* %11, %struct.TYPE_10__** %8, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = icmp eq i8* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 2
  store %struct.TYPE_10__* %16, %struct.TYPE_10__** %8, align 8
  br label %17

17:                                               ; preds = %14, %3
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %35

22:                                               ; preds = %17
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %27, label %34

27:                                               ; preds = %22
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %29 = bitcast %struct.TYPE_9__* %28 to i8*
  %30 = load i8*, i8** %6, align 8
  %31 = load i8*, i8** %7, align 8
  %32 = load i8*, i8** %6, align 8
  %33 = call i32 (i8*, i8*, ...) @uu_panic(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0), i8* %29, i8* %30, i8* %31, i8* %32)
  br label %34

34:                                               ; preds = %27, %22
  br label %35

35:                                               ; preds = %34, %17
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %52

40:                                               ; preds = %35
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %40
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %47 = bitcast %struct.TYPE_9__* %46 to i8*
  %48 = call i32 (i8*, i8*, ...) @uu_panic(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0), i8* %47)
  br label %49

49:                                               ; preds = %45, %40
  %50 = load i32, i32* @UU_ERROR_NOT_SUPPORTED, align 4
  %51 = call i32 @uu_set_error(i32 %50)
  store i32 -1, i32* %4, align 4
  br label %62

52:                                               ; preds = %35
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %55 = load i8*, i8** %7, align 8
  %56 = call %struct.TYPE_10__* @ELEM_TO_NODE(%struct.TYPE_9__* %54, i8* %55)
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %61 = call i32 @list_insert(%struct.TYPE_9__* %53, %struct.TYPE_10__* %56, i32* %59, %struct.TYPE_10__* %60)
  store i32 0, i32* %4, align 4
  br label %62

62:                                               ; preds = %52, %49
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local %struct.TYPE_10__* @ELEM_TO_NODE(%struct.TYPE_9__*, i8*) #1

declare dso_local i32 @uu_panic(i8*, i8*, ...) #1

declare dso_local i32 @uu_set_error(i32) #1

declare dso_local i32 @list_insert(%struct.TYPE_9__*, %struct.TYPE_10__*, i32*, %struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
