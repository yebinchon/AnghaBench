; ModuleID = '/home/carl/AnghaBench/stb/tests/pg_test/extr_pg_test.c_stbpg_main.c'
source_filename = "/home/carl/AnghaBench/stb/tests/pg_test/extr_pg_test.c_stbpg_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [37 x i8] c"c:/x/ned_1m/x73_y428_10012_10012.bin\00", align 1
@hf_width = common dso_local global i32 0, align 4
@hf_height = common dso_local global i32 0, align 4
@hf = common dso_local global i16* null, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"terrain_edit\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @stbpg_main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i16*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %10 = call i16* @stb_file(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32* null)
  store i16* %10, i16** %7, align 8
  store i32 10012, i32* %8, align 4
  store i32 10012, i32* %9, align 4
  %11 = load i32, i32* @hf_width, align 4
  %12 = load i32, i32* @hf_height, align 4
  %13 = mul nsw i32 %11, %12
  %14 = mul nsw i32 %13, 4
  %15 = call i16* @malloc(i32 %14)
  store i16* %15, i16** @hf, align 8
  store i32 0, i32* %6, align 4
  br label %16

16:                                               ; preds = %51, %2
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @hf_height, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %54

20:                                               ; preds = %16
  store i32 0, i32* %5, align 4
  br label %21

21:                                               ; preds = %47, %20
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @hf_width, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %50

25:                                               ; preds = %21
  %26 = load i16*, i16** %7, align 8
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* %8, align 4
  %29 = mul nsw i32 %27, %28
  %30 = load i32, i32* %5, align 4
  %31 = add nsw i32 %29, %30
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i16, i16* %26, i64 %32
  %34 = load i16, i16* %33, align 2
  %35 = zext i16 %34 to i32
  %36 = sitofp i32 %35 to float
  %37 = fdiv float %36, 3.200000e+01
  %38 = fptoui float %37 to i16
  %39 = load i16*, i16** @hf, align 8
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* @hf_width, align 4
  %42 = mul nsw i32 %40, %41
  %43 = load i32, i32* %5, align 4
  %44 = add nsw i32 %42, %43
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i16, i16* %39, i64 %45
  store i16 %38, i16* %46, align 2
  br label %47

47:                                               ; preds = %25
  %48 = load i32, i32* %5, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %5, align 4
  br label %21

50:                                               ; preds = %21
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %6, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %6, align 4
  br label %16

54:                                               ; preds = %16
  %55 = call i32 @stbpg_gl_compat_version(i32 1, i32 1)
  %56 = call i32 @stbpg_windowed(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 1920, i32 1080)
  %57 = call i32 (...) @stbpg_run()
  ret void
}

declare dso_local i16* @stb_file(i8*, i32*) #1

declare dso_local i16* @malloc(i32) #1

declare dso_local i32 @stbpg_gl_compat_version(i32, i32) #1

declare dso_local i32 @stbpg_windowed(i8*, i32, i32) #1

declare dso_local i32 @stbpg_run(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
