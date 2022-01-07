; ModuleID = '/home/carl/AnghaBench/sqlcipher/tool/extr_mksourceid.c_main.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/tool/extr_mksourceid.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"-v\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"unknown option \22%s\22\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"cannot open \22%s\22 for reading\0A\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"# Remove this line\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"D 20\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"F \00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"hash failed: %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"wrong hash: %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"... expected: %s\0A\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"... got:      %s\0A\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"%s %.60salt1\0A\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [50 x i8], align 16
  %14 = alloca [100 x i8], align 16
  %15 = alloca [20000 x i8], align 16
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* null, i8** %6, align 8
  store i32 0, i32* %8, align 4
  store i32 1, i32* %10, align 4
  store i32 1, i32* %7, align 4
  br label %19

19:                                               ; preds = %70, %2
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* %4, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %73

23:                                               ; preds = %19
  %24 = load i8**, i8*** %5, align 8
  %25 = load i32, i32* %7, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8*, i8** %24, i64 %26
  %28 = load i8*, i8** %27, align 8
  store i8* %28, i8** %16, align 8
  %29 = load i8*, i8** %16, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 0
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %32, 45
  br i1 %33, label %34, label %58

34:                                               ; preds = %23
  %35 = load i8*, i8** %16, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 1
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp eq i32 %38, 45
  br i1 %39, label %40, label %43

40:                                               ; preds = %34
  %41 = load i8*, i8** %16, align 8
  %42 = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %42, i8** %16, align 8
  br label %43

43:                                               ; preds = %40, %34
  %44 = load i8*, i8** %16, align 8
  %45 = call i64 @strcmp(i8* %44, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %43
  store i32 1, i32* %8, align 4
  br label %57

48:                                               ; preds = %43
  %49 = load i32, i32* @stderr, align 4
  %50 = load i8**, i8*** %5, align 8
  %51 = load i32, i32* %7, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8*, i8** %50, i64 %52
  %54 = load i8*, i8** %53, align 8
  %55 = call i32 @fprintf(i32 %49, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8* %54)
  %56 = call i32 @exit(i32 1) #3
  unreachable

57:                                               ; preds = %47
  br label %69

58:                                               ; preds = %23
  %59 = load i8*, i8** %6, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %61, label %66

61:                                               ; preds = %58
  %62 = load i8**, i8*** %5, align 8
  %63 = getelementptr inbounds i8*, i8** %62, i64 0
  %64 = load i8*, i8** %63, align 8
  %65 = call i32 @usage(i8* %64)
  br label %68

66:                                               ; preds = %58
  %67 = load i8*, i8** %16, align 8
  store i8* %67, i8** %6, align 8
  br label %68

68:                                               ; preds = %66, %61
  br label %69

69:                                               ; preds = %68, %57
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %7, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %7, align 4
  br label %19

73:                                               ; preds = %19
  %74 = load i8*, i8** %6, align 8
  %75 = icmp eq i8* %74, null
  br i1 %75, label %76, label %81

76:                                               ; preds = %73
  %77 = load i8**, i8*** %5, align 8
  %78 = getelementptr inbounds i8*, i8** %77, i64 0
  %79 = load i8*, i8** %78, align 8
  %80 = call i32 @usage(i8* %79)
  br label %81

81:                                               ; preds = %76, %73
  %82 = getelementptr inbounds [50 x i8], [50 x i8]* %13, i64 0, i64 0
  store i8 0, i8* %82, align 16
  %83 = load i8*, i8** %6, align 8
  %84 = call i32* @fopen(i8* %83, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  store i32* %84, i32** %9, align 8
  %85 = load i32*, i32** %9, align 8
  %86 = icmp eq i32* %85, null
  br i1 %86, label %87, label %92

87:                                               ; preds = %81
  %88 = load i32, i32* @stderr, align 4
  %89 = load i8*, i8** %6, align 8
  %90 = call i32 @fprintf(i32 %88, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i8* %89)
  %91 = call i32 @exit(i32 1) #3
  unreachable

92:                                               ; preds = %81
  %93 = call i32 @SHA3Init(i32* %12, i32 256)
  br label %94

94:                                               ; preds = %170, %112, %92
  %95 = getelementptr inbounds [20000 x i8], [20000 x i8]* %15, i64 0, i64 0
  %96 = load i32*, i32** %9, align 8
  %97 = call i64 @fgets(i8* %95, i32 20000, i32* %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %171

99:                                               ; preds = %94
  %100 = getelementptr inbounds [20000 x i8], [20000 x i8]* %15, i64 0, i64 0
  %101 = call i64 @strncmp(i8* %100, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i32 18)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %108

103:                                              ; preds = %99
  %104 = getelementptr inbounds [20000 x i8], [20000 x i8]* %15, i64 0, i64 0
  %105 = getelementptr inbounds [20000 x i8], [20000 x i8]* %15, i64 0, i64 0
  %106 = call i32 @strlen(i8* %105)
  %107 = call i32 @SHA3Update(i32* %12, i8* %104, i32 %106)
  br label %108

108:                                              ; preds = %103, %99
  %109 = getelementptr inbounds [20000 x i8], [20000 x i8]* %15, i64 0, i64 0
  %110 = call i64 @strncmp(i8* %109, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 4)
  %111 = icmp eq i64 %110, 0
  br i1 %111, label %112, label %121

112:                                              ; preds = %108
  %113 = getelementptr inbounds [50 x i8], [50 x i8]* %13, i64 0, i64 0
  %114 = getelementptr inbounds [20000 x i8], [20000 x i8]* %15, i64 0, i64 2
  %115 = call i32 @memcpy(i8* %113, i8* %114, i32 10)
  %116 = getelementptr inbounds [50 x i8], [50 x i8]* %13, i64 0, i64 10
  store i8 32, i8* %116, align 2
  %117 = getelementptr inbounds [50 x i8], [50 x i8]* %13, i64 0, i64 11
  %118 = getelementptr inbounds [20000 x i8], [20000 x i8]* %15, i64 0, i64 13
  %119 = call i32 @memcpy(i8* %117, i8* %118, i32 8)
  %120 = getelementptr inbounds [50 x i8], [50 x i8]* %13, i64 0, i64 19
  store i8 0, i8* %120, align 1
  br label %94

121:                                              ; preds = %108
  %122 = getelementptr inbounds [20000 x i8], [20000 x i8]* %15, i64 0, i64 0
  %123 = call i64 @strncmp(i8* %122, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i32 2)
  %124 = icmp eq i64 %123, 0
  br i1 %124, label %125, label %170

125:                                              ; preds = %121
  %126 = getelementptr inbounds [20000 x i8], [20000 x i8]* %15, i64 0, i64 2
  store i8* %126, i8** %17, align 8
  %127 = load i8*, i8** %17, align 8
  %128 = call i8* @nextToken(i8* %127)
  store i8* %128, i8** %18, align 8
  %129 = load i8*, i8** %18, align 8
  %130 = call i8* @nextToken(i8* %129)
  %131 = load i8*, i8** %18, align 8
  %132 = call i32 @strlen(i8* %131)
  %133 = icmp eq i32 %132, 40
  br i1 %133, label %134, label %138

134:                                              ; preds = %125
  %135 = load i8*, i8** %17, align 8
  %136 = getelementptr inbounds [100 x i8], [100 x i8]* %14, i64 0, i64 0
  %137 = call i32 @sha1sum_file(i8* %135, i8* %136)
  store i32 %137, i32* %11, align 4
  br label %142

138:                                              ; preds = %125
  %139 = load i8*, i8** %17, align 8
  %140 = getelementptr inbounds [100 x i8], [100 x i8]* %14, i64 0, i64 0
  %141 = call i32 @sha3sum_file(i8* %139, i32 256, i8* %140)
  store i32 %141, i32* %11, align 4
  br label %142

142:                                              ; preds = %138, %134
  %143 = load i32, i32* %11, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %152

145:                                              ; preds = %142
  store i32 0, i32* %10, align 4
  %146 = load i32, i32* %8, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %151

148:                                              ; preds = %145
  %149 = load i8*, i8** %17, align 8
  %150 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0), i8* %149)
  br label %151

151:                                              ; preds = %148, %145
  br label %169

152:                                              ; preds = %142
  %153 = getelementptr inbounds [100 x i8], [100 x i8]* %14, i64 0, i64 0
  %154 = load i8*, i8** %18, align 8
  %155 = call i64 @strcmp(i8* %153, i8* %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %168

157:                                              ; preds = %152
  store i32 0, i32* %10, align 4
  %158 = load i32, i32* %8, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %167

160:                                              ; preds = %157
  %161 = load i8*, i8** %17, align 8
  %162 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0), i8* %161)
  %163 = load i8*, i8** %18, align 8
  %164 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0), i8* %163)
  %165 = getelementptr inbounds [100 x i8], [100 x i8]* %14, i64 0, i64 0
  %166 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i64 0, i64 0), i8* %165)
  br label %167

167:                                              ; preds = %160, %157
  br label %168

168:                                              ; preds = %167, %152
  br label %169

169:                                              ; preds = %168, %151
  br label %170

170:                                              ; preds = %169, %121
  br label %94

171:                                              ; preds = %94
  %172 = load i32*, i32** %9, align 8
  %173 = call i32 @fclose(i32* %172)
  %174 = call i32 @SHA3Final(i32* %12)
  %175 = getelementptr inbounds [100 x i8], [100 x i8]* %14, i64 0, i64 0
  %176 = call i32 @DigestToBase16(i32 %174, i8* %175, i32 32)
  %177 = load i32, i32* %10, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %183, label %179

179:                                              ; preds = %171
  %180 = getelementptr inbounds [50 x i8], [50 x i8]* %13, i64 0, i64 0
  %181 = getelementptr inbounds [100 x i8], [100 x i8]* %14, i64 0, i64 0
  %182 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), i8* %180, i8* %181)
  br label %187

183:                                              ; preds = %171
  %184 = getelementptr inbounds [50 x i8], [50 x i8]* %13, i64 0, i64 0
  %185 = getelementptr inbounds [100 x i8], [100 x i8]* %14, i64 0, i64 0
  %186 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0), i8* %184, i8* %185)
  br label %187

187:                                              ; preds = %183, %179
  ret i32 0
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @usage(i8*) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @SHA3Init(i32*, i32) #1

declare dso_local i64 @fgets(i8*, i32, i32*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @SHA3Update(i32*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i8* @nextToken(i8*) #1

declare dso_local i32 @sha1sum_file(i8*, i8*) #1

declare dso_local i32 @sha3sum_file(i8*, i32, i8*) #1

declare dso_local i32 @printf(i8*, i8*, ...) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @DigestToBase16(i32, i8*, i32) #1

declare dso_local i32 @SHA3Final(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
