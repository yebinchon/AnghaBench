; ModuleID = '/home/carl/AnghaBench/toxcore/toxcore/extr_onion_client.c_set_path_timeouts.c'
source_filename = "/home/carl/AnghaBench/toxcore/toxcore/extr_onion_client.c_set_path_timeouts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, %struct.TYPE_8__, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_11__*, i64*, i32* }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_10__ = type { i32, i32 }

@NUMBER_ONION_PATHS = common dso_local global i64 0, align 8
@ONION_PATH_LENGTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_9__*, i64, i64)* @set_path_timeouts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @set_path_timeouts(%struct.TYPE_9__* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load i64, i64* %6, align 8
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp sgt i64 %12, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  store i64 -1, i64* %4, align 8
  br label %95

18:                                               ; preds = %3
  %19 = load i64, i64* %6, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 2
  store %struct.TYPE_8__* %23, %struct.TYPE_8__** %8, align 8
  br label %27

24:                                               ; preds = %18
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 1
  store %struct.TYPE_8__* %26, %struct.TYPE_8__** %8, align 8
  br label %27

27:                                               ; preds = %24, %21
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %29, align 8
  %31 = load i64, i64* %7, align 8
  %32 = load i64, i64* @NUMBER_ONION_PATHS, align 8
  %33 = srem i64 %31, %32
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* %7, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %94

39:                                               ; preds = %27
  %40 = call i32 (...) @unix_time()
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 2
  %43 = load i32*, i32** %42, align 8
  %44 = load i64, i64* %7, align 8
  %45 = load i64, i64* @NUMBER_ONION_PATHS, align 8
  %46 = srem i64 %44, %45
  %47 = getelementptr inbounds i32, i32* %43, i64 %46
  store i32 %40, i32* %47, align 4
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 1
  %50 = load i64*, i64** %49, align 8
  %51 = load i64, i64* %7, align 8
  %52 = load i64, i64* @NUMBER_ONION_PATHS, align 8
  %53 = srem i64 %51, %52
  %54 = getelementptr inbounds i64, i64* %50, i64 %53
  store i64 0, i64* %54, align 8
  %55 = load i32, i32* @ONION_PATH_LENGTH, align 4
  %56 = zext i32 %55 to i64
  %57 = call i8* @llvm.stacksave()
  store i8* %57, i8** %9, align 8
  %58 = alloca %struct.TYPE_10__, i64 %56, align 16
  store i64 %56, i64* %10, align 8
  %59 = load i32, i32* @ONION_PATH_LENGTH, align 4
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %61, align 8
  %63 = load i64, i64* %7, align 8
  %64 = load i64, i64* @NUMBER_ONION_PATHS, align 8
  %65 = srem i64 %63, %64
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i64 %65
  %67 = call i64 @onion_path_to_nodes(%struct.TYPE_10__* %58, i32 %59, %struct.TYPE_11__* %66)
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %69, label %91

69:                                               ; preds = %39
  store i32 0, i32* %11, align 4
  br label %70

70:                                               ; preds = %87, %69
  %71 = load i32, i32* %11, align 4
  %72 = load i32, i32* @ONION_PATH_LENGTH, align 4
  %73 = icmp ult i32 %71, %72
  br i1 %73, label %74, label %90

74:                                               ; preds = %70
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %76 = load i32, i32* %11, align 4
  %77 = zext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* %11, align 4
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @onion_add_path_node(%struct.TYPE_9__* %75, i32 %80, i32 %85)
  br label %87

87:                                               ; preds = %74
  %88 = load i32, i32* %11, align 4
  %89 = add i32 %88, 1
  store i32 %89, i32* %11, align 4
  br label %70

90:                                               ; preds = %70
  br label %91

91:                                               ; preds = %90, %39
  %92 = load i64, i64* %7, align 8
  store i64 %92, i64* %4, align 8
  %93 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %93)
  br label %95

94:                                               ; preds = %27
  store i64 -1, i64* %4, align 8
  br label %95

95:                                               ; preds = %94, %91, %17
  %96 = load i64, i64* %4, align 8
  ret i64 %96
}

declare dso_local i32 @unix_time(...) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i64 @onion_path_to_nodes(%struct.TYPE_10__*, i32, %struct.TYPE_11__*) #1

declare dso_local i32 @onion_add_path_node(%struct.TYPE_9__*, i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
