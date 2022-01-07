; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_output-pcl.c_fz_pcl_preset.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_output-pcl.c_fz_pcl_preset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"generic\00", align 1
@fz_pcl_options_generic = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"ljet4\00", align 1
@fz_pcl_options_ljet4 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"dj500\00", align 1
@fz_pcl_options_dj500 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"fs600\00", align 1
@fz_pcl_options_fs600 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [3 x i8] c"lj\00", align 1
@fz_pcl_options_lj = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [4 x i8] c"lj2\00", align 1
@fz_pcl_options_lj2 = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [4 x i8] c"lj3\00", align 1
@fz_pcl_options_lj3 = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [5 x i8] c"lj3d\00", align 1
@fz_pcl_options_lj3d = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [4 x i8] c"lj4\00", align 1
@fz_pcl_options_lj4 = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [6 x i8] c"lj4pl\00", align 1
@fz_pcl_options_lj4pl = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [5 x i8] c"lj4d\00", align 1
@fz_pcl_options_lj4d = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [8 x i8] c"lp2563b\00", align 1
@fz_pcl_options_lp2563b = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [8 x i8] c"oce9050\00", align 1
@fz_pcl_options_oce9050 = common dso_local global i32 0, align 4
@FZ_ERROR_GENERIC = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [20 x i8] c"Unknown preset '%s'\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fz_pcl_preset(i32* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load i8*, i8** %6, align 8
  %8 = icmp eq i8* %7, null
  br i1 %8, label %18, label %9

9:                                                ; preds = %3
  %10 = load i8*, i8** %6, align 8
  %11 = load i8, i8* %10, align 1
  %12 = sext i8 %11 to i32
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %9
  %15 = load i8*, i8** %6, align 8
  %16 = call i32 @strcmp(i8* %15, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %14, %9, %3
  %19 = load i32*, i32** %5, align 8
  %20 = call i32 @copy_opts(i32* %19, i32* @fz_pcl_options_generic)
  br label %122

21:                                               ; preds = %14
  %22 = load i8*, i8** %6, align 8
  %23 = call i32 @strcmp(i8* %22, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %21
  %26 = load i32*, i32** %5, align 8
  %27 = call i32 @copy_opts(i32* %26, i32* @fz_pcl_options_ljet4)
  br label %121

28:                                               ; preds = %21
  %29 = load i8*, i8** %6, align 8
  %30 = call i32 @strcmp(i8* %29, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %28
  %33 = load i32*, i32** %5, align 8
  %34 = call i32 @copy_opts(i32* %33, i32* @fz_pcl_options_dj500)
  br label %120

35:                                               ; preds = %28
  %36 = load i8*, i8** %6, align 8
  %37 = call i32 @strcmp(i8* %36, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %35
  %40 = load i32*, i32** %5, align 8
  %41 = call i32 @copy_opts(i32* %40, i32* @fz_pcl_options_fs600)
  br label %119

42:                                               ; preds = %35
  %43 = load i8*, i8** %6, align 8
  %44 = call i32 @strcmp(i8* %43, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %42
  %47 = load i32*, i32** %5, align 8
  %48 = call i32 @copy_opts(i32* %47, i32* @fz_pcl_options_lj)
  br label %118

49:                                               ; preds = %42
  %50 = load i8*, i8** %6, align 8
  %51 = call i32 @strcmp(i8* %50, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %49
  %54 = load i32*, i32** %5, align 8
  %55 = call i32 @copy_opts(i32* %54, i32* @fz_pcl_options_lj2)
  br label %117

56:                                               ; preds = %49
  %57 = load i8*, i8** %6, align 8
  %58 = call i32 @strcmp(i8* %57, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %63, label %60

60:                                               ; preds = %56
  %61 = load i32*, i32** %5, align 8
  %62 = call i32 @copy_opts(i32* %61, i32* @fz_pcl_options_lj3)
  br label %116

63:                                               ; preds = %56
  %64 = load i8*, i8** %6, align 8
  %65 = call i32 @strcmp(i8* %64, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %70, label %67

67:                                               ; preds = %63
  %68 = load i32*, i32** %5, align 8
  %69 = call i32 @copy_opts(i32* %68, i32* @fz_pcl_options_lj3d)
  br label %115

70:                                               ; preds = %63
  %71 = load i8*, i8** %6, align 8
  %72 = call i32 @strcmp(i8* %71, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0))
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %77, label %74

74:                                               ; preds = %70
  %75 = load i32*, i32** %5, align 8
  %76 = call i32 @copy_opts(i32* %75, i32* @fz_pcl_options_lj4)
  br label %114

77:                                               ; preds = %70
  %78 = load i8*, i8** %6, align 8
  %79 = call i32 @strcmp(i8* %78, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0))
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %84, label %81

81:                                               ; preds = %77
  %82 = load i32*, i32** %5, align 8
  %83 = call i32 @copy_opts(i32* %82, i32* @fz_pcl_options_lj4pl)
  br label %113

84:                                               ; preds = %77
  %85 = load i8*, i8** %6, align 8
  %86 = call i32 @strcmp(i8* %85, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0))
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %91, label %88

88:                                               ; preds = %84
  %89 = load i32*, i32** %5, align 8
  %90 = call i32 @copy_opts(i32* %89, i32* @fz_pcl_options_lj4d)
  br label %112

91:                                               ; preds = %84
  %92 = load i8*, i8** %6, align 8
  %93 = call i32 @strcmp(i8* %92, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0))
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %98, label %95

95:                                               ; preds = %91
  %96 = load i32*, i32** %5, align 8
  %97 = call i32 @copy_opts(i32* %96, i32* @fz_pcl_options_lp2563b)
  br label %111

98:                                               ; preds = %91
  %99 = load i8*, i8** %6, align 8
  %100 = call i32 @strcmp(i8* %99, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0))
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %105, label %102

102:                                              ; preds = %98
  %103 = load i32*, i32** %5, align 8
  %104 = call i32 @copy_opts(i32* %103, i32* @fz_pcl_options_oce9050)
  br label %110

105:                                              ; preds = %98
  %106 = load i32*, i32** %4, align 8
  %107 = load i32, i32* @FZ_ERROR_GENERIC, align 4
  %108 = load i8*, i8** %6, align 8
  %109 = call i32 @fz_throw(i32* %106, i32 %107, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i64 0, i64 0), i8* %108)
  br label %110

110:                                              ; preds = %105, %102
  br label %111

111:                                              ; preds = %110, %95
  br label %112

112:                                              ; preds = %111, %88
  br label %113

113:                                              ; preds = %112, %81
  br label %114

114:                                              ; preds = %113, %74
  br label %115

115:                                              ; preds = %114, %67
  br label %116

116:                                              ; preds = %115, %60
  br label %117

117:                                              ; preds = %116, %53
  br label %118

118:                                              ; preds = %117, %46
  br label %119

119:                                              ; preds = %118, %39
  br label %120

120:                                              ; preds = %119, %32
  br label %121

121:                                              ; preds = %120, %25
  br label %122

122:                                              ; preds = %121, %18
  ret void
}

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @copy_opts(i32*, i32*) #1

declare dso_local i32 @fz_throw(i32*, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
