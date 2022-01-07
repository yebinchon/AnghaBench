; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/mpeg/extr_ts_arib.c_ts_arib_inject_png_palette.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/mpeg/extr_ts_arib.c_ts_arib_inject_png_palette.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CLUT_to_chunks_len = common dso_local global i64 0, align 8
@CLUT_to_chunks = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ts_arib_inject_png_palette(i8* %0, i64 %1, i8** %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8** %2, i8*** %8, align 8
  store i64* %3, i64** %9, align 8
  %17 = load i8*, i8** %6, align 8
  store i8* %17, i8** %10, align 8
  store i8* null, i8** %11, align 8
  %18 = load i64, i64* %7, align 8
  %19 = sub i64 %18, 8
  store i64 %19, i64* %12, align 8
  %20 = load i8*, i8** %10, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 8
  store i8* %21, i8** %10, align 8
  %22 = load i64, i64* %12, align 8
  %23 = sub i64 %22, 8
  store i64 %23, i64* %12, align 8
  br label %24

24:                                               ; preds = %58, %4
  %25 = load i64, i64* %12, align 8
  %26 = icmp ugt i64 %25, 11
  br i1 %26, label %27, label %69

27:                                               ; preds = %24
  %28 = load i8*, i8** %10, align 8
  %29 = call i32 @GetDWBE(i8* %28)
  store i32 %29, i32* %13, align 4
  %30 = load i32, i32* %13, align 4
  %31 = icmp ugt i32 %30, 2147483647
  br i1 %31, label %38, label %32

32:                                               ; preds = %27
  %33 = load i32, i32* %13, align 4
  %34 = sext i32 %33 to i64
  %35 = load i64, i64* %12, align 8
  %36 = sub i64 %35, 12
  %37 = icmp ugt i64 %34, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %32, %27
  br label %69

39:                                               ; preds = %32
  %40 = load i8*, i8** %10, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 4
  %42 = load i8, i8* %41, align 1
  %43 = load i8*, i8** %10, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 5
  %45 = load i8, i8* %44, align 1
  %46 = load i8*, i8** %10, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 6
  %48 = load i8, i8* %47, align 1
  %49 = load i8*, i8** %10, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 7
  %51 = load i8, i8* %50, align 1
  %52 = call i32 @VLC_FOURCC(i8 signext %42, i8 signext %45, i8 signext %48, i8 signext %51)
  store i32 %52, i32* %14, align 4
  %53 = load i32, i32* %14, align 4
  %54 = call i32 @VLC_FOURCC(i8 signext 73, i8 signext 68, i8 signext 65, i8 signext 84)
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %39
  %57 = load i8*, i8** %10, align 8
  store i8* %57, i8** %11, align 8
  br label %69

58:                                               ; preds = %39
  %59 = load i32, i32* %13, align 4
  %60 = add nsw i32 %59, 12
  %61 = load i8*, i8** %10, align 8
  %62 = sext i32 %60 to i64
  %63 = getelementptr inbounds i8, i8* %61, i64 %62
  store i8* %63, i8** %10, align 8
  %64 = load i32, i32* %13, align 4
  %65 = add nsw i32 %64, 12
  %66 = sext i32 %65 to i64
  %67 = load i64, i64* %12, align 8
  %68 = sub i64 %67, %66
  store i64 %68, i64* %12, align 8
  br label %24

69:                                               ; preds = %56, %38, %24
  %70 = load i8*, i8** %11, align 8
  %71 = icmp ne i8* %70, null
  br i1 %71, label %73, label %72

72:                                               ; preds = %69
  store i32 0, i32* %5, align 4
  br label %112

73:                                               ; preds = %69
  %74 = load i64, i64* %7, align 8
  %75 = load i64, i64* @CLUT_to_chunks_len, align 8
  %76 = add i64 %74, %75
  %77 = call i8* @malloc(i64 %76)
  %78 = load i8**, i8*** %8, align 8
  store i8* %77, i8** %78, align 8
  store i8* %77, i8** %15, align 8
  %79 = load i8*, i8** %15, align 8
  %80 = icmp ne i8* %79, null
  br i1 %80, label %82, label %81

81:                                               ; preds = %73
  store i32 0, i32* %5, align 4
  br label %112

82:                                               ; preds = %73
  %83 = load i64, i64* %7, align 8
  %84 = load i64, i64* @CLUT_to_chunks_len, align 8
  %85 = add i64 %83, %84
  %86 = load i64*, i64** %9, align 8
  store i64 %85, i64* %86, align 8
  %87 = load i8*, i8** %10, align 8
  %88 = load i8*, i8** %6, align 8
  %89 = ptrtoint i8* %87 to i64
  %90 = ptrtoint i8* %88 to i64
  %91 = sub i64 %89, %90
  store i64 %91, i64* %16, align 8
  %92 = load i8*, i8** %15, align 8
  %93 = load i8*, i8** %6, align 8
  %94 = load i64, i64* %16, align 8
  %95 = call i32 @memcpy(i8* %92, i8* %93, i64 %94)
  %96 = load i8*, i8** %15, align 8
  %97 = load i64, i64* %16, align 8
  %98 = getelementptr inbounds i8, i8* %96, i64 %97
  %99 = load i8*, i8** @CLUT_to_chunks, align 8
  %100 = load i64, i64* @CLUT_to_chunks_len, align 8
  %101 = call i32 @memcpy(i8* %98, i8* %99, i64 %100)
  %102 = load i8*, i8** %15, align 8
  %103 = load i64, i64* %16, align 8
  %104 = load i64, i64* @CLUT_to_chunks_len, align 8
  %105 = add i64 %103, %104
  %106 = getelementptr inbounds i8, i8* %102, i64 %105
  %107 = load i8*, i8** %10, align 8
  %108 = load i64, i64* %7, align 8
  %109 = load i64, i64* %16, align 8
  %110 = sub i64 %108, %109
  %111 = call i32 @memcpy(i8* %106, i8* %107, i64 %110)
  store i32 1, i32* %5, align 4
  br label %112

112:                                              ; preds = %82, %81, %72
  %113 = load i32, i32* %5, align 4
  ret i32 %113
}

declare dso_local i32 @GetDWBE(i8*) #1

declare dso_local i32 @VLC_FOURCC(i8 signext, i8 signext, i8 signext, i8 signext) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
