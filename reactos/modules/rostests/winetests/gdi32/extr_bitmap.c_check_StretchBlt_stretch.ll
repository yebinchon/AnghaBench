; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdi32/extr_bitmap.c_check_StretchBlt_stretch.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/gdi32/extr_bitmap.c_check_StretchBlt_stretch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SRCCOPY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [144 x i8] c"StretchBlt expected { %08X, %08X, %08X, %08X } got { %08X, %08X, %08X, %08X } stretching { %d, %d, %d, %d } to { %d, %d, %d, %d } from line %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32*, i32*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32)* @check_StretchBlt_stretch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_StretchBlt_stretch(i32 %0, i32 %1, i32* %2, i32* %3, i32* %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9, i32 %10, i32 %11, i32 %12, i32* %13, i32 %14) #0 {
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32*, align 8
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  store i32 %0, i32* %16, align 4
  store i32 %1, i32* %17, align 4
  store i32* %2, i32** %18, align 8
  store i32* %3, i32** %19, align 8
  store i32* %4, i32** %20, align 8
  store i32 %5, i32* %21, align 4
  store i32 %6, i32* %22, align 4
  store i32 %7, i32* %23, align 4
  store i32 %8, i32* %24, align 4
  store i32 %9, i32* %25, align 4
  store i32 %10, i32* %26, align 4
  store i32 %11, i32* %27, align 4
  store i32 %12, i32* %28, align 4
  store i32* %13, i32** %29, align 8
  store i32 %14, i32* %30, align 4
  %32 = load i32*, i32** %18, align 8
  %33 = call i32 @get_dib_image_size(i32* %32)
  store i32 %33, i32* %31, align 4
  %34 = load i32*, i32** %19, align 8
  %35 = load i32, i32* %31, align 4
  %36 = call i32 @memset(i32* %34, i32 0, i32 %35)
  %37 = load i32, i32* %16, align 4
  %38 = load i32, i32* %21, align 4
  %39 = load i32, i32* %22, align 4
  %40 = load i32, i32* %23, align 4
  %41 = load i32, i32* %24, align 4
  %42 = load i32, i32* %17, align 4
  %43 = load i32, i32* %25, align 4
  %44 = load i32, i32* %26, align 4
  %45 = load i32, i32* %27, align 4
  %46 = load i32, i32* %28, align 4
  %47 = load i32, i32* @SRCCOPY, align 4
  %48 = call i32 @StretchBlt(i32 %37, i32 %38, i32 %39, i32 %40, i32 %41, i32 %42, i32 %43, i32 %44, i32 %45, i32 %46, i32 %47)
  %49 = load i32*, i32** %19, align 8
  %50 = load i32*, i32** %29, align 8
  %51 = load i32, i32* %31, align 4
  %52 = call i64 @memcmp(i32* %49, i32* %50, i32 %51)
  %53 = icmp eq i64 %52, 0
  %54 = zext i1 %53 to i32
  %55 = load i32*, i32** %29, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32*, i32** %29, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 1
  %60 = load i32, i32* %59, align 4
  %61 = load i32*, i32** %29, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 2
  %63 = load i32, i32* %62, align 4
  %64 = load i32*, i32** %29, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 3
  %66 = load i32, i32* %65, align 4
  %67 = load i32*, i32** %19, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32*, i32** %19, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 1
  %72 = load i32, i32* %71, align 4
  %73 = load i32*, i32** %19, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 2
  %75 = load i32, i32* %74, align 4
  %76 = load i32*, i32** %19, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 3
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %25, align 4
  %80 = load i32, i32* %26, align 4
  %81 = load i32, i32* %27, align 4
  %82 = load i32, i32* %28, align 4
  %83 = load i32, i32* %21, align 4
  %84 = load i32, i32* %22, align 4
  %85 = load i32, i32* %23, align 4
  %86 = load i32, i32* %24, align 4
  %87 = load i32, i32* %30, align 4
  %88 = call i32 @ok(i32 %54, i8* getelementptr inbounds ([144 x i8], [144 x i8]* @.str, i64 0, i64 0), i32 %57, i32 %60, i32 %63, i32 %66, i32 %69, i32 %72, i32 %75, i32 %78, i32 %79, i32 %80, i32 %81, i32 %82, i32 %83, i32 %84, i32 %85, i32 %86, i32 %87)
  ret void
}

declare dso_local i32 @get_dib_image_size(i32*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @StretchBlt(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ok(i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i64 @memcmp(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
