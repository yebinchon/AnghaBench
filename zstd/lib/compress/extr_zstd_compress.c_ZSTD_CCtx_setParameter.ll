; ModuleID = '/home/carl/AnghaBench/zstd/lib/compress/extr_zstd_compress.c_ZSTD_CCtx_setParameter.c'
source_filename = "/home/carl/AnghaBench/zstd/lib/compress/extr_zstd_compress.c_ZSTD_CCtx_setParameter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32, i32, i32 }

@.str = private unnamed_addr constant [32 x i8] c"ZSTD_CCtx_setParameter (%i, %i)\00", align 1
@zcss_init = common dso_local global i64 0, align 8
@stage_wrong = common dso_local global i32 0, align 4
@parameter_unsupported = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"MT not compatible with static alloc\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ZSTD_CCtx_setParameter(%struct.TYPE_3__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* %6, align 4
  %9 = call i32 @DEBUGLOG(i32 4, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %7, i32 %8)
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @zcss_init, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %26

15:                                               ; preds = %3
  %16 = load i32, i32* %5, align 4
  %17 = call i64 @ZSTD_isUpdateAuthorized(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  store i32 1, i32* %21, align 8
  br label %25

22:                                               ; preds = %15
  %23 = load i32, i32* @stage_wrong, align 4
  %24 = call i32 @RETURN_ERROR(i32 %23)
  br label %25

25:                                               ; preds = %22, %19
  br label %26

26:                                               ; preds = %25, %3
  %27 = load i32, i32* %5, align 4
  switch i32 %27, label %42 [
    i32 136, label %28
    i32 151, label %41
    i32 128, label %41
    i32 144, label %41
    i32 153, label %41
    i32 133, label %41
    i32 137, label %41
    i32 129, label %41
    i32 131, label %41
    i32 140, label %41
    i32 145, label %41
    i32 150, label %41
    i32 152, label %41
    i32 149, label %41
    i32 146, label %41
    i32 147, label %41
    i32 138, label %41
    i32 143, label %41
    i32 135, label %41
    i32 134, label %41
    i32 148, label %41
    i32 141, label %41
    i32 139, label %41
    i32 142, label %41
    i32 130, label %41
    i32 132, label %41
  ]

28:                                               ; preds = %26
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %28
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 0
  br label %36

36:                                               ; preds = %31, %28
  %37 = phi i1 [ false, %28 ], [ %35, %31 ]
  %38 = zext i1 %37 to i32
  %39 = load i32, i32* @parameter_unsupported, align 4
  %40 = call i32 @RETURN_ERROR_IF(i32 %38, i32 %39, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %45

41:                                               ; preds = %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26, %26
  br label %45

42:                                               ; preds = %26
  %43 = load i32, i32* @parameter_unsupported, align 4
  %44 = call i32 @RETURN_ERROR(i32 %43)
  br label %45

45:                                               ; preds = %42, %41, %36
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 2
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* %6, align 4
  %50 = call i64 @ZSTD_CCtxParams_setParameter(i32* %47, i32 %48, i32 %49)
  ret i64 %50
}

declare dso_local i32 @DEBUGLOG(i32, i8*, i32, i32) #1

declare dso_local i64 @ZSTD_isUpdateAuthorized(i32) #1

declare dso_local i32 @RETURN_ERROR(i32) #1

declare dso_local i32 @RETURN_ERROR_IF(i32, i32, i8*) #1

declare dso_local i64 @ZSTD_CCtxParams_setParameter(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
