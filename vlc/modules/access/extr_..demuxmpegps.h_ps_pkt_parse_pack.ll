; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/extr_..demuxmpegps.h_ps_pkt_parse_pack.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/extr_..demuxmpegps.h_ps_pkt_parse_pack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VLC_EGENERIC = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64, i32*, i32*)* @ps_pkt_parse_pack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ps_pkt_parse_pack(i32* %0, i64 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %12 = load i32*, i32** %6, align 8
  store i32* %12, i32** %10, align 8
  %13 = load i64, i64* %7, align 8
  %14 = icmp uge i64 %13, 14
  br i1 %14, label %15, label %42

15:                                               ; preds = %4
  %16 = load i32*, i32** %10, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 4
  %18 = load i32, i32* %17, align 4
  %19 = ashr i32 %18, 6
  %20 = icmp eq i32 %19, 1
  br i1 %20, label %21, label %42

21:                                               ; preds = %15
  %22 = load i32*, i32** %10, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 4
  %24 = call i32 @ExtractPackHeaderTimestamp(i32* %23)
  %25 = call i32 @FROM_SCALE(i32 %24)
  %26 = load i32*, i32** %8, align 8
  store i32 %25, i32* %26, align 4
  %27 = load i32*, i32** %10, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 10
  %29 = load i32, i32* %28, align 4
  %30 = shl i32 %29, 14
  %31 = load i32*, i32** %10, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 11
  %33 = load i32, i32* %32, align 4
  %34 = shl i32 %33, 6
  %35 = or i32 %30, %34
  %36 = load i32*, i32** %10, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 12
  %38 = load i32, i32* %37, align 4
  %39 = ashr i32 %38, 2
  %40 = or i32 %35, %39
  %41 = load i32*, i32** %9, align 8
  store i32 %40, i32* %41, align 4
  br label %81

42:                                               ; preds = %15, %4
  %43 = load i64, i64* %7, align 8
  %44 = icmp uge i64 %43, 12
  br i1 %44, label %45, label %78

45:                                               ; preds = %42
  %46 = load i32*, i32** %10, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 4
  %48 = load i32, i32* %47, align 4
  %49 = ashr i32 %48, 4
  %50 = icmp eq i32 %49, 2
  br i1 %50, label %51, label %78

51:                                               ; preds = %45
  %52 = load i32*, i32** %10, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 4
  %54 = call i32 @ExtractPESTimestamp(i32* %53, i32 2, i32* %11)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %58, label %56

56:                                               ; preds = %51
  %57 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %57, i32* %5, align 4
  br label %83

58:                                               ; preds = %51
  %59 = load i32, i32* %11, align 4
  %60 = call i32 @FROM_SCALE(i32 %59)
  %61 = load i32*, i32** %8, align 8
  store i32 %60, i32* %61, align 4
  %62 = load i32*, i32** %10, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 9
  %64 = load i32, i32* %63, align 4
  %65 = and i32 %64, 127
  %66 = shl i32 %65, 15
  %67 = load i32*, i32** %10, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 10
  %69 = load i32, i32* %68, align 4
  %70 = shl i32 %69, 7
  %71 = or i32 %66, %70
  %72 = load i32*, i32** %10, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 11
  %74 = load i32, i32* %73, align 4
  %75 = ashr i32 %74, 1
  %76 = or i32 %71, %75
  %77 = load i32*, i32** %9, align 8
  store i32 %76, i32* %77, align 4
  br label %80

78:                                               ; preds = %45, %42
  %79 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %79, i32* %5, align 4
  br label %83

80:                                               ; preds = %58
  br label %81

81:                                               ; preds = %80, %21
  %82 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %82, i32* %5, align 4
  br label %83

83:                                               ; preds = %81, %78, %56
  %84 = load i32, i32* %5, align 4
  ret i32 %84
}

declare dso_local i32 @FROM_SCALE(i32) #1

declare dso_local i32 @ExtractPackHeaderTimestamp(i32*) #1

declare dso_local i32 @ExtractPESTimestamp(i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
