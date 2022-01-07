; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/bin/jp2/extr_convert.c_tga_readheader.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/bin/jp2/extr_convert.c_tga_readheader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TGA_HEADER_SIZE = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [71 x i8] c"\0AError: fread return a number of element different from the expected.\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"tga_readheader: memory out\0A\00", align 1
@.str.2 = private unnamed_addr constant [58 x i8] c"Sorry, compressed tga files are not currently supported.\0A\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"File contains a palette - not yet supported.\00", align 1
@SEEK_CUR = common dso_local global i32 0, align 4
@x_origin = common dso_local global i8* null, align 8
@y_origin = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*, i32*, i32*)* @tga_readheader to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tga_readheader(i32* %0, i32* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8, align 1
  %16 = alloca i8, align 1
  %17 = alloca i8, align 1
  %18 = alloca i8, align 1
  %19 = alloca i16, align 2
  %20 = alloca i16, align 2
  %21 = alloca i16, align 2
  %22 = alloca i16, align 2
  %23 = alloca i32, align 4
  %24 = alloca i8*, align 8
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %25 = load i32, i32* @TGA_HEADER_SIZE, align 4
  %26 = zext i32 %25 to i64
  %27 = call i8* @llvm.stacksave()
  store i8* %27, i8** %13, align 8
  %28 = alloca i8, i64 %26, align 16
  store i64 %26, i64* %14, align 8
  %29 = load i32*, i32** %8, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %40

31:                                               ; preds = %5
  %32 = load i32*, i32** %9, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %40

34:                                               ; preds = %31
  %35 = load i32*, i32** %10, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %40

37:                                               ; preds = %34
  %38 = load i32*, i32** %11, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %37, %34, %31, %5
  store i32 0, i32* %6, align 4
  store i32 1, i32* %23, align 4
  br label %136

41:                                               ; preds = %37
  %42 = load i32, i32* @TGA_HEADER_SIZE, align 4
  %43 = trunc i32 %42 to i8
  %44 = load i32*, i32** %7, align 8
  %45 = call i32 @fread(i8* %28, i8 zeroext %43, i32 1, i32* %44)
  %46 = icmp ne i32 %45, 1
  br i1 %46, label %47, label %50

47:                                               ; preds = %41
  %48 = load i32, i32* @stderr, align 4
  %49 = call i32 @fprintf(i32 %48, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  store i32 1, i32* %23, align 4
  br label %136

50:                                               ; preds = %41
  %51 = getelementptr inbounds i8, i8* %28, i64 0
  %52 = load i8, i8* %51, align 16
  store i8 %52, i8* %15, align 1
  %53 = getelementptr inbounds i8, i8* %28, i64 2
  %54 = load i8, i8* %53, align 2
  store i8 %54, i8* %16, align 1
  %55 = getelementptr inbounds i8, i8* %28, i64 5
  %56 = call i8* @get_tga_ushort(i8* %55)
  %57 = ptrtoint i8* %56 to i16
  store i16 %57, i16* %19, align 2
  %58 = getelementptr inbounds i8, i8* %28, i64 7
  %59 = load i8, i8* %58, align 1
  %60 = zext i8 %59 to i16
  store i16 %60, i16* %20, align 2
  %61 = getelementptr inbounds i8, i8* %28, i64 12
  %62 = call i8* @get_tga_ushort(i8* %61)
  %63 = ptrtoint i8* %62 to i16
  store i16 %63, i16* %21, align 2
  %64 = getelementptr inbounds i8, i8* %28, i64 14
  %65 = call i8* @get_tga_ushort(i8* %64)
  %66 = ptrtoint i8* %65 to i16
  store i16 %66, i16* %22, align 2
  %67 = getelementptr inbounds i8, i8* %28, i64 16
  %68 = load i8, i8* %67, align 16
  store i8 %68, i8* %17, align 1
  %69 = getelementptr inbounds i8, i8* %28, i64 17
  %70 = load i8, i8* %69, align 1
  store i8 %70, i8* %18, align 1
  %71 = load i8, i8* %17, align 1
  %72 = zext i8 %71 to i32
  %73 = load i32*, i32** %8, align 8
  store i32 %72, i32* %73, align 4
  %74 = load i16, i16* %21, align 2
  %75 = zext i16 %74 to i32
  %76 = load i32*, i32** %9, align 8
  store i32 %75, i32* %76, align 4
  %77 = load i16, i16* %22, align 2
  %78 = zext i16 %77 to i32
  %79 = load i32*, i32** %10, align 8
  store i32 %78, i32* %79, align 4
  %80 = load i8, i8* %15, align 1
  %81 = icmp ne i8 %80, 0
  br i1 %81, label %82, label %105

82:                                               ; preds = %50
  %83 = load i8, i8* %15, align 1
  %84 = call i64 @malloc(i8 zeroext %83)
  %85 = inttoptr i64 %84 to i8*
  store i8* %85, i8** %24, align 8
  %86 = load i8*, i8** %24, align 8
  %87 = icmp eq i8* %86, null
  br i1 %87, label %88, label %91

88:                                               ; preds = %82
  %89 = load i32, i32* @stderr, align 4
  %90 = call i32 @fprintf(i32 %89, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  store i32 1, i32* %23, align 4
  br label %136

91:                                               ; preds = %82
  %92 = load i8*, i8** %24, align 8
  %93 = load i8, i8* %15, align 1
  %94 = load i32*, i32** %7, align 8
  %95 = call i32 @fread(i8* %92, i8 zeroext %93, i32 1, i32* %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %102, label %97

97:                                               ; preds = %91
  %98 = load i32, i32* @stderr, align 4
  %99 = call i32 @fprintf(i32 %98, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str, i64 0, i64 0))
  %100 = load i8*, i8** %24, align 8
  %101 = call i32 @free(i8* %100)
  store i32 0, i32* %6, align 4
  store i32 1, i32* %23, align 4
  br label %136

102:                                              ; preds = %91
  %103 = load i8*, i8** %24, align 8
  %104 = call i32 @free(i8* %103)
  br label %105

105:                                              ; preds = %102, %50
  %106 = load i8, i8* %16, align 1
  %107 = zext i8 %106 to i32
  %108 = icmp sgt i32 %107, 8
  br i1 %108, label %109, label %112

109:                                              ; preds = %105
  %110 = load i32, i32* @stderr, align 4
  %111 = call i32 @fprintf(i32 %110, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  store i32 1, i32* %23, align 4
  br label %136

112:                                              ; preds = %105
  %113 = load i8, i8* %18, align 1
  %114 = zext i8 %113 to i32
  %115 = and i32 %114, 32
  %116 = icmp ne i32 %115, 0
  %117 = xor i1 %116, true
  %118 = zext i1 %117 to i32
  %119 = load i32*, i32** %11, align 8
  store i32 %118, i32* %119, align 4
  %120 = load i16, i16* %19, align 2
  %121 = zext i16 %120 to i32
  %122 = load i16, i16* %20, align 2
  %123 = zext i16 %122 to i32
  %124 = sdiv i32 %123, 8
  %125 = mul nsw i32 %121, %124
  store i32 %125, i32* %12, align 4
  %126 = load i32, i32* %12, align 4
  %127 = icmp sgt i32 %126, 0
  br i1 %127, label %128, label %135

128:                                              ; preds = %112
  %129 = load i32, i32* @stderr, align 4
  %130 = call i32 @fprintf(i32 %129, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0))
  %131 = load i32*, i32** %7, align 8
  %132 = load i32, i32* %12, align 4
  %133 = load i32, i32* @SEEK_CUR, align 4
  %134 = call i32 @fseek(i32* %131, i32 %132, i32 %133)
  br label %135

135:                                              ; preds = %128, %112
  store i32 1, i32* %6, align 4
  store i32 1, i32* %23, align 4
  br label %136

136:                                              ; preds = %135, %109, %97, %88, %47, %40
  %137 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %137)
  %138 = load i32, i32* %6, align 4
  ret i32 %138
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @fread(i8*, i8 zeroext, i32, i32*) #2

declare dso_local i32 @fprintf(i32, i8*) #2

declare dso_local i8* @get_tga_ushort(i8*) #2

declare dso_local i64 @malloc(i8 zeroext) #2

declare dso_local i32 @free(i8*) #2

declare dso_local i32 @fseek(i32*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
