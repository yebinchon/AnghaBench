; ModuleID = '/home/carl/AnghaBench/zstd/lib/compress/extr_zstd_compress.c_ZSTD_initStaticCDict.c'
source_filename = "/home/carl/AnghaBench/zstd/lib/compress/extr_zstd_compress.c_ZSTD_initStaticCDict.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@ZSTD_dlm_byRef = common dso_local global i32 0, align 4
@HUF_WORKSPACE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"(workspaceSize < neededSize) : (%u < %u) => %u\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_4__* @ZSTD_initStaticCDict(i8* %0, i64 %1, i8* %2, i64 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.TYPE_4__*, align 8
  %19 = alloca i32, align 4
  store i8* %0, i8** %9, align 8
  store i64 %1, i64* %10, align 8
  store i8* %2, i8** %11, align 8
  store i64 %3, i64* %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %20 = call i64 @ZSTD_sizeof_matchState(i32* %15, i32 0)
  store i64 %20, i64* %16, align 8
  %21 = call i64 @ZSTD_cwksp_alloc_size(i32 4)
  %22 = load i32, i32* %13, align 4
  %23 = load i32, i32* @ZSTD_dlm_byRef, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %7
  br label %30

26:                                               ; preds = %7
  %27 = load i64, i64* %12, align 8
  %28 = call i32 @ZSTD_cwksp_align(i64 %27, i32 8)
  %29 = call i64 @ZSTD_cwksp_alloc_size(i32 %28)
  br label %30

30:                                               ; preds = %26, %25
  %31 = phi i64 [ 0, %25 ], [ %29, %26 ]
  %32 = add i64 %21, %31
  %33 = load i32, i32* @HUF_WORKSPACE_SIZE, align 4
  %34 = call i64 @ZSTD_cwksp_alloc_size(i32 %33)
  %35 = add i64 %32, %34
  %36 = load i64, i64* %16, align 8
  %37 = add i64 %35, %36
  store i64 %37, i64* %17, align 8
  %38 = load i8*, i8** %9, align 8
  %39 = ptrtoint i8* %38 to i64
  %40 = and i64 %39, 7
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %30
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %8, align 8
  br label %82

43:                                               ; preds = %30
  %44 = load i8*, i8** %9, align 8
  %45 = load i64, i64* %10, align 8
  %46 = call i32 @ZSTD_cwksp_init(i32* %19, i8* %44, i64 %45)
  %47 = call i64 @ZSTD_cwksp_reserve_object(i32* %19, i32 4)
  %48 = inttoptr i64 %47 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %48, %struct.TYPE_4__** %18, align 8
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %50 = icmp eq %struct.TYPE_4__* %49, null
  br i1 %50, label %51, label %52

51:                                               ; preds = %43
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %8, align 8
  br label %82

52:                                               ; preds = %43
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = call i32 @ZSTD_cwksp_move(i32* %54, i32* %19)
  %56 = load i64, i64* %10, align 8
  %57 = trunc i64 %56 to i32
  %58 = load i64, i64* %17, align 8
  %59 = trunc i64 %58 to i32
  %60 = load i64, i64* %10, align 8
  %61 = load i64, i64* %17, align 8
  %62 = icmp ult i64 %60, %61
  %63 = zext i1 %62 to i32
  %64 = call i32 @DEBUGLOG(i32 4, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %57, i32 %59, i32 %63)
  %65 = load i64, i64* %10, align 8
  %66 = load i64, i64* %17, align 8
  %67 = icmp ult i64 %65, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %52
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %8, align 8
  br label %82

69:                                               ; preds = %52
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %71 = load i8*, i8** %11, align 8
  %72 = load i64, i64* %12, align 8
  %73 = load i32, i32* %13, align 4
  %74 = load i32, i32* %14, align 4
  %75 = load i32, i32* %15, align 4
  %76 = call i32 @ZSTD_initCDict_internal(%struct.TYPE_4__* %70, i8* %71, i64 %72, i32 %73, i32 %74, i32 %75)
  %77 = call i64 @ZSTD_isError(i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %69
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %8, align 8
  br label %82

80:                                               ; preds = %69
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  store %struct.TYPE_4__* %81, %struct.TYPE_4__** %8, align 8
  br label %82

82:                                               ; preds = %80, %79, %68, %51, %42
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  ret %struct.TYPE_4__* %83
}

declare dso_local i64 @ZSTD_sizeof_matchState(i32*, i32) #1

declare dso_local i64 @ZSTD_cwksp_alloc_size(i32) #1

declare dso_local i32 @ZSTD_cwksp_align(i64, i32) #1

declare dso_local i32 @ZSTD_cwksp_init(i32*, i8*, i64) #1

declare dso_local i64 @ZSTD_cwksp_reserve_object(i32*, i32) #1

declare dso_local i32 @ZSTD_cwksp_move(i32*, i32*) #1

declare dso_local i32 @DEBUGLOG(i32, i8*, i32, i32, i32) #1

declare dso_local i64 @ZSTD_isError(i32) #1

declare dso_local i32 @ZSTD_initCDict_internal(%struct.TYPE_4__*, i8*, i64, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
