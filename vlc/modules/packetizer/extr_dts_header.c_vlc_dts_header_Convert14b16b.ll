; ModuleID = '/home/carl/AnghaBench/vlc/modules/packetizer/extr_dts_header.c_vlc_dts_header_Convert14b16b.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/packetizer/extr_dts_header.c_vlc_dts_header_Convert14b16b.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VLC_DTS_HEADER_SIZE = common dso_local global i64 0, align 8
@DTS_SYNC_NONE = common dso_local global i32 0, align 4
@DTS_SYNC_CORE_14BITS_BE = common dso_local global i32 0, align 4
@DTS_SYNC_CORE_14BITS_LE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vlc_dts_header_Convert14b16b(i8* %0, i64 %1, i8* %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i64 %1, i64* %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %15 = load i64, i64* %10, align 8
  %16 = mul i64 %15, 14
  %17 = udiv i64 %16, 16
  store i64 %17, i64* %12, align 8
  %18 = load i64, i64* %10, align 8
  %19 = load i64, i64* @VLC_DTS_HEADER_SIZE, align 8
  %20 = icmp ule i64 %18, %19
  br i1 %20, label %25, label %21

21:                                               ; preds = %5
  %22 = load i64, i64* %12, align 8
  %23 = load i64, i64* %8, align 8
  %24 = icmp ugt i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %21, %5
  store i32 -1, i32* %6, align 4
  br label %53

26:                                               ; preds = %21
  %27 = load i8*, i8** %9, align 8
  %28 = call i32 @dts_header_getSyncword(i8* %27)
  store i32 %28, i32* %13, align 4
  %29 = load i32, i32* %13, align 4
  %30 = load i32, i32* @DTS_SYNC_NONE, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  store i32 -1, i32* %6, align 4
  br label %53

33:                                               ; preds = %26
  %34 = load i32, i32* %13, align 4
  %35 = load i32, i32* @DTS_SYNC_CORE_14BITS_BE, align 4
  %36 = icmp ne i32 %34, %35
  br i1 %36, label %37, label %42

37:                                               ; preds = %33
  %38 = load i32, i32* %13, align 4
  %39 = load i32, i32* @DTS_SYNC_CORE_14BITS_LE, align 4
  %40 = icmp ne i32 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  store i32 -1, i32* %6, align 4
  br label %53

42:                                               ; preds = %37, %33
  %43 = load i8*, i8** %7, align 8
  %44 = load i8*, i8** %9, align 8
  %45 = load i64, i64* %10, align 8
  %46 = load i32, i32* %13, align 4
  %47 = load i32, i32* @DTS_SYNC_CORE_14BITS_LE, align 4
  %48 = icmp eq i32 %46, %47
  %49 = zext i1 %48 to i32
  %50 = load i32, i32* %11, align 4
  %51 = call i32 @Buf14To16(i8* %43, i8* %44, i64 %45, i32 %49, i32 %50)
  store i32 %51, i32* %14, align 4
  %52 = load i32, i32* %14, align 4
  store i32 %52, i32* %6, align 4
  br label %53

53:                                               ; preds = %42, %41, %32, %25
  %54 = load i32, i32* %6, align 4
  ret i32 %54
}

declare dso_local i32 @dts_header_getSyncword(i8*) #1

declare dso_local i32 @Buf14To16(i8*, i8*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
