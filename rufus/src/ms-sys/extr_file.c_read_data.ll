; ModuleID = '/home/carl/AnghaBench/rufus/src/ms-sys/extr_file.c_read_data.c'
source_filename = "/home/carl/AnghaBench/rufus/src/ms-sys/extr_file.c_read_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@MAX_DATA_LEN = common dso_local global i32 0, align 4
@ulBytesPerSector = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"read_data: Please increase MAX_DATA_LEN in file.h\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"read_data: Len is too big\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @read_data(i32* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_2__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %17 = load i32, i32* @MAX_DATA_LEN, align 4
  %18 = call i8* @_mm_malloc(i32 %17, i32 16)
  store i8* %18, i8** %11, align 8
  %19 = load i32*, i32** %6, align 8
  %20 = bitcast i32* %19 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %20, %struct.TYPE_2__** %12, align 8
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %13, align 4
  %24 = load i8*, i8** %11, align 8
  %25 = icmp eq i8* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %88

27:                                               ; preds = %4
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %7, align 4
  %32 = add nsw i32 %31, %30
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* @ulBytesPerSector, align 4
  %35 = sdiv i32 %33, %34
  store i32 %35, i32* %14, align 4
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* %9, align 4
  %38 = add nsw i32 %36, %37
  %39 = load i32, i32* @ulBytesPerSector, align 4
  %40 = add nsw i32 %38, %39
  %41 = sub nsw i32 %40, 1
  %42 = load i32, i32* @ulBytesPerSector, align 4
  %43 = sdiv i32 %41, %42
  store i32 %43, i32* %15, align 4
  %44 = load i32, i32* %15, align 4
  %45 = load i32, i32* %14, align 4
  %46 = sub nsw i32 %44, %45
  %47 = sext i32 %46 to i64
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %16, align 4
  %49 = load i32, i32* %16, align 4
  %50 = load i32, i32* @ulBytesPerSector, align 4
  %51 = mul nsw i32 %49, %50
  %52 = load i32, i32* @MAX_DATA_LEN, align 4
  %53 = icmp sgt i32 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %27
  %55 = call i32 @uprintf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  br label %84

56:                                               ; preds = %27
  %57 = load i32, i32* %9, align 4
  %58 = sext i32 %57 to i64
  %59 = icmp ugt i64 %58, 4294967295
  br i1 %59, label %60, label %62

60:                                               ; preds = %56
  %61 = call i32 @uprintf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %84

62:                                               ; preds = %56
  %63 = load i32, i32* %13, align 4
  %64 = load i32, i32* @ulBytesPerSector, align 4
  %65 = load i32, i32* %14, align 4
  %66 = load i32, i32* %16, align 4
  %67 = load i8*, i8** %11, align 8
  %68 = call i64 @read_sectors(i32 %63, i32 %64, i32 %65, i32 %66, i8* %67)
  %69 = icmp sle i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %62
  br label %84

71:                                               ; preds = %62
  %72 = load i8*, i8** %8, align 8
  %73 = load i8*, i8** %11, align 8
  %74 = load i32, i32* %7, align 4
  %75 = load i32, i32* %14, align 4
  %76 = load i32, i32* @ulBytesPerSector, align 4
  %77 = mul nsw i32 %75, %76
  %78 = sub nsw i32 %74, %77
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i8, i8* %73, i64 %79
  %81 = load i32, i32* %9, align 4
  %82 = sext i32 %81 to i64
  %83 = call i32 @memcpy(i8* %72, i8* %80, i64 %82)
  store i32 1, i32* %10, align 4
  br label %84

84:                                               ; preds = %71, %70, %60, %54
  %85 = load i8*, i8** %11, align 8
  %86 = call i32 @_mm_free(i8* %85)
  %87 = load i32, i32* %10, align 4
  store i32 %87, i32* %5, align 4
  br label %88

88:                                               ; preds = %84, %26
  %89 = load i32, i32* %5, align 4
  ret i32 %89
}

declare dso_local i8* @_mm_malloc(i32, i32) #1

declare dso_local i32 @uprintf(i8*) #1

declare dso_local i64 @read_sectors(i32, i32, i32, i32, i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @_mm_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
