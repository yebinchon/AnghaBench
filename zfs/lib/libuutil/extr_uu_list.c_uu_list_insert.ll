; ModuleID = '/home/carl/AnghaBench/zfs/lib/libuutil/extr_uu_list.c_uu_list_insert.c'
source_filename = "/home/carl/AnghaBench/zfs/lib/libuutil/extr_uu_list.c_uu_list_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32* }

@.str = private unnamed_addr constant [32 x i8] c"uu_list_insert(%p, %p, %p): %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"outdated index\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"invalid index\00", align 1
@.str.3 = private unnamed_addr constant [47 x i8] c"uu_list_insert(%p, %p, %p): out-of-date index\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @uu_list_insert(%struct.TYPE_9__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load i64, i64* %6, align 8
  %9 = call %struct.TYPE_10__* @INDEX_TO_NODE(i64 %8)
  store %struct.TYPE_10__* %9, %struct.TYPE_10__** %7, align 8
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %11 = icmp eq %struct.TYPE_10__* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %3
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 1
  store %struct.TYPE_10__* %14, %struct.TYPE_10__** %7, align 8
  br label %15

15:                                               ; preds = %12, %3
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %50

20:                                               ; preds = %15
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %22 = load i64, i64* %6, align 8
  %23 = call i32 @INDEX_VALID(%struct.TYPE_9__* %21, i64 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %37, label %25

25:                                               ; preds = %20
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %27 = bitcast %struct.TYPE_9__* %26 to i8*
  %28 = load i8*, i8** %5, align 8
  %29 = load i64, i64* %6, align 8
  %30 = inttoptr i64 %29 to i8*
  %31 = load i64, i64* %6, align 8
  %32 = call i64 @INDEX_CHECK(i64 %31)
  %33 = icmp ne i64 %32, 0
  %34 = zext i1 %33 to i64
  %35 = select i1 %33, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0)
  %36 = call i32 (i8*, i8*, i8*, i8*, ...) @uu_panic(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i8* %27, i8* %28, i8* %30, i8* %35)
  br label %37

37:                                               ; preds = %25, %20
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = icmp eq i32* %40, null
  br i1 %41, label %42, label %49

42:                                               ; preds = %37
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %44 = bitcast %struct.TYPE_9__* %43 to i8*
  %45 = load i8*, i8** %5, align 8
  %46 = load i64, i64* %6, align 8
  %47 = inttoptr i64 %46 to i8*
  %48 = call i32 (i8*, i8*, i8*, i8*, ...) @uu_panic(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), i8* %44, i8* %45, i8* %47)
  br label %49

49:                                               ; preds = %42, %37
  br label %50

50:                                               ; preds = %49, %15
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %53 = load i8*, i8** %5, align 8
  %54 = call i32 @ELEM_TO_NODE(%struct.TYPE_9__* %52, i8* %53)
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %59 = call i32 @list_insert(%struct.TYPE_9__* %51, i32 %54, i32* %57, %struct.TYPE_10__* %58)
  ret void
}

declare dso_local %struct.TYPE_10__* @INDEX_TO_NODE(i64) #1

declare dso_local i32 @INDEX_VALID(%struct.TYPE_9__*, i64) #1

declare dso_local i32 @uu_panic(i8*, i8*, i8*, i8*, ...) #1

declare dso_local i64 @INDEX_CHECK(i64) #1

declare dso_local i32 @list_insert(%struct.TYPE_9__*, i32, i32*, %struct.TYPE_10__*) #1

declare dso_local i32 @ELEM_TO_NODE(%struct.TYPE_9__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
