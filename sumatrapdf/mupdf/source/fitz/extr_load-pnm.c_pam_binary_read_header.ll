; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_load-pnm.c_pam_binary_read_header.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_load-pnm.c_pam_binary_read_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.info = type { i64, i64, i64, i64, i64 }

@TOKEN_UNKNOWN = common dso_local global i32 0, align 4
@FZ_ERROR_GENERIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"unknown header token in pnm image\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*, %struct.info*, i8*, i8*)* @pam_binary_read_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @pam_binary_read_header(i32* %0, %struct.info* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.info*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.info* %1, %struct.info** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %10 = load i32, i32* @TOKEN_UNKNOWN, align 4
  store i32 %10, i32* %9, align 4
  %11 = load %struct.info*, %struct.info** %6, align 8
  %12 = getelementptr inbounds %struct.info, %struct.info* %11, i32 0, i32 4
  store i64 0, i64* %12, align 8
  %13 = load %struct.info*, %struct.info** %6, align 8
  %14 = getelementptr inbounds %struct.info, %struct.info* %13, i32 0, i32 3
  store i64 0, i64* %14, align 8
  %15 = load %struct.info*, %struct.info** %6, align 8
  %16 = getelementptr inbounds %struct.info, %struct.info* %15, i32 0, i32 2
  store i64 0, i64* %16, align 8
  %17 = load %struct.info*, %struct.info** %6, align 8
  %18 = getelementptr inbounds %struct.info, %struct.info* %17, i32 0, i32 1
  store i64 0, i64* %18, align 8
  %19 = load %struct.info*, %struct.info** %6, align 8
  %20 = getelementptr inbounds %struct.info, %struct.info* %19, i32 0, i32 0
  store i64 0, i64* %20, align 8
  br label %21

21:                                               ; preds = %88, %4
  %22 = load i8*, i8** %7, align 8
  %23 = load i8*, i8** %8, align 8
  %24 = icmp ult i8* %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = load i32, i32* %9, align 4
  %27 = icmp ne i32 %26, 132
  br label %28

28:                                               ; preds = %25, %21
  %29 = phi i1 [ false, %21 ], [ %27, %25 ]
  br i1 %29, label %30, label %89

30:                                               ; preds = %28
  %31 = load i32*, i32** %5, align 8
  %32 = load i8*, i8** %7, align 8
  %33 = load i8*, i8** %8, align 8
  %34 = call i8* @pnm_read_token(i32* %31, i8* %32, i8* %33, i32* %9)
  store i8* %34, i8** %7, align 8
  %35 = load i32*, i32** %5, align 8
  %36 = load i8*, i8** %7, align 8
  %37 = load i8*, i8** %8, align 8
  %38 = call i8* @pnm_read_white(i32* %35, i8* %36, i8* %37, i32 0)
  store i8* %38, i8** %7, align 8
  %39 = load i32, i32* %9, align 4
  switch i32 %39, label %76 [
    i32 128, label %40
    i32 131, label %47
    i32 133, label %54
    i32 130, label %61
    i32 129, label %68
    i32 132, label %75
  ]

40:                                               ; preds = %30
  %41 = load i32*, i32** %5, align 8
  %42 = load i8*, i8** %7, align 8
  %43 = load i8*, i8** %8, align 8
  %44 = load %struct.info*, %struct.info** %6, align 8
  %45 = getelementptr inbounds %struct.info, %struct.info* %44, i32 0, i32 4
  %46 = call i8* @pnm_read_number(i32* %41, i8* %42, i8* %43, i64* %45)
  store i8* %46, i8** %7, align 8
  br label %80

47:                                               ; preds = %30
  %48 = load i32*, i32** %5, align 8
  %49 = load i8*, i8** %7, align 8
  %50 = load i8*, i8** %8, align 8
  %51 = load %struct.info*, %struct.info** %6, align 8
  %52 = getelementptr inbounds %struct.info, %struct.info* %51, i32 0, i32 3
  %53 = call i8* @pnm_read_number(i32* %48, i8* %49, i8* %50, i64* %52)
  store i8* %53, i8** %7, align 8
  br label %80

54:                                               ; preds = %30
  %55 = load i32*, i32** %5, align 8
  %56 = load i8*, i8** %7, align 8
  %57 = load i8*, i8** %8, align 8
  %58 = load %struct.info*, %struct.info** %6, align 8
  %59 = getelementptr inbounds %struct.info, %struct.info* %58, i32 0, i32 2
  %60 = call i8* @pnm_read_number(i32* %55, i8* %56, i8* %57, i64* %59)
  store i8* %60, i8** %7, align 8
  br label %80

61:                                               ; preds = %30
  %62 = load i32*, i32** %5, align 8
  %63 = load i8*, i8** %7, align 8
  %64 = load i8*, i8** %8, align 8
  %65 = load %struct.info*, %struct.info** %6, align 8
  %66 = getelementptr inbounds %struct.info, %struct.info* %65, i32 0, i32 1
  %67 = call i8* @pnm_read_number(i32* %62, i8* %63, i8* %64, i64* %66)
  store i8* %67, i8** %7, align 8
  br label %80

68:                                               ; preds = %30
  %69 = load i32*, i32** %5, align 8
  %70 = load i8*, i8** %7, align 8
  %71 = load i8*, i8** %8, align 8
  %72 = load %struct.info*, %struct.info** %6, align 8
  %73 = getelementptr inbounds %struct.info, %struct.info* %72, i32 0, i32 0
  %74 = call i8* @pnm_read_tupletype(i32* %69, i8* %70, i8* %71, i64* %73)
  store i8* %74, i8** %7, align 8
  br label %80

75:                                               ; preds = %30
  br label %80

76:                                               ; preds = %30
  %77 = load i32*, i32** %5, align 8
  %78 = load i32, i32* @FZ_ERROR_GENERIC, align 4
  %79 = call i32 @fz_throw(i32* %77, i32 %78, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %80

80:                                               ; preds = %76, %75, %68, %61, %54, %47, %40
  %81 = load i32, i32* %9, align 4
  %82 = icmp ne i32 %81, 132
  br i1 %82, label %83, label %88

83:                                               ; preds = %80
  %84 = load i32*, i32** %5, align 8
  %85 = load i8*, i8** %7, align 8
  %86 = load i8*, i8** %8, align 8
  %87 = call i8* @pnm_read_white(i32* %84, i8* %85, i8* %86, i32 0)
  store i8* %87, i8** %7, align 8
  br label %88

88:                                               ; preds = %83, %80
  br label %21

89:                                               ; preds = %28
  %90 = load i8*, i8** %7, align 8
  ret i8* %90
}

declare dso_local i8* @pnm_read_token(i32*, i8*, i8*, i32*) #1

declare dso_local i8* @pnm_read_white(i32*, i8*, i8*, i32) #1

declare dso_local i8* @pnm_read_number(i32*, i8*, i8*, i64*) #1

declare dso_local i8* @pnm_read_tupletype(i32*, i8*, i8*, i64*) #1

declare dso_local i32 @fz_throw(i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
