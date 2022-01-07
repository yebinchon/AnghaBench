; ModuleID = '/home/carl/AnghaBench/rufus/src/libcdio/driver/extr_sector.c_cdio_lsn_to_msf.c'
source_filename = "/home/carl/AnghaBench/rufus/src/libcdio/driver/extr_sector.c_cdio_lsn_to_msf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i8*, i8* }

@CDIO_PREGAP_SECTORS = common dso_local global i32 0, align 4
@CDIO_CD_FRAMES_PER_MIN = common dso_local global i32 0, align 4
@CDIO_CD_FRAMES_PER_SEC = common dso_local global i32 0, align 4
@CDIO_CD_MAX_LSN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"number of minutes (%d) truncated to 99.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cdio_lsn_to_msf(i32 %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %9 = icmp ne %struct.TYPE_3__* %8, null
  %10 = zext i1 %9 to i32
  %11 = call i32 @cdio_assert(i32 %10)
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @CDIO_PREGAP_SECTORS, align 4
  %14 = sub nsw i32 0, %13
  %15 = icmp sge i32 %12, %14
  br i1 %15, label %16, label %40

16:                                               ; preds = %2
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @CDIO_PREGAP_SECTORS, align 4
  %19 = add nsw i32 %17, %18
  %20 = load i32, i32* @CDIO_CD_FRAMES_PER_MIN, align 4
  %21 = sdiv i32 %19, %20
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @CDIO_CD_FRAMES_PER_MIN, align 4
  %24 = mul nsw i32 %22, %23
  %25 = load i32, i32* %3, align 4
  %26 = sub nsw i32 %25, %24
  store i32 %26, i32* %3, align 4
  %27 = load i32, i32* %3, align 4
  %28 = load i32, i32* @CDIO_PREGAP_SECTORS, align 4
  %29 = add nsw i32 %27, %28
  %30 = load i32, i32* @CDIO_CD_FRAMES_PER_SEC, align 4
  %31 = sdiv i32 %29, %30
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @CDIO_CD_FRAMES_PER_SEC, align 4
  %34 = mul nsw i32 %32, %33
  %35 = load i32, i32* %3, align 4
  %36 = sub nsw i32 %35, %34
  store i32 %36, i32* %3, align 4
  %37 = load i32, i32* %3, align 4
  %38 = load i32, i32* @CDIO_PREGAP_SECTORS, align 4
  %39 = add nsw i32 %37, %38
  store i32 %39, i32* %7, align 4
  br label %64

40:                                               ; preds = %2
  %41 = load i32, i32* %3, align 4
  %42 = load i32, i32* @CDIO_CD_MAX_LSN, align 4
  %43 = add nsw i32 %41, %42
  %44 = load i32, i32* @CDIO_CD_FRAMES_PER_MIN, align 4
  %45 = sdiv i32 %43, %44
  store i32 %45, i32* %5, align 4
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* @CDIO_CD_FRAMES_PER_MIN, align 4
  %48 = mul nsw i32 %46, %47
  %49 = load i32, i32* %3, align 4
  %50 = sub nsw i32 %49, %48
  store i32 %50, i32* %3, align 4
  %51 = load i32, i32* %3, align 4
  %52 = load i32, i32* @CDIO_CD_MAX_LSN, align 4
  %53 = add nsw i32 %51, %52
  %54 = load i32, i32* @CDIO_CD_FRAMES_PER_SEC, align 4
  %55 = sdiv i32 %53, %54
  store i32 %55, i32* %6, align 4
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* @CDIO_CD_FRAMES_PER_SEC, align 4
  %58 = mul nsw i32 %56, %57
  %59 = load i32, i32* %3, align 4
  %60 = sub nsw i32 %59, %58
  store i32 %60, i32* %3, align 4
  %61 = load i32, i32* %3, align 4
  %62 = load i32, i32* @CDIO_CD_MAX_LSN, align 4
  %63 = add nsw i32 %61, %62
  store i32 %63, i32* %7, align 4
  br label %64

64:                                               ; preds = %40, %16
  %65 = load i32, i32* %5, align 4
  %66 = icmp sgt i32 %65, 99
  br i1 %66, label %67, label %70

67:                                               ; preds = %64
  %68 = load i32, i32* %5, align 4
  %69 = call i32 @cdio_warn(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %68)
  store i32 99, i32* %5, align 4
  br label %70

70:                                               ; preds = %67, %64
  %71 = load i32, i32* %5, align 4
  %72 = call i8* @cdio_to_bcd8(i32 %71)
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 2
  store i8* %72, i8** %74, align 8
  %75 = load i32, i32* %6, align 4
  %76 = call i8* @cdio_to_bcd8(i32 %75)
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 1
  store i8* %76, i8** %78, align 8
  %79 = load i32, i32* %7, align 4
  %80 = call i8* @cdio_to_bcd8(i32 %79)
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 0
  store i8* %80, i8** %82, align 8
  ret void
}

declare dso_local i32 @cdio_assert(i32) #1

declare dso_local i32 @cdio_warn(i8*, i32) #1

declare dso_local i8* @cdio_to_bcd8(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
