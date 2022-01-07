; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_orders.c_process_fontcache.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_orders.c_process_fontcache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [25 x i8] c"FONTCACHE(font=%d,n=%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32)* @process_fontcache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_fontcache(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
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
  %15 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @in_uint8(i32 %16, i32 %17)
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @in_uint8(i32 %19, i32 %20)
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* %7, align 4
  %24 = sext i32 %23 to i64
  %25 = inttoptr i64 %24 to i8*
  %26 = call i32 @DEBUG(i8* %25)
  store i32 0, i32* %13, align 4
  br label %27

27:                                               ; preds = %72, %2
  %28 = load i32, i32* %13, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %75

31:                                               ; preds = %27
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* %8, align 4
  %34 = call i32 @in_uint16_le(i32 %32, i32 %33)
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* %9, align 4
  %37 = call i32 @in_uint16_le(i32 %35, i32 %36)
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* %10, align 4
  %40 = call i32 @in_uint16_le(i32 %38, i32 %39)
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* %11, align 4
  %43 = call i32 @in_uint16_le(i32 %41, i32 %42)
  %44 = load i32, i32* %4, align 4
  %45 = load i32, i32* %12, align 4
  %46 = call i32 @in_uint16_le(i32 %44, i32 %45)
  %47 = load i32, i32* %12, align 4
  %48 = load i32, i32* %11, align 4
  %49 = add nsw i32 %48, 7
  %50 = sdiv i32 %49, 8
  %51 = mul nsw i32 %47, %50
  %52 = add nsw i32 %51, 3
  %53 = and i32 %52, -4
  store i32 %53, i32* %14, align 4
  %54 = load i32, i32* %4, align 4
  %55 = load i32*, i32** %15, align 8
  %56 = load i32, i32* %14, align 4
  %57 = call i32 @in_uint8p(i32 %54, i32* %55, i32 %56)
  %58 = load i32*, i32** %3, align 8
  %59 = load i32, i32* %11, align 4
  %60 = load i32, i32* %12, align 4
  %61 = load i32*, i32** %15, align 8
  %62 = call i32 @ui_create_glyph(i32* %58, i32 %59, i32 %60, i32* %61)
  store i32 %62, i32* %5, align 4
  %63 = load i32*, i32** %3, align 8
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* %9, align 4
  %67 = load i32, i32* %10, align 4
  %68 = load i32, i32* %11, align 4
  %69 = load i32, i32* %12, align 4
  %70 = load i32, i32* %5, align 4
  %71 = call i32 @cache_put_font(i32* %63, i32 %64, i32 %65, i32 %66, i32 %67, i32 %68, i32 %69, i32 %70)
  br label %72

72:                                               ; preds = %31
  %73 = load i32, i32* %13, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %13, align 4
  br label %27

75:                                               ; preds = %27
  ret void
}

declare dso_local i32 @in_uint8(i32, i32) #1

declare dso_local i32 @DEBUG(i8*) #1

declare dso_local i32 @in_uint16_le(i32, i32) #1

declare dso_local i32 @in_uint8p(i32, i32*, i32) #1

declare dso_local i32 @ui_create_glyph(i32*, i32, i32, i32*) #1

declare dso_local i32 @cache_put_font(i32*, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
