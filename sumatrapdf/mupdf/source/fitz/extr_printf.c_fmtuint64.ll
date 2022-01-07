; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_printf.c_fmtuint64.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_printf.c_fmtuint64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fmtbuf = type { i32 }

@fz_hex_digits = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fmtbuf*, i32, i32, i32, i32, i32)* @fmtuint64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fmtuint64(%struct.fmtbuf* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.fmtbuf*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [80 x i8], align 16
  %14 = alloca i32, align 4
  store %struct.fmtbuf* %0, %struct.fmtbuf** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  store i32 0, i32* %14, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %6
  %18 = load i32, i32* %14, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %14, align 4
  %20 = sext i32 %18 to i64
  %21 = getelementptr inbounds [80 x i8], [80 x i8]* %13, i64 0, i64 %20
  store i8 48, i8* %21, align 1
  br label %22

22:                                               ; preds = %17, %6
  br label %23

23:                                               ; preds = %26, %22
  %24 = load i32, i32* %8, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %41

26:                                               ; preds = %23
  %27 = load i8*, i8** @fz_hex_digits, align 8
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* %12, align 4
  %30 = srem i32 %28, %29
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8, i8* %27, i64 %31
  %33 = load i8, i8* %32, align 1
  %34 = load i32, i32* %14, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %14, align 4
  %36 = sext i32 %34 to i64
  %37 = getelementptr inbounds [80 x i8], [80 x i8]* %13, i64 0, i64 %36
  store i8 %33, i8* %37, align 1
  %38 = load i32, i32* %12, align 4
  %39 = load i32, i32* %8, align 4
  %40 = sdiv i32 %39, %38
  store i32 %40, i32* %8, align 4
  br label %23

41:                                               ; preds = %23
  %42 = load i32, i32* %9, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %68

44:                                               ; preds = %41
  %45 = load i32, i32* %10, align 4
  %46 = icmp eq i32 %45, 48
  br i1 %46, label %47, label %61

47:                                               ; preds = %44
  br label %48

48:                                               ; preds = %53, %47
  %49 = load i32, i32* %14, align 4
  %50 = load i32, i32* %11, align 4
  %51 = sub nsw i32 %50, 1
  %52 = icmp slt i32 %49, %51
  br i1 %52, label %53, label %60

53:                                               ; preds = %48
  %54 = load i32, i32* %10, align 4
  %55 = trunc i32 %54 to i8
  %56 = load i32, i32* %14, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %14, align 4
  %58 = sext i32 %56 to i64
  %59 = getelementptr inbounds [80 x i8], [80 x i8]* %13, i64 0, i64 %58
  store i8 %55, i8* %59, align 1
  br label %48

60:                                               ; preds = %48
  br label %61

61:                                               ; preds = %60, %44
  %62 = load i32, i32* %9, align 4
  %63 = trunc i32 %62 to i8
  %64 = load i32, i32* %14, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %14, align 4
  %66 = sext i32 %64 to i64
  %67 = getelementptr inbounds [80 x i8], [80 x i8]* %13, i64 0, i64 %66
  store i8 %63, i8* %67, align 1
  br label %68

68:                                               ; preds = %61, %41
  br label %69

69:                                               ; preds = %73, %68
  %70 = load i32, i32* %14, align 4
  %71 = load i32, i32* %11, align 4
  %72 = icmp slt i32 %70, %71
  br i1 %72, label %73, label %80

73:                                               ; preds = %69
  %74 = load i32, i32* %10, align 4
  %75 = trunc i32 %74 to i8
  %76 = load i32, i32* %14, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %14, align 4
  %78 = sext i32 %76 to i64
  %79 = getelementptr inbounds [80 x i8], [80 x i8]* %13, i64 0, i64 %78
  store i8 %75, i8* %79, align 1
  br label %69

80:                                               ; preds = %69
  br label %81

81:                                               ; preds = %84, %80
  %82 = load i32, i32* %14, align 4
  %83 = icmp sgt i32 %82, 0
  br i1 %83, label %84, label %92

84:                                               ; preds = %81
  %85 = load %struct.fmtbuf*, %struct.fmtbuf** %7, align 8
  %86 = load i32, i32* %14, align 4
  %87 = add nsw i32 %86, -1
  store i32 %87, i32* %14, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds [80 x i8], [80 x i8]* %13, i64 0, i64 %88
  %90 = load i8, i8* %89, align 1
  %91 = call i32 @fmtputc(%struct.fmtbuf* %85, i8 signext %90)
  br label %81

92:                                               ; preds = %81
  ret void
}

declare dso_local i32 @fmtputc(%struct.fmtbuf*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
