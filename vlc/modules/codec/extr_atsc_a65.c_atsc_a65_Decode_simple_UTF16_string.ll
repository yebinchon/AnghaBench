; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/extr_atsc_a65.c_atsc_a65_Decode_simple_UTF16_string.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/extr_atsc_a65.c_atsc_a65_Decode_simple_UTF16_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }

@.str = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"UTF-16BE\00", align 1
@VLC_ICONV_ERR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @atsc_a65_Decode_simple_UTF16_string(%struct.TYPE_3__* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %13 = load i64, i64* %7, align 8
  %14 = icmp ult i64 %13, 1
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  store i8* null, i8** %4, align 8
  br label %72

16:                                               ; preds = %3
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %28, label %21

21:                                               ; preds = %16
  %22 = call i64 @vlc_iconv_open(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  store i64 %22, i64* %24, align 8
  %25 = icmp ne i64 %22, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %21
  store i8* null, i8** %4, align 8
  br label %72

27:                                               ; preds = %21
  br label %37

28:                                               ; preds = %16
  %29 = load i64, i64* @VLC_ICONV_ERR, align 8
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = call i64 @vlc_iconv(i64 %32, i8** null, i64* null, i8** null, i64* null)
  %34 = icmp eq i64 %29, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %28
  store i8* null, i8** %4, align 8
  br label %72

36:                                               ; preds = %28
  br label %37

37:                                               ; preds = %36, %27
  %38 = load i64, i64* %7, align 8
  %39 = mul i64 %38, 3
  %40 = udiv i64 %39, 2
  store i64 %40, i64* %8, align 8
  %41 = load i64, i64* %8, align 8
  store i64 %41, i64* %9, align 8
  %42 = load i32*, i32** %6, align 8
  %43 = bitcast i32* %42 to i8*
  store i8* %43, i8** %10, align 8
  %44 = load i64, i64* %8, align 8
  %45 = call i8* @malloc(i64 %44)
  store i8* %45, i8** %11, align 8
  store i8* %45, i8** %12, align 8
  %46 = load i8*, i8** %12, align 8
  %47 = icmp ne i8* %46, null
  %48 = xor i1 %47, true
  %49 = zext i1 %48 to i32
  %50 = call i64 @unlikely(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %37
  store i8* null, i8** %4, align 8
  br label %72

53:                                               ; preds = %37
  %54 = load i64, i64* @VLC_ICONV_ERR, align 8
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = call i64 @vlc_iconv(i64 %57, i8** %10, i64* %7, i8** %11, i64* %9)
  %59 = icmp eq i64 %54, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %53
  %61 = load i8*, i8** %12, align 8
  %62 = call i32 @free(i8* %61)
  store i8* null, i8** %12, align 8
  br label %70

63:                                               ; preds = %53
  %64 = load i8*, i8** %12, align 8
  %65 = load i64, i64* %8, align 8
  %66 = load i64, i64* %9, align 8
  %67 = sub i64 %65, %66
  %68 = sub i64 %67, 1
  %69 = getelementptr inbounds i8, i8* %64, i64 %68
  store i8 0, i8* %69, align 1
  br label %70

70:                                               ; preds = %63, %60
  %71 = load i8*, i8** %12, align 8
  store i8* %71, i8** %4, align 8
  br label %72

72:                                               ; preds = %70, %52, %35, %26, %15
  %73 = load i8*, i8** %4, align 8
  ret i8* %73
}

declare dso_local i64 @vlc_iconv_open(i8*, i8*) #1

declare dso_local i64 @vlc_iconv(i64, i8**, i64*, i8**, i64*) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
