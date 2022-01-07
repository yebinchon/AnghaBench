; ModuleID = '/home/carl/AnghaBench/vlc/src/text/extr_url.c_vlc_uri_compose.c'
source_filename = "/home/carl/AnghaBench/vlc/src/text/extr_url.c_vlc_uri_compose.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i8*, i8*, i8*, i32, i32*, i32*, i32* }
%struct.vlc_memstream = type { i8* }

@.str = private unnamed_addr constant [4 x i8] c"%s:\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"//\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c":%s\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"[%s]:%d\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"[%s]\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"%s:%d\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"?%s\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"#%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @vlc_uri_compose(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca %struct.vlc_memstream, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %7 = call i32 @vlc_memstream_open(%struct.vlc_memstream* %4)
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i8*, i8** %9, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %1
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  %16 = call i32 (%struct.vlc_memstream*, i8*, i8*, ...) @vlc_memstream_printf(%struct.vlc_memstream* %4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %15)
  br label %17

17:                                               ; preds = %12, %1
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 5
  %20 = load i32*, i32** %19, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %93

22:                                               ; preds = %17
  %23 = call i32 @vlc_memstream_write(%struct.vlc_memstream* %4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 2)
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 7
  %26 = load i32*, i32** %25, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %63

28:                                               ; preds = %22
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 7
  %31 = load i32*, i32** %30, align 8
  %32 = call i8* @vlc_uri_encode(i32* %31)
  store i8* %32, i8** %5, align 8
  %33 = load i8*, i8** %5, align 8
  %34 = icmp eq i8* %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %28
  br label %130

36:                                               ; preds = %28
  %37 = load i8*, i8** %5, align 8
  %38 = call i32 @vlc_memstream_puts(%struct.vlc_memstream* %4, i8* %37)
  %39 = load i8*, i8** %5, align 8
  %40 = call i32 @free(i8* %39)
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 6
  %43 = load i32*, i32** %42, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %45, label %61

45:                                               ; preds = %36
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 6
  %48 = load i32*, i32** %47, align 8
  %49 = call i8* @vlc_uri_encode(i32* %48)
  store i8* %49, i8** %5, align 8
  %50 = load i8*, i8** %5, align 8
  %51 = icmp eq i8* %50, null
  %52 = zext i1 %51 to i32
  %53 = call i64 @unlikely(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %45
  br label %130

56:                                               ; preds = %45
  %57 = load i8*, i8** %5, align 8
  %58 = call i32 (%struct.vlc_memstream*, i8*, i8*, ...) @vlc_memstream_printf(%struct.vlc_memstream* %4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %57)
  %59 = load i8*, i8** %5, align 8
  %60 = call i32 @free(i8* %59)
  br label %61

61:                                               ; preds = %56, %36
  %62 = call i32 @vlc_memstream_putc(%struct.vlc_memstream* %4, i8 signext 64)
  br label %63

63:                                               ; preds = %61, %22
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 5
  %66 = load i32*, i32** %65, align 8
  %67 = call i32* @strchr(i32* %66, i8 signext 58)
  %68 = icmp ne i32* %67, null
  br i1 %68, label %69, label %76

69:                                               ; preds = %63
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 8
  %73 = icmp ne i32 %72, 0
  %74 = zext i1 %73 to i64
  %75 = select i1 %73, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0)
  store i8* %75, i8** %6, align 8
  br label %83

76:                                               ; preds = %63
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 4
  %79 = load i32, i32* %78, align 8
  %80 = icmp ne i32 %79, 0
  %81 = zext i1 %80 to i64
  %82 = select i1 %80, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0)
  store i8* %82, i8** %6, align 8
  br label %83

83:                                               ; preds = %76, %69
  %84 = load i8*, i8** %6, align 8
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 5
  %87 = load i32*, i32** %86, align 8
  %88 = bitcast i32* %87 to i8*
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 4
  %91 = load i32, i32* %90, align 8
  %92 = call i32 (%struct.vlc_memstream*, i8*, i8*, ...) @vlc_memstream_printf(%struct.vlc_memstream* %4, i8* %84, i8* %88, i32 %91)
  br label %93

93:                                               ; preds = %83, %17
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 1
  %96 = load i8*, i8** %95, align 8
  %97 = icmp ne i8* %96, null
  br i1 %97, label %98, label %103

98:                                               ; preds = %93
  %99 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 1
  %101 = load i8*, i8** %100, align 8
  %102 = call i32 @vlc_memstream_puts(%struct.vlc_memstream* %4, i8* %101)
  br label %103

103:                                              ; preds = %98, %93
  %104 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 2
  %106 = load i8*, i8** %105, align 8
  %107 = icmp ne i8* %106, null
  br i1 %107, label %108, label %113

108:                                              ; preds = %103
  %109 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 2
  %111 = load i8*, i8** %110, align 8
  %112 = call i32 (%struct.vlc_memstream*, i8*, i8*, ...) @vlc_memstream_printf(%struct.vlc_memstream* %4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8* %111)
  br label %113

113:                                              ; preds = %108, %103
  %114 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 3
  %116 = load i8*, i8** %115, align 8
  %117 = icmp ne i8* %116, null
  br i1 %117, label %118, label %123

118:                                              ; preds = %113
  %119 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i32 0, i32 3
  %121 = load i8*, i8** %120, align 8
  %122 = call i32 (%struct.vlc_memstream*, i8*, i8*, ...) @vlc_memstream_printf(%struct.vlc_memstream* %4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8* %121)
  br label %123

123:                                              ; preds = %118, %113
  %124 = call i64 @vlc_memstream_close(%struct.vlc_memstream* %4)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %123
  store i8* null, i8** %2, align 8
  br label %138

127:                                              ; preds = %123
  %128 = getelementptr inbounds %struct.vlc_memstream, %struct.vlc_memstream* %4, i32 0, i32 0
  %129 = load i8*, i8** %128, align 8
  store i8* %129, i8** %2, align 8
  br label %138

130:                                              ; preds = %55, %35
  %131 = call i64 @vlc_memstream_close(%struct.vlc_memstream* %4)
  %132 = icmp eq i64 %131, 0
  br i1 %132, label %133, label %137

133:                                              ; preds = %130
  %134 = getelementptr inbounds %struct.vlc_memstream, %struct.vlc_memstream* %4, i32 0, i32 0
  %135 = load i8*, i8** %134, align 8
  %136 = call i32 @free(i8* %135)
  br label %137

137:                                              ; preds = %133, %130
  store i8* null, i8** %2, align 8
  br label %138

138:                                              ; preds = %137, %127, %126
  %139 = load i8*, i8** %2, align 8
  ret i8* %139
}

declare dso_local i32 @vlc_memstream_open(%struct.vlc_memstream*) #1

declare dso_local i32 @vlc_memstream_printf(%struct.vlc_memstream*, i8*, i8*, ...) #1

declare dso_local i32 @vlc_memstream_write(%struct.vlc_memstream*, i8*, i32) #1

declare dso_local i8* @vlc_uri_encode(i32*) #1

declare dso_local i32 @vlc_memstream_puts(%struct.vlc_memstream*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @vlc_memstream_putc(%struct.vlc_memstream*, i8 signext) #1

declare dso_local i32* @strchr(i32*, i8 signext) #1

declare dso_local i64 @vlc_memstream_close(%struct.vlc_memstream*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
