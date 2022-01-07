; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/extr_subtitle.c_ParseRealText.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/extr_subtitle.c_ParseRealText.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i64, i64 }

@VLC_EGENERIC = common dso_local global i32 0, align 4
@VLC_ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"<time\00", align 1
@.str.1 = private unnamed_addr constant [65 x i8] c"<%*[t|T]ime %*[b|B]egin=\22%11[^\22]\22 %*[e|E]nd=\22%11[^\22]%*[^>]%[^\0A\0D]\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"<%*[t|T]ime %*[b|B]egin=\22%11[^\22]\22%*[^>]%[^\0A\0D]\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"<clear/\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*, %struct.TYPE_3__*, i64)* @ParseRealText to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ParseRealText(i32* %0, i32* %1, i32* %2, %struct.TYPE_3__* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_3__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca [12 x i8], align 1
  %24 = alloca [12 x i8], align 1
  %25 = alloca i64, align 8
  %26 = alloca i8*, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store %struct.TYPE_3__* %3, %struct.TYPE_3__** %10, align 8
  store i64 %4, i64* %11, align 8
  %29 = load i32*, i32** %7, align 8
  %30 = ptrtoint i32* %29 to i64
  %31 = call i32 @VLC_UNUSED(i64 %30)
  %32 = load i32*, i32** %8, align 8
  %33 = ptrtoint i32* %32 to i64
  %34 = call i32 @VLC_UNUSED(i64 %33)
  %35 = load i64, i64* %11, align 8
  %36 = call i32 @VLC_UNUSED(i64 %35)
  store i8* null, i8** %12, align 8
  br label %37

37:                                               ; preds = %97, %73, %5
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  %38 = load i32*, i32** %9, align 8
  %39 = call i8* @TextGetLine(i32* %38)
  store i8* %39, i8** %21, align 8
  %40 = load i8*, i8** %12, align 8
  %41 = call i32 @free(i8* %40)
  %42 = load i8*, i8** %21, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %46, label %44

44:                                               ; preds = %37
  %45 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %45, i32* %6, align 4
  br label %157

46:                                               ; preds = %37
  %47 = load i8*, i8** %21, align 8
  %48 = call i64 @strlen(i8* %47)
  %49 = add i64 %48, 1
  %50 = call i8* @malloc(i64 %49)
  store i8* %50, i8** %12, align 8
  %51 = load i8*, i8** %12, align 8
  %52 = icmp ne i8* %51, null
  br i1 %52, label %55, label %53

53:                                               ; preds = %46
  %54 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %54, i32* %6, align 4
  br label %157

55:                                               ; preds = %46
  %56 = load i8*, i8** %21, align 8
  %57 = call i8* @strcasestr(i8* %56, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i8* %57, i8** %22, align 8
  %58 = load i8*, i8** %22, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %60, label %97

60:                                               ; preds = %55
  %61 = load i8*, i8** %22, align 8
  %62 = getelementptr inbounds [12 x i8], [12 x i8]* %24, i64 0, i64 0
  %63 = getelementptr inbounds [12 x i8], [12 x i8]* %23, i64 0, i64 0
  %64 = load i8*, i8** %12, align 8
  %65 = call i32 (i8*, i8*, i8*, i8*, ...) @sscanf(i8* %61, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.1, i64 0, i64 0), i8* %62, i8* %63, i8* %64)
  %66 = icmp ne i32 %65, 3
  br i1 %66, label %67, label %74

67:                                               ; preds = %60
  %68 = load i8*, i8** %22, align 8
  %69 = getelementptr inbounds [12 x i8], [12 x i8]* %24, i64 0, i64 0
  %70 = load i8*, i8** %12, align 8
  %71 = call i32 (i8*, i8*, i8*, i8*, ...) @sscanf(i8* %68, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i8* %69, i8* %70)
  %72 = icmp ne i32 %71, 2
  br i1 %72, label %73, label %74

73:                                               ; preds = %67
  br label %37

74:                                               ; preds = %67, %60
  %75 = getelementptr inbounds [12 x i8], [12 x i8]* %24, i64 0, i64 0
  %76 = call i64 @ParseRealTime(i8* %75, i32* %13, i32* %14, i32* %15, i32* %16)
  store i64 %76, i64* %25, align 8
  %77 = load i64, i64* %25, align 8
  %78 = icmp sge i64 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %74
  %80 = load i64, i64* %25, align 8
  br label %82

81:                                               ; preds = %74
  br label %82

82:                                               ; preds = %81, %79
  %83 = phi i64 [ %80, %79 ], [ 0, %81 ]
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 2
  store i64 %83, i64* %85, align 8
  %86 = getelementptr inbounds [12 x i8], [12 x i8]* %23, i64 0, i64 0
  %87 = call i64 @ParseRealTime(i8* %86, i32* %17, i32* %18, i32* %19, i32* %20)
  store i64 %87, i64* %25, align 8
  %88 = load i64, i64* %25, align 8
  %89 = icmp sge i64 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %82
  %91 = load i64, i64* %25, align 8
  br label %93

92:                                               ; preds = %82
  br label %93

93:                                               ; preds = %92, %90
  %94 = phi i64 [ %91, %90 ], [ -1, %92 ]
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 1
  store i64 %94, i64* %96, align 8
  br label %98

97:                                               ; preds = %55
  br label %37

98:                                               ; preds = %93
  br label %99

99:                                               ; preds = %139, %98
  %100 = load i32*, i32** %9, align 8
  %101 = call i8* @TextGetLine(i32* %100)
  store i8* %101, i8** %26, align 8
  %102 = load i8*, i8** %26, align 8
  %103 = icmp ne i8* %102, null
  br i1 %103, label %108, label %104

104:                                              ; preds = %99
  %105 = load i8*, i8** %12, align 8
  %106 = call i32 @free(i8* %105)
  %107 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %107, i32* %6, align 4
  br label %157

108:                                              ; preds = %99
  %109 = load i8*, i8** %26, align 8
  %110 = call i64 @strlen(i8* %109)
  store i64 %110, i64* %27, align 8
  %111 = load i64, i64* %27, align 8
  %112 = icmp eq i64 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %108
  br label %145

114:                                              ; preds = %108
  %115 = load i8*, i8** %26, align 8
  %116 = call i8* @strcasestr(i8* %115, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %117 = icmp ne i8* %116, null
  br i1 %117, label %122, label %118

118:                                              ; preds = %114
  %119 = load i8*, i8** %26, align 8
  %120 = call i8* @strcasestr(i8* %119, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %121 = icmp ne i8* %120, null
  br i1 %121, label %122, label %125

122:                                              ; preds = %118, %114
  %123 = load i32*, i32** %9, align 8
  %124 = call i32 @TextPreviousLine(i32* %123)
  br label %145

125:                                              ; preds = %118
  %126 = load i8*, i8** %12, align 8
  %127 = call i64 @strlen(i8* %126)
  store i64 %127, i64* %28, align 8
  %128 = load i8*, i8** %12, align 8
  %129 = load i64, i64* %28, align 8
  %130 = load i64, i64* %27, align 8
  %131 = add i64 %129, %130
  %132 = add i64 %131, 1
  %133 = add i64 %132, 1
  %134 = call i8* @realloc_or_free(i8* %128, i64 %133)
  store i8* %134, i8** %12, align 8
  %135 = load i8*, i8** %12, align 8
  %136 = icmp ne i8* %135, null
  br i1 %136, label %139, label %137

137:                                              ; preds = %125
  %138 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %138, i32* %6, align 4
  br label %157

139:                                              ; preds = %125
  %140 = load i8*, i8** %12, align 8
  %141 = load i8*, i8** %26, align 8
  %142 = call i32 @strcat(i8* %140, i8* %141)
  %143 = load i8*, i8** %12, align 8
  %144 = call i32 @strcat(i8* %143, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  br label %99

145:                                              ; preds = %122, %113
  %146 = load i8*, i8** %12, align 8
  %147 = getelementptr inbounds i8, i8* %146, i64 0
  %148 = load i8*, i8** %12, align 8
  %149 = getelementptr inbounds i8, i8* %148, i64 1
  %150 = load i8*, i8** %12, align 8
  %151 = call i64 @strlen(i8* %150)
  %152 = call i32 @memmove(i8* %147, i8* %149, i64 %151)
  %153 = load i8*, i8** %12, align 8
  %154 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %155 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %154, i32 0, i32 0
  store i8* %153, i8** %155, align 8
  %156 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %156, i32* %6, align 4
  br label %157

157:                                              ; preds = %145, %137, %104, %53, %44
  %158 = load i32, i32* %6, align 4
  ret i32 %158
}

declare dso_local i32 @VLC_UNUSED(i64) #1

declare dso_local i8* @TextGetLine(i32*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @strcasestr(i8*, i8*) #1

declare dso_local i32 @sscanf(i8*, i8*, i8*, i8*, ...) #1

declare dso_local i64 @ParseRealTime(i8*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @TextPreviousLine(i32*) #1

declare dso_local i8* @realloc_or_free(i8*, i64) #1

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i32 @memmove(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
