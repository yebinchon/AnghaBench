; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/scripts/extr_hexdump.c_main.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/scripts/extr_hexdump.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"usage: hexdump [-0] [-s] output.c input.dat\0A\00", align 1
@string = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"-s\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"hexdump: could not open output file '%s'\0A\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"hexdump: could not open input file '%s'\0A\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"hexdump: filename '%s' too long\0A\00", align 1
@SEEK_END = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [37 x i8] c"const unsigned char _binary_%s[%d] =\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c" {\0A\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c";\0A\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"};\0A\00", align 1
@.str.12 = private unnamed_addr constant [36 x i8] c"unsigned int _binary_%s_size = %d;\0A\00", align 1
@.str.13 = private unnamed_addr constant [43 x i8] c"hexdump: could not close output file '%s'\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca [256 x i8], align 16
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %14 = load i32, i32* %4, align 4
  %15 = icmp slt i32 %14, 3
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i32, i32* @stderr, align 4
  %18 = call i32 (i32, i8*, ...) @fprintf(i32 %17, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %201

19:                                               ; preds = %2
  store i32 0, i32* @string, align 4
  store i32 1, i32* %12, align 4
  %20 = load i8**, i8*** %5, align 8
  %21 = load i32, i32* %12, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i8*, i8** %20, i64 %22
  %24 = load i8*, i8** %23, align 8
  %25 = call i32 @strcmp(i8* %24, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %19
  %28 = load i32, i32* %12, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %12, align 4
  store i32 1, i32* @string, align 4
  br label %30

30:                                               ; preds = %27, %19
  %31 = load i8**, i8*** %5, align 8
  %32 = load i32, i32* %12, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8*, i8** %31, i64 %33
  %35 = load i8*, i8** %34, align 8
  %36 = call i32* @fopen(i8* %35, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  store i32* %36, i32** %6, align 8
  %37 = load i32*, i32** %6, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %47, label %39

39:                                               ; preds = %30
  %40 = load i32, i32* @stderr, align 4
  %41 = load i8**, i8*** %5, align 8
  %42 = load i32, i32* %12, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8*, i8** %41, i64 %43
  %45 = load i8*, i8** %44, align 8
  %46 = call i32 (i32, i8*, ...) @fprintf(i32 %40, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i8* %45)
  store i32 1, i32* %3, align 4
  br label %201

47:                                               ; preds = %30
  %48 = load i32, i32* %12, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %11, align 4
  br label %50

50:                                               ; preds = %187, %47
  %51 = load i32, i32* %11, align 4
  %52 = load i32, i32* %4, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %190

54:                                               ; preds = %50
  %55 = load i8**, i8*** %5, align 8
  %56 = load i32, i32* %11, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8*, i8** %55, i64 %57
  %59 = load i8*, i8** %58, align 8
  %60 = call i32* @fopen(i8* %59, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  store i32* %60, i32** %7, align 8
  %61 = load i32*, i32** %7, align 8
  %62 = icmp ne i32* %61, null
  br i1 %62, label %73, label %63

63:                                               ; preds = %54
  %64 = load i32*, i32** %6, align 8
  %65 = call i64 @fclose(i32* %64)
  %66 = load i32, i32* @stderr, align 4
  %67 = load i8**, i8*** %5, align 8
  %68 = load i32, i32* %11, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8*, i8** %67, i64 %69
  %71 = load i8*, i8** %70, align 8
  %72 = call i32 (i32, i8*, ...) @fprintf(i32 %66, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0), i8* %71)
  store i32 1, i32* %3, align 4
  br label %201

73:                                               ; preds = %54
  %74 = load i8**, i8*** %5, align 8
  %75 = load i32, i32* %11, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i8*, i8** %74, i64 %76
  %78 = load i8*, i8** %77, align 8
  %79 = call i8* @strrchr(i8* %78, i8 signext 47)
  store i8* %79, i8** %9, align 8
  %80 = load i8*, i8** %9, align 8
  %81 = icmp ne i8* %80, null
  br i1 %81, label %89, label %82

82:                                               ; preds = %73
  %83 = load i8**, i8*** %5, align 8
  %84 = load i32, i32* %11, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i8*, i8** %83, i64 %85
  %87 = load i8*, i8** %86, align 8
  %88 = call i8* @strrchr(i8* %87, i8 signext 92)
  store i8* %88, i8** %9, align 8
  br label %89

89:                                               ; preds = %82, %73
  %90 = load i8*, i8** %9, align 8
  %91 = icmp ne i8* %90, null
  br i1 %91, label %92, label %95

92:                                               ; preds = %89
  %93 = load i8*, i8** %9, align 8
  %94 = getelementptr inbounds i8, i8* %93, i32 1
  store i8* %94, i8** %9, align 8
  br label %101

95:                                               ; preds = %89
  %96 = load i8**, i8*** %5, align 8
  %97 = load i32, i32* %11, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i8*, i8** %96, i64 %98
  %100 = load i8*, i8** %99, align 8
  store i8* %100, i8** %9, align 8
  br label %101

101:                                              ; preds = %95, %92
  %102 = load i8*, i8** %9, align 8
  %103 = call i32 @strlen(i8* %102)
  %104 = sext i32 %103 to i64
  %105 = icmp uge i64 %104, 256
  br i1 %105, label %106, label %114

106:                                              ; preds = %101
  %107 = load i32*, i32** %7, align 8
  %108 = call i64 @fclose(i32* %107)
  %109 = load i32*, i32** %6, align 8
  %110 = call i64 @fclose(i32* %109)
  %111 = load i32, i32* @stderr, align 4
  %112 = load i8*, i8** %9, align 8
  %113 = call i32 (i32, i8*, ...) @fprintf(i32 %111, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0), i8* %112)
  store i32 1, i32* %3, align 4
  br label %201

114:                                              ; preds = %101
  %115 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %116 = load i8*, i8** %9, align 8
  %117 = call i32 @strcpy(i8* %115, i8* %116)
  %118 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  store i8* %118, i8** %10, align 8
  br label %119

119:                                              ; preds = %146, %114
  %120 = load i8*, i8** %10, align 8
  %121 = load i8, i8* %120, align 1
  %122 = icmp ne i8 %121, 0
  br i1 %122, label %123, label %149

123:                                              ; preds = %119
  %124 = load i8*, i8** %10, align 8
  %125 = load i8, i8* %124, align 1
  %126 = sext i8 %125 to i32
  %127 = icmp eq i32 %126, 47
  br i1 %127, label %143, label %128

128:                                              ; preds = %123
  %129 = load i8*, i8** %10, align 8
  %130 = load i8, i8* %129, align 1
  %131 = sext i8 %130 to i32
  %132 = icmp eq i32 %131, 46
  br i1 %132, label %143, label %133

133:                                              ; preds = %128
  %134 = load i8*, i8** %10, align 8
  %135 = load i8, i8* %134, align 1
  %136 = sext i8 %135 to i32
  %137 = icmp eq i32 %136, 92
  br i1 %137, label %143, label %138

138:                                              ; preds = %133
  %139 = load i8*, i8** %10, align 8
  %140 = load i8, i8* %139, align 1
  %141 = sext i8 %140 to i32
  %142 = icmp eq i32 %141, 45
  br i1 %142, label %143, label %145

143:                                              ; preds = %138, %133, %128, %123
  %144 = load i8*, i8** %10, align 8
  store i8 95, i8* %144, align 1
  br label %145

145:                                              ; preds = %143, %138
  br label %146

146:                                              ; preds = %145
  %147 = load i8*, i8** %10, align 8
  %148 = getelementptr inbounds i8, i8* %147, i32 1
  store i8* %148, i8** %10, align 8
  br label %119

149:                                              ; preds = %119
  %150 = load i32*, i32** %7, align 8
  %151 = load i32, i32* @SEEK_END, align 4
  %152 = call i32 @fseek(i32* %150, i32 0, i32 %151)
  %153 = load i32*, i32** %7, align 8
  %154 = call i32 @ftell(i32* %153)
  store i32 %154, i32* %13, align 4
  %155 = load i32*, i32** %7, align 8
  %156 = load i32, i32* @SEEK_SET, align 4
  %157 = call i32 @fseek(i32* %155, i32 0, i32 %156)
  %158 = load i32*, i32** %6, align 8
  %159 = ptrtoint i32* %158 to i32
  %160 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %161 = load i32, i32* %13, align 4
  %162 = call i32 (i32, i8*, ...) @fprintf(i32 %159, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i64 0, i64 0), i8* %160, i32 %161)
  %163 = load i32*, i32** %6, align 8
  %164 = ptrtoint i32* %163 to i32
  %165 = load i32, i32* @string, align 4
  %166 = icmp ne i32 %165, 0
  %167 = zext i1 %166 to i64
  %168 = select i1 %166, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0)
  %169 = call i32 (i32, i8*, ...) @fprintf(i32 %164, i8* %168)
  %170 = load i32*, i32** %6, align 8
  %171 = load i32*, i32** %7, align 8
  %172 = call i32 @hexdump(i32* %170, i32* %171)
  %173 = load i32*, i32** %6, align 8
  %174 = ptrtoint i32* %173 to i32
  %175 = load i32, i32* @string, align 4
  %176 = icmp ne i32 %175, 0
  %177 = zext i1 %176 to i64
  %178 = select i1 %176, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0)
  %179 = call i32 (i32, i8*, ...) @fprintf(i32 %174, i8* %178)
  %180 = load i32*, i32** %6, align 8
  %181 = ptrtoint i32* %180 to i32
  %182 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %183 = load i32, i32* %13, align 4
  %184 = call i32 (i32, i8*, ...) @fprintf(i32 %181, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.12, i64 0, i64 0), i8* %182, i32 %183)
  %185 = load i32*, i32** %7, align 8
  %186 = call i64 @fclose(i32* %185)
  br label %187

187:                                              ; preds = %149
  %188 = load i32, i32* %11, align 4
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %11, align 4
  br label %50

190:                                              ; preds = %50
  %191 = load i32*, i32** %6, align 8
  %192 = call i64 @fclose(i32* %191)
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %200

194:                                              ; preds = %190
  %195 = load i32, i32* @stderr, align 4
  %196 = load i8**, i8*** %5, align 8
  %197 = getelementptr inbounds i8*, i8** %196, i64 1
  %198 = load i8*, i8** %197, align 8
  %199 = call i32 (i32, i8*, ...) @fprintf(i32 %195, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.13, i64 0, i64 0), i8* %198)
  store i32 1, i32* %3, align 4
  br label %201

200:                                              ; preds = %190
  store i32 0, i32* %3, align 4
  br label %201

201:                                              ; preds = %200, %194, %106, %63, %39, %16
  %202 = load i32, i32* %3, align 4
  ret i32 %202
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i64 @fclose(i32*) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @fseek(i32*, i32, i32) #1

declare dso_local i32 @ftell(i32*) #1

declare dso_local i32 @hexdump(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
