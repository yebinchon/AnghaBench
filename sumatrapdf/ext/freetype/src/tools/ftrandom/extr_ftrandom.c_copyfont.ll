; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/freetype/src/tools/ftrandom/extr_ftrandom.c_copyfont.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/freetype/src/tools/ftrandom/extr_ftrandom.c_copyfont.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fontlist = type { i8*, i32, i64, i64 }

@copyfont.buffer = internal global [8096 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"Can't open `%s'\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"w+\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"Can't create temporary output file `%s'\0A\00", align 1
@SEEK_SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fontlist*, i8*)* @copyfont to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @copyfont(%struct.fontlist* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fontlist*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.fontlist* %0, %struct.fontlist** %4, align 8
  store i8* %1, i8** %5, align 8
  %12 = load %struct.fontlist*, %struct.fontlist** %4, align 8
  %13 = getelementptr inbounds %struct.fontlist, %struct.fontlist* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  %15 = call i32* @fopen(i8* %14, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %15, i32** %6, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %24, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @stderr, align 4
  %20 = load %struct.fontlist*, %struct.fontlist** %4, align 8
  %21 = getelementptr inbounds %struct.fontlist, %struct.fontlist* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = call i32 @fprintf(i32 %19, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8* %22)
  store i32 0, i32* %3, align 4
  br label %109

24:                                               ; preds = %2
  %25 = load i8*, i8** %5, align 8
  %26 = call i32* @fopen(i8* %25, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  store i32* %26, i32** %7, align 8
  %27 = load i32*, i32** %7, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %34, label %29

29:                                               ; preds = %24
  %30 = load i32, i32* @stderr, align 4
  %31 = load i8*, i8** %5, align 8
  %32 = call i32 @fprintf(i32 %30, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i8* %31)
  %33 = call i32 @exit(i32 1) #3
  unreachable

34:                                               ; preds = %24
  br label %35

35:                                               ; preds = %39, %34
  %36 = load i32*, i32** %6, align 8
  %37 = call i64 @fread(i8* getelementptr inbounds ([8096 x i8], [8096 x i8]* @copyfont.buffer, i64 0, i64 0), i32 1, i32 8096, i32* %36)
  store i64 %37, i64* %8, align 8
  %38 = icmp ugt i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %35
  %40 = load i64, i64* %8, align 8
  %41 = load i32*, i32** %7, align 8
  %42 = call i32 @fwrite(i8* getelementptr inbounds ([8096 x i8], [8096 x i8]* @copyfont.buffer, i64 0, i64 0), i32 1, i64 %40, i32* %41)
  br label %35

43:                                               ; preds = %35
  %44 = load i32*, i32** %6, align 8
  %45 = call i32 @fclose(i32* %44)
  %46 = load %struct.fontlist*, %struct.fontlist** %4, align 8
  %47 = call i32 @getErrorCnt(%struct.fontlist* %46)
  store i32 %47, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %48

48:                                               ; preds = %94, %43
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* %10, align 4
  %51 = icmp ult i32 %49, %50
  br i1 %51, label %52, label %97

52:                                               ; preds = %48
  %53 = load i32*, i32** %7, align 8
  %54 = load %struct.fontlist*, %struct.fontlist** %4, align 8
  %55 = getelementptr inbounds %struct.fontlist, %struct.fontlist* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = sub nsw i32 %56, 1
  %58 = call i32 @getRandom(i32 0, i32 %57)
  %59 = load i32, i32* @SEEK_SET, align 4
  %60 = call i32 @fseek(i32* %53, i32 %58, i32 %59)
  %61 = load %struct.fontlist*, %struct.fontlist** %4, align 8
  %62 = getelementptr inbounds %struct.fontlist, %struct.fontlist* %61, i32 0, i32 3
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %52
  %66 = call i32 @getRandom(i32 0, i32 255)
  %67 = load i32*, i32** %7, align 8
  %68 = call i32 @putc(i32 %66, i32* %67)
  br label %93

69:                                               ; preds = %52
  %70 = load %struct.fontlist*, %struct.fontlist** %4, align 8
  %71 = getelementptr inbounds %struct.fontlist, %struct.fontlist* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %69
  %75 = call i32 @getRandom(i32 32, i32 126)
  %76 = load i32*, i32** %7, align 8
  %77 = call i32 @putc(i32 %75, i32* %76)
  br label %92

78:                                               ; preds = %69
  %79 = call i32 @getRandom(i32 0, i32 15)
  store i32 %79, i32* %11, align 4
  %80 = load i32, i32* %11, align 4
  %81 = icmp slt i32 %80, 10
  br i1 %81, label %82, label %85

82:                                               ; preds = %78
  %83 = load i32, i32* %11, align 4
  %84 = add nsw i32 %83, 48
  store i32 %84, i32* %11, align 4
  br label %88

85:                                               ; preds = %78
  %86 = load i32, i32* %11, align 4
  %87 = add nsw i32 %86, 55
  store i32 %87, i32* %11, align 4
  br label %88

88:                                               ; preds = %85, %82
  %89 = load i32, i32* %11, align 4
  %90 = load i32*, i32** %7, align 8
  %91 = call i32 @putc(i32 %89, i32* %90)
  br label %92

92:                                               ; preds = %88, %74
  br label %93

93:                                               ; preds = %92, %65
  br label %94

94:                                               ; preds = %93
  %95 = load i32, i32* %9, align 4
  %96 = add i32 %95, 1
  store i32 %96, i32* %9, align 4
  br label %48

97:                                               ; preds = %48
  %98 = load i32*, i32** %7, align 8
  %99 = call i64 @ferror(i32* %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %106

101:                                              ; preds = %97
  %102 = load i32*, i32** %7, align 8
  %103 = call i32 @fclose(i32* %102)
  %104 = load i8*, i8** %5, align 8
  %105 = call i32 @unlink(i8* %104)
  store i32 0, i32* %3, align 4
  br label %109

106:                                              ; preds = %97
  %107 = load i32*, i32** %7, align 8
  %108 = call i32 @fclose(i32* %107)
  store i32 1, i32* %3, align 4
  br label %109

109:                                              ; preds = %106, %101, %18
  %110 = load i32, i32* %3, align 4
  ret i32 %110
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i64 @fread(i8*, i32, i32, i32*) #1

declare dso_local i32 @fwrite(i8*, i32, i64, i32*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @getErrorCnt(%struct.fontlist*) #1

declare dso_local i32 @fseek(i32*, i32, i32) #1

declare dso_local i32 @getRandom(i32, i32) #1

declare dso_local i32 @putc(i32, i32*) #1

declare dso_local i64 @ferror(i32*) #1

declare dso_local i32 @unlink(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
