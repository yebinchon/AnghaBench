; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/drivers/displays/vga/vgavideo/extr_vgavideo.c_DIB_BltToVGAWithXlate.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/drivers/displays/vga/vgavideo/extr_vgavideo.c_DIB_BltToVGAWithXlate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@xconv = common dso_local global i64* null, align 8
@y80 = common dso_local global i64* null, align 8
@GRA_I = common dso_local global i64 0, align 8
@GRA_D = common dso_local global i64 0, align 8
@maskbit = common dso_local global i32* null, align 8
@vidmem = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @DIB_BltToVGAWithXlate(i32 %0, i32 %1, i32 %2, i32 %3, i8* %4, i32 %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i8* %4, i8** %12, align 8
  store i32 %5, i32* %13, align 4
  store i32* %6, i32** %14, align 8
  %22 = load i8*, i8** %12, align 8
  %23 = bitcast i8* %22 to i32*
  store i32* %23, i32** %16, align 8
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* %10, align 4
  %26 = add nsw i32 %24, %25
  %27 = sext i32 %26 to i64
  store i64 %27, i64* %19, align 8
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* %11, align 4
  %30 = add nsw i32 %28, %29
  %31 = sext i32 %30 to i64
  store i64 %31, i64* %20, align 8
  %32 = load i32, i32* %8, align 4
  %33 = sext i32 %32 to i64
  store i64 %33, i64* %17, align 8
  br label %34

34:                                               ; preds = %140, %7
  %35 = load i64, i64* %17, align 8
  %36 = load i64, i64* %19, align 8
  %37 = icmp ult i64 %35, %36
  br i1 %37, label %38, label %143

38:                                               ; preds = %34
  %39 = load i32*, i32** %16, align 8
  store i32* %39, i32** %15, align 8
  %40 = load i64*, i64** @xconv, align 8
  %41 = load i64, i64* %17, align 8
  %42 = getelementptr inbounds i64, i64* %40, i64 %41
  %43 = load i64, i64* %42, align 8
  %44 = load i64*, i64** @y80, align 8
  %45 = load i32, i32* %9, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i64, i64* %44, i64 %46
  %48 = load i64, i64* %47, align 8
  %49 = add i64 %43, %48
  store i64 %49, i64* %21, align 8
  %50 = load i64, i64* @GRA_I, align 8
  %51 = inttoptr i64 %50 to i32*
  %52 = call i32 @WRITE_PORT_UCHAR(i32* %51, i32 8)
  %53 = load i64, i64* @GRA_D, align 8
  %54 = inttoptr i64 %53 to i32*
  %55 = load i32*, i32** @maskbit, align 8
  %56 = load i64, i64* %17, align 8
  %57 = getelementptr inbounds i32, i32* %55, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @WRITE_PORT_UCHAR(i32* %54, i32 %58)
  %60 = load i64, i64* %17, align 8
  %61 = load i32, i32* %8, align 4
  %62 = sext i32 %61 to i64
  %63 = sub i64 %60, %62
  %64 = urem i64 %63, 2
  %65 = icmp eq i64 0, %64
  br i1 %65, label %66, label %98

66:                                               ; preds = %38
  %67 = load i32, i32* %9, align 4
  %68 = sext i32 %67 to i64
  store i64 %68, i64* %18, align 8
  br label %69

69:                                               ; preds = %94, %66
  %70 = load i64, i64* %18, align 8
  %71 = load i64, i64* %20, align 8
  %72 = icmp ult i64 %70, %71
  br i1 %72, label %73, label %97

73:                                               ; preds = %69
  %74 = load i64, i64* @vidmem, align 8
  %75 = load i64, i64* %21, align 8
  %76 = add i64 %74, %75
  %77 = call i32 @READ_REGISTER_UCHAR(i64 %76)
  %78 = load i64, i64* @vidmem, align 8
  %79 = load i64, i64* %21, align 8
  %80 = add i64 %78, %79
  %81 = load i32*, i32** %14, align 8
  %82 = load i32*, i32** %15, align 8
  %83 = load i32, i32* %82, align 4
  %84 = and i32 %83, 240
  %85 = ashr i32 %84, 4
  %86 = call i32 @XLATEOBJ_iXlate(i32* %81, i32 %85)
  %87 = call i32 @WRITE_REGISTER_UCHAR(i64 %80, i32 %86)
  %88 = load i64, i64* %21, align 8
  %89 = add i64 %88, 80
  store i64 %89, i64* %21, align 8
  %90 = load i32, i32* %13, align 4
  %91 = load i32*, i32** %15, align 8
  %92 = sext i32 %90 to i64
  %93 = getelementptr inbounds i32, i32* %91, i64 %92
  store i32* %93, i32** %15, align 8
  br label %94

94:                                               ; preds = %73
  %95 = load i64, i64* %18, align 8
  %96 = add i64 %95, 1
  store i64 %96, i64* %18, align 8
  br label %69

97:                                               ; preds = %69
  br label %129

98:                                               ; preds = %38
  %99 = load i32, i32* %9, align 4
  %100 = sext i32 %99 to i64
  store i64 %100, i64* %18, align 8
  br label %101

101:                                              ; preds = %125, %98
  %102 = load i64, i64* %18, align 8
  %103 = load i64, i64* %20, align 8
  %104 = icmp ult i64 %102, %103
  br i1 %104, label %105, label %128

105:                                              ; preds = %101
  %106 = load i64, i64* @vidmem, align 8
  %107 = load i64, i64* %21, align 8
  %108 = add i64 %106, %107
  %109 = call i32 @READ_REGISTER_UCHAR(i64 %108)
  %110 = load i64, i64* @vidmem, align 8
  %111 = load i64, i64* %21, align 8
  %112 = add i64 %110, %111
  %113 = load i32*, i32** %14, align 8
  %114 = load i32*, i32** %15, align 8
  %115 = load i32, i32* %114, align 4
  %116 = and i32 %115, 15
  %117 = call i32 @XLATEOBJ_iXlate(i32* %113, i32 %116)
  %118 = call i32 @WRITE_REGISTER_UCHAR(i64 %112, i32 %117)
  %119 = load i64, i64* %21, align 8
  %120 = add i64 %119, 80
  store i64 %120, i64* %21, align 8
  %121 = load i32, i32* %13, align 4
  %122 = load i32*, i32** %15, align 8
  %123 = sext i32 %121 to i64
  %124 = getelementptr inbounds i32, i32* %122, i64 %123
  store i32* %124, i32** %15, align 8
  br label %125

125:                                              ; preds = %105
  %126 = load i64, i64* %18, align 8
  %127 = add i64 %126, 1
  store i64 %127, i64* %18, align 8
  br label %101

128:                                              ; preds = %101
  br label %129

129:                                              ; preds = %128, %97
  %130 = load i64, i64* %17, align 8
  %131 = load i32, i32* %8, align 4
  %132 = sext i32 %131 to i64
  %133 = sub i64 %130, %132
  %134 = urem i64 %133, 2
  %135 = icmp ne i64 0, %134
  br i1 %135, label %136, label %139

136:                                              ; preds = %129
  %137 = load i32*, i32** %16, align 8
  %138 = getelementptr inbounds i32, i32* %137, i32 1
  store i32* %138, i32** %16, align 8
  br label %139

139:                                              ; preds = %136, %129
  br label %140

140:                                              ; preds = %139
  %141 = load i64, i64* %17, align 8
  %142 = add i64 %141, 1
  store i64 %142, i64* %17, align 8
  br label %34

143:                                              ; preds = %34
  ret void
}

declare dso_local i32 @WRITE_PORT_UCHAR(i32*, i32) #1

declare dso_local i32 @READ_REGISTER_UCHAR(i64) #1

declare dso_local i32 @WRITE_REGISTER_UCHAR(i64, i32) #1

declare dso_local i32 @XLATEOBJ_iXlate(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
