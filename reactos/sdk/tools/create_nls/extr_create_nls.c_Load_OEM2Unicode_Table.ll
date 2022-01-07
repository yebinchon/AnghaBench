; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/create_nls/extr_create_nls.c_Load_OEM2Unicode_Table.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/create_nls/extr_create_nls.c_Load_OEM2Unicode_Table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"Loading oem glyph table \22%s\22\0A\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"Not enough memory for Codepage to Unicode table\0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"Line %d: Entry 0x%06lX: File \22%s\22 corrupted\0A\00", align 1
@.str.4 = private unnamed_addr constant [59 x i8] c"Line %d: Entry 0x%06lX unicode value: File \22%s\22 corrupted\0A\00", align 1
@.str.5 = private unnamed_addr constant [55 x i8] c"Line %d: Entry 0x%06lX oem value: File \22%s\22 corrupted\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64* (i8*, i64*, i32, %struct.TYPE_3__*)* @Load_OEM2Unicode_Table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64* @Load_OEM2Unicode_Table(i8* %0, i64* %1, i32 %2, %struct.TYPE_3__* %3) #0 {
  %5 = alloca i64*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_3__*, align 8
  %10 = alloca [256 x i8], align 16
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i64* %1, i64** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.TYPE_3__* %3, %struct.TYPE_3__** %9, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8* %17)
  %19 = call i64 @malloc(i32 524288)
  %20 = inttoptr i64 %19 to i64*
  store i64* %20, i64** %15, align 8
  %21 = load i64*, i64** %15, align 8
  %22 = icmp ne i64* %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %4
  %24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  store i64* null, i64** %5, align 8
  br label %159

25:                                               ; preds = %4
  %26 = load i64*, i64** %15, align 8
  %27 = load i64*, i64** %7, align 8
  %28 = call i32 @memcpy(i64* %26, i64* %27, i32 524288)
  %29 = load i8*, i8** %6, align 8
  %30 = call i32* @fopen(i8* %29, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i32* %30, i32** %14, align 8
  %31 = load i32*, i32** %14, align 8
  %32 = icmp eq i32* %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %25
  %34 = load i64*, i64** %15, align 8
  %35 = call i32 @free(i64* %34)
  store i64* null, i64** %5, align 8
  br label %159

36:                                               ; preds = %25
  store i32 0, i32* %16, align 4
  br label %37

37:                                               ; preds = %148, %147, %136, %100, %94, %70, %64, %36
  %38 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %39 = load i32*, i32** %14, align 8
  %40 = call i64 @fgets(i8* %38, i32 256, i32* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %155

42:                                               ; preds = %37
  %43 = load i32, i32* %16, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %16, align 4
  %45 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  store i8* %45, i8** %11, align 8
  br label %46

46:                                               ; preds = %51, %42
  %47 = load i8*, i8** %11, align 8
  %48 = load i8, i8* %47, align 1
  %49 = call i64 @isspace(i8 signext %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %46
  %52 = load i8*, i8** %11, align 8
  %53 = getelementptr inbounds i8, i8* %52, i32 1
  store i8* %53, i8** %11, align 8
  br label %46

54:                                               ; preds = %46
  %55 = load i8*, i8** %11, align 8
  %56 = load i8, i8* %55, align 1
  %57 = icmp ne i8 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %54
  %59 = load i8*, i8** %11, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 0
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp eq i32 %62, 35
  br i1 %63, label %64, label %65

64:                                               ; preds = %58, %54
  br label %37

65:                                               ; preds = %58
  %66 = load i8*, i8** %11, align 8
  %67 = call i32 @strtol(i8* %66, i8** %11, i32 16)
  store i32 %67, i32* %13, align 4
  %68 = load i32, i32* %13, align 4
  %69 = icmp sgt i32 %68, 65535
  br i1 %69, label %70, label %75

70:                                               ; preds = %65
  %71 = load i32, i32* %16, align 4
  %72 = load i32, i32* %13, align 4
  %73 = load i8*, i8** %6, align 8
  %74 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 %71, i32 %72, i8* %73)
  br label %37

75:                                               ; preds = %65
  br label %76

76:                                               ; preds = %81, %75
  %77 = load i8*, i8** %11, align 8
  %78 = load i8, i8* %77, align 1
  %79 = call i64 @isspace(i8 signext %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %76
  %82 = load i8*, i8** %11, align 8
  %83 = getelementptr inbounds i8, i8* %82, i32 1
  store i8* %83, i8** %11, align 8
  br label %76

84:                                               ; preds = %76
  %85 = load i8*, i8** %11, align 8
  %86 = load i8, i8* %85, align 1
  %87 = icmp ne i8 %86, 0
  br i1 %87, label %88, label %94

88:                                               ; preds = %84
  %89 = load i8*, i8** %11, align 8
  %90 = getelementptr inbounds i8, i8* %89, i64 0
  %91 = load i8, i8* %90, align 1
  %92 = sext i8 %91 to i32
  %93 = icmp eq i32 %92, 35
  br i1 %93, label %94, label %95

94:                                               ; preds = %88, %84
  br label %37

95:                                               ; preds = %88
  %96 = load i8*, i8** %11, align 8
  %97 = call i32 @strtol(i8* %96, i8** %11, i32 16)
  store i32 %97, i32* %12, align 4
  %98 = load i32, i32* %12, align 4
  %99 = icmp sgt i32 %98, 65535
  br i1 %99, label %100, label %105

100:                                              ; preds = %95
  %101 = load i32, i32* %16, align 4
  %102 = load i32, i32* %13, align 4
  %103 = load i8*, i8** %6, align 8
  %104 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.4, i64 0, i64 0), i32 %101, i32 %102, i8* %103)
  br label %37

105:                                              ; preds = %95
  br label %106

106:                                              ; preds = %105
  %107 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = icmp eq i32 %109, 864
  br i1 %110, label %111, label %148

111:                                              ; preds = %106
  br label %112

112:                                              ; preds = %117, %111
  %113 = load i8*, i8** %11, align 8
  %114 = load i8, i8* %113, align 1
  %115 = call i64 @isspace(i8 signext %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %112
  %118 = load i8*, i8** %11, align 8
  %119 = getelementptr inbounds i8, i8* %118, i32 1
  store i8* %119, i8** %11, align 8
  br label %112

120:                                              ; preds = %112
  %121 = load i8*, i8** %11, align 8
  %122 = load i8, i8* %121, align 1
  %123 = icmp ne i8 %122, 0
  br i1 %123, label %124, label %136

124:                                              ; preds = %120
  %125 = load i8*, i8** %11, align 8
  %126 = getelementptr inbounds i8, i8* %125, i64 0
  %127 = load i8, i8* %126, align 1
  %128 = sext i8 %127 to i32
  %129 = icmp eq i32 %128, 35
  br i1 %129, label %136, label %130

130:                                              ; preds = %124
  %131 = load i8*, i8** %11, align 8
  %132 = getelementptr inbounds i8, i8* %131, i64 0
  %133 = load i8, i8* %132, align 1
  %134 = sext i8 %133 to i32
  %135 = icmp eq i32 %134, 45
  br i1 %135, label %136, label %137

136:                                              ; preds = %130, %124, %120
  br label %37

137:                                              ; preds = %130
  %138 = load i8*, i8** %11, align 8
  %139 = call i32 @strtol(i8* %138, i8** %11, i32 16)
  store i32 %139, i32* %12, align 4
  %140 = load i32, i32* %12, align 4
  %141 = icmp sgt i32 %140, 65535
  br i1 %141, label %142, label %147

142:                                              ; preds = %137
  %143 = load i32, i32* %16, align 4
  %144 = load i32, i32* %13, align 4
  %145 = load i8*, i8** %6, align 8
  %146 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.5, i64 0, i64 0), i32 %143, i32 %144, i8* %145)
  br label %147

147:                                              ; preds = %142, %137
  br label %37

148:                                              ; preds = %106
  %149 = load i32, i32* %13, align 4
  %150 = sext i32 %149 to i64
  %151 = load i64*, i64** %15, align 8
  %152 = load i32, i32* %12, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i64, i64* %151, i64 %153
  store i64 %150, i64* %154, align 8
  br label %37

155:                                              ; preds = %37
  %156 = load i32*, i32** %14, align 8
  %157 = call i32 @fclose(i32* %156)
  %158 = load i64*, i64** %15, align 8
  store i64* %158, i64** %5, align 8
  br label %159

159:                                              ; preds = %155, %33, %23
  %160 = load i64*, i64** %5, align 8
  ret i64* %160
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @memcpy(i64*, i64*, i32) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @free(i64*) #1

declare dso_local i64 @fgets(i8*, i32, i32*) #1

declare dso_local i64 @isspace(i8 signext) #1

declare dso_local i32 @strtol(i8*, i8**, i32) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
