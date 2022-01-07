; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/gendib/extr_gendib.c_CreateGetSource.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/gendib/extr_gendib.c_CreateGetSource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }

@.str = private unnamed_addr constant [2 x i8] c"=\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"|=\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c") << %u\00", align 1
@ROPCODE_SRCCOPY = common dso_local global i64 0, align 8
@FLAG_TRIVIALXLATE = common dso_local global i32 0, align 4
@FLAG_FORCERAWSOURCEAVAIL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [24 x i8] c"if (0 == SourcePixels)\0A\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"{\0A\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"RawSource = *SourcePtr++;\0A\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"SourcePixels = %u;\0A\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"}\0A\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"Source %s (%s\00", align 1
@.str.11 = private unnamed_addr constant [47 x i8] c"XLATEOBJ_iXlate(BltInfo->XlateSourceToDest, %s\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"*SourcePtr++\00", align 1
@.str.13 = private unnamed_addr constant [56 x i8] c"*(PUSHORT) SourcePtr + (*((PBYTE) SourcePtr + 2) << 16)\00", align 1
@.str.14 = private unnamed_addr constant [38 x i8] c"RawSource >> Shift%uBpp[SourcePixels]\00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c") & 0x%x)\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c")%s;\0A\00", align 1
@.str.18 = private unnamed_addr constant [13 x i8] c" & 0x%x)%s;\0A\00", align 1
@.str.19 = private unnamed_addr constant [17 x i8] c"SourcePixels--;\0A\00", align 1
@.str.20 = private unnamed_addr constant [47 x i8] c"SourcePtr = (PULONG)((char *) SourcePtr + 3);\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, %struct.TYPE_3__*, i32, i32, i32)* @CreateGetSource to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CreateGetSource(i32* %0, i32 %1, %struct.TYPE_3__* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_3__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca [8 x i8], align 1
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %16 = load i32*, i32** %7, align 8
  %17 = call i32 @MARK(i32* %16)
  %18 = load i32, i32* %12, align 4
  %19 = icmp eq i32 0, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %6
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %13, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8** %14, align 8
  %21 = getelementptr inbounds [8 x i8], [8 x i8]* %15, i64 0, i64 0
  store i8 0, i8* %21, align 1
  br label %26

22:                                               ; preds = %6
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8** %13, align 8
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8** %14, align 8
  %23 = getelementptr inbounds [8 x i8], [8 x i8]* %15, i64 0, i64 0
  %24 = load i32, i32* %12, align 4
  %25 = call i32 @sprintf(i8* %23, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 %24)
  br label %26

26:                                               ; preds = %22, %20
  %27 = load i64, i64* @ROPCODE_SRCCOPY, align 8
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %27, %30
  br i1 %31, label %41, label %32

32:                                               ; preds = %26
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* @FLAG_TRIVIALXLATE, align 4
  %35 = and i32 %33, %34
  %36 = icmp eq i32 0, %35
  br i1 %36, label %41, label %37

37:                                               ; preds = %32
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* %11, align 4
  %40 = icmp ne i32 %38, %39
  br i1 %40, label %41, label %141

41:                                               ; preds = %37, %32, %26
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* @FLAG_FORCERAWSOURCEAVAIL, align 4
  %44 = and i32 %42, %43
  %45 = icmp eq i32 0, %44
  br i1 %45, label %46, label %62

46:                                               ; preds = %41
  %47 = load i32, i32* %11, align 4
  %48 = icmp ule i32 %47, 16
  br i1 %48, label %49, label %62

49:                                               ; preds = %46
  %50 = load i32*, i32** %7, align 8
  %51 = call i32 (i32*, i8*, ...) @Output(i32* %50, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0))
  %52 = load i32*, i32** %7, align 8
  %53 = call i32 (i32*, i8*, ...) @Output(i32* %52, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  %54 = load i32*, i32** %7, align 8
  %55 = call i32 (i32*, i8*, ...) @Output(i32* %54, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0))
  %56 = load i32*, i32** %7, align 8
  %57 = load i32, i32* %11, align 4
  %58 = udiv i32 32, %57
  %59 = call i32 (i32*, i8*, ...) @Output(i32* %56, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0), i32 %58)
  %60 = load i32*, i32** %7, align 8
  %61 = call i32 (i32*, i8*, ...) @Output(i32* %60, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0))
  br label %62

62:                                               ; preds = %49, %46, %41
  %63 = load i32*, i32** %7, align 8
  %64 = load i8*, i8** %13, align 8
  %65 = load i8*, i8** %14, align 8
  %66 = call i32 (i32*, i8*, ...) @Output(i32* %63, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0), i8* %64, i8* %65)
  %67 = load i32, i32* %10, align 4
  %68 = load i32, i32* @FLAG_TRIVIALXLATE, align 4
  %69 = and i32 %67, %68
  %70 = icmp eq i32 0, %69
  br i1 %70, label %71, label %78

71:                                               ; preds = %62
  %72 = load i32*, i32** %7, align 8
  %73 = load i32, i32* %11, align 4
  %74 = icmp ult i32 16, %73
  %75 = zext i1 %74 to i64
  %76 = select i1 %74, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)
  %77 = call i32 (i32*, i8*, ...) @Output(i32* %72, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.11, i64 0, i64 0), i8* %76)
  br label %78

78:                                               ; preds = %71, %62
  %79 = load i32, i32* %11, align 4
  %80 = icmp eq i32 32, %79
  br i1 %80, label %81, label %84

81:                                               ; preds = %78
  %82 = load i32*, i32** %7, align 8
  %83 = call i32 (i32*, i8*, ...) @Output(i32* %82, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i64 0, i64 0))
  br label %95

84:                                               ; preds = %78
  %85 = load i32, i32* %11, align 4
  %86 = icmp eq i32 24, %85
  br i1 %86, label %87, label %90

87:                                               ; preds = %84
  %88 = load i32*, i32** %7, align 8
  %89 = call i32 (i32*, i8*, ...) @Output(i32* %88, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.13, i64 0, i64 0))
  br label %94

90:                                               ; preds = %84
  %91 = load i32*, i32** %7, align 8
  %92 = load i32, i32* %11, align 4
  %93 = call i32 (i32*, i8*, ...) @Output(i32* %91, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.14, i64 0, i64 0), i32 %92)
  br label %94

94:                                               ; preds = %90, %87
  br label %95

95:                                               ; preds = %94, %81
  %96 = load i32, i32* %10, align 4
  %97 = load i32, i32* @FLAG_TRIVIALXLATE, align 4
  %98 = and i32 %96, %97
  %99 = icmp eq i32 0, %98
  br i1 %99, label %100, label %113

100:                                              ; preds = %95
  %101 = load i32, i32* %11, align 4
  %102 = icmp ult i32 16, %101
  br i1 %102, label %103, label %106

103:                                              ; preds = %100
  %104 = load i32*, i32** %7, align 8
  %105 = call i32 (i32*, i8*, ...) @Output(i32* %104, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0))
  br label %112

106:                                              ; preds = %100
  %107 = load i32*, i32** %7, align 8
  %108 = load i32, i32* %11, align 4
  %109 = shl i32 1, %108
  %110 = sub nsw i32 %109, 1
  %111 = call i32 (i32*, i8*, ...) @Output(i32* %107, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i64 0, i64 0), i32 %110)
  br label %112

112:                                              ; preds = %106, %103
  br label %113

113:                                              ; preds = %112, %95
  %114 = load i32, i32* %8, align 4
  %115 = icmp eq i32 32, %114
  br i1 %115, label %116, label %120

116:                                              ; preds = %113
  %117 = load i32*, i32** %7, align 8
  %118 = getelementptr inbounds [8 x i8], [8 x i8]* %15, i64 0, i64 0
  %119 = call i32 (i32*, i8*, ...) @Output(i32* %117, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i64 0, i64 0), i8* %118)
  br label %127

120:                                              ; preds = %113
  %121 = load i32*, i32** %7, align 8
  %122 = load i32, i32* %8, align 4
  %123 = shl i32 1, %122
  %124 = sub nsw i32 %123, 1
  %125 = getelementptr inbounds [8 x i8], [8 x i8]* %15, i64 0, i64 0
  %126 = call i32 (i32*, i8*, ...) @Output(i32* %121, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i64 0, i64 0), i32 %124, i8* %125)
  br label %127

127:                                              ; preds = %120, %116
  %128 = load i32, i32* %11, align 4
  %129 = icmp ule i32 %128, 16
  br i1 %129, label %130, label %133

130:                                              ; preds = %127
  %131 = load i32*, i32** %7, align 8
  %132 = call i32 (i32*, i8*, ...) @Output(i32* %131, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.19, i64 0, i64 0))
  br label %140

133:                                              ; preds = %127
  %134 = load i32, i32* %11, align 4
  %135 = icmp eq i32 24, %134
  br i1 %135, label %136, label %139

136:                                              ; preds = %133
  %137 = load i32*, i32** %7, align 8
  %138 = call i32 (i32*, i8*, ...) @Output(i32* %137, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.20, i64 0, i64 0))
  br label %139

139:                                              ; preds = %136, %133
  br label %140

140:                                              ; preds = %139, %130
  br label %141

141:                                              ; preds = %140, %37
  ret void
}

declare dso_local i32 @MARK(i32*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @Output(i32*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
