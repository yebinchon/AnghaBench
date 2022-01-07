; ModuleID = '/home/carl/AnghaBench/sqlcipher/tool/extr_speedtest16.c_main.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/tool/extr_speedtest16.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [81 x i8] c"Usage: %s FILENAME SQL-SCRIPT\0ARuns SQL-SCRIPT as UTF16 against a UTF16 database\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@SEEK_END = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"SQLite version: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"sqlite3_open16() returns %d in %llu cycles\0A\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"sqlite3_close() returns in %llu cycles\0A\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"Statements run:       %15d\0A\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"Bytes of SQL text:    %15d\0A\00", align 1
@.str.8 = private unnamed_addr constant [37 x i8] c"Total prepare time:   %15llu cycles\0A\00", align 1
@prepTime = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [37 x i8] c"Total run time:       %15llu cycles\0A\00", align 1
@runTime = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [37 x i8] c"Total finalize time:  %15llu cycles\0A\00", align 1
@finalizeTime = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [37 x i8] c"Open/Close time:      %15llu cycles\0A\00", align 1
@.str.12 = private unnamed_addr constant [37 x i8] c"Total Time:           %15llu cycles\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8, align 1
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  %21 = load i32, i32* %4, align 4
  %22 = icmp ne i32 %21, 3
  br i1 %22, label %23, label %30

23:                                               ; preds = %2
  %24 = load i32, i32* @stderr, align 4
  %25 = load i8**, i8*** %5, align 8
  %26 = getelementptr inbounds i8*, i8** %25, i64 0
  %27 = load i8*, i8** %26, align 8
  %28 = call i32 @fprintf(i32 %24, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str, i64 0, i64 0), i8* %27)
  %29 = call i32 @exit(i32 1) #3
  unreachable

30:                                               ; preds = %2
  %31 = load i8**, i8*** %5, align 8
  %32 = getelementptr inbounds i8*, i8** %31, i64 2
  %33 = load i8*, i8** %32, align 8
  %34 = call i32* @fopen(i8* %33, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %34, i32** %13, align 8
  %35 = load i32*, i32** %13, align 8
  %36 = load i32, i32* @SEEK_END, align 4
  %37 = call i32 @fseek(i32* %35, i64 0, i32 %36)
  %38 = load i32*, i32** %13, align 8
  %39 = call i32 @ftell(i32* %38)
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %9, align 4
  %41 = add nsw i32 %40, 1
  %42 = call i8* @malloc(i32 %41)
  store i8* %42, i8** %10, align 8
  %43 = load i32*, i32** %13, align 8
  %44 = load i32, i32* @SEEK_SET, align 4
  %45 = call i32 @fseek(i32* %43, i64 0, i32 %44)
  %46 = load i8*, i8** %10, align 8
  %47 = load i32, i32* %9, align 4
  %48 = load i32*, i32** %13, align 8
  %49 = call i32 @fread(i8* %46, i32 1, i32 %47, i32* %48)
  store i32 %49, i32* %9, align 4
  %50 = load i8*, i8** %10, align 8
  %51 = load i32, i32* %9, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8, i8* %50, i64 %52
  store i8 0, i8* %53, align 1
  %54 = call i32 (...) @sqlite3_libversion_number()
  %55 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %54)
  %56 = load i8**, i8*** %5, align 8
  %57 = getelementptr inbounds i8*, i8** %56, i64 1
  %58 = load i8*, i8** %57, align 8
  %59 = call i32 @unlink(i8* %58)
  %60 = load i8**, i8*** %5, align 8
  %61 = getelementptr inbounds i8*, i8** %60, i64 1
  %62 = load i8*, i8** %61, align 8
  %63 = call i8* @asciiToUtf16le(i8* %62)
  store i8* %63, i8** %6, align 8
  %64 = call i32 (...) @sqlite3Hwtime()
  store i32 %64, i32* %14, align 4
  %65 = load i8*, i8** %6, align 8
  %66 = call i32 @sqlite3_open16(i8* %65, i32** %7)
  store i32 %66, i32* %8, align 4
  %67 = call i32 (...) @sqlite3Hwtime()
  %68 = load i32, i32* %14, align 4
  %69 = sub nsw i32 %67, %68
  store i32 %69, i32* %15, align 4
  %70 = load i32, i32* %15, align 4
  store i32 %70, i32* %16, align 4
  %71 = load i32, i32* %8, align 4
  %72 = load i32, i32* %15, align 4
  %73 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i32 %71, i32 %72)
  %74 = load i8*, i8** %6, align 8
  %75 = call i32 @free(i8* %74)
  store i32 0, i32* %12, align 4
  store i32 0, i32* %11, align 4
  br label %76

76:                                               ; preds = %162, %30
  %77 = load i32, i32* %12, align 4
  %78 = load i32, i32* %9, align 4
  %79 = icmp slt i32 %77, %78
  br i1 %79, label %80, label %165

80:                                               ; preds = %76
  %81 = load i8*, i8** %10, align 8
  %82 = load i32, i32* %12, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i8, i8* %81, i64 %83
  %85 = load i8, i8* %84, align 1
  %86 = sext i8 %85 to i32
  %87 = icmp eq i32 %86, 59
  br i1 %87, label %88, label %161

88:                                               ; preds = %80
  %89 = load i8*, i8** %10, align 8
  %90 = load i32, i32* %12, align 4
  %91 = add nsw i32 %90, 1
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i8, i8* %89, i64 %92
  %94 = load i8, i8* %93, align 1
  store i8 %94, i8* %20, align 1
  %95 = load i8*, i8** %10, align 8
  %96 = load i32, i32* %12, align 4
  %97 = add nsw i32 %96, 1
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i8, i8* %95, i64 %98
  store i8 0, i8* %99, align 1
  %100 = load i8*, i8** %10, align 8
  %101 = load i32, i32* %11, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i8, i8* %100, i64 %102
  %104 = call i32 @sqlite3_complete(i8* %103)
  store i32 %104, i32* %19, align 4
  %105 = load i8, i8* %20, align 1
  %106 = load i8*, i8** %10, align 8
  %107 = load i32, i32* %12, align 4
  %108 = add nsw i32 %107, 1
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i8, i8* %106, i64 %109
  store i8 %105, i8* %110, align 1
  %111 = load i32, i32* %19, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %160

113:                                              ; preds = %88
  %114 = load i8*, i8** %10, align 8
  %115 = load i32, i32* %12, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i8, i8* %114, i64 %116
  store i8 0, i8* %117, align 1
  br label %118

118:                                              ; preds = %132, %113
  %119 = load i32, i32* %11, align 4
  %120 = load i32, i32* %12, align 4
  %121 = icmp slt i32 %119, %120
  br i1 %121, label %122, label %130

122:                                              ; preds = %118
  %123 = load i8*, i8** %10, align 8
  %124 = load i32, i32* %11, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i8, i8* %123, i64 %125
  %127 = load i8, i8* %126, align 1
  %128 = call i64 @ISSPACE(i8 signext %127)
  %129 = icmp ne i64 %128, 0
  br label %130

130:                                              ; preds = %122, %118
  %131 = phi i1 [ false, %118 ], [ %129, %122 ]
  br i1 %131, label %132, label %135

132:                                              ; preds = %130
  %133 = load i32, i32* %11, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %11, align 4
  br label %118

135:                                              ; preds = %130
  %136 = load i32, i32* %11, align 4
  %137 = load i32, i32* %12, align 4
  %138 = icmp slt i32 %136, %137
  br i1 %138, label %139, label %153

139:                                              ; preds = %135
  %140 = load i32, i32* %17, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %17, align 4
  %142 = load i32, i32* %12, align 4
  %143 = load i32, i32* %11, align 4
  %144 = sub nsw i32 %142, %143
  %145 = load i32, i32* %18, align 4
  %146 = add nsw i32 %145, %144
  store i32 %146, i32* %18, align 4
  %147 = load i32*, i32** %7, align 8
  %148 = load i8*, i8** %10, align 8
  %149 = load i32, i32* %11, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i8, i8* %148, i64 %150
  %152 = call i32 @prepareAndRun(i32* %147, i8* %151)
  br label %153

153:                                              ; preds = %139, %135
  %154 = load i8*, i8** %10, align 8
  %155 = load i32, i32* %12, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i8, i8* %154, i64 %156
  store i8 59, i8* %157, align 1
  %158 = load i32, i32* %12, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %11, align 4
  br label %160

160:                                              ; preds = %153, %88
  br label %161

161:                                              ; preds = %160, %80
  br label %162

162:                                              ; preds = %161
  %163 = load i32, i32* %12, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %12, align 4
  br label %76

165:                                              ; preds = %76
  %166 = call i32 (...) @sqlite3Hwtime()
  store i32 %166, i32* %14, align 4
  %167 = load i32*, i32** %7, align 8
  %168 = call i32 @sqlite3_close(i32* %167)
  %169 = call i32 (...) @sqlite3Hwtime()
  %170 = load i32, i32* %14, align 4
  %171 = sub nsw i32 %169, %170
  store i32 %171, i32* %15, align 4
  %172 = load i32, i32* %15, align 4
  %173 = load i32, i32* %16, align 4
  %174 = add nsw i32 %173, %172
  store i32 %174, i32* %16, align 4
  %175 = load i32, i32* %15, align 4
  %176 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0), i32 %175)
  %177 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %178 = load i32, i32* %17, align 4
  %179 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0), i32 %178)
  %180 = load i32, i32* %18, align 4
  %181 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0), i32 %180)
  %182 = load i32, i32* @prepTime, align 4
  %183 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.8, i64 0, i64 0), i32 %182)
  %184 = load i32, i32* @runTime, align 4
  %185 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i64 0, i64 0), i32 %184)
  %186 = load i32, i32* @finalizeTime, align 4
  %187 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.10, i64 0, i64 0), i32 %186)
  %188 = load i32, i32* %16, align 4
  %189 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.11, i64 0, i64 0), i32 %188)
  %190 = load i32, i32* @prepTime, align 4
  %191 = load i32, i32* @runTime, align 4
  %192 = add nsw i32 %190, %191
  %193 = load i32, i32* @finalizeTime, align 4
  %194 = add nsw i32 %192, %193
  %195 = load i32, i32* %16, align 4
  %196 = add nsw i32 %194, %195
  %197 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.12, i64 0, i64 0), i32 %196)
  ret i32 0
}

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @fseek(i32*, i64, i32) #1

declare dso_local i32 @ftell(i32*) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @fread(i8*, i32, i32, i32*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @sqlite3_libversion_number(...) #1

declare dso_local i32 @unlink(i8*) #1

declare dso_local i8* @asciiToUtf16le(i8*) #1

declare dso_local i32 @sqlite3Hwtime(...) #1

declare dso_local i32 @sqlite3_open16(i8*, i32**) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @sqlite3_complete(i8*) #1

declare dso_local i64 @ISSPACE(i8 signext) #1

declare dso_local i32 @prepareAndRun(i32*, i8*) #1

declare dso_local i32 @sqlite3_close(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
