; ModuleID = '/home/carl/AnghaBench/zfs/lib/libuutil/extr_uu_list.c_list_insert.c'
source_filename = "/home/carl/AnghaBench/zfs/lib/libuutil/extr_uu_list.c_list_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i32, i64 }
%struct.TYPE_11__ = type { %struct.TYPE_11__*, %struct.TYPE_11__* }

@.str = private unnamed_addr constant [53 x i8] c"insert(%p): internal error: %p and %p not neighbors\0A\00", align 1
@.str.1 = private unnamed_addr constant [77 x i8] c"insert(%p): elem %p node %p corrupt, not initialized, or already in a list.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*, %struct.TYPE_11__*, %struct.TYPE_11__*, %struct.TYPE_11__*)* @list_insert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @list_insert(%struct.TYPE_10__* %0, %struct.TYPE_11__* %1, %struct.TYPE_11__* %2, %struct.TYPE_11__* %3) #0 {
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %6, align 8
  store %struct.TYPE_11__* %2, %struct.TYPE_11__** %7, align 8
  store %struct.TYPE_11__* %3, %struct.TYPE_11__** %8, align 8
  %9 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 3
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %63

13:                                               ; preds = %4
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %18 = icmp ne %struct.TYPE_11__* %16, %17
  br i1 %18, label %25, label %19

19:                                               ; preds = %13
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %21, align 8
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %24 = icmp ne %struct.TYPE_11__* %22, %23
  br i1 %24, label %25, label %33

25:                                               ; preds = %19, %13
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %27 = bitcast %struct.TYPE_10__* %26 to i8*
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %29 = bitcast %struct.TYPE_11__* %28 to i8*
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %31 = bitcast %struct.TYPE_11__* %30 to i8*
  %32 = call i32 @uu_panic(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i8* %27, i8* %29, i8* %31)
  br label %33

33:                                               ; preds = %25, %19
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %35, align 8
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = call %struct.TYPE_11__* @POOL_TO_MARKER(i32 %39)
  %41 = icmp ne %struct.TYPE_11__* %36, %40
  br i1 %41, label %47, label %42

42:                                               ; preds = %33
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 1
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %44, align 8
  %46 = icmp ne %struct.TYPE_11__* %45, null
  br i1 %46, label %47, label %56

47:                                               ; preds = %42, %33
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %49 = bitcast %struct.TYPE_10__* %48 to i8*
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %52 = call i8* @NODE_TO_ELEM(%struct.TYPE_10__* %50, %struct.TYPE_11__* %51)
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %54 = bitcast %struct.TYPE_11__* %53 to i8*
  %55 = call i32 @uu_panic(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.1, i64 0, i64 0), i8* %49, i8* %52, i8* %54)
  br label %56

56:                                               ; preds = %47, %42
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @INDEX_NEXT(i32 %59)
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 4
  br label %63

63:                                               ; preds = %56, %4
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 0
  store %struct.TYPE_11__* %64, %struct.TYPE_11__** %66, align 8
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 1
  store %struct.TYPE_11__* %67, %struct.TYPE_11__** %69, align 8
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 1
  store %struct.TYPE_11__* %70, %struct.TYPE_11__** %72, align 8
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 0
  store %struct.TYPE_11__* %73, %struct.TYPE_11__** %75, align 8
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %77, align 8
  ret void
}

declare dso_local i32 @uu_panic(i8*, i8*, i8*, i8*) #1

declare dso_local %struct.TYPE_11__* @POOL_TO_MARKER(i32) #1

declare dso_local i8* @NODE_TO_ELEM(%struct.TYPE_10__*, %struct.TYPE_11__*) #1

declare dso_local i32 @INDEX_NEXT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
