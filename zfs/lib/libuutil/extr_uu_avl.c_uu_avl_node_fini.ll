; ModuleID = '/home/carl/AnghaBench/zfs/lib/libuutil/extr_uu_avl.c_uu_avl_node_fini.c'
source_filename = "/home/carl/AnghaBench/zfs/lib/libuutil/extr_uu_avl.c_uu_avl_node_fini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64 }

@DEAD_MARKER = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [58 x i8] c"uu_avl_node_fini(%p, %p, %p (\22%s\22)): node already finied\0A\00", align 1
@.str.1 = private unnamed_addr constant [82 x i8] c"uu_avl_node_fini(%p, %p, %p (\22%s\22)): node corrupt, in tree, or in different pool\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @uu_avl_node_fini(i8* %0, i32* %1, %struct.TYPE_4__* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i64*, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.TYPE_4__* %2, %struct.TYPE_4__** %6, align 8
  %8 = load i32*, i32** %5, align 8
  %9 = bitcast i32* %8 to i64*
  store i64* %9, i64** %7, align 8
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %59

14:                                               ; preds = %3
  %15 = load i64*, i64** %7, align 8
  %16 = getelementptr inbounds i64, i64* %15, i64 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @DEAD_MARKER, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %36

20:                                               ; preds = %14
  %21 = load i64*, i64** %7, align 8
  %22 = getelementptr inbounds i64, i64* %21, i64 1
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @DEAD_MARKER, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %36

26:                                               ; preds = %20
  %27 = load i8*, i8** %4, align 8
  %28 = load i32*, i32** %5, align 8
  %29 = bitcast i32* %28 to i8*
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %31 = bitcast %struct.TYPE_4__* %30 to i8*
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @uu_panic(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i8* %27, i8* %29, i8* %31, i32 %34)
  br label %36

36:                                               ; preds = %26, %20, %14
  %37 = load i64*, i64** %7, align 8
  %38 = getelementptr inbounds i64, i64* %37, i64 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %41 = call i64 @POOL_TO_MARKER(%struct.TYPE_4__* %40)
  %42 = icmp ne i64 %39, %41
  br i1 %42, label %48, label %43

43:                                               ; preds = %36
  %44 = load i64*, i64** %7, align 8
  %45 = getelementptr inbounds i64, i64* %44, i64 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %58

48:                                               ; preds = %43, %36
  %49 = load i8*, i8** %4, align 8
  %50 = load i32*, i32** %5, align 8
  %51 = bitcast i32* %50 to i8*
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %53 = bitcast %struct.TYPE_4__* %52 to i8*
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @uu_panic(i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.1, i64 0, i64 0), i8* %49, i8* %51, i8* %53, i32 %56)
  br label %58

58:                                               ; preds = %48, %43
  br label %59

59:                                               ; preds = %58, %3
  %60 = load i64, i64* @DEAD_MARKER, align 8
  %61 = load i64*, i64** %7, align 8
  %62 = getelementptr inbounds i64, i64* %61, i64 0
  store i64 %60, i64* %62, align 8
  %63 = load i64, i64* @DEAD_MARKER, align 8
  %64 = load i64*, i64** %7, align 8
  %65 = getelementptr inbounds i64, i64* %64, i64 1
  store i64 %63, i64* %65, align 8
  %66 = load i64, i64* @DEAD_MARKER, align 8
  %67 = load i64*, i64** %7, align 8
  %68 = getelementptr inbounds i64, i64* %67, i64 2
  store i64 %66, i64* %68, align 8
  ret void
}

declare dso_local i32 @uu_panic(i8*, i8*, i8*, i8*, i32) #1

declare dso_local i64 @POOL_TO_MARKER(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
