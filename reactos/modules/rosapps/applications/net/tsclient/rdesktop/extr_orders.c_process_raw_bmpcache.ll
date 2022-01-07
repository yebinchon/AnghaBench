; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_orders.c_process_raw_bmpcache.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_orders.c_process_raw_bmpcache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [40 x i8] c"RAW_BMPCACHE(cx=%d,cy=%d,id=%d,idx=%d)\0A\00", align 1
@inverted = common dso_local global i32* null, align 8
@y = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32)* @process_raw_bmpcache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_raw_bmpcache(i32* %0, i32 %1) #0 {
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
  %13 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* %8, align 4
  %16 = call i32 @in_uint8(i32 %14, i32 %15)
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @in_uint8s(i32 %17, i32 1)
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* %9, align 4
  %21 = call i32 @in_uint8(i32 %19, i32 %20)
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* %10, align 4
  %24 = call i32 @in_uint8(i32 %22, i32 %23)
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* %11, align 4
  %27 = call i32 @in_uint8(i32 %25, i32 %26)
  %28 = load i32, i32* %11, align 4
  %29 = add nsw i32 %28, 7
  %30 = sdiv i32 %29, 8
  store i32 %30, i32* %12, align 4
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @in_uint16_le(i32 %31, i32 %32)
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @in_uint16_le(i32 %34, i32 %35)
  %37 = load i32, i32* %4, align 4
  %38 = load i32*, i32** %13, align 8
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @in_uint8p(i32 %37, i32* %38, i32 %39)
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* %6, align 4
  %45 = sext i32 %44 to i64
  %46 = inttoptr i64 %45 to i8*
  %47 = call i32 @DEBUG(i8* %46)
  %48 = load i32*, i32** %3, align 8
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* %10, align 4
  %51 = load i32*, i32** %13, align 8
  %52 = call i32 @ui_create_bitmap(i32* %48, i32 %49, i32 %50, i32* %51)
  store i32 %52, i32* %5, align 4
  %53 = load i32*, i32** %3, align 8
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* %5, align 4
  %57 = call i32 @cache_put_bitmap(i32* %53, i32 %54, i32 %55, i32 %56)
  ret void
}

declare dso_local i32 @in_uint8(i32, i32) #1

declare dso_local i32 @in_uint8s(i32, i32) #1

declare dso_local i32 @in_uint16_le(i32, i32) #1

declare dso_local i32 @in_uint8p(i32, i32*, i32) #1

declare dso_local i32 @DEBUG(i8*) #1

declare dso_local i32 @ui_create_bitmap(i32*, i32, i32, i32*) #1

declare dso_local i32 @cache_put_bitmap(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
