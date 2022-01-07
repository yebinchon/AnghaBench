; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/xps/extr_xps-glyphs.c_xps_deobfuscate_font_resource.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/xps/extr_xps-glyphs.c_xps_deobfuscate_font_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i32 }

@.str = private unnamed_addr constant [41 x i8] c"insufficient data for font deobfuscation\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"cannot extract GUID from obfuscated font part name\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, %struct.TYPE_3__*)* @xps_deobfuscate_font_resource to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xps_deobfuscate_font_resource(i32* %0, i32* %1, %struct.TYPE_3__* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca [33 x i8], align 16
  %8 = alloca [16 x i8], align 16
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %6, align 8
  %13 = load i32*, i32** %4, align 8
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = call i64 @fz_buffer_storage(i32* %13, i32 %16, i8** %9)
  store i64 %17, i64* %10, align 8
  %18 = load i64, i64* %10, align 8
  %19 = icmp ult i64 %18, 32
  br i1 %19, label %20, label %23

20:                                               ; preds = %3
  %21 = load i32*, i32** %4, align 8
  %22 = call i32 @fz_warn(i32* %21, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  br label %135

23:                                               ; preds = %3
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = call i8* @strrchr(i8* %26, i8 signext 47)
  store i8* %27, i8** %11, align 8
  %28 = load i8*, i8** %11, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %34, label %30

30:                                               ; preds = %23
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  store i8* %33, i8** %11, align 8
  br label %34

34:                                               ; preds = %30, %23
  store i32 0, i32* %12, align 4
  br label %35

35:                                               ; preds = %58, %34
  %36 = load i32, i32* %12, align 4
  %37 = icmp slt i32 %36, 32
  br i1 %37, label %38, label %43

38:                                               ; preds = %35
  %39 = load i8*, i8** %11, align 8
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp ne i32 %41, 0
  br label %43

43:                                               ; preds = %38, %35
  %44 = phi i1 [ false, %35 ], [ %42, %38 ]
  br i1 %44, label %45, label %61

45:                                               ; preds = %43
  %46 = load i8*, i8** %11, align 8
  %47 = load i8, i8* %46, align 1
  %48 = call i64 @ishex(i8 signext %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %45
  %51 = load i8*, i8** %11, align 8
  %52 = load i8, i8* %51, align 1
  %53 = load i32, i32* %12, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %12, align 4
  %55 = sext i32 %53 to i64
  %56 = getelementptr inbounds [33 x i8], [33 x i8]* %7, i64 0, i64 %55
  store i8 %52, i8* %56, align 1
  br label %57

57:                                               ; preds = %50, %45
  br label %58

58:                                               ; preds = %57
  %59 = load i8*, i8** %11, align 8
  %60 = getelementptr inbounds i8, i8* %59, i32 1
  store i8* %60, i8** %11, align 8
  br label %35

61:                                               ; preds = %43
  %62 = load i32, i32* %12, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [33 x i8], [33 x i8]* %7, i64 0, i64 %63
  store i8 0, i8* %64, align 1
  %65 = load i32, i32* %12, align 4
  %66 = icmp ne i32 %65, 32
  br i1 %66, label %67, label %70

67:                                               ; preds = %61
  %68 = load i32*, i32** %4, align 8
  %69 = call i32 @fz_warn(i32* %68, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0))
  br label %135

70:                                               ; preds = %61
  store i32 0, i32* %12, align 4
  br label %71

71:                                               ; preds = %95, %70
  %72 = load i32, i32* %12, align 4
  %73 = icmp slt i32 %72, 16
  br i1 %73, label %74, label %98

74:                                               ; preds = %71
  %75 = load i32, i32* %12, align 4
  %76 = mul nsw i32 %75, 2
  %77 = add nsw i32 %76, 0
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds [33 x i8], [33 x i8]* %7, i64 0, i64 %78
  %80 = load i8, i8* %79, align 1
  %81 = call i32 @unhex(i8 zeroext %80)
  %82 = mul nsw i32 %81, 16
  %83 = load i32, i32* %12, align 4
  %84 = mul nsw i32 %83, 2
  %85 = add nsw i32 %84, 1
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds [33 x i8], [33 x i8]* %7, i64 0, i64 %86
  %88 = load i8, i8* %87, align 1
  %89 = call i32 @unhex(i8 zeroext %88)
  %90 = add nsw i32 %82, %89
  %91 = trunc i32 %90 to i8
  %92 = load i32, i32* %12, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i64 0, i64 %93
  store i8 %91, i8* %94, align 1
  br label %95

95:                                               ; preds = %74
  %96 = load i32, i32* %12, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %12, align 4
  br label %71

98:                                               ; preds = %71
  store i32 0, i32* %12, align 4
  br label %99

99:                                               ; preds = %132, %98
  %100 = load i32, i32* %12, align 4
  %101 = icmp slt i32 %100, 16
  br i1 %101, label %102, label %135

102:                                              ; preds = %99
  %103 = load i32, i32* %12, align 4
  %104 = sub nsw i32 15, %103
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i64 0, i64 %105
  %107 = load i8, i8* %106, align 1
  %108 = zext i8 %107 to i32
  %109 = load i8*, i8** %9, align 8
  %110 = load i32, i32* %12, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i8, i8* %109, i64 %111
  %113 = load i8, i8* %112, align 1
  %114 = zext i8 %113 to i32
  %115 = xor i32 %114, %108
  %116 = trunc i32 %115 to i8
  store i8 %116, i8* %112, align 1
  %117 = load i32, i32* %12, align 4
  %118 = sub nsw i32 15, %117
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i64 0, i64 %119
  %121 = load i8, i8* %120, align 1
  %122 = zext i8 %121 to i32
  %123 = load i8*, i8** %9, align 8
  %124 = load i32, i32* %12, align 4
  %125 = add nsw i32 %124, 16
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i8, i8* %123, i64 %126
  %128 = load i8, i8* %127, align 1
  %129 = zext i8 %128 to i32
  %130 = xor i32 %129, %122
  %131 = trunc i32 %130 to i8
  store i8 %131, i8* %127, align 1
  br label %132

132:                                              ; preds = %102
  %133 = load i32, i32* %12, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %12, align 4
  br label %99

135:                                              ; preds = %20, %67, %99
  ret void
}

declare dso_local i64 @fz_buffer_storage(i32*, i32, i8**) #1

declare dso_local i32 @fz_warn(i32*, i8*) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i64 @ishex(i8 signext) #1

declare dso_local i32 @unhex(i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
