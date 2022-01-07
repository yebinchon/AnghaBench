; ModuleID = '/home/carl/AnghaBench/vlc/modules/packetizer/extr_av1_obu.c_av1_parse_uncompressed_header.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/packetizer/extr_av1_obu.c_av1_parse_uncompressed_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.av1_uncompressed_header_s = type { i32, i8*, i8*, i8* }
%struct.TYPE_7__ = type { i32, i32, i64, i64, %struct.TYPE_6__, %struct.TYPE_5__, i64, i64 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@AV1_FRAME_TYPE_KEY = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.av1_uncompressed_header_s*, %struct.TYPE_7__*)* @av1_parse_uncompressed_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @av1_parse_uncompressed_header(i32* %0, %struct.av1_uncompressed_header_s* %1, %struct.TYPE_7__* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.av1_uncompressed_header_s*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.av1_uncompressed_header_s* %1, %struct.av1_uncompressed_header_s** %5, align 8
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %6, align 8
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 7
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %3
  %15 = load i8*, i8** @AV1_FRAME_TYPE_KEY, align 8
  %16 = load %struct.av1_uncompressed_header_s*, %struct.av1_uncompressed_header_s** %5, align 8
  %17 = getelementptr inbounds %struct.av1_uncompressed_header_s, %struct.av1_uncompressed_header_s* %16, i32 0, i32 1
  store i8* %15, i8** %17, align 8
  %18 = load %struct.av1_uncompressed_header_s*, %struct.av1_uncompressed_header_s** %5, align 8
  %19 = getelementptr inbounds %struct.av1_uncompressed_header_s, %struct.av1_uncompressed_header_s* %18, i32 0, i32 0
  store i32 1, i32* %19, align 8
  br label %90

20:                                               ; preds = %3
  %21 = load i32*, i32** %4, align 8
  %22 = call i8* @bs_read1(i32* %21)
  %23 = load %struct.av1_uncompressed_header_s*, %struct.av1_uncompressed_header_s** %5, align 8
  %24 = getelementptr inbounds %struct.av1_uncompressed_header_s, %struct.av1_uncompressed_header_s* %23, i32 0, i32 3
  store i8* %22, i8** %24, align 8
  %25 = load %struct.av1_uncompressed_header_s*, %struct.av1_uncompressed_header_s** %5, align 8
  %26 = getelementptr inbounds %struct.av1_uncompressed_header_s, %struct.av1_uncompressed_header_s* %25, i32 0, i32 3
  %27 = load i8*, i8** %26, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %80

29:                                               ; preds = %20
  %30 = load i32*, i32** %4, align 8
  %31 = call i8* @bs_read(i32* %30, i32 3)
  store i8* %31, i8** %7, align 8
  %32 = load i8*, i8** %7, align 8
  %33 = call i32 @VLC_UNUSED(i8* %32)
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 6
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %54

38:                                               ; preds = %29
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 5
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %54, label %44

44:                                               ; preds = %38
  %45 = load i32*, i32** %4, align 8
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 4
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = add nsw i32 1, %49
  %51 = call i8* @bs_read(i32* %45, i32 %50)
  %52 = load %struct.av1_uncompressed_header_s*, %struct.av1_uncompressed_header_s** %5, align 8
  %53 = getelementptr inbounds %struct.av1_uncompressed_header_s, %struct.av1_uncompressed_header_s* %52, i32 0, i32 2
  store i8* %51, i8** %53, align 8
  br label %54

54:                                               ; preds = %44, %38, %29
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 3
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %73

59:                                               ; preds = %54
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = add nsw i32 %62, %65
  %67 = add nsw i32 %66, 3
  store i32 %67, i32* %8, align 4
  %68 = load i32*, i32** %4, align 8
  %69 = load i32, i32* %8, align 4
  %70 = call i8* @bs_read(i32* %68, i32 %69)
  store i8* %70, i8** %9, align 8
  %71 = load i8*, i8** %9, align 8
  %72 = call i32 @VLC_UNUSED(i8* %71)
  br label %73

73:                                               ; preds = %59, %54
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %73
  br label %79

79:                                               ; preds = %78, %73
  br label %80

80:                                               ; preds = %79, %20
  %81 = load i32*, i32** %4, align 8
  %82 = call i8* @bs_read(i32* %81, i32 2)
  %83 = load %struct.av1_uncompressed_header_s*, %struct.av1_uncompressed_header_s** %5, align 8
  %84 = getelementptr inbounds %struct.av1_uncompressed_header_s, %struct.av1_uncompressed_header_s* %83, i32 0, i32 1
  store i8* %82, i8** %84, align 8
  %85 = load i32*, i32** %4, align 8
  %86 = call i8* @bs_read1(i32* %85)
  %87 = ptrtoint i8* %86 to i32
  %88 = load %struct.av1_uncompressed_header_s*, %struct.av1_uncompressed_header_s** %5, align 8
  %89 = getelementptr inbounds %struct.av1_uncompressed_header_s, %struct.av1_uncompressed_header_s* %88, i32 0, i32 0
  store i32 %87, i32* %89, align 8
  br label %90

90:                                               ; preds = %80, %14
  ret i32 1
}

declare dso_local i8* @bs_read1(i32*) #1

declare dso_local i8* @bs_read(i32*, i32) #1

declare dso_local i32 @VLC_UNUSED(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
