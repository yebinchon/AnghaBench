; ModuleID = '/home/carl/AnghaBench/reactos/win32ss/drivers/displays/vga/vgavideo/extr_vgavideo.c_vgaHLine.c'
source_filename = "/home/carl/AnghaBench/reactos/win32ss/drivers/displays/vga/vgavideo/extr_vgavideo.c_vgaHLine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@xconv = common dso_local global i32* null, align 8
@y80 = common dso_local global i32* null, align 8
@startmasks = common dso_local global i32* null, align 8
@endmasks = common dso_local global i32* null, align 8
@GRA_I = common dso_local global i64 0, align 8
@GRA_D = common dso_local global i64 0, align 8
@vidmem = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vgaHLine(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %17 = load i32, i32* %6, align 4
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %6, align 4
  %19 = sub nsw i32 %18, 1
  %20 = call i32 @mod8(i32 %19)
  %21 = sub nsw i32 7, %20
  store i32 %21, i32* %13, align 4
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* %8, align 4
  %24 = add nsw i32 %22, %23
  %25 = call i32 @mod8(i32 %24)
  store i32 %25, i32* %15, align 4
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* %13, align 4
  %28 = sub nsw i32 %26, %27
  %29 = load i32, i32* %15, align 4
  %30 = sub nsw i32 %28, %29
  %31 = sdiv i32 %30, 8
  store i32 %31, i32* %14, align 4
  %32 = load i32*, i32** @xconv, align 8
  %33 = load i32, i32* %6, align 4
  %34 = sub nsw i32 %33, 1
  %35 = and i32 %34, -8
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %32, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = load i32*, i32** @y80, align 8
  %40 = load i32, i32* %7, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = add nsw i32 %38, %43
  store i32 %44, i32* %11, align 4
  %45 = load i32, i32* %13, align 4
  %46 = load i32, i32* %15, align 4
  %47 = add nsw i32 %45, %46
  %48 = load i32, i32* %8, align 4
  %49 = icmp sgt i32 %47, %48
  br i1 %49, label %50, label %79

50:                                               ; preds = %4
  %51 = load i32*, i32** @startmasks, align 8
  %52 = load i32, i32* %13, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = load i32*, i32** @endmasks, align 8
  %57 = load i32, i32* %15, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = and i32 %55, %60
  store i32 %61, i32* %16, align 4
  %62 = load i64, i64* @GRA_I, align 8
  %63 = trunc i64 %62 to i32
  %64 = call i32 @WRITE_PORT_UCHAR(i32 %63, i32 8)
  %65 = load i64, i64* @GRA_D, align 8
  %66 = trunc i64 %65 to i32
  %67 = load i32, i32* %16, align 4
  %68 = call i32 @WRITE_PORT_UCHAR(i32 %66, i32 %67)
  %69 = load i32, i32* @vidmem, align 4
  %70 = load i32, i32* %11, align 4
  %71 = add nsw i32 %69, %70
  %72 = call i32 @READ_REGISTER_UCHAR(i32 %71)
  %73 = load i32, i32* @vidmem, align 4
  %74 = load i32, i32* %11, align 4
  %75 = add nsw i32 %73, %74
  %76 = load i32, i32* %9, align 4
  %77 = call i32 @WRITE_REGISTER_UCHAR(i32 %75, i32 %76)
  %78 = load i32, i32* @TRUE, align 4
  store i32 %78, i32* %5, align 4
  br label %174

79:                                               ; preds = %4
  %80 = load i32, i32* %13, align 4
  %81 = icmp sgt i32 %80, 0
  br i1 %81, label %82, label %105

82:                                               ; preds = %79
  %83 = load i64, i64* @GRA_I, align 8
  %84 = trunc i64 %83 to i32
  %85 = call i32 @WRITE_PORT_UCHAR(i32 %84, i32 8)
  %86 = load i64, i64* @GRA_D, align 8
  %87 = trunc i64 %86 to i32
  %88 = load i32*, i32** @startmasks, align 8
  %89 = load i32, i32* %13, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @WRITE_PORT_UCHAR(i32 %87, i32 %92)
  %94 = load i32, i32* @vidmem, align 4
  %95 = load i32, i32* %11, align 4
  %96 = add nsw i32 %94, %95
  %97 = call i32 @READ_REGISTER_UCHAR(i32 %96)
  %98 = load i32, i32* @vidmem, align 4
  %99 = load i32, i32* %11, align 4
  %100 = add nsw i32 %98, %99
  %101 = load i32, i32* %9, align 4
  %102 = call i32 @WRITE_REGISTER_UCHAR(i32 %100, i32 %101)
  %103 = load i32, i32* %10, align 4
  %104 = add nsw i32 %103, 8
  store i32 %104, i32* %6, align 4
  br label %105

105:                                              ; preds = %82, %79
  %106 = load i32, i32* %14, align 4
  %107 = icmp sgt i32 %106, 0
  br i1 %107, label %108, label %132

108:                                              ; preds = %105
  %109 = load i32*, i32** @xconv, align 8
  %110 = load i32, i32* %6, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %109, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = load i32*, i32** @y80, align 8
  %115 = load i32, i32* %7, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %114, i64 %116
  %118 = load i32, i32* %117, align 4
  %119 = add nsw i32 %113, %118
  store i32 %119, i32* %12, align 4
  %120 = load i64, i64* @GRA_I, align 8
  %121 = trunc i64 %120 to i32
  %122 = call i32 @WRITE_PORT_UCHAR(i32 %121, i32 8)
  %123 = load i64, i64* @GRA_D, align 8
  %124 = trunc i64 %123 to i32
  %125 = call i32 @WRITE_PORT_UCHAR(i32 %124, i32 255)
  %126 = load i32, i32* @vidmem, align 4
  %127 = load i32, i32* %12, align 4
  %128 = add nsw i32 %126, %127
  %129 = load i32, i32* %9, align 4
  %130 = load i32, i32* %14, align 4
  %131 = call i32 @memset(i32 %128, i32 %129, i32 %130)
  br label %132

132:                                              ; preds = %108, %105
  %133 = load i32, i32* %15, align 4
  %134 = icmp sgt i32 %133, 0
  br i1 %134, label %135, label %172

135:                                              ; preds = %132
  %136 = load i32, i32* %10, align 4
  %137 = load i32, i32* %8, align 4
  %138 = add nsw i32 %136, %137
  %139 = load i32, i32* %15, align 4
  %140 = sub nsw i32 %138, %139
  store i32 %140, i32* %6, align 4
  %141 = load i32*, i32** @xconv, align 8
  %142 = load i32, i32* %6, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %141, i64 %143
  %145 = load i32, i32* %144, align 4
  %146 = load i32*, i32** @y80, align 8
  %147 = load i32, i32* %7, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i32, i32* %146, i64 %148
  %150 = load i32, i32* %149, align 4
  %151 = add nsw i32 %145, %150
  store i32 %151, i32* %11, align 4
  %152 = load i64, i64* @GRA_I, align 8
  %153 = trunc i64 %152 to i32
  %154 = call i32 @WRITE_PORT_UCHAR(i32 %153, i32 8)
  %155 = load i64, i64* @GRA_D, align 8
  %156 = trunc i64 %155 to i32
  %157 = load i32*, i32** @endmasks, align 8
  %158 = load i32, i32* %15, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i32, i32* %157, i64 %159
  %161 = load i32, i32* %160, align 4
  %162 = call i32 @WRITE_PORT_UCHAR(i32 %156, i32 %161)
  %163 = load i32, i32* @vidmem, align 4
  %164 = load i32, i32* %11, align 4
  %165 = add nsw i32 %163, %164
  %166 = call i32 @READ_REGISTER_UCHAR(i32 %165)
  %167 = load i32, i32* @vidmem, align 4
  %168 = load i32, i32* %11, align 4
  %169 = add nsw i32 %167, %168
  %170 = load i32, i32* %9, align 4
  %171 = call i32 @WRITE_REGISTER_UCHAR(i32 %169, i32 %170)
  br label %172

172:                                              ; preds = %135, %132
  %173 = load i32, i32* @TRUE, align 4
  store i32 %173, i32* %5, align 4
  br label %174

174:                                              ; preds = %172, %50
  %175 = load i32, i32* %5, align 4
  ret i32 %175
}

declare dso_local i32 @mod8(i32) #1

declare dso_local i32 @WRITE_PORT_UCHAR(i32, i32) #1

declare dso_local i32 @READ_REGISTER_UCHAR(i32) #1

declare dso_local i32 @WRITE_REGISTER_UCHAR(i32, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
