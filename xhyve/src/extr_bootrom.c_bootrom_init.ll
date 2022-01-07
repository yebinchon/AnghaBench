; ModuleID = '/home/carl/AnghaBench/xhyve/src/extr_bootrom.c_bootrom_init.c'
source_filename = "/home/carl/AnghaBench/xhyve/src/extr_bootrom.c_bootrom_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@O_RDONLY = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Error opening bootrom \22%s\22: %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"Could not fstat bootrom file \22%s\22: %s\0A\00", align 1
@MAX_BOOTROM_SIZE = common dso_local global i32 0, align 4
@XHYVE_PAGE_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"Invalid bootrom size %lld\0A\00", align 1
@XHYVE_PAGE_MASK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [54 x i8] c"Bootrom size %lld is not a multiple of the page size\0A\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"hv_setup_bootrom_memory failed\0A\00", align 1
@.str.5 = private unnamed_addr constant [58 x i8] c"Incomplete read of page %d of bootrom file %s: %ld bytes\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bootrom_init(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.stat, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store i32 -1, i32* %8, align 4
  %9 = load i8*, i8** %2, align 8
  %10 = load i32, i32* @O_RDONLY, align 4
  %11 = call i32 @open(i8* %9, i32 %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %1
  %15 = load i32, i32* @stderr, align 4
  %16 = load i8*, i8** %2, align 8
  %17 = load i32, i32* @errno, align 4
  %18 = call i8* @strerror(i32 %17)
  %19 = call i32 (i32, i8*, ...) @fprintf(i32 %15, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i8* %16, i8* %18)
  br label %97

20:                                               ; preds = %1
  %21 = load i32, i32* %6, align 4
  %22 = call i64 @fstat(i32 %21, %struct.stat* %3)
  %23 = icmp slt i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %20
  %25 = load i32, i32* @stderr, align 4
  %26 = load i8*, i8** %2, align 8
  %27 = load i32, i32* @errno, align 4
  %28 = call i8* @strerror(i32 %27)
  %29 = call i32 (i32, i8*, ...) @fprintf(i32 %25, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i8* %26, i8* %28)
  br label %97

30:                                               ; preds = %20
  %31 = getelementptr inbounds %struct.stat, %struct.stat* %3, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @MAX_BOOTROM_SIZE, align 4
  %34 = icmp sgt i32 %32, %33
  br i1 %34, label %40, label %35

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.stat, %struct.stat* %3, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @XHYVE_PAGE_SIZE, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %35, %30
  %41 = load i32, i32* @stderr, align 4
  %42 = getelementptr inbounds %struct.stat, %struct.stat* %3, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 (i32, i8*, ...) @fprintf(i32 %41, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %43)
  br label %97

45:                                               ; preds = %35
  %46 = getelementptr inbounds %struct.stat, %struct.stat* %3, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @XHYVE_PAGE_MASK, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %45
  %52 = load i32, i32* @stderr, align 4
  %53 = getelementptr inbounds %struct.stat, %struct.stat* %3, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 (i32, i8*, ...) @fprintf(i32 %52, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i64 0, i64 0), i32 %54)
  br label %97

56:                                               ; preds = %45
  %57 = getelementptr inbounds %struct.stat, %struct.stat* %3, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = sext i32 %58 to i64
  %60 = call i64 @xh_setup_bootrom_memory(i64 %59, i8** %5)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %56
  %63 = load i32, i32* @stderr, align 4
  %64 = call i32 (i32, i8*, ...) @fprintf(i32 %63, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  br label %97

65:                                               ; preds = %56
  store i32 0, i32* %7, align 4
  br label %66

66:                                               ; preds = %93, %65
  %67 = load i32, i32* %7, align 4
  %68 = getelementptr inbounds %struct.stat, %struct.stat* %3, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @XHYVE_PAGE_SIZE, align 4
  %71 = sdiv i32 %69, %70
  %72 = icmp slt i32 %67, %71
  br i1 %72, label %73, label %96

73:                                               ; preds = %66
  %74 = load i32, i32* %6, align 4
  %75 = load i8*, i8** %5, align 8
  %76 = load i32, i32* %7, align 4
  %77 = load i32, i32* @XHYVE_PAGE_SIZE, align 4
  %78 = mul nsw i32 %76, %77
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i8, i8* %75, i64 %79
  %81 = load i32, i32* @XHYVE_PAGE_SIZE, align 4
  %82 = call i32 @read(i32 %74, i8* %80, i32 %81)
  store i32 %82, i32* %4, align 4
  %83 = load i32, i32* %4, align 4
  %84 = load i32, i32* @XHYVE_PAGE_SIZE, align 4
  %85 = icmp ne i32 %83, %84
  br i1 %85, label %86, label %92

86:                                               ; preds = %73
  %87 = load i32, i32* @stderr, align 4
  %88 = load i32, i32* %7, align 4
  %89 = load i8*, i8** %2, align 8
  %90 = load i32, i32* %4, align 4
  %91 = call i32 (i32, i8*, ...) @fprintf(i32 %87, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.5, i64 0, i64 0), i32 %88, i8* %89, i32 %90)
  br label %97

92:                                               ; preds = %73
  br label %93

93:                                               ; preds = %92
  %94 = load i32, i32* %7, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %7, align 4
  br label %66

96:                                               ; preds = %66
  store i32 0, i32* %8, align 4
  br label %97

97:                                               ; preds = %96, %86, %62, %51, %40, %24, %14
  %98 = load i32, i32* %6, align 4
  %99 = icmp sge i32 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %97
  %101 = load i32, i32* %6, align 4
  %102 = call i32 @close(i32 %101)
  br label %103

103:                                              ; preds = %100, %97
  %104 = load i32, i32* %8, align 4
  ret i32 %104
}

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i8* @strerror(i32) #1

declare dso_local i64 @fstat(i32, %struct.stat*) #1

declare dso_local i64 @xh_setup_bootrom_memory(i64, i8**) #1

declare dso_local i32 @read(i32, i8*, i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
