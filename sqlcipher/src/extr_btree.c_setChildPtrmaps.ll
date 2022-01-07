; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_btree.c_setChildPtrmaps.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_btree.c_setChildPtrmaps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32*, i32, i64, %struct.TYPE_10__*, i32 }
%struct.TYPE_10__ = type { i32 }

@SQLITE_OK = common dso_local global i32 0, align 4
@PTRMAP_BTREE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*)* @setChildPtrmaps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setChildPtrmaps(%struct.TYPE_9__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 5
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  store %struct.TYPE_10__* %14, %struct.TYPE_10__** %7, align 8
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 6
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %8, align 4
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 5
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @sqlite3_mutex_held(i32 %22)
  %24 = call i32 @assert(i32 %23)
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 4
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %1
  %30 = load i32, i32* @SQLITE_OK, align 4
  br label %34

31:                                               ; preds = %1
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %33 = call i32 @btreeInitPage(%struct.TYPE_9__* %32)
  br label %34

34:                                               ; preds = %31, %29
  %35 = phi i32 [ %30, %29 ], [ %33, %31 ]
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @SQLITE_OK, align 4
  %38 = icmp ne i32 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = load i32, i32* %6, align 4
  store i32 %40, i32* %2, align 4
  br label %96

41:                                               ; preds = %34
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  store i32 %44, i32* %5, align 4
  store i32 0, i32* %4, align 4
  br label %45

45:                                               ; preds = %70, %41
  %46 = load i32, i32* %4, align 4
  %47 = load i32, i32* %5, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %73

49:                                               ; preds = %45
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %51 = load i32, i32* %4, align 4
  %52 = call i32* @findCell(%struct.TYPE_9__* %50, i32 %51)
  store i32* %52, i32** %9, align 8
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %55 = load i32*, i32** %9, align 8
  %56 = call i32 @ptrmapPutOvflPtr(%struct.TYPE_9__* %53, %struct.TYPE_9__* %54, i32* %55, i32* %6)
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 8
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %69, label %61

61:                                               ; preds = %49
  %62 = load i32*, i32** %9, align 8
  %63 = call i32 @get4byte(i32* %62)
  store i32 %63, i32* %10, align 4
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %65 = load i32, i32* %10, align 4
  %66 = load i32, i32* @PTRMAP_BTREE, align 4
  %67 = load i32, i32* %8, align 4
  %68 = call i32 @ptrmapPut(%struct.TYPE_10__* %64, i32 %65, i32 %66, i32 %67, i32* %6)
  br label %69

69:                                               ; preds = %61, %49
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %4, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %4, align 4
  br label %45

73:                                               ; preds = %45
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 8
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %94, label %78

78:                                               ; preds = %73
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 2
  %81 = load i32*, i32** %80, align 8
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = add nsw i32 %84, 8
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %81, i64 %86
  %88 = call i32 @get4byte(i32* %87)
  store i32 %88, i32* %11, align 4
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %90 = load i32, i32* %11, align 4
  %91 = load i32, i32* @PTRMAP_BTREE, align 4
  %92 = load i32, i32* %8, align 4
  %93 = call i32 @ptrmapPut(%struct.TYPE_10__* %89, i32 %90, i32 %91, i32 %92, i32* %6)
  br label %94

94:                                               ; preds = %78, %73
  %95 = load i32, i32* %6, align 4
  store i32 %95, i32* %2, align 4
  br label %96

96:                                               ; preds = %94, %39
  %97 = load i32, i32* %2, align 4
  ret i32 %97
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlite3_mutex_held(i32) #1

declare dso_local i32 @btreeInitPage(%struct.TYPE_9__*) #1

declare dso_local i32* @findCell(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @ptrmapPutOvflPtr(%struct.TYPE_9__*, %struct.TYPE_9__*, i32*, i32*) #1

declare dso_local i32 @get4byte(i32*) #1

declare dso_local i32 @ptrmapPut(%struct.TYPE_10__*, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
