; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/winetest/extr_main.c_get_subtests.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/winetest/extr_main.c_get_subtests.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wine_test = type { i32, i8*, i32*, i32 }

@get_subtests.header = internal constant [18 x i8] c"Valid test names:\00", align 16
@.str = private unnamed_addr constant [4 x i8] c"sub\00", align 1
@R_FATAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Can't name subtests file.\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"%s --list\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@R_ERROR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [37 x i8] c"Can't open subtests output of %s: %d\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [28 x i8] c"Subtest list of %s too big.\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"Can't parse subtests output of %s\00", align 1
@whitespace = common dso_local global i32 0, align 4
@R_WARNING = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [27 x i8] c"Can't delete file '%s': %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.wine_test*, i32)* @get_subtests to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_subtests(i8* %0, %struct.wine_test* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.wine_test*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca [8192 x i8], align 16
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.wine_test* %1, %struct.wine_test** %5, align 8
  store i32 %2, i32* %6, align 4
  %14 = load %struct.wine_test*, %struct.wine_test** %5, align 8
  %15 = getelementptr inbounds %struct.wine_test, %struct.wine_test* %14, i32 0, i32 0
  store i32 0, i32* %15, align 8
  %16 = call i8* @tempnam(i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i8* %16, i8** %7, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %3
  %20 = load i32, i32* @R_FATAL, align 4
  %21 = call i32 (i32, i8*, ...) @report(i32 %20, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %22

22:                                               ; preds = %19, %3
  %23 = load %struct.wine_test*, %struct.wine_test** %5, align 8
  %24 = load i8*, i8** %4, align 8
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @extract_test(%struct.wine_test* %23, i8* %24, i32 %25)
  %27 = load %struct.wine_test*, %struct.wine_test** %5, align 8
  %28 = getelementptr inbounds %struct.wine_test, %struct.wine_test* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 8
  %30 = call i8* @strmake(i32* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %29)
  store i8* %30, i8** %8, align 8
  %31 = load i8*, i8** %8, align 8
  %32 = load i8*, i8** %7, align 8
  %33 = load i8*, i8** %4, align 8
  %34 = call i32 @run_ex(i8* %31, i8* %32, i8* %33, i32 5000)
  %35 = load i8*, i8** %8, align 8
  %36 = call i32 @free(i8* %35)
  %37 = load i8*, i8** %7, align 8
  %38 = call i32* @fopen(i8* %37, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store i32* %38, i32** %9, align 8
  %39 = load i32*, i32** %9, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %48, label %41

41:                                               ; preds = %22
  %42 = load i32, i32* @R_ERROR, align 4
  %43 = load %struct.wine_test*, %struct.wine_test** %5, align 8
  %44 = getelementptr inbounds %struct.wine_test, %struct.wine_test* %43, i32 0, i32 1
  %45 = load i8*, i8** %44, align 8
  %46 = load i32, i32* @errno, align 4
  %47 = call i32 (i32, i8*, ...) @report(i32 %42, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i8* %45, i32 %46)
  br label %139

48:                                               ; preds = %22
  %49 = getelementptr inbounds [8192 x i8], [8192 x i8]* %11, i64 0, i64 0
  %50 = load i32*, i32** %9, align 8
  %51 = call i64 @fread(i8* %49, i32 1, i32 8192, i32* %50)
  store i64 %51, i64* %10, align 8
  %52 = load i32*, i32** %9, align 8
  %53 = call i32 @fclose(i32* %52)
  %54 = load i64, i64* %10, align 8
  %55 = icmp eq i64 8192, %54
  br i1 %55, label %56, label %62

56:                                               ; preds = %48
  %57 = load i32, i32* @R_ERROR, align 4
  %58 = load %struct.wine_test*, %struct.wine_test** %5, align 8
  %59 = getelementptr inbounds %struct.wine_test, %struct.wine_test* %58, i32 0, i32 1
  %60 = load i8*, i8** %59, align 8
  %61 = call i32 (i32, i8*, ...) @report(i32 %57, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i8* %60, i64 8192)
  br label %139

62:                                               ; preds = %48
  %63 = load i64, i64* %10, align 8
  %64 = getelementptr inbounds [8192 x i8], [8192 x i8]* %11, i64 0, i64 %63
  store i8 0, i8* %64, align 1
  %65 = getelementptr inbounds [8192 x i8], [8192 x i8]* %11, i64 0, i64 0
  %66 = call i8* @strstr(i8* %65, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @get_subtests.header, i64 0, i64 0))
  store i8* %66, i8** %12, align 8
  %67 = load i8*, i8** %12, align 8
  %68 = icmp ne i8* %67, null
  br i1 %68, label %75, label %69

69:                                               ; preds = %62
  %70 = load i32, i32* @R_ERROR, align 4
  %71 = load %struct.wine_test*, %struct.wine_test** %5, align 8
  %72 = getelementptr inbounds %struct.wine_test, %struct.wine_test* %71, i32 0, i32 1
  %73 = load i8*, i8** %72, align 8
  %74 = call i32 (i32, i8*, ...) @report(i32 %70, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0), i8* %73)
  br label %139

75:                                               ; preds = %62
  %76 = load i8*, i8** %12, align 8
  %77 = getelementptr inbounds i8, i8* %76, i64 18
  store i8* %77, i8** %12, align 8
  store i32 10, i32* %13, align 4
  %78 = load i32, i32* %13, align 4
  %79 = sext i32 %78 to i64
  %80 = mul i64 %79, 8
  %81 = trunc i64 %80 to i32
  %82 = call i32* @xmalloc(i32 %81)
  %83 = load %struct.wine_test*, %struct.wine_test** %5, align 8
  %84 = getelementptr inbounds %struct.wine_test, %struct.wine_test* %83, i32 0, i32 2
  store i32* %82, i32** %84, align 8
  %85 = load i8*, i8** %12, align 8
  %86 = load i32, i32* @whitespace, align 4
  %87 = call i8* @strtok(i8* %85, i32 %86)
  store i8* %87, i8** %12, align 8
  br label %88

88:                                               ; preds = %111, %75
  %89 = load i8*, i8** %12, align 8
  %90 = icmp ne i8* %89, null
  br i1 %90, label %91, label %125

91:                                               ; preds = %88
  %92 = load %struct.wine_test*, %struct.wine_test** %5, align 8
  %93 = getelementptr inbounds %struct.wine_test, %struct.wine_test* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* %13, align 4
  %96 = icmp eq i32 %94, %95
  br i1 %96, label %97, label %111

97:                                               ; preds = %91
  %98 = load i32, i32* %13, align 4
  %99 = mul nsw i32 %98, 2
  store i32 %99, i32* %13, align 4
  %100 = load %struct.wine_test*, %struct.wine_test** %5, align 8
  %101 = getelementptr inbounds %struct.wine_test, %struct.wine_test* %100, i32 0, i32 2
  %102 = load i32*, i32** %101, align 8
  %103 = load i32, i32* %13, align 4
  %104 = sext i32 %103 to i64
  %105 = mul i64 %104, 8
  %106 = trunc i64 %105 to i32
  %107 = call i8* @xrealloc(i32* %102, i32 %106)
  %108 = bitcast i8* %107 to i32*
  %109 = load %struct.wine_test*, %struct.wine_test** %5, align 8
  %110 = getelementptr inbounds %struct.wine_test, %struct.wine_test* %109, i32 0, i32 2
  store i32* %108, i32** %110, align 8
  br label %111

111:                                              ; preds = %97, %91
  %112 = load i8*, i8** %12, align 8
  %113 = call i32 @strdup(i8* %112)
  %114 = load %struct.wine_test*, %struct.wine_test** %5, align 8
  %115 = getelementptr inbounds %struct.wine_test, %struct.wine_test* %114, i32 0, i32 2
  %116 = load i32*, i32** %115, align 8
  %117 = load %struct.wine_test*, %struct.wine_test** %5, align 8
  %118 = getelementptr inbounds %struct.wine_test, %struct.wine_test* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %118, align 8
  %121 = sext i32 %119 to i64
  %122 = getelementptr inbounds i32, i32* %116, i64 %121
  store i32 %113, i32* %122, align 4
  %123 = load i32, i32* @whitespace, align 4
  %124 = call i8* @strtok(i8* null, i32 %123)
  store i8* %124, i8** %12, align 8
  br label %88

125:                                              ; preds = %88
  %126 = load %struct.wine_test*, %struct.wine_test** %5, align 8
  %127 = getelementptr inbounds %struct.wine_test, %struct.wine_test* %126, i32 0, i32 2
  %128 = load i32*, i32** %127, align 8
  %129 = load %struct.wine_test*, %struct.wine_test** %5, align 8
  %130 = getelementptr inbounds %struct.wine_test, %struct.wine_test* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = sext i32 %131 to i64
  %133 = mul i64 %132, 8
  %134 = trunc i64 %133 to i32
  %135 = call i8* @xrealloc(i32* %128, i32 %134)
  %136 = bitcast i8* %135 to i32*
  %137 = load %struct.wine_test*, %struct.wine_test** %5, align 8
  %138 = getelementptr inbounds %struct.wine_test, %struct.wine_test* %137, i32 0, i32 2
  store i32* %136, i32** %138, align 8
  br label %139

139:                                              ; preds = %125, %69, %56, %41
  %140 = load i8*, i8** %7, align 8
  %141 = call i64 @remove(i8* %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %148

143:                                              ; preds = %139
  %144 = load i32, i32* @R_WARNING, align 4
  %145 = load i8*, i8** %7, align 8
  %146 = load i32, i32* @errno, align 4
  %147 = call i32 (i32, i8*, ...) @report(i32 %144, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0), i8* %145, i32 %146)
  br label %148

148:                                              ; preds = %143, %139
  %149 = load i8*, i8** %7, align 8
  %150 = call i32 @free(i8* %149)
  ret void
}

declare dso_local i8* @tempnam(i32, i8*) #1

declare dso_local i32 @report(i32, i8*, ...) #1

declare dso_local i32 @extract_test(%struct.wine_test*, i8*, i32) #1

declare dso_local i8* @strmake(i32*, i8*, i32) #1

declare dso_local i32 @run_ex(i8*, i8*, i8*, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i64 @fread(i8*, i32, i32, i32*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i32* @xmalloc(i32) #1

declare dso_local i8* @strtok(i8*, i32) #1

declare dso_local i8* @xrealloc(i32*, i32) #1

declare dso_local i32 @strdup(i8*) #1

declare dso_local i64 @remove(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
