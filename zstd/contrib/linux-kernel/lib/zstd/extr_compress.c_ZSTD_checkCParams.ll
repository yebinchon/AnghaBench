; ModuleID = '/home/carl/AnghaBench/zstd/contrib/linux-kernel/lib/zstd/extr_compress.c_ZSTD_checkCParams.c'
source_filename = "/home/carl/AnghaBench/zstd/contrib/linux-kernel/lib/zstd/extr_compress.c_ZSTD_checkCParams.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32, i32, i32, i32, i32, i32 }

@ZSTD_WINDOWLOG_MIN = common dso_local global i32 0, align 4
@ZSTD_WINDOWLOG_MAX = common dso_local global i32 0, align 4
@compressionParameter_unsupported = common dso_local global i32 0, align 4
@ZSTD_CHAINLOG_MIN = common dso_local global i32 0, align 4
@ZSTD_CHAINLOG_MAX = common dso_local global i32 0, align 4
@ZSTD_HASHLOG_MIN = common dso_local global i32 0, align 4
@ZSTD_HASHLOG_MAX = common dso_local global i32 0, align 4
@ZSTD_SEARCHLOG_MIN = common dso_local global i32 0, align 4
@ZSTD_SEARCHLOG_MAX = common dso_local global i32 0, align 4
@ZSTD_SEARCHLENGTH_MIN = common dso_local global i32 0, align 4
@ZSTD_SEARCHLENGTH_MAX = common dso_local global i32 0, align 4
@ZSTD_TARGETLENGTH_MIN = common dso_local global i32 0, align 4
@ZSTD_TARGETLENGTH_MAX = common dso_local global i32 0, align 4
@ZSTD_btopt2 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ZSTD_checkCParams(%struct.TYPE_3__* byval(%struct.TYPE_3__) align 8 %0) #0 {
  %2 = alloca i64, align 8
  %3 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 6
  %4 = load i32, i32* %3, align 4
  %5 = load i32, i32* @ZSTD_WINDOWLOG_MIN, align 4
  %6 = icmp slt i32 %4, %5
  %7 = zext i1 %6 to i32
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 6
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @ZSTD_WINDOWLOG_MAX, align 4
  %11 = icmp sgt i32 %9, %10
  %12 = zext i1 %11 to i32
  %13 = or i32 %7, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load i32, i32* @compressionParameter_unsupported, align 4
  %17 = call i64 @ERROR(i32 %16)
  store i64 %17, i64* %2, align 8
  br label %107

18:                                               ; preds = %1
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 5
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @ZSTD_CHAINLOG_MIN, align 4
  %22 = icmp slt i32 %20, %21
  %23 = zext i1 %22 to i32
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 5
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @ZSTD_CHAINLOG_MAX, align 4
  %27 = icmp sgt i32 %25, %26
  %28 = zext i1 %27 to i32
  %29 = or i32 %23, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %18
  %32 = load i32, i32* @compressionParameter_unsupported, align 4
  %33 = call i64 @ERROR(i32 %32)
  store i64 %33, i64* %2, align 8
  br label %107

34:                                               ; preds = %18
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 4
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @ZSTD_HASHLOG_MIN, align 4
  %38 = icmp slt i32 %36, %37
  %39 = zext i1 %38 to i32
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 4
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @ZSTD_HASHLOG_MAX, align 4
  %43 = icmp sgt i32 %41, %42
  %44 = zext i1 %43 to i32
  %45 = or i32 %39, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %34
  %48 = load i32, i32* @compressionParameter_unsupported, align 4
  %49 = call i64 @ERROR(i32 %48)
  store i64 %49, i64* %2, align 8
  br label %107

50:                                               ; preds = %34
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 3
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @ZSTD_SEARCHLOG_MIN, align 4
  %54 = icmp slt i32 %52, %53
  %55 = zext i1 %54 to i32
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 3
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @ZSTD_SEARCHLOG_MAX, align 4
  %59 = icmp sgt i32 %57, %58
  %60 = zext i1 %59 to i32
  %61 = or i32 %55, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %50
  %64 = load i32, i32* @compressionParameter_unsupported, align 4
  %65 = call i64 @ERROR(i32 %64)
  store i64 %65, i64* %2, align 8
  br label %107

66:                                               ; preds = %50
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @ZSTD_SEARCHLENGTH_MIN, align 4
  %70 = icmp slt i32 %68, %69
  %71 = zext i1 %70 to i32
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @ZSTD_SEARCHLENGTH_MAX, align 4
  %75 = icmp sgt i32 %73, %74
  %76 = zext i1 %75 to i32
  %77 = or i32 %71, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %66
  %80 = load i32, i32* @compressionParameter_unsupported, align 4
  %81 = call i64 @ERROR(i32 %80)
  store i64 %81, i64* %2, align 8
  br label %107

82:                                               ; preds = %66
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @ZSTD_TARGETLENGTH_MIN, align 4
  %86 = icmp slt i32 %84, %85
  %87 = zext i1 %86 to i32
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* @ZSTD_TARGETLENGTH_MAX, align 4
  %91 = icmp sgt i32 %89, %90
  %92 = zext i1 %91 to i32
  %93 = or i32 %87, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %82
  %96 = load i32, i32* @compressionParameter_unsupported, align 4
  %97 = call i64 @ERROR(i32 %96)
  store i64 %97, i64* %2, align 8
  br label %107

98:                                               ; preds = %82
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %0, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @ZSTD_btopt2, align 8
  %102 = icmp sgt i64 %100, %101
  br i1 %102, label %103, label %106

103:                                              ; preds = %98
  %104 = load i32, i32* @compressionParameter_unsupported, align 4
  %105 = call i64 @ERROR(i32 %104)
  store i64 %105, i64* %2, align 8
  br label %107

106:                                              ; preds = %98
  store i64 0, i64* %2, align 8
  br label %107

107:                                              ; preds = %106, %103, %95, %79, %63, %47, %31, %15
  %108 = load i64, i64* %2, align 8
  ret i64 %108
}

declare dso_local i64 @ERROR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
