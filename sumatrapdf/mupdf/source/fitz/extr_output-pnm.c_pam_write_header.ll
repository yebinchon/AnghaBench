; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_output-pnm.c_pam_write_header.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_output-pnm.c_pam_write_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i64, i32* }

@FZ_ERROR_GENERIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"PAM writer cannot cope with spot colors\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"P7\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"WIDTH %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"HEIGHT %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"DEPTH %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"MAXVAL 255\0A\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"TUPLTYPE GRAYSCALE\0A\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"TUPLTYPE GRAYSCALE_ALPHA\0A\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"TUPLTYPE RGB\0A\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"TUPLTYPE RGB_ALPHA\0A\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"TUPLTYPE CMYK\0A\00", align 1
@.str.11 = private unnamed_addr constant [21 x i8] c"TUPLTYPE CMYK_ALPHA\0A\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"ENDHDR\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_3__*, i32*)* @pam_write_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pam_write_header(i32* %0, %struct.TYPE_3__* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  store i32* %2, i32** %6, align 8
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 5
  %14 = load i32*, i32** %13, align 8
  store i32* %14, i32** %7, align 8
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %8, align 4
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %9, align 4
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %10, align 4
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %11, align 4
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 4
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %3
  %32 = load i32*, i32** %4, align 8
  %33 = load i32, i32* @FZ_ERROR_GENERIC, align 4
  %34 = call i32 @fz_throw(i32* %32, i32 %33, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  br label %35

35:                                               ; preds = %31, %3
  %36 = load i32*, i32** %4, align 8
  %37 = load i32*, i32** %7, align 8
  %38 = call i32 (i32*, i32*, i8*, ...) @fz_write_printf(i32* %36, i32* %37, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %39 = load i32*, i32** %4, align 8
  %40 = load i32*, i32** %7, align 8
  %41 = load i32, i32* %8, align 4
  %42 = call i32 (i32*, i32*, i8*, ...) @fz_write_printf(i32* %39, i32* %40, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %41)
  %43 = load i32*, i32** %4, align 8
  %44 = load i32*, i32** %7, align 8
  %45 = load i32, i32* %9, align 4
  %46 = call i32 (i32*, i32*, i8*, ...) @fz_write_printf(i32* %43, i32* %44, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 %45)
  %47 = load i32*, i32** %4, align 8
  %48 = load i32*, i32** %7, align 8
  %49 = load i32, i32* %10, align 4
  %50 = call i32 (i32*, i32*, i8*, ...) @fz_write_printf(i32* %47, i32* %48, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 %49)
  %51 = load i32*, i32** %4, align 8
  %52 = load i32*, i32** %7, align 8
  %53 = call i32 (i32*, i32*, i8*, ...) @fz_write_printf(i32* %51, i32* %52, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  %54 = load i32, i32* %11, align 4
  %55 = load i32, i32* %10, align 4
  %56 = sub nsw i32 %55, %54
  store i32 %56, i32* %10, align 4
  %57 = load i32, i32* %10, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %35
  %60 = load i32, i32* %11, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %59
  %63 = load i32*, i32** %4, align 8
  %64 = load i32*, i32** %7, align 8
  %65 = call i32 (i32*, i32*, i8*, ...) @fz_write_printf(i32* %63, i32* %64, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0))
  br label %132

66:                                               ; preds = %59, %35
  %67 = load i32, i32* %10, align 4
  %68 = icmp eq i32 %67, 1
  br i1 %68, label %69, label %76

69:                                               ; preds = %66
  %70 = load i32, i32* %11, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %76, label %72

72:                                               ; preds = %69
  %73 = load i32*, i32** %4, align 8
  %74 = load i32*, i32** %7, align 8
  %75 = call i32 (i32*, i32*, i8*, ...) @fz_write_printf(i32* %73, i32* %74, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0))
  br label %131

76:                                               ; preds = %69, %66
  %77 = load i32, i32* %10, align 4
  %78 = icmp eq i32 %77, 1
  br i1 %78, label %79, label %86

79:                                               ; preds = %76
  %80 = load i32, i32* %11, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %79
  %83 = load i32*, i32** %4, align 8
  %84 = load i32*, i32** %7, align 8
  %85 = call i32 (i32*, i32*, i8*, ...) @fz_write_printf(i32* %83, i32* %84, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0))
  br label %130

86:                                               ; preds = %79, %76
  %87 = load i32, i32* %10, align 4
  %88 = icmp eq i32 %87, 3
  br i1 %88, label %89, label %96

89:                                               ; preds = %86
  %90 = load i32, i32* %11, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %96, label %92

92:                                               ; preds = %89
  %93 = load i32*, i32** %4, align 8
  %94 = load i32*, i32** %7, align 8
  %95 = call i32 (i32*, i32*, i8*, ...) @fz_write_printf(i32* %93, i32* %94, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0))
  br label %129

96:                                               ; preds = %89, %86
  %97 = load i32, i32* %10, align 4
  %98 = icmp eq i32 %97, 3
  br i1 %98, label %99, label %106

99:                                               ; preds = %96
  %100 = load i32, i32* %11, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %99
  %103 = load i32*, i32** %4, align 8
  %104 = load i32*, i32** %7, align 8
  %105 = call i32 (i32*, i32*, i8*, ...) @fz_write_printf(i32* %103, i32* %104, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0))
  br label %128

106:                                              ; preds = %99, %96
  %107 = load i32, i32* %10, align 4
  %108 = icmp eq i32 %107, 4
  br i1 %108, label %109, label %116

109:                                              ; preds = %106
  %110 = load i32, i32* %11, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %116, label %112

112:                                              ; preds = %109
  %113 = load i32*, i32** %4, align 8
  %114 = load i32*, i32** %7, align 8
  %115 = call i32 (i32*, i32*, i8*, ...) @fz_write_printf(i32* %113, i32* %114, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0))
  br label %127

116:                                              ; preds = %109, %106
  %117 = load i32, i32* %10, align 4
  %118 = icmp eq i32 %117, 4
  br i1 %118, label %119, label %126

119:                                              ; preds = %116
  %120 = load i32, i32* %11, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %126

122:                                              ; preds = %119
  %123 = load i32*, i32** %4, align 8
  %124 = load i32*, i32** %7, align 8
  %125 = call i32 (i32*, i32*, i8*, ...) @fz_write_printf(i32* %123, i32* %124, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0))
  br label %126

126:                                              ; preds = %122, %119, %116
  br label %127

127:                                              ; preds = %126, %112
  br label %128

128:                                              ; preds = %127, %102
  br label %129

129:                                              ; preds = %128, %92
  br label %130

130:                                              ; preds = %129, %82
  br label %131

131:                                              ; preds = %130, %72
  br label %132

132:                                              ; preds = %131, %62
  %133 = load i32*, i32** %4, align 8
  %134 = load i32*, i32** %7, align 8
  %135 = call i32 (i32*, i32*, i8*, ...) @fz_write_printf(i32* %133, i32* %134, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0))
  ret void
}

declare dso_local i32 @fz_throw(i32*, i32, i8*) #1

declare dso_local i32 @fz_write_printf(i32*, i32*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
