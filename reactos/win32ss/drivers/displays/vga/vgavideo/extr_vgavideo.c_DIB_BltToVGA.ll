; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/drivers/displays/vga/vgavideo/extr_vgavideo.c_DIB_BltToVGA.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/drivers/displays/vga/vgavideo/extr_vgavideo.c_DIB_BltToVGA.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@xconv = common dso_local global i64* null, align 8
@y80 = common dso_local global i64* null, align 8
@GRA_I = common dso_local global i64 0, align 8
@GRA_D = common dso_local global i64 0, align 8
@maskbit = common dso_local global i32* null, align 8
@vidmem = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @DIB_BltToVGA(i32 %0, i32 %1, i32 %2, i32 %3, i8* %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
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
  store i32 %6, i32* %14, align 4
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
  %49 = add nsw i64 %43, %48
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
  %60 = load i32, i32* %14, align 4
  %61 = sext i32 %60 to i64
  %62 = load i64, i64* %17, align 8
  %63 = load i32, i32* %8, align 4
  %64 = sext i32 %63 to i64
  %65 = sub i64 %62, %64
  %66 = urem i64 %65, 2
  %67 = icmp eq i64 %61, %66
  br i1 %67, label %68, label %98

68:                                               ; preds = %38
  %69 = load i32, i32* %9, align 4
  %70 = sext i32 %69 to i64
  store i64 %70, i64* %18, align 8
  br label %71

71:                                               ; preds = %94, %68
  %72 = load i64, i64* %18, align 8
  %73 = load i64, i64* %20, align 8
  %74 = icmp ult i64 %72, %73
  br i1 %74, label %75, label %97

75:                                               ; preds = %71
  %76 = load i64, i64* @vidmem, align 8
  %77 = load i64, i64* %21, align 8
  %78 = add nsw i64 %76, %77
  %79 = call i32 @READ_REGISTER_UCHAR(i64 %78)
  %80 = load i64, i64* @vidmem, align 8
  %81 = load i64, i64* %21, align 8
  %82 = add nsw i64 %80, %81
  %83 = load i32*, i32** %15, align 8
  %84 = load i32, i32* %83, align 4
  %85 = and i32 %84, 240
  %86 = ashr i32 %85, 4
  %87 = call i32 @WRITE_REGISTER_UCHAR(i64 %82, i32 %86)
  %88 = load i64, i64* %21, align 8
  %89 = add nsw i64 %88, 80
  store i64 %89, i64* %21, align 8
  %90 = load i32, i32* %13, align 4
  %91 = load i32*, i32** %15, align 8
  %92 = sext i32 %90 to i64
  %93 = getelementptr inbounds i32, i32* %91, i64 %92
  store i32* %93, i32** %15, align 8
  br label %94

94:                                               ; preds = %75
  %95 = load i64, i64* %18, align 8
  %96 = add i64 %95, 1
  store i64 %96, i64* %18, align 8
  br label %71

97:                                               ; preds = %71
  br label %127

98:                                               ; preds = %38
  %99 = load i32, i32* %9, align 4
  %100 = sext i32 %99 to i64
  store i64 %100, i64* %18, align 8
  br label %101

101:                                              ; preds = %123, %98
  %102 = load i64, i64* %18, align 8
  %103 = load i64, i64* %20, align 8
  %104 = icmp ult i64 %102, %103
  br i1 %104, label %105, label %126

105:                                              ; preds = %101
  %106 = load i64, i64* @vidmem, align 8
  %107 = load i64, i64* %21, align 8
  %108 = add nsw i64 %106, %107
  %109 = call i32 @READ_REGISTER_UCHAR(i64 %108)
  %110 = load i64, i64* @vidmem, align 8
  %111 = load i64, i64* %21, align 8
  %112 = add nsw i64 %110, %111
  %113 = load i32*, i32** %15, align 8
  %114 = load i32, i32* %113, align 4
  %115 = and i32 %114, 15
  %116 = call i32 @WRITE_REGISTER_UCHAR(i64 %112, i32 %115)
  %117 = load i64, i64* %21, align 8
  %118 = add nsw i64 %117, 80
  store i64 %118, i64* %21, align 8
  %119 = load i32, i32* %13, align 4
  %120 = load i32*, i32** %15, align 8
  %121 = sext i32 %119 to i64
  %122 = getelementptr inbounds i32, i32* %120, i64 %121
  store i32* %122, i32** %15, align 8
  br label %123

123:                                              ; preds = %105
  %124 = load i64, i64* %18, align 8
  %125 = add i64 %124, 1
  store i64 %125, i64* %18, align 8
  br label %101

126:                                              ; preds = %101
  br label %127

127:                                              ; preds = %126, %97
  %128 = load i32, i32* %14, align 4
  %129 = sext i32 %128 to i64
  %130 = load i64, i64* %17, align 8
  %131 = load i32, i32* %8, align 4
  %132 = sext i32 %131 to i64
  %133 = sub i64 %130, %132
  %134 = urem i64 %133, 2
  %135 = icmp ne i64 %129, %134
  br i1 %135, label %136, label %139

136:                                              ; preds = %127
  %137 = load i32*, i32** %16, align 8
  %138 = getelementptr inbounds i32, i32* %137, i32 1
  store i32* %138, i32** %16, align 8
  br label %139

139:                                              ; preds = %136, %127
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

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
