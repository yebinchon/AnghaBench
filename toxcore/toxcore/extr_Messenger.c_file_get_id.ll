; ModuleID = '/home/carl/AnghaBench/toxcore/toxcore/extr_Messenger.c_file_get_id.c'
source_filename = "/home/carl/AnghaBench/toxcore/toxcore/extr_Messenger.c_file_get_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, %struct.File_Transfers*, %struct.File_Transfers* }
%struct.File_Transfers = type { i64, i32 }

@FRIEND_ONLINE = common dso_local global i64 0, align 8
@MAX_CONCURRENT_FILE_PIPES = common dso_local global i32 0, align 4
@FILESTATUS_NONE = common dso_local global i64 0, align 8
@FILE_ID_LENGTH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @file_get_id(%struct.TYPE_6__* %0, i64 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.File_Transfers*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %15 = load i64, i64* %7, align 8
  %16 = call i64 @friend_not_valid(%struct.TYPE_6__* %14, i64 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %84

19:                                               ; preds = %4
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %23 = load i64, i64* %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @FRIEND_ONLINE, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %19
  store i32 -2, i32* %5, align 4
  br label %84

30:                                               ; preds = %19
  %31 = load i32, i32* %8, align 4
  %32 = icmp sge i32 %31, 65536
  br i1 %32, label %33, label %37

33:                                               ; preds = %30
  store i32 1, i32* %11, align 4
  %34 = load i32, i32* %8, align 4
  %35 = ashr i32 %34, 16
  %36 = sub nsw i32 %35, 1
  store i32 %36, i32* %10, align 4
  br label %39

37:                                               ; preds = %30
  store i32 0, i32* %11, align 4
  %38 = load i32, i32* %8, align 4
  store i32 %38, i32* %10, align 4
  br label %39

39:                                               ; preds = %37, %33
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* @MAX_CONCURRENT_FILE_PIPES, align 4
  %42 = icmp sge i32 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  store i32 -2, i32* %5, align 4
  br label %84

44:                                               ; preds = %39
  %45 = load i32, i32* %10, align 4
  store i32 %45, i32* %12, align 4
  %46 = load i32, i32* %11, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %59

48:                                               ; preds = %44
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %50, align 8
  %52 = load i64, i64* %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 2
  %55 = load %struct.File_Transfers*, %struct.File_Transfers** %54, align 8
  %56 = load i32, i32* %12, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.File_Transfers, %struct.File_Transfers* %55, i64 %57
  store %struct.File_Transfers* %58, %struct.File_Transfers** %13, align 8
  br label %70

59:                                               ; preds = %44
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %61, align 8
  %63 = load i64, i64* %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 1
  %66 = load %struct.File_Transfers*, %struct.File_Transfers** %65, align 8
  %67 = load i32, i32* %12, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.File_Transfers, %struct.File_Transfers* %66, i64 %68
  store %struct.File_Transfers* %69, %struct.File_Transfers** %13, align 8
  br label %70

70:                                               ; preds = %59, %48
  %71 = load %struct.File_Transfers*, %struct.File_Transfers** %13, align 8
  %72 = getelementptr inbounds %struct.File_Transfers, %struct.File_Transfers* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @FILESTATUS_NONE, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %70
  store i32 -2, i32* %5, align 4
  br label %84

77:                                               ; preds = %70
  %78 = load i32*, i32** %9, align 8
  %79 = load %struct.File_Transfers*, %struct.File_Transfers** %13, align 8
  %80 = getelementptr inbounds %struct.File_Transfers, %struct.File_Transfers* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @FILE_ID_LENGTH, align 4
  %83 = call i32 @memcpy(i32* %78, i32 %81, i32 %82)
  store i32 0, i32* %5, align 4
  br label %84

84:                                               ; preds = %77, %76, %43, %29, %18
  %85 = load i32, i32* %5, align 4
  ret i32 %85
}

declare dso_local i64 @friend_not_valid(%struct.TYPE_6__*, i64) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
