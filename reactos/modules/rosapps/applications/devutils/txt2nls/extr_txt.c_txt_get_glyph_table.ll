; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/devutils/txt2nls/extr_txt.c_txt_get_glyph_table.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/devutils/txt2nls/extr_txt.c_txt_get_glyph_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [27 x i8] c"Memory allocation failure\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"Unable to read TXT file.\0A\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"GLYPHTABLE\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"Wrong GLYPHTABLE size: %u (line: %u)\0A\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"GLYPHTABLE not found.\0A\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"Wrong char value: %u (line: %u)\0A\00", align 1
@.str.7 = private unnamed_addr constant [41 x i8] c"Wrong unicode char value: %u (line: %u)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @txt_get_glyph_table(i8* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca [256 x i8], align 16
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %13, align 4
  %17 = call i32* @malloc(i32 1024)
  store i32* %17, i32** %6, align 8
  %18 = load i32*, i32** %6, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %2
  %21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  store i32* null, i32** %3, align 8
  br label %165

22:                                               ; preds = %2
  store i32 0, i32* %10, align 4
  br label %23

23:                                               ; preds = %32, %22
  %24 = load i32, i32* %10, align 4
  %25 = icmp sle i32 %24, 255
  br i1 %25, label %26, label %35

26:                                               ; preds = %23
  %27 = load i32, i32* %5, align 4
  %28 = load i32*, i32** %6, align 8
  %29 = load i32, i32* %10, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  store i32 %27, i32* %31, align 4
  br label %32

32:                                               ; preds = %26
  %33 = load i32, i32* %10, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %10, align 4
  br label %23

35:                                               ; preds = %23
  %36 = load i8*, i8** %4, align 8
  %37 = call i32* @fopen(i8* %36, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %37, i32** %14, align 8
  %38 = load i32*, i32** %14, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %42, label %40

40:                                               ; preds = %35
  %41 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  br label %155

42:                                               ; preds = %35
  store i32 0, i32* %12, align 4
  br label %43

43:                                               ; preds = %79, %42
  %44 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %45 = load i32*, i32** %14, align 8
  %46 = call i64 @fgets(i8* %44, i32 256, i32* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %80

48:                                               ; preds = %43
  %49 = load i32, i32* %11, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %11, align 4
  %51 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %52 = call i8* @strstr(i8* %51, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  store i8* %52, i8** %8, align 8
  %53 = load i8*, i8** %8, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %55, label %79

55:                                               ; preds = %48
  %56 = load i8*, i8** %8, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 10
  store i8* %57, i8** %8, align 8
  br label %58

58:                                               ; preds = %63, %55
  %59 = load i8*, i8** %8, align 8
  %60 = load i8, i8* %59, align 1
  %61 = call i64 @isspace(i8 signext %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %58
  %64 = load i8*, i8** %8, align 8
  %65 = getelementptr inbounds i8, i8* %64, i32 1
  store i8* %65, i8** %8, align 8
  br label %58

66:                                               ; preds = %58
  %67 = load i8*, i8** %8, align 8
  %68 = call i32 @strtoul(i8* %67, i8** %8, i32 10)
  store i32 %68, i32* %9, align 4
  %69 = load i32, i32* %9, align 4
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %74, label %71

71:                                               ; preds = %66
  %72 = load i32, i32* %9, align 4
  %73 = icmp sgt i32 %72, 256
  br i1 %73, label %74, label %78

74:                                               ; preds = %71, %66
  %75 = load i32, i32* %9, align 4
  %76 = load i32, i32* %11, align 4
  %77 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i32 %75, i32 %76)
  br label %155

78:                                               ; preds = %71
  store i32 1, i32* %12, align 4
  br label %80

79:                                               ; preds = %48
  br label %43

80:                                               ; preds = %78, %43
  %81 = load i32, i32* %12, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %85, label %83

83:                                               ; preds = %80
  %84 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  br label %155

85:                                               ; preds = %80
  br label %86

86:                                               ; preds = %146, %118, %85
  %87 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %88 = load i32*, i32** %14, align 8
  %89 = call i64 @fgets(i8* %87, i32 256, i32* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %86
  %92 = load i32, i32* %9, align 4
  %93 = icmp ne i32 %92, 0
  br label %94

94:                                               ; preds = %91, %86
  %95 = phi i1 [ false, %86 ], [ %93, %91 ]
  br i1 %95, label %96, label %154

96:                                               ; preds = %94
  %97 = load i32, i32* %11, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %11, align 4
  %99 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  store i8* %99, i8** %8, align 8
  br label %100

100:                                              ; preds = %105, %96
  %101 = load i8*, i8** %8, align 8
  %102 = load i8, i8* %101, align 1
  %103 = call i64 @isspace(i8 signext %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %100
  %106 = load i8*, i8** %8, align 8
  %107 = getelementptr inbounds i8, i8* %106, i32 1
  store i8* %107, i8** %8, align 8
  br label %100

108:                                              ; preds = %100
  %109 = load i8*, i8** %8, align 8
  %110 = load i8, i8* %109, align 1
  %111 = icmp ne i8 %110, 0
  br i1 %111, label %112, label %118

112:                                              ; preds = %108
  %113 = load i8*, i8** %8, align 8
  %114 = getelementptr inbounds i8, i8* %113, i64 0
  %115 = load i8, i8* %114, align 1
  %116 = sext i8 %115 to i32
  %117 = icmp eq i32 %116, 59
  br i1 %117, label %118, label %119

118:                                              ; preds = %112, %108
  br label %86

119:                                              ; preds = %112
  %120 = load i8*, i8** %8, align 8
  %121 = call i32 @strtoul(i8* %120, i8** %8, i32 16)
  store i32 %121, i32* %15, align 4
  %122 = load i32, i32* %15, align 4
  %123 = icmp sgt i32 %122, 255
  br i1 %123, label %124, label %128

124:                                              ; preds = %119
  %125 = load i32, i32* %15, align 4
  %126 = load i32, i32* %11, align 4
  %127 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0), i32 %125, i32 %126)
  br label %155

128:                                              ; preds = %119
  br label %129

129:                                              ; preds = %134, %128
  %130 = load i8*, i8** %8, align 8
  %131 = load i8, i8* %130, align 1
  %132 = call i64 @isspace(i8 signext %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %137

134:                                              ; preds = %129
  %135 = load i8*, i8** %8, align 8
  %136 = getelementptr inbounds i8, i8* %135, i32 1
  store i8* %136, i8** %8, align 8
  br label %129

137:                                              ; preds = %129
  %138 = load i8*, i8** %8, align 8
  %139 = call i32 @strtoul(i8* %138, i8** %8, i32 16)
  store i32 %139, i32* %16, align 4
  %140 = load i32, i32* %16, align 4
  %141 = icmp sgt i32 %140, 65535
  br i1 %141, label %142, label %146

142:                                              ; preds = %137
  %143 = load i32, i32* %16, align 4
  %144 = load i32, i32* %11, align 4
  %145 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i64 0, i64 0), i32 %143, i32 %144)
  br label %155

146:                                              ; preds = %137
  %147 = load i32, i32* %16, align 4
  %148 = load i32*, i32** %6, align 8
  %149 = load i32, i32* %15, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i32, i32* %148, i64 %150
  store i32 %147, i32* %151, align 4
  %152 = load i32, i32* %9, align 4
  %153 = add nsw i32 %152, -1
  store i32 %153, i32* %9, align 4
  br label %86

154:                                              ; preds = %94
  store i32 1, i32* %13, align 4
  br label %155

155:                                              ; preds = %154, %142, %124, %83, %74, %40
  %156 = load i32, i32* %13, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %161, label %158

158:                                              ; preds = %155
  %159 = load i32*, i32** %6, align 8
  %160 = call i32 @free(i32* %159)
  store i32* null, i32** %6, align 8
  br label %161

161:                                              ; preds = %158, %155
  %162 = load i32*, i32** %14, align 8
  %163 = call i32 @fclose(i32* %162)
  %164 = load i32*, i32** %6, align 8
  store i32* %164, i32** %3, align 8
  br label %165

165:                                              ; preds = %161, %20
  %166 = load i32*, i32** %3, align 8
  ret i32* %166
}

declare dso_local i32* @malloc(i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i64 @fgets(i8*, i32, i32*) #1

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i64 @isspace(i8 signext) #1

declare dso_local i32 @strtoul(i8*, i8**, i32) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
