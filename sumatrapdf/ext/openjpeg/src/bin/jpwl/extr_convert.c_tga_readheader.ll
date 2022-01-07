; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/bin/jpwl/extr_convert.c_tga_readheader.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/bin/jpwl/extr_convert.c_tga_readheader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TGA_HEADER_SIZE = common dso_local global i8 0, align 1
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [71 x i8] c"\0AError: fread return a number of element different from the expected.\0A\00", align 1
@.str.1 = private unnamed_addr constant [58 x i8] c"Sorry, compressed tga files are not currently supported.\0A\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"File contains a palette - not yet supported.\00", align 1
@SEEK_CUR = common dso_local global i32 0, align 4
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
  %14 = alloca i8, align 1
  %15 = alloca i8, align 1
  %16 = alloca i8, align 1
  %17 = alloca i8, align 1
  %18 = alloca i8, align 1
  %19 = alloca i16, align 2
  %20 = alloca i16, align 2
  %21 = alloca i16, align 2
  %22 = alloca i16, align 2
  %23 = alloca i16, align 2
  %24 = alloca i16, align 2
  %25 = alloca i16, align 2
  %26 = alloca i8*, align 8
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %27 = load i32*, i32** %8, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %38

29:                                               ; preds = %5
  %30 = load i32*, i32** %9, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %32, label %38

32:                                               ; preds = %29
  %33 = load i32*, i32** %10, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = load i32*, i32** %11, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %35, %32, %29, %5
  store i32 0, i32* %6, align 4
  br label %163

39:                                               ; preds = %35
  %40 = call i64 @malloc(i8 zeroext 18)
  %41 = inttoptr i64 %40 to i8*
  store i8* %41, i8** %13, align 8
  %42 = load i8*, i8** %13, align 8
  %43 = load i8, i8* @TGA_HEADER_SIZE, align 1
  %44 = load i32*, i32** %7, align 8
  %45 = call i32 @fread(i8* %42, i8 zeroext %43, i32 1, i32* %44)
  %46 = icmp ne i32 %45, 1
  br i1 %46, label %47, label %52

47:                                               ; preds = %39
  %48 = load i32, i32* @stderr, align 4
  %49 = call i32 @fprintf(i32 %48, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str, i64 0, i64 0))
  %50 = load i8*, i8** %13, align 8
  %51 = call i32 @free(i8* %50)
  store i32 0, i32* %6, align 4
  br label %163

52:                                               ; preds = %39
  %53 = load i8*, i8** %13, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 0
  %55 = load i8, i8* %54, align 1
  store i8 %55, i8* %14, align 1
  %56 = load i8*, i8** %13, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 1
  %58 = load i8, i8* %57, align 1
  store i8 %58, i8* %15, align 1
  %59 = load i8*, i8** %13, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 2
  %61 = load i8, i8* %60, align 1
  store i8 %61, i8* %16, align 1
  %62 = load i8*, i8** %13, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 3
  %64 = bitcast i8* %63 to i16*
  %65 = load i16, i16* %64, align 2
  %66 = call zeroext i16 @get_ushort(i16 zeroext %65)
  store i16 %66, i16* %19, align 2
  %67 = load i8*, i8** %13, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 5
  %69 = bitcast i8* %68 to i16*
  %70 = load i16, i16* %69, align 2
  %71 = call zeroext i16 @get_ushort(i16 zeroext %70)
  store i16 %71, i16* %20, align 2
  %72 = load i8*, i8** %13, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 7
  %74 = load i8, i8* %73, align 1
  %75 = zext i8 %74 to i16
  store i16 %75, i16* %21, align 2
  %76 = load i8*, i8** %13, align 8
  %77 = getelementptr inbounds i8, i8* %76, i64 8
  %78 = bitcast i8* %77 to i16*
  %79 = load i16, i16* %78, align 2
  %80 = call zeroext i16 @get_ushort(i16 zeroext %79)
  store i16 %80, i16* %22, align 2
  %81 = load i8*, i8** %13, align 8
  %82 = getelementptr inbounds i8, i8* %81, i64 10
  %83 = bitcast i8* %82 to i16*
  %84 = load i16, i16* %83, align 2
  %85 = call zeroext i16 @get_ushort(i16 zeroext %84)
  store i16 %85, i16* %23, align 2
  %86 = load i8*, i8** %13, align 8
  %87 = getelementptr inbounds i8, i8* %86, i64 12
  %88 = bitcast i8* %87 to i16*
  %89 = load i16, i16* %88, align 2
  %90 = call zeroext i16 @get_ushort(i16 zeroext %89)
  store i16 %90, i16* %24, align 2
  %91 = load i8*, i8** %13, align 8
  %92 = getelementptr inbounds i8, i8* %91, i64 14
  %93 = bitcast i8* %92 to i16*
  %94 = load i16, i16* %93, align 2
  %95 = call zeroext i16 @get_ushort(i16 zeroext %94)
  store i16 %95, i16* %25, align 2
  %96 = load i8*, i8** %13, align 8
  %97 = getelementptr inbounds i8, i8* %96, i64 16
  %98 = load i8, i8* %97, align 1
  store i8 %98, i8* %17, align 1
  %99 = load i8*, i8** %13, align 8
  %100 = getelementptr inbounds i8, i8* %99, i64 17
  %101 = load i8, i8* %100, align 1
  store i8 %101, i8* %18, align 1
  %102 = load i8*, i8** %13, align 8
  %103 = call i32 @free(i8* %102)
  %104 = load i8, i8* %17, align 1
  %105 = zext i8 %104 to i32
  %106 = load i32*, i32** %8, align 8
  store i32 %105, i32* %106, align 4
  %107 = load i16, i16* %24, align 2
  %108 = zext i16 %107 to i32
  %109 = load i32*, i32** %9, align 8
  store i32 %108, i32* %109, align 4
  %110 = load i16, i16* %25, align 2
  %111 = zext i16 %110 to i32
  %112 = load i32*, i32** %10, align 8
  store i32 %111, i32* %112, align 4
  %113 = load i8, i8* %14, align 1
  %114 = icmp ne i8 %113, 0
  br i1 %114, label %115, label %132

115:                                              ; preds = %52
  %116 = load i8, i8* %14, align 1
  %117 = call i64 @malloc(i8 zeroext %116)
  %118 = inttoptr i64 %117 to i8*
  store i8* %118, i8** %26, align 8
  %119 = load i8*, i8** %26, align 8
  %120 = load i8, i8* %14, align 1
  %121 = load i32*, i32** %7, align 8
  %122 = call i32 @fread(i8* %119, i8 zeroext %120, i32 1, i32* %121)
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %129, label %124

124:                                              ; preds = %115
  %125 = load i32, i32* @stderr, align 4
  %126 = call i32 @fprintf(i32 %125, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str, i64 0, i64 0))
  %127 = load i8*, i8** %26, align 8
  %128 = call i32 @free(i8* %127)
  store i32 0, i32* %6, align 4
  br label %163

129:                                              ; preds = %115
  %130 = load i8*, i8** %26, align 8
  %131 = call i32 @free(i8* %130)
  br label %132

132:                                              ; preds = %129, %52
  %133 = load i8, i8* %16, align 1
  %134 = zext i8 %133 to i32
  %135 = icmp sgt i32 %134, 8
  br i1 %135, label %136, label %139

136:                                              ; preds = %132
  %137 = load i32, i32* @stderr, align 4
  %138 = call i32 @fprintf(i32 %137, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %163

139:                                              ; preds = %132
  %140 = load i8, i8* %18, align 1
  %141 = zext i8 %140 to i32
  %142 = and i32 %141, 32
  %143 = icmp ne i32 %142, 0
  %144 = xor i1 %143, true
  %145 = zext i1 %144 to i32
  %146 = load i32*, i32** %11, align 8
  store i32 %145, i32* %146, align 4
  %147 = load i16, i16* %20, align 2
  %148 = zext i16 %147 to i32
  %149 = load i16, i16* %21, align 2
  %150 = zext i16 %149 to i32
  %151 = sdiv i32 %150, 8
  %152 = mul nsw i32 %148, %151
  store i32 %152, i32* %12, align 4
  %153 = load i32, i32* %12, align 4
  %154 = icmp sgt i32 %153, 0
  br i1 %154, label %155, label %162

155:                                              ; preds = %139
  %156 = load i32, i32* @stderr, align 4
  %157 = call i32 @fprintf(i32 %156, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0))
  %158 = load i32*, i32** %7, align 8
  %159 = load i32, i32* %12, align 4
  %160 = load i32, i32* @SEEK_CUR, align 4
  %161 = call i32 @fseek(i32* %158, i32 %159, i32 %160)
  br label %162

162:                                              ; preds = %155, %139
  store i32 1, i32* %6, align 4
  br label %163

163:                                              ; preds = %162, %136, %124, %47, %38
  %164 = load i32, i32* %6, align 4
  ret i32 %164
}

declare dso_local i64 @malloc(i8 zeroext) #1

declare dso_local i32 @fread(i8*, i8 zeroext, i32, i32*) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local zeroext i16 @get_ushort(i16 zeroext) #1

declare dso_local i32 @fseek(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
