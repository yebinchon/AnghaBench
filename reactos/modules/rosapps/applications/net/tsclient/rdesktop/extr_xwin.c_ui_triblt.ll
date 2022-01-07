; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_xwin.c_ui_triblt.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_xwin.c_ui_triblt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ROP2_XOR = common dso_local global i32 0, align 4
@ROP2_NXOR = common dso_local global i32 0, align 4
@ROP2_AND = common dso_local global i32 0, align 4
@ROP2_COPY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"triblt 0x%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ui_triblt(i32* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32* %9, i32 %10, i32 %11) #0 {
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store i32* %0, i32** %13, align 8
  store i32 %1, i32* %14, align 4
  store i32 %2, i32* %15, align 4
  store i32 %3, i32* %16, align 4
  store i32 %4, i32* %17, align 4
  store i32 %5, i32* %18, align 4
  store i32 %6, i32* %19, align 4
  store i32 %7, i32* %20, align 4
  store i32 %8, i32* %21, align 4
  store i32* %9, i32** %22, align 8
  store i32 %10, i32* %23, align 4
  store i32 %11, i32* %24, align 4
  %25 = load i32, i32* %14, align 4
  switch i32 %25, label %99 [
    i32 105, label %26
    i32 184, label %47
    i32 192, label %78
  ]

26:                                               ; preds = %12
  %27 = load i32*, i32** %13, align 8
  %28 = load i32, i32* @ROP2_XOR, align 4
  %29 = load i32, i32* %15, align 4
  %30 = load i32, i32* %16, align 4
  %31 = load i32, i32* %17, align 4
  %32 = load i32, i32* %18, align 4
  %33 = load i32, i32* %19, align 4
  %34 = load i32, i32* %20, align 4
  %35 = load i32, i32* %21, align 4
  %36 = call i32 @ui_memblt(i32* %27, i32 %28, i32 %29, i32 %30, i32 %31, i32 %32, i32 %33, i32 %34, i32 %35)
  %37 = load i32*, i32** %13, align 8
  %38 = load i32, i32* @ROP2_NXOR, align 4
  %39 = load i32, i32* %15, align 4
  %40 = load i32, i32* %16, align 4
  %41 = load i32, i32* %17, align 4
  %42 = load i32, i32* %18, align 4
  %43 = load i32*, i32** %22, align 8
  %44 = load i32, i32* %23, align 4
  %45 = load i32, i32* %24, align 4
  %46 = call i32 @ui_patblt(i32* %37, i32 %38, i32 %39, i32 %40, i32 %41, i32 %42, i32* %43, i32 %44, i32 %45)
  br label %112

47:                                               ; preds = %12
  %48 = load i32*, i32** %13, align 8
  %49 = load i32, i32* @ROP2_XOR, align 4
  %50 = load i32, i32* %15, align 4
  %51 = load i32, i32* %16, align 4
  %52 = load i32, i32* %17, align 4
  %53 = load i32, i32* %18, align 4
  %54 = load i32*, i32** %22, align 8
  %55 = load i32, i32* %23, align 4
  %56 = load i32, i32* %24, align 4
  %57 = call i32 @ui_patblt(i32* %48, i32 %49, i32 %50, i32 %51, i32 %52, i32 %53, i32* %54, i32 %55, i32 %56)
  %58 = load i32*, i32** %13, align 8
  %59 = load i32, i32* @ROP2_AND, align 4
  %60 = load i32, i32* %15, align 4
  %61 = load i32, i32* %16, align 4
  %62 = load i32, i32* %17, align 4
  %63 = load i32, i32* %18, align 4
  %64 = load i32, i32* %19, align 4
  %65 = load i32, i32* %20, align 4
  %66 = load i32, i32* %21, align 4
  %67 = call i32 @ui_memblt(i32* %58, i32 %59, i32 %60, i32 %61, i32 %62, i32 %63, i32 %64, i32 %65, i32 %66)
  %68 = load i32*, i32** %13, align 8
  %69 = load i32, i32* @ROP2_XOR, align 4
  %70 = load i32, i32* %15, align 4
  %71 = load i32, i32* %16, align 4
  %72 = load i32, i32* %17, align 4
  %73 = load i32, i32* %18, align 4
  %74 = load i32*, i32** %22, align 8
  %75 = load i32, i32* %23, align 4
  %76 = load i32, i32* %24, align 4
  %77 = call i32 @ui_patblt(i32* %68, i32 %69, i32 %70, i32 %71, i32 %72, i32 %73, i32* %74, i32 %75, i32 %76)
  br label %112

78:                                               ; preds = %12
  %79 = load i32*, i32** %13, align 8
  %80 = load i32, i32* @ROP2_COPY, align 4
  %81 = load i32, i32* %15, align 4
  %82 = load i32, i32* %16, align 4
  %83 = load i32, i32* %17, align 4
  %84 = load i32, i32* %18, align 4
  %85 = load i32, i32* %19, align 4
  %86 = load i32, i32* %20, align 4
  %87 = load i32, i32* %21, align 4
  %88 = call i32 @ui_memblt(i32* %79, i32 %80, i32 %81, i32 %82, i32 %83, i32 %84, i32 %85, i32 %86, i32 %87)
  %89 = load i32*, i32** %13, align 8
  %90 = load i32, i32* @ROP2_AND, align 4
  %91 = load i32, i32* %15, align 4
  %92 = load i32, i32* %16, align 4
  %93 = load i32, i32* %17, align 4
  %94 = load i32, i32* %18, align 4
  %95 = load i32*, i32** %22, align 8
  %96 = load i32, i32* %23, align 4
  %97 = load i32, i32* %24, align 4
  %98 = call i32 @ui_patblt(i32* %89, i32 %90, i32 %91, i32 %92, i32 %93, i32 %94, i32* %95, i32 %96, i32 %97)
  br label %112

99:                                               ; preds = %12
  %100 = load i32, i32* %14, align 4
  %101 = call i32 @unimpl(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %100)
  %102 = load i32*, i32** %13, align 8
  %103 = load i32, i32* @ROP2_COPY, align 4
  %104 = load i32, i32* %15, align 4
  %105 = load i32, i32* %16, align 4
  %106 = load i32, i32* %17, align 4
  %107 = load i32, i32* %18, align 4
  %108 = load i32, i32* %19, align 4
  %109 = load i32, i32* %20, align 4
  %110 = load i32, i32* %21, align 4
  %111 = call i32 @ui_memblt(i32* %102, i32 %103, i32 %104, i32 %105, i32 %106, i32 %107, i32 %108, i32 %109, i32 %110)
  br label %112

112:                                              ; preds = %99, %78, %47, %26
  ret void
}

declare dso_local i32 @ui_memblt(i32*, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ui_patblt(i32*, i32, i32, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @unimpl(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
