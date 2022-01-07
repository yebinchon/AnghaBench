; ModuleID = '/home/carl/AnghaBench/redshift/src/extr_gamma-randr.c_randr_set_option.c'
source_filename = "/home/carl/AnghaBench/redshift/src/extr_gamma-randr.c_randr_set_option.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32*, i32 }

@.str = private unnamed_addr constant [7 x i8] c"screen\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"crtc\00", align 1
@errno = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"Unable to read screen number: `%s'.\0A\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"preserve\00", align 1
@.str.4 = private unnamed_addr constant [80 x i8] c"Parameter `%s` is now always on;  Use the `%s` command-line option to disable.\0A\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"-P\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"Unknown method parameter: `%s'.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i8*, i8*)* @randr_set_option to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @randr_set_option(%struct.TYPE_3__* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = call i64 @strcasecmp(i8* %13, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %3
  %17 = load i8*, i8** %7, align 8
  %18 = call i32 @atoi(i8* %17)
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 2
  store i32 %18, i32* %20, align 8
  br label %138

21:                                               ; preds = %3
  %22 = load i8*, i8** %6, align 8
  %23 = call i64 @strcasecmp(i8* %22, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %122

25:                                               ; preds = %21
  %26 = load i8*, i8** %7, align 8
  store i8* %26, i8** %9, align 8
  br label %27

27:                                               ; preds = %25, %65
  store i64 0, i64* @errno, align 8
  %28 = load i8*, i8** %9, align 8
  %29 = call i32 @strtol(i8* %28, i8** %8, i32 0)
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %10, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %44

32:                                               ; preds = %27
  %33 = load i64, i64* @errno, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %32
  %36 = load i8*, i8** %8, align 8
  %37 = load i8*, i8** %9, align 8
  %38 = icmp eq i8* %36, %37
  br i1 %38, label %39, label %44

39:                                               ; preds = %35, %32
  %40 = load i32, i32* @stderr, align 4
  %41 = call i8* @_(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  %42 = load i8*, i8** %7, align 8
  %43 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %40, i8* %41, i8* %42)
  store i32 -1, i32* %4, align 4
  br label %139

44:                                               ; preds = %35, %27
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %46, align 8
  br label %49

49:                                               ; preds = %44
  %50 = load i8*, i8** %8, align 8
  store i8* %50, i8** %9, align 8
  %51 = load i8*, i8** %9, align 8
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp eq i32 %53, 44
  br i1 %54, label %55, label %58

55:                                               ; preds = %49
  %56 = load i8*, i8** %9, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 1
  store i8* %57, i8** %9, align 8
  br label %65

58:                                               ; preds = %49
  %59 = load i8*, i8** %9, align 8
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %58
  br label %66

64:                                               ; preds = %58
  br label %65

65:                                               ; preds = %64, %55
  br label %27

66:                                               ; preds = %63
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i32* @calloc(i32 %69, i32 4)
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 1
  store i32* %70, i32** %72, align 8
  %73 = load i8*, i8** %7, align 8
  store i8* %73, i8** %9, align 8
  store i32 0, i32* %11, align 4
  br label %74

74:                                               ; preds = %118, %66
  %75 = load i32, i32* %11, align 4
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = icmp slt i32 %75, %78
  br i1 %79, label %80, label %121

80:                                               ; preds = %74
  store i64 0, i64* @errno, align 8
  %81 = load i8*, i8** %9, align 8
  %82 = call i32 @strtol(i8* %81, i8** %8, i32 0)
  store i32 %82, i32* %12, align 4
  %83 = load i32, i32* %12, align 4
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %93

85:                                               ; preds = %80
  %86 = load i64, i64* @errno, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %92, label %88

88:                                               ; preds = %85
  %89 = load i8*, i8** %8, align 8
  %90 = load i8*, i8** %9, align 8
  %91 = icmp eq i8* %89, %90
  br i1 %91, label %92, label %93

92:                                               ; preds = %88, %85
  store i32 -1, i32* %4, align 4
  br label %139

93:                                               ; preds = %88, %80
  %94 = load i32, i32* %12, align 4
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 1
  %97 = load i32*, i32** %96, align 8
  %98 = load i32, i32* %11, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  store i32 %94, i32* %100, align 4
  br label %101

101:                                              ; preds = %93
  %102 = load i8*, i8** %8, align 8
  store i8* %102, i8** %9, align 8
  %103 = load i8*, i8** %9, align 8
  %104 = load i8, i8* %103, align 1
  %105 = sext i8 %104 to i32
  %106 = icmp eq i32 %105, 44
  br i1 %106, label %107, label %110

107:                                              ; preds = %101
  %108 = load i8*, i8** %9, align 8
  %109 = getelementptr inbounds i8, i8* %108, i64 1
  store i8* %109, i8** %9, align 8
  br label %117

110:                                              ; preds = %101
  %111 = load i8*, i8** %9, align 8
  %112 = load i8, i8* %111, align 1
  %113 = sext i8 %112 to i32
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %110
  br label %121

116:                                              ; preds = %110
  br label %117

117:                                              ; preds = %116, %107
  br label %118

118:                                              ; preds = %117
  %119 = load i32, i32* %11, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %11, align 4
  br label %74

121:                                              ; preds = %115, %74
  br label %137

122:                                              ; preds = %21
  %123 = load i8*, i8** %6, align 8
  %124 = call i64 @strcasecmp(i8* %123, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %125 = icmp eq i64 %124, 0
  br i1 %125, label %126, label %131

126:                                              ; preds = %122
  %127 = load i32, i32* @stderr, align 4
  %128 = call i8* @_(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.4, i64 0, i64 0))
  %129 = load i8*, i8** %6, align 8
  %130 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %127, i8* %128, i8* %129, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  br label %136

131:                                              ; preds = %122
  %132 = load i32, i32* @stderr, align 4
  %133 = call i8* @_(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0))
  %134 = load i8*, i8** %6, align 8
  %135 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %132, i8* %133, i8* %134)
  store i32 -1, i32* %4, align 4
  br label %139

136:                                              ; preds = %126
  br label %137

137:                                              ; preds = %136, %121
  br label %138

138:                                              ; preds = %137, %16
  store i32 0, i32* %4, align 4
  br label %139

139:                                              ; preds = %138, %131, %92, %39
  %140 = load i32, i32* %4, align 4
  ret i32 %140
}

declare dso_local i64 @strcasecmp(i8*, i8*) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @strtol(i8*, i8**, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, ...) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i32* @calloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
