; ModuleID = '/home/carl/AnghaBench/rufus/src/ms-sys/extr_file.c_write_data.c'
source_filename = "/home/carl/AnghaBench/rufus/src/ms-sys/extr_file.c_write_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@MAX_DATA_LEN = common dso_local global i32 0, align 4
@ulBytesPerSector = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"write_data: Please increase MAX_DATA_LEN in file.h\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"write_data: Len is too big\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @write_data(i32* %0, i32 %1, i8* %2, i32 %3) #0 {
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
  %18 = call i8* @_mm_malloc(i32 %17, i32 4096)
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
  br label %98

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
  store i32 %46, i32* %16, align 4
  %47 = load i32, i32* %16, align 4
  %48 = load i32, i32* @ulBytesPerSector, align 4
  %49 = mul nsw i32 %47, %48
  %50 = load i32, i32* @MAX_DATA_LEN, align 4
  %51 = icmp sgt i32 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %27
  %53 = call i32 @uprintf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  br label %94

54:                                               ; preds = %27
  %55 = load i32, i32* %9, align 4
  %56 = sext i32 %55 to i64
  %57 = icmp ugt i64 %56, 4294967295
  br i1 %57, label %58, label %60

58:                                               ; preds = %54
  %59 = call i32 @uprintf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %94

60:                                               ; preds = %54
  %61 = load i32, i32* %13, align 4
  %62 = load i32, i32* @ulBytesPerSector, align 4
  %63 = load i32, i32* %14, align 4
  %64 = load i32, i32* %16, align 4
  %65 = load i8*, i8** %11, align 8
  %66 = call i64 @read_sectors(i32 %61, i32 %62, i32 %63, i32 %64, i8* %65)
  %67 = icmp sle i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %60
  br label %94

69:                                               ; preds = %60
  %70 = load i8*, i8** %11, align 8
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* %14, align 4
  %73 = load i32, i32* @ulBytesPerSector, align 4
  %74 = mul nsw i32 %72, %73
  %75 = sub nsw i32 %71, %74
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i8, i8* %70, i64 %76
  %78 = load i8*, i8** %8, align 8
  %79 = load i32, i32* %9, align 4
  %80 = sext i32 %79 to i64
  %81 = call i32 @memcpy(i8* %77, i8* %78, i64 %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %84, label %83

83:                                               ; preds = %69
  br label %94

84:                                               ; preds = %69
  %85 = load i32, i32* %13, align 4
  %86 = load i32, i32* @ulBytesPerSector, align 4
  %87 = load i32, i32* %14, align 4
  %88 = load i32, i32* %16, align 4
  %89 = load i8*, i8** %11, align 8
  %90 = call i64 @write_sectors(i32 %85, i32 %86, i32 %87, i32 %88, i8* %89)
  %91 = icmp sle i64 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %84
  br label %94

93:                                               ; preds = %84
  store i32 1, i32* %10, align 4
  br label %94

94:                                               ; preds = %93, %92, %83, %68, %58, %52
  %95 = load i8*, i8** %11, align 8
  %96 = call i32 @_mm_free(i8* %95)
  %97 = load i32, i32* %10, align 4
  store i32 %97, i32* %5, align 4
  br label %98

98:                                               ; preds = %94, %26
  %99 = load i32, i32* %5, align 4
  ret i32 %99
}

declare dso_local i8* @_mm_malloc(i32, i32) #1

declare dso_local i32 @uprintf(i8*) #1

declare dso_local i64 @read_sectors(i32, i32, i32, i32, i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i64 @write_sectors(i32, i32, i32, i32, i8*) #1

declare dso_local i32 @_mm_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
