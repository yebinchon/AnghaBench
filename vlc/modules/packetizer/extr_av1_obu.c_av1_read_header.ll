; ModuleID = '/home/carl/AnghaBench/vlc/modules/packetizer/extr_av1_obu.c_av1_read_header.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/packetizer/extr_av1_obu.c_av1_read_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.av1_header_info_s = type { i8*, i8*, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.av1_header_info_s*)* @av1_read_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @av1_read_header(i32* %0, %struct.av1_header_info_s* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.av1_header_info_s*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.av1_header_info_s* %1, %struct.av1_header_info_s** %5, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = call i64 @bs_read1(i32* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %76

14:                                               ; preds = %2
  %15 = load i32*, i32** %4, align 8
  %16 = call i8* @bs_read(i32* %15, i32 4)
  %17 = load %struct.av1_header_info_s*, %struct.av1_header_info_s** %5, align 8
  %18 = getelementptr inbounds %struct.av1_header_info_s, %struct.av1_header_info_s* %17, i32 0, i32 2
  store i8* %16, i8** %18, align 8
  %19 = load i32*, i32** %4, align 8
  %20 = call i64 @bs_read1(i32* %19)
  store i64 %20, i64* %6, align 8
  %21 = load i32*, i32** %4, align 8
  %22 = call i64 @bs_read1(i32* %21)
  store i64 %22, i64* %7, align 8
  %23 = load i32*, i32** %4, align 8
  %24 = call i64 @bs_read1(i32* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %14
  store i32 0, i32* %3, align 4
  br label %76

27:                                               ; preds = %14
  %28 = load i64, i64* %6, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %46

30:                                               ; preds = %27
  %31 = load i32*, i32** %4, align 8
  %32 = call i32 @bs_remain(i32* %31)
  %33 = icmp slt i32 %32, 8
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  store i32 0, i32* %3, align 4
  br label %76

35:                                               ; preds = %30
  %36 = load i32*, i32** %4, align 8
  %37 = call i8* @bs_read(i32* %36, i32 3)
  %38 = load %struct.av1_header_info_s*, %struct.av1_header_info_s** %5, align 8
  %39 = getelementptr inbounds %struct.av1_header_info_s, %struct.av1_header_info_s* %38, i32 0, i32 1
  store i8* %37, i8** %39, align 8
  %40 = load i32*, i32** %4, align 8
  %41 = call i8* @bs_read(i32* %40, i32 2)
  %42 = load %struct.av1_header_info_s*, %struct.av1_header_info_s** %5, align 8
  %43 = getelementptr inbounds %struct.av1_header_info_s, %struct.av1_header_info_s* %42, i32 0, i32 0
  store i8* %41, i8** %43, align 8
  %44 = load i32*, i32** %4, align 8
  %45 = call i32 @bs_skip(i32* %44, i32 3)
  br label %46

46:                                               ; preds = %35, %27
  %47 = load i64, i64* %7, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %75

49:                                               ; preds = %46
  store i32 0, i32* %8, align 4
  br label %50

50:                                               ; preds = %71, %49
  %51 = load i32, i32* %8, align 4
  %52 = icmp slt i32 %51, 8
  br i1 %52, label %53, label %74

53:                                               ; preds = %50
  %54 = load i32*, i32** %4, align 8
  %55 = call i32 @bs_remain(i32* %54)
  %56 = icmp slt i32 %55, 8
  br i1 %56, label %57, label %58

57:                                               ; preds = %53
  store i32 0, i32* %3, align 4
  br label %76

58:                                               ; preds = %53
  %59 = load i32*, i32** %4, align 8
  %60 = call i8* @bs_read(i32* %59, i32 8)
  %61 = ptrtoint i8* %60 to i32
  store i32 %61, i32* %9, align 4
  %62 = load i32, i32* %9, align 4
  %63 = and i32 %62, 128
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %58
  br label %74

66:                                               ; preds = %58
  %67 = load i32, i32* %8, align 4
  %68 = icmp eq i32 %67, 7
  br i1 %68, label %69, label %70

69:                                               ; preds = %66
  store i32 0, i32* %3, align 4
  br label %76

70:                                               ; preds = %66
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %8, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %8, align 4
  br label %50

74:                                               ; preds = %65, %50
  br label %75

75:                                               ; preds = %74, %46
  store i32 1, i32* %3, align 4
  br label %76

76:                                               ; preds = %75, %69, %57, %34, %26, %13
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local i64 @bs_read1(i32*) #1

declare dso_local i8* @bs_read(i32*, i32) #1

declare dso_local i32 @bs_remain(i32*) #1

declare dso_local i32 @bs_skip(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
