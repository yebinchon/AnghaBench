; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_load-png.c_png_read_trns.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_load-png.c_png_read_trns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.info = type { i32, i8*, i32, i8*, i32, i64 }

@.str = private unnamed_addr constant [39 x i8] c"too many samples in transparency table\00", align 1
@FZ_ERROR_GENERIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"tRNS chunk is the wrong size\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.info*, i8*, i32)* @png_read_trns to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @png_read_trns(i32* %0, %struct.info* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.info*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.info* %1, %struct.info** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load %struct.info*, %struct.info** %6, align 8
  %11 = getelementptr inbounds %struct.info, %struct.info* %10, i32 0, i32 0
  store i32 1, i32* %11, align 8
  %12 = load %struct.info*, %struct.info** %6, align 8
  %13 = getelementptr inbounds %struct.info, %struct.info* %12, i32 0, i32 5
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %61

16:                                               ; preds = %4
  %17 = load i32, i32* %8, align 4
  %18 = icmp ugt i32 %17, 256
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = load i32*, i32** %5, align 8
  %21 = call i32 @fz_warn(i32* %20, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  store i32 256, i32* %8, align 4
  br label %22

22:                                               ; preds = %19, %16
  store i32 0, i32* %9, align 4
  br label %23

23:                                               ; preds = %41, %22
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp ult i32 %24, %25
  br i1 %26, label %27, label %44

27:                                               ; preds = %23
  %28 = load i8*, i8** %7, align 8
  %29 = load i32, i32* %9, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds i8, i8* %28, i64 %30
  %32 = load i8, i8* %31, align 1
  %33 = load %struct.info*, %struct.info** %6, align 8
  %34 = getelementptr inbounds %struct.info, %struct.info* %33, i32 0, i32 1
  %35 = load i8*, i8** %34, align 8
  %36 = load i32, i32* %9, align 4
  %37 = mul i32 %36, 4
  %38 = add i32 %37, 3
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds i8, i8* %35, i64 %39
  store i8 %32, i8* %40, align 1
  br label %41

41:                                               ; preds = %27
  %42 = load i32, i32* %9, align 4
  %43 = add i32 %42, 1
  store i32 %43, i32* %9, align 4
  br label %23

44:                                               ; preds = %23
  br label %45

45:                                               ; preds = %57, %44
  %46 = load i32, i32* %9, align 4
  %47 = icmp ult i32 %46, 256
  br i1 %47, label %48, label %60

48:                                               ; preds = %45
  %49 = load %struct.info*, %struct.info** %6, align 8
  %50 = getelementptr inbounds %struct.info, %struct.info* %49, i32 0, i32 1
  %51 = load i8*, i8** %50, align 8
  %52 = load i32, i32* %9, align 4
  %53 = mul i32 %52, 4
  %54 = add i32 %53, 3
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds i8, i8* %51, i64 %55
  store i8 -1, i8* %56, align 1
  br label %57

57:                                               ; preds = %48
  %58 = load i32, i32* %9, align 4
  %59 = add i32 %58, 1
  store i32 %59, i32* %9, align 4
  br label %45

60:                                               ; preds = %45
  br label %114

61:                                               ; preds = %4
  %62 = load i32, i32* %8, align 4
  %63 = load %struct.info*, %struct.info** %6, align 8
  %64 = getelementptr inbounds %struct.info, %struct.info* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = mul nsw i32 %65, 2
  %67 = icmp ne i32 %62, %66
  br i1 %67, label %68, label %72

68:                                               ; preds = %61
  %69 = load i32*, i32** %5, align 8
  %70 = load i32, i32* @FZ_ERROR_GENERIC, align 4
  %71 = call i32 @fz_throw(i32* %69, i32 %70, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %72

72:                                               ; preds = %68, %61
  store i32 0, i32* %9, align 4
  br label %73

73:                                               ; preds = %110, %72
  %74 = load i32, i32* %9, align 4
  %75 = load %struct.info*, %struct.info** %6, align 8
  %76 = getelementptr inbounds %struct.info, %struct.info* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = icmp ult i32 %74, %77
  br i1 %78, label %79, label %113

79:                                               ; preds = %73
  %80 = load i8*, i8** %7, align 8
  %81 = load i32, i32* %9, align 4
  %82 = mul i32 %81, 2
  %83 = zext i32 %82 to i64
  %84 = getelementptr inbounds i8, i8* %80, i64 %83
  %85 = load i8, i8* %84, align 1
  %86 = zext i8 %85 to i32
  %87 = shl i32 %86, 8
  %88 = load i8*, i8** %7, align 8
  %89 = load i32, i32* %9, align 4
  %90 = mul i32 %89, 2
  %91 = add i32 %90, 1
  %92 = zext i32 %91 to i64
  %93 = getelementptr inbounds i8, i8* %88, i64 %92
  %94 = load i8, i8* %93, align 1
  %95 = zext i8 %94 to i32
  %96 = or i32 %87, %95
  %97 = load %struct.info*, %struct.info** %6, align 8
  %98 = getelementptr inbounds %struct.info, %struct.info* %97, i32 0, i32 4
  %99 = load i32, i32* %98, align 8
  %100 = shl i32 1, %99
  %101 = sub nsw i32 %100, 1
  %102 = and i32 %96, %101
  %103 = trunc i32 %102 to i8
  %104 = load %struct.info*, %struct.info** %6, align 8
  %105 = getelementptr inbounds %struct.info, %struct.info* %104, i32 0, i32 3
  %106 = load i8*, i8** %105, align 8
  %107 = load i32, i32* %9, align 4
  %108 = zext i32 %107 to i64
  %109 = getelementptr inbounds i8, i8* %106, i64 %108
  store i8 %103, i8* %109, align 1
  br label %110

110:                                              ; preds = %79
  %111 = load i32, i32* %9, align 4
  %112 = add i32 %111, 1
  store i32 %112, i32* %9, align 4
  br label %73

113:                                              ; preds = %73
  br label %114

114:                                              ; preds = %113, %60
  ret void
}

declare dso_local i32 @fz_warn(i32*, i8*) #1

declare dso_local i32 @fz_throw(i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
