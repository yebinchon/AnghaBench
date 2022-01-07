; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/bin/jp2/extr_convert.c_tga_writeheader.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/bin/jp2/extr_convert.c_tga_writeheader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"ERROR: Wrong bits per pixel inside tga_header\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"\0Awrite_tgaheader: write ERROR\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32, i32, i64)* @tga_writeheader to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tga_writeheader(i32* %0, i32 %1, i32 %2, i32 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i8, align 1
  %13 = alloca i8, align 1
  %14 = alloca i8, align 1
  %15 = alloca i8, align 1
  %16 = alloca i8, align 1
  %17 = alloca i8, align 1
  %18 = alloca i8, align 1
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  %19 = load i32, i32* %8, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %5
  %22 = load i32, i32* %9, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = load i32, i32* %10, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %24, %21, %5
  store i32 0, i32* %6, align 4
  br label %115

28:                                               ; preds = %24
  store i8 0, i8* %17, align 1
  %29 = load i32, i32* %8, align 4
  %30 = icmp slt i32 %29, 256
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = load i32, i32* %8, align 4
  %33 = trunc i32 %32 to i8
  store i8 %33, i8* %17, align 1
  br label %37

34:                                               ; preds = %28
  %35 = load i32, i32* @stderr, align 4
  %36 = call i32 @fprintf(i32 %35, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %115

37:                                               ; preds = %31
  store i8 0, i8* %15, align 1
  %38 = load i32*, i32** %7, align 8
  %39 = call i32 @fwrite(i8* %15, i32 1, i32 1, i32* %38)
  %40 = icmp ne i32 %39, 1
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  br label %112

42:                                               ; preds = %37
  %43 = load i32*, i32** %7, align 8
  %44 = call i32 @fwrite(i8* %15, i32 1, i32 1, i32* %43)
  %45 = icmp ne i32 %44, 1
  br i1 %45, label %46, label %47

46:                                               ; preds = %42
  br label %112

47:                                               ; preds = %42
  store i8 2, i8* %16, align 1
  %48 = load i32*, i32** %7, align 8
  %49 = call i32 @fwrite(i8* %16, i32 1, i32 1, i32* %48)
  %50 = icmp ne i32 %49, 1
  br i1 %50, label %51, label %52

51:                                               ; preds = %47
  br label %112

52:                                               ; preds = %47
  store i8 0, i8* %14, align 1
  %53 = load i32*, i32** %7, align 8
  %54 = call i32 @fwrite(i8* %14, i32 2, i32 1, i32* %53)
  %55 = icmp ne i32 %54, 1
  br i1 %55, label %56, label %57

56:                                               ; preds = %52
  br label %112

57:                                               ; preds = %52
  %58 = load i32*, i32** %7, align 8
  %59 = call i32 @fwrite(i8* %14, i32 2, i32 1, i32* %58)
  %60 = icmp ne i32 %59, 1
  br i1 %60, label %61, label %62

61:                                               ; preds = %57
  br label %112

62:                                               ; preds = %57
  %63 = load i32*, i32** %7, align 8
  %64 = call i32 @fwrite(i8* %15, i32 1, i32 1, i32* %63)
  %65 = icmp ne i32 %64, 1
  br i1 %65, label %66, label %67

66:                                               ; preds = %62
  br label %112

67:                                               ; preds = %62
  %68 = load i32*, i32** %7, align 8
  %69 = call i32 @fwrite(i8* %14, i32 2, i32 1, i32* %68)
  %70 = icmp ne i32 %69, 1
  br i1 %70, label %71, label %72

71:                                               ; preds = %67
  br label %112

72:                                               ; preds = %67
  %73 = load i32*, i32** %7, align 8
  %74 = call i32 @fwrite(i8* %14, i32 2, i32 1, i32* %73)
  %75 = icmp ne i32 %74, 1
  br i1 %75, label %76, label %77

76:                                               ; preds = %72
  br label %112

77:                                               ; preds = %72
  %78 = load i32, i32* %9, align 4
  %79 = trunc i32 %78 to i16
  %80 = trunc i16 %79 to i8
  store i8 %80, i8* %12, align 1
  %81 = load i32, i32* %10, align 4
  %82 = trunc i32 %81 to i16
  %83 = trunc i16 %82 to i8
  store i8 %83, i8* %13, align 1
  %84 = load i32*, i32** %7, align 8
  %85 = call i32 @fwrite(i8* %12, i32 2, i32 1, i32* %84)
  %86 = icmp ne i32 %85, 1
  br i1 %86, label %87, label %88

87:                                               ; preds = %77
  br label %112

88:                                               ; preds = %77
  %89 = load i32*, i32** %7, align 8
  %90 = call i32 @fwrite(i8* %13, i32 2, i32 1, i32* %89)
  %91 = icmp ne i32 %90, 1
  br i1 %91, label %92, label %93

92:                                               ; preds = %88
  br label %112

93:                                               ; preds = %88
  %94 = load i32*, i32** %7, align 8
  %95 = call i32 @fwrite(i8* %17, i32 1, i32 1, i32* %94)
  %96 = icmp ne i32 %95, 1
  br i1 %96, label %97, label %98

97:                                               ; preds = %93
  br label %112

98:                                               ; preds = %93
  store i8 8, i8* %18, align 1
  %99 = load i64, i64* %11, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %106

101:                                              ; preds = %98
  %102 = load i8, i8* %18, align 1
  %103 = zext i8 %102 to i32
  %104 = or i32 %103, 32
  %105 = trunc i32 %104 to i8
  store i8 %105, i8* %18, align 1
  br label %106

106:                                              ; preds = %101, %98
  %107 = load i32*, i32** %7, align 8
  %108 = call i32 @fwrite(i8* %18, i32 1, i32 1, i32* %107)
  %109 = icmp ne i32 %108, 1
  br i1 %109, label %110, label %111

110:                                              ; preds = %106
  br label %112

111:                                              ; preds = %106
  store i32 1, i32* %6, align 4
  br label %115

112:                                              ; preds = %110, %97, %92, %87, %76, %71, %66, %61, %56, %51, %46, %41
  %113 = load i32, i32* @stderr, align 4
  %114 = call i32 @fputs(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %113)
  store i32 0, i32* %6, align 4
  br label %115

115:                                              ; preds = %112, %111, %34, %27
  %116 = load i32, i32* %6, align 4
  ret i32 %116
}

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @fwrite(i8*, i32, i32, i32*) #1

declare dso_local i32 @fputs(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
