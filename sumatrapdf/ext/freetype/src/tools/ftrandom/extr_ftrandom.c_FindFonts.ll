; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/freetype/src/tools/ftrandom/extr_ftrandom.c_FindFonts.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/freetype/src/tools/ftrandom/extr_ftrandom.c_FindFonts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32*, i32 }
%struct.stat = type { i32, i32 }
%struct.dirent = type { i8* }

@fcnt = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Can't open example font directory `%s'\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@fontlist = common dso_local global %struct.TYPE_5__* null, align 8
@.str.2 = private unnamed_addr constant [23 x i8] c"Can't allocate memory\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"Can't find matching font files.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8**, i8**)* @FindFonts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @FindFonts(i8** %0, i8** %1) #0 {
  %3 = alloca i8**, align 8
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [1025 x i8], align 16
  %8 = alloca %struct.stat, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.dirent*, align 8
  store i8** %0, i8*** %3, align 8
  store i8** %1, i8*** %4, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* @fcnt, align 4
  store i32 0, i32* %5, align 4
  br label %11

11:                                               ; preds = %115, %2
  %12 = load i8**, i8*** %3, align 8
  %13 = load i32, i32* %5, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i8*, i8** %12, i64 %14
  %16 = load i8*, i8** %15, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %118

18:                                               ; preds = %11
  %19 = load i8**, i8*** %3, align 8
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i8*, i8** %19, i64 %21
  %23 = load i8*, i8** %22, align 8
  %24 = call i32* @opendir(i8* %23)
  store i32* %24, i32** %9, align 8
  %25 = load i32*, i32** %9, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %36, label %27

27:                                               ; preds = %18
  %28 = load i32, i32* @stderr, align 4
  %29 = load i8**, i8*** %3, align 8
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8*, i8** %29, i64 %31
  %33 = load i8*, i8** %32, align 8
  %34 = call i32 (i32, i8*, ...) @fprintf(i32 %28, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i8* %33)
  %35 = call i32 @exit(i32 1) #3
  unreachable

36:                                               ; preds = %18
  br label %37

37:                                               ; preds = %111, %60, %36
  %38 = load i32*, i32** %9, align 8
  %39 = call %struct.dirent* @readdir(i32* %38)
  store %struct.dirent* %39, %struct.dirent** %10, align 8
  %40 = icmp ne %struct.dirent* %39, null
  br i1 %40, label %41, label %112

41:                                               ; preds = %37
  %42 = getelementptr inbounds [1025 x i8], [1025 x i8]* %7, i64 0, i64 0
  %43 = load i8**, i8*** %3, align 8
  %44 = load i32, i32* %5, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8*, i8** %43, i64 %45
  %47 = load i8*, i8** %46, align 8
  %48 = load %struct.dirent*, %struct.dirent** %10, align 8
  %49 = getelementptr inbounds %struct.dirent, %struct.dirent* %48, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  %51 = call i32 @snprintf(i8* %42, i32 1025, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %47, i8* %50)
  %52 = getelementptr inbounds [1025 x i8], [1025 x i8]* %7, i64 0, i64 0
  %53 = call i32 @stat(i8* %52, %struct.stat* %8)
  %54 = icmp eq i32 %53, -1
  br i1 %54, label %60, label %55

55:                                               ; preds = %41
  %56 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i64 @S_ISDIR(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %55, %41
  br label %37

61:                                               ; preds = %55
  %62 = load i8**, i8*** %4, align 8
  %63 = icmp ne i8** %62, null
  br i1 %63, label %64, label %69

64:                                               ; preds = %61
  %65 = getelementptr inbounds [1025 x i8], [1025 x i8]* %7, i64 0, i64 0
  %66 = load i8**, i8*** %4, align 8
  %67 = call i64 @extmatch(i8* %65, i8** %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %111

69:                                               ; preds = %64, %61
  %70 = load i32, i32* @fcnt, align 4
  %71 = load i32, i32* %6, align 4
  %72 = icmp uge i32 %70, %71
  br i1 %72, label %73, label %89

73:                                               ; preds = %69
  %74 = load i32, i32* %6, align 4
  %75 = add i32 %74, 100
  store i32 %75, i32* %6, align 4
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** @fontlist, align 8
  %77 = load i32, i32* %6, align 4
  %78 = zext i32 %77 to i64
  %79 = mul i64 %78, 4
  %80 = trunc i64 %79 to i32
  %81 = call %struct.TYPE_5__* @realloc(%struct.TYPE_5__* %76, i32 %80)
  store %struct.TYPE_5__* %81, %struct.TYPE_5__** @fontlist, align 8
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** @fontlist, align 8
  %83 = icmp ne %struct.TYPE_5__* %82, null
  br i1 %83, label %88, label %84

84:                                               ; preds = %73
  %85 = load i32, i32* @stderr, align 4
  %86 = call i32 (i32, i8*, ...) @fprintf(i32 %85, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %87 = call i32 @exit(i32 1) #3
  unreachable

88:                                               ; preds = %73
  br label %89

89:                                               ; preds = %88, %69
  %90 = getelementptr inbounds [1025 x i8], [1025 x i8]* %7, i64 0, i64 0
  %91 = call i32* @strdup(i8* %90)
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** @fontlist, align 8
  %93 = load i32, i32* @fcnt, align 4
  %94 = zext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 0
  store i32* %91, i32** %96, align 8
  %97 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** @fontlist, align 8
  %100 = load i32, i32* @fcnt, align 4
  %101 = zext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 1
  store i32 %98, i32* %103, align 8
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** @fontlist, align 8
  %105 = load i32, i32* @fcnt, align 4
  %106 = zext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i64 %106
  %108 = call i32 @figurefiletype(%struct.TYPE_5__* %107)
  %109 = load i32, i32* @fcnt, align 4
  %110 = add i32 %109, 1
  store i32 %110, i32* @fcnt, align 4
  br label %111

111:                                              ; preds = %89, %64
  br label %37

112:                                              ; preds = %37
  %113 = load i32*, i32** %9, align 8
  %114 = call i32 @closedir(i32* %113)
  br label %115

115:                                              ; preds = %112
  %116 = load i32, i32* %5, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %5, align 4
  br label %11

118:                                              ; preds = %11
  %119 = load i32, i32* @fcnt, align 4
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %125

121:                                              ; preds = %118
  %122 = load i32, i32* @stderr, align 4
  %123 = call i32 (i32, i8*, ...) @fprintf(i32 %122, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  %124 = call i32 @exit(i32 1) #3
  unreachable

125:                                              ; preds = %118
  %126 = load %struct.TYPE_5__*, %struct.TYPE_5__** @fontlist, align 8
  %127 = load i32, i32* @fcnt, align 4
  %128 = zext i32 %127 to i64
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i32 0, i32 0
  store i32* null, i32** %130, align 8
  ret void
}

declare dso_local i32* @opendir(i8*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local %struct.dirent* @readdir(i32*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #1

declare dso_local i32 @stat(i8*, %struct.stat*) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i64 @extmatch(i8*, i8**) #1

declare dso_local %struct.TYPE_5__* @realloc(%struct.TYPE_5__*, i32) #1

declare dso_local i32* @strdup(i8*) #1

declare dso_local i32 @figurefiletype(%struct.TYPE_5__*) #1

declare dso_local i32 @closedir(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
