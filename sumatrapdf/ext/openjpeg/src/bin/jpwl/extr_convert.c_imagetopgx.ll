; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/bin/jpwl/extr_convert.c_imagetopgx.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/openjpeg/src/bin/jpwl/extr_convert.c_imagetopgx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32, i32, i32*, i64 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"ERROR -> Impossible happen.\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"_%d.pgx\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"ERROR -> failed to open %s for writing\0A\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"PG ML %c %d %d %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"failed to write 1 byte for %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @imagetopgx(%struct.TYPE_4__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_5__*, align 8
  %13 = alloca [256 x i8], align 16
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i8, align 1
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32* null, i32** %11, align 8
  store i32 0, i32* %10, align 4
  br label %22

22:                                               ; preds = %181, %2
  %23 = load i32, i32* %10, align 4
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp slt i32 %23, %26
  br i1 %27, label %28, label %184

28:                                               ; preds = %22
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  %32 = load i32, i32* %10, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i64 %33
  store %struct.TYPE_5__* %34, %struct.TYPE_5__** %12, align 8
  %35 = getelementptr inbounds [256 x i8], [256 x i8]* %13, i64 0, i64 0
  store i8* %35, i8** %14, align 8
  store i32 0, i32* %15, align 4
  %36 = load i8*, i8** %5, align 8
  %37 = call i64 @strlen(i8* %36)
  store i64 %37, i64* %17, align 8
  %38 = load i64, i64* %17, align 8
  %39 = sub i64 %38, 4
  store i64 %39, i64* %18, align 8
  %40 = load i64, i64* %18, align 8
  %41 = add i64 %40, 1
  %42 = add i64 %41, 1
  %43 = add i64 %42, 4
  store i64 %43, i64* %19, align 8
  %44 = load i8*, i8** %5, align 8
  %45 = load i64, i64* %18, align 8
  %46 = getelementptr inbounds i8, i8* %44, i64 %45
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp ne i32 %48, 46
  br i1 %49, label %50, label %53

50:                                               ; preds = %28
  %51 = load i32, i32* @stderr, align 4
  %52 = call i32 (i32, i8*, ...) @fprintf(i32 %51, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %185

53:                                               ; preds = %28
  %54 = load i64, i64* %19, align 8
  %55 = icmp ugt i64 %54, 256
  br i1 %55, label %56, label %61

56:                                               ; preds = %53
  %57 = load i64, i64* %19, align 8
  %58 = add i64 %57, 1
  %59 = call i64 @malloc(i64 %58)
  %60 = inttoptr i64 %59 to i8*
  store i8* %60, i8** %14, align 8
  br label %61

61:                                               ; preds = %56, %53
  %62 = load i8*, i8** %14, align 8
  %63 = load i8*, i8** %5, align 8
  %64 = load i64, i64* %18, align 8
  %65 = call i32 @strncpy(i8* %62, i8* %63, i64 %64)
  %66 = load i8*, i8** %14, align 8
  %67 = load i64, i64* %18, align 8
  %68 = getelementptr inbounds i8, i8* %66, i64 %67
  %69 = load i32, i32* %10, align 4
  %70 = call i32 @sprintf(i8* %68, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %69)
  %71 = load i8*, i8** %14, align 8
  %72 = call i32* @fopen(i8* %71, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  store i32* %72, i32** %11, align 8
  %73 = load i32*, i32** %11, align 8
  %74 = icmp ne i32* %73, null
  br i1 %74, label %79, label %75

75:                                               ; preds = %61
  %76 = load i32, i32* @stderr, align 4
  %77 = load i8*, i8** %14, align 8
  %78 = call i32 (i32, i8*, ...) @fprintf(i32 %76, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i8* %77)
  store i32 1, i32* %3, align 4
  br label %185

79:                                               ; preds = %61
  %80 = load i64, i64* %19, align 8
  %81 = icmp ugt i64 %80, 256
  br i1 %81, label %82, label %85

82:                                               ; preds = %79
  %83 = load i8*, i8** %14, align 8
  %84 = call i32 @free(i8* %83)
  br label %85

85:                                               ; preds = %82, %79
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 1
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %87, align 8
  %89 = load i32, i32* %10, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  store i32 %93, i32* %6, align 4
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 1
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %95, align 8
  %97 = load i32, i32* %10, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  store i32 %101, i32* %7, align 4
  %102 = load i32*, i32** %11, align 8
  %103 = ptrtoint i32* %102 to i32
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 4
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  %108 = zext i1 %107 to i64
  %109 = select i1 %107, i32 45, i32 43
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* %6, align 4
  %114 = load i32, i32* %7, align 4
  %115 = call i32 (i32, i8*, ...) @fprintf(i32 %103, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i32 %109, i32 %112, i32 %113, i32 %114)
  %116 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = icmp sle i32 %118, 8
  br i1 %119, label %120, label %121

120:                                              ; preds = %85
  store i32 1, i32* %15, align 4
  br label %129

121:                                              ; preds = %85
  %122 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 8
  %125 = icmp sle i32 %124, 16
  br i1 %125, label %126, label %127

126:                                              ; preds = %121
  store i32 2, i32* %15, align 4
  br label %128

127:                                              ; preds = %121
  store i32 4, i32* %15, align 4
  br label %128

128:                                              ; preds = %127, %126
  br label %129

129:                                              ; preds = %128, %120
  store i32 0, i32* %8, align 4
  br label %130

130:                                              ; preds = %175, %129
  %131 = load i32, i32* %8, align 4
  %132 = load i32, i32* %6, align 4
  %133 = load i32, i32* %7, align 4
  %134 = mul nsw i32 %132, %133
  %135 = icmp slt i32 %131, %134
  br i1 %135, label %136, label %178

136:                                              ; preds = %130
  %137 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 1
  %139 = load %struct.TYPE_5__*, %struct.TYPE_5__** %138, align 8
  %140 = load i32, i32* %10, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i64 %141
  %143 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %142, i32 0, i32 3
  %144 = load i32*, i32** %143, align 8
  %145 = load i32, i32* %8, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i32, i32* %144, i64 %146
  %148 = load i32, i32* %147, align 4
  store i32 %148, i32* %20, align 4
  %149 = load i32, i32* %15, align 4
  %150 = sub nsw i32 %149, 1
  store i32 %150, i32* %9, align 4
  br label %151

151:                                              ; preds = %171, %136
  %152 = load i32, i32* %9, align 4
  %153 = icmp sge i32 %152, 0
  br i1 %153, label %154, label %174

154:                                              ; preds = %151
  %155 = load i32, i32* %20, align 4
  %156 = load i32, i32* %9, align 4
  %157 = mul nsw i32 %156, 8
  %158 = ashr i32 %155, %157
  %159 = trunc i32 %158 to i8
  store i8 %159, i8* %21, align 1
  %160 = load i32*, i32** %11, align 8
  %161 = call i64 @fwrite(i8* %21, i32 1, i32 1, i32* %160)
  store i64 %161, i64* %16, align 8
  %162 = load i64, i64* %16, align 8
  %163 = icmp ult i64 %162, 1
  br i1 %163, label %164, label %170

164:                                              ; preds = %154
  %165 = load i32, i32* @stderr, align 4
  %166 = load i8*, i8** %14, align 8
  %167 = call i32 (i32, i8*, ...) @fprintf(i32 %165, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i8* %166)
  %168 = load i32*, i32** %11, align 8
  %169 = call i32 @fclose(i32* %168)
  store i32 1, i32* %3, align 4
  br label %185

170:                                              ; preds = %154
  br label %171

171:                                              ; preds = %170
  %172 = load i32, i32* %9, align 4
  %173 = add nsw i32 %172, -1
  store i32 %173, i32* %9, align 4
  br label %151

174:                                              ; preds = %151
  br label %175

175:                                              ; preds = %174
  %176 = load i32, i32* %8, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %8, align 4
  br label %130

178:                                              ; preds = %130
  %179 = load i32*, i32** %11, align 8
  %180 = call i32 @fclose(i32* %179)
  br label %181

181:                                              ; preds = %178
  %182 = load i32, i32* %10, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %10, align 4
  br label %22

184:                                              ; preds = %22
  store i32 0, i32* %3, align 4
  br label %185

185:                                              ; preds = %184, %164, %75, %50
  %186 = load i32, i32* %3, align 4
  ret i32 %186
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i64 @malloc(i64) #1

declare dso_local i32 @strncpy(i8*, i8*, i64) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @fwrite(i8*, i32, i32, i32*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
