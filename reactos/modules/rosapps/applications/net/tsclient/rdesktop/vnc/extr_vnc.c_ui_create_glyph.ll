; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/vnc/extr_vnc.c_ui_create_glyph.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/vnc/extr_vnc.c_ui_create_glyph.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@rfbEndianTest = common dso_local global i64 0, align 8
@reverseByte = common dso_local global i64* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ui_create_glyph(i32 %0, i32 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i64* %2, i64** %6, align 8
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* %5, align 4
  %13 = call i32* @vncNewBuffer(i32 %11, i32 %12, i32 8)
  store i32* %13, i32** %9, align 8
  store i32 0, i32* %8, align 4
  br label %14

14:                                               ; preds = %69, %3
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %72

18:                                               ; preds = %14
  store i32 0, i32* %7, align 4
  br label %19

19:                                               ; preds = %65, %18
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* %4, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %68

23:                                               ; preds = %19
  %24 = load i32, i32* %7, align 4
  %25 = sdiv i32 %24, 8
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* %4, align 4
  %28 = add nsw i32 %27, 7
  %29 = sdiv i32 %28, 8
  %30 = mul nsw i32 %26, %29
  %31 = add nsw i32 %25, %30
  store i32 %31, i32* %10, align 4
  %32 = load i64, i64* @rfbEndianTest, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %23
  %35 = load i64*, i64** @reverseByte, align 8
  %36 = load i64*, i64** %6, align 8
  %37 = load i32, i32* %10, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i64, i64* %36, i64 %38
  %40 = load i64, i64* %39, align 8
  %41 = getelementptr inbounds i64, i64* %35, i64 %40
  %42 = load i64, i64* %41, align 8
  br label %49

43:                                               ; preds = %23
  %44 = load i64*, i64** %6, align 8
  %45 = load i32, i32* %10, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i64, i64* %44, i64 %46
  %48 = load i64, i64* %47, align 8
  br label %49

49:                                               ; preds = %43, %34
  %50 = phi i64 [ %42, %34 ], [ %48, %43 ]
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %10, align 4
  %52 = load i32, i32* %10, align 4
  %53 = load i32, i32* %7, align 4
  %54 = and i32 %53, 7
  %55 = ashr i32 %52, %54
  %56 = and i32 %55, 1
  store i32 %56, i32* %10, align 4
  %57 = load i32*, i32** %9, align 8
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* %10, align 4
  %61 = icmp ne i32 %60, 0
  %62 = zext i1 %61 to i64
  %63 = select i1 %61, i32 127, i32 0
  %64 = call i32 @vncSetPixel(i32* %57, i32 %58, i32 %59, i32 %63)
  br label %65

65:                                               ; preds = %49
  %66 = load i32, i32* %7, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %7, align 4
  br label %19

68:                                               ; preds = %19
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %8, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %8, align 4
  br label %14

72:                                               ; preds = %14
  %73 = load i32*, i32** %9, align 8
  %74 = ptrtoint i32* %73 to i32
  ret i32 %74
}

declare dso_local i32* @vncNewBuffer(i32, i32, i32) #1

declare dso_local i32 @vncSetPixel(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
