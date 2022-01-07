; ModuleID = '/home/carl/AnghaBench/seafile/daemon/extr_vc-utils.c_compare_file_content.c'
source_filename = "/home/carl/AnghaBench/seafile/daemon/extr_vc-utils.c_compare_file_content.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i64 }

@seaf = common dso_local global %struct.TYPE_6__* null, align 8
@CDC_AVERAGE_BLOCK_SIZE = common dso_local global i32 0, align 4
@CDC_MIN_BLOCK_SIZE = common dso_local global i32 0, align 4
@CDC_MAX_BLOCK_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @compare_file_content(i8* %0, %struct.TYPE_5__* %1, i8* %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca [20 x i8], align 16
  %13 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %5
  %19 = getelementptr inbounds [20 x i8], [20 x i8]* %12, i64 0, i64 0
  %20 = call i32 @memset(i8* %19, i32 0, i32 20)
  %21 = getelementptr inbounds [20 x i8], [20 x i8]* %12, i64 0, i64 0
  %22 = load i8*, i8** %9, align 8
  %23 = call i32 @hashcmp(i8* %21, i8* %22)
  store i32 %23, i32* %6, align 4
  br label %91

24:                                               ; preds = %5
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** @seaf, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %42

29:                                               ; preds = %24
  %30 = load i8*, i8** %7, align 8
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %32 = load i32*, i32** %10, align 8
  %33 = load i32, i32* %11, align 4
  %34 = load i32, i32* @CDC_AVERAGE_BLOCK_SIZE, align 4
  %35 = load i32, i32* @CDC_MIN_BLOCK_SIZE, align 4
  %36 = load i32, i32* @CDC_MAX_BLOCK_SIZE, align 4
  %37 = getelementptr inbounds [20 x i8], [20 x i8]* %12, i64 0, i64 0
  %38 = call i64 @compute_file_id_with_cdc(i8* %30, %struct.TYPE_5__* %31, i32* %32, i32 %33, i32 %34, i32 %35, i32 %36, i8* %37)
  %39 = icmp slt i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %29
  store i32 -1, i32* %6, align 4
  br label %91

41:                                               ; preds = %29
  br label %63

42:                                               ; preds = %24
  %43 = load i8*, i8** %7, align 8
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %45 = load i32*, i32** %10, align 8
  %46 = load i32, i32* %11, align 4
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** @seaf, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** @seaf, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = ashr i32 %52, 1
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** @seaf, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = shl i32 %56, 1
  %58 = getelementptr inbounds [20 x i8], [20 x i8]* %12, i64 0, i64 0
  %59 = call i64 @compute_file_id_with_cdc(i8* %43, %struct.TYPE_5__* %44, i32* %45, i32 %46, i32 %49, i32 %53, i32 %57, i8* %58)
  %60 = icmp slt i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %42
  store i32 -1, i32* %6, align 4
  br label %91

62:                                               ; preds = %42
  br label %63

63:                                               ; preds = %62, %41
  %64 = getelementptr inbounds [20 x i8], [20 x i8]* %12, i64 0, i64 0
  %65 = load i8*, i8** %9, align 8
  %66 = call i32 @hashcmp(i8* %64, i8* %65)
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %63
  store i32 0, i32* %6, align 4
  br label %91

69:                                               ; preds = %63
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = call i32 @calculate_chunk_size(i64 %72)
  store i32 %73, i32* %13, align 4
  %74 = load i8*, i8** %7, align 8
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %76 = load i32*, i32** %10, align 8
  %77 = load i32, i32* %11, align 4
  %78 = load i32, i32* %13, align 4
  %79 = load i32, i32* %13, align 4
  %80 = ashr i32 %79, 2
  %81 = load i32, i32* %13, align 4
  %82 = shl i32 %81, 2
  %83 = getelementptr inbounds [20 x i8], [20 x i8]* %12, i64 0, i64 0
  %84 = call i64 @compute_file_id_with_cdc(i8* %74, %struct.TYPE_5__* %75, i32* %76, i32 %77, i32 %78, i32 %80, i32 %82, i8* %83)
  %85 = icmp slt i64 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %69
  store i32 -1, i32* %6, align 4
  br label %91

87:                                               ; preds = %69
  %88 = getelementptr inbounds [20 x i8], [20 x i8]* %12, i64 0, i64 0
  %89 = load i8*, i8** %9, align 8
  %90 = call i32 @hashcmp(i8* %88, i8* %89)
  store i32 %90, i32* %6, align 4
  br label %91

91:                                               ; preds = %87, %86, %68, %61, %40, %18
  %92 = load i32, i32* %6, align 4
  ret i32 %92
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @hashcmp(i8*, i8*) #1

declare dso_local i64 @compute_file_id_with_cdc(i8*, %struct.TYPE_5__*, i32*, i32, i32, i32, i32, i8*) #1

declare dso_local i32 @calculate_chunk_size(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
