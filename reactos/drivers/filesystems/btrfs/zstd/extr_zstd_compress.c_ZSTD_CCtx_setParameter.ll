; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/btrfs/zstd/extr_zstd_compress.c_ZSTD_CCtx_setParameter.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/btrfs/zstd/extr_zstd_compress.c_ZSTD_CCtx_setParameter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [32 x i8] c"ZSTD_CCtx_setParameter (%u, %u)\00", align 1
@zcss_init = common dso_local global i64 0, align 8
@stage_wrong = common dso_local global i32 0, align 4
@parameter_unsupported = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ZSTD_CCtx_setParameter(%struct.TYPE_3__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %6, align 4
  %9 = load i32, i32* %7, align 4
  %10 = call i32 @DEBUGLOG(i32 4, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %8, i32 %9)
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @zcss_init, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %27

16:                                               ; preds = %3
  %17 = load i32, i32* %6, align 4
  %18 = call i64 @ZSTD_isUpdateAuthorized(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  store i32 1, i32* %22, align 8
  br label %26

23:                                               ; preds = %16
  %24 = load i32, i32* @stage_wrong, align 4
  %25 = call i64 @ERROR(i32 %24)
  store i64 %25, i64* %4, align 8
  br label %121

26:                                               ; preds = %20
  br label %27

27:                                               ; preds = %26, %3
  %28 = load i32, i32* %6, align 4
  switch i32 %28, label %118 [
    i32 140, label %29
    i32 147, label %35
    i32 128, label %49
    i32 139, label %49
    i32 149, label %49
    i32 130, label %49
    i32 133, label %49
    i32 129, label %49
    i32 146, label %49
    i32 145, label %63
    i32 148, label %63
    i32 144, label %63
    i32 141, label %69
    i32 142, label %75
    i32 132, label %81
    i32 138, label %98
    i32 131, label %98
    i32 143, label %104
    i32 135, label %104
    i32 134, label %104
    i32 137, label %104
    i32 136, label %104
  ]

29:                                               ; preds = %27
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 2
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* %7, align 4
  %34 = call i64 @ZSTD_CCtxParam_setParameter(i32* %31, i32 %32, i32 %33)
  store i64 %34, i64* %4, align 8
  br label %121

35:                                               ; preds = %27
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = load i32, i32* @stage_wrong, align 4
  %42 = call i64 @ERROR(i32 %41)
  store i64 %42, i64* %4, align 8
  br label %121

43:                                               ; preds = %35
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 2
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* %7, align 4
  %48 = call i64 @ZSTD_CCtxParam_setParameter(i32* %45, i32 %46, i32 %47)
  store i64 %48, i64* %4, align 8
  br label %121

49:                                               ; preds = %27, %27, %27, %27, %27, %27, %27
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 8
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %49
  %55 = load i32, i32* @stage_wrong, align 4
  %56 = call i64 @ERROR(i32 %55)
  store i64 %56, i64* %4, align 8
  br label %121

57:                                               ; preds = %49
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 2
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* %7, align 4
  %62 = call i64 @ZSTD_CCtxParam_setParameter(i32* %59, i32 %60, i32 %61)
  store i64 %62, i64* %4, align 8
  br label %121

63:                                               ; preds = %27, %27, %27
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 2
  %66 = load i32, i32* %6, align 4
  %67 = load i32, i32* %7, align 4
  %68 = call i64 @ZSTD_CCtxParam_setParameter(i32* %65, i32 %66, i32 %67)
  store i64 %68, i64* %4, align 8
  br label %121

69:                                               ; preds = %27
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 2
  %72 = load i32, i32* %6, align 4
  %73 = load i32, i32* %7, align 4
  %74 = call i64 @ZSTD_CCtxParam_setParameter(i32* %71, i32 %72, i32 %73)
  store i64 %74, i64* %4, align 8
  br label %121

75:                                               ; preds = %27
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 2
  %78 = load i32, i32* %6, align 4
  %79 = load i32, i32* %7, align 4
  %80 = call i64 @ZSTD_CCtxParam_setParameter(i32* %77, i32 %78, i32 %79)
  store i64 %80, i64* %4, align 8
  br label %121

81:                                               ; preds = %27
  %82 = load i32, i32* %7, align 4
  %83 = icmp ugt i32 %82, 0
  br i1 %83, label %84, label %92

84:                                               ; preds = %81
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 4
  %87 = load i32, i32* %86, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %84
  %90 = load i32, i32* @parameter_unsupported, align 4
  %91 = call i64 @ERROR(i32 %90)
  store i64 %91, i64* %4, align 8
  br label %121

92:                                               ; preds = %84, %81
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 2
  %95 = load i32, i32* %6, align 4
  %96 = load i32, i32* %7, align 4
  %97 = call i64 @ZSTD_CCtxParam_setParameter(i32* %94, i32 %95, i32 %96)
  store i64 %97, i64* %4, align 8
  br label %121

98:                                               ; preds = %27, %27
  %99 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 2
  %101 = load i32, i32* %6, align 4
  %102 = load i32, i32* %7, align 4
  %103 = call i64 @ZSTD_CCtxParam_setParameter(i32* %100, i32 %101, i32 %102)
  store i64 %103, i64* %4, align 8
  br label %121

104:                                              ; preds = %27, %27, %27, %27, %27
  %105 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 8
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %104
  %110 = load i32, i32* @stage_wrong, align 4
  %111 = call i64 @ERROR(i32 %110)
  store i64 %111, i64* %4, align 8
  br label %121

112:                                              ; preds = %104
  %113 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 2
  %115 = load i32, i32* %6, align 4
  %116 = load i32, i32* %7, align 4
  %117 = call i64 @ZSTD_CCtxParam_setParameter(i32* %114, i32 %115, i32 %116)
  store i64 %117, i64* %4, align 8
  br label %121

118:                                              ; preds = %27
  %119 = load i32, i32* @parameter_unsupported, align 4
  %120 = call i64 @ERROR(i32 %119)
  store i64 %120, i64* %4, align 8
  br label %121

121:                                              ; preds = %118, %112, %109, %98, %92, %89, %75, %69, %63, %57, %54, %43, %40, %29, %23
  %122 = load i64, i64* %4, align 8
  ret i64 %122
}

declare dso_local i32 @DEBUGLOG(i32, i8*, i32, i32) #1

declare dso_local i64 @ZSTD_isUpdateAuthorized(i32) #1

declare dso_local i64 @ERROR(i32) #1

declare dso_local i64 @ZSTD_CCtxParam_setParameter(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
