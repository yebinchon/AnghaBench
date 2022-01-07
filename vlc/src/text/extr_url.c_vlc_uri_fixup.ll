; ModuleID = '/home/carl/AnghaBench/vlc/src/text/extr_url.c_vlc_uri_fixup.c'
source_filename = "/home/carl/AnghaBench/vlc/src/text/extr_url.c_vlc_uri_fixup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlc_memstream = type { i8* }

@.str = private unnamed_addr constant [4 x i8] c"+-.\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"//\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"/?#\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"%:[]@\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"%/?#@\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"%:/?#[]@\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @vlc_uri_fixup(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.vlc_memstream, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %10 = load i8*, i8** %2, align 8
  %11 = icmp ne i8* %10, null
  %12 = zext i1 %11 to i32
  %13 = call i32 @assert(i32 %12)
  store i32 0, i32* %3, align 4
  %14 = load i8*, i8** %2, align 8
  store i8* %14, i8** %4, align 8
  br label %15

15:                                               ; preds = %40, %1
  %16 = load i8*, i8** %4, align 8
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %43

20:                                               ; preds = %15
  %21 = load i8*, i8** %4, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 0
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %24, 37
  br i1 %25, label %26, label %39

26:                                               ; preds = %20
  %27 = load i8*, i8** %4, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 1
  %29 = load i8, i8* %28, align 1
  %30 = call i64 @isurihex(i8 signext %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %26
  %33 = load i8*, i8** %4, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 2
  %35 = load i8, i8* %34, align 1
  %36 = call i64 @isurihex(i8 signext %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %32, %26
  store i32 1, i32* %3, align 4
  br label %43

39:                                               ; preds = %32, %20
  br label %40

40:                                               ; preds = %39
  %41 = load i8*, i8** %4, align 8
  %42 = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %42, i8** %4, align 8
  br label %15

43:                                               ; preds = %38, %15
  %44 = call i32 @vlc_memstream_open(%struct.vlc_memstream* %5)
  %45 = load i8*, i8** %2, align 8
  store i8* %45, i8** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 1, i32* %8, align 4
  br label %46

46:                                               ; preds = %58, %43
  %47 = load i8*, i8** %6, align 8
  %48 = load i8, i8* %47, align 1
  %49 = call i64 @isurialnum(i8 signext %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %56, label %51

51:                                               ; preds = %46
  %52 = load i8*, i8** %6, align 8
  %53 = load i8, i8* %52, align 1
  %54 = call i32* @memchr(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8 signext %53, i32 3)
  %55 = icmp ne i32* %54, null
  br label %56

56:                                               ; preds = %51, %46
  %57 = phi i1 [ true, %46 ], [ %55, %51 ]
  br i1 %57, label %58, label %64

58:                                               ; preds = %56
  %59 = load i8*, i8** %6, align 8
  %60 = getelementptr inbounds i8, i8* %59, i32 1
  store i8* %60, i8** %6, align 8
  %61 = load i8, i8* %59, align 1
  %62 = sext i8 %61 to i32
  %63 = call i32 @vlc_memstream_putc(%struct.vlc_memstream* %5, i32 %62)
  br label %46

64:                                               ; preds = %56
  %65 = load i8*, i8** %6, align 8
  %66 = load i8*, i8** %2, align 8
  %67 = icmp ugt i8* %65, %66
  br i1 %67, label %68, label %79

68:                                               ; preds = %64
  %69 = load i8*, i8** %6, align 8
  %70 = load i8, i8* %69, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp eq i32 %71, 58
  br i1 %72, label %73, label %79

73:                                               ; preds = %68
  %74 = load i8*, i8** %6, align 8
  %75 = getelementptr inbounds i8, i8* %74, i32 1
  store i8* %75, i8** %6, align 8
  %76 = load i8, i8* %74, align 1
  %77 = sext i8 %76 to i32
  %78 = call i32 @vlc_memstream_putc(%struct.vlc_memstream* %5, i32 %77)
  store i32 1, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %79

79:                                               ; preds = %73, %68, %64
  %80 = load i32, i32* %7, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %86, label %82

82:                                               ; preds = %79
  %83 = load i8*, i8** %6, align 8
  %84 = load i8*, i8** %2, align 8
  %85 = icmp eq i8* %83, %84
  br i1 %85, label %86, label %110

86:                                               ; preds = %82, %79
  %87 = load i8*, i8** %6, align 8
  %88 = call i64 @strncmp(i8* %87, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 2)
  %89 = icmp eq i64 %88, 0
  br i1 %89, label %90, label %110

90:                                               ; preds = %86
  %91 = load i8*, i8** %6, align 8
  %92 = call i32 @vlc_memstream_write(%struct.vlc_memstream* %5, i8* %91, i32 2)
  %93 = load i8*, i8** %6, align 8
  %94 = getelementptr inbounds i8, i8* %93, i64 2
  store i8* %94, i8** %6, align 8
  store i32 1, i32* %8, align 4
  br label %95

95:                                               ; preds = %100, %90
  %96 = load i8*, i8** %6, align 8
  %97 = load i8, i8* %96, align 1
  %98 = call i32* @memchr(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8 signext %97, i32 4)
  %99 = icmp eq i32* %98, null
  br i1 %99, label %100, label %109

100:                                              ; preds = %95
  %101 = load i8*, i8** %6, align 8
  %102 = getelementptr inbounds i8, i8* %101, i32 1
  store i8* %102, i8** %6, align 8
  %103 = load i8, i8* %101, align 1
  %104 = sext i8 %103 to i32
  %105 = load i32, i32* %3, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds [6 x i8], [6 x i8]* @.str.3, i64 0, i64 %106
  %108 = call i32 @vlc_uri_putc(%struct.vlc_memstream* %5, i32 %104, i8* %107)
  br label %95

109:                                              ; preds = %95
  br label %110

110:                                              ; preds = %109, %86, %82
  %111 = load i32, i32* %8, align 4
  %112 = icmp ne i32 %111, 0
  %113 = zext i1 %112 to i64
  %114 = select i1 %112, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0)
  store i8* %114, i8** %9, align 8
  br label %115

115:                                              ; preds = %120, %110
  %116 = load i8*, i8** %6, align 8
  %117 = load i8, i8* %116, align 1
  %118 = sext i8 %117 to i32
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %130

120:                                              ; preds = %115
  %121 = load i8*, i8** %6, align 8
  %122 = getelementptr inbounds i8, i8* %121, i32 1
  store i8* %122, i8** %6, align 8
  %123 = load i8, i8* %121, align 1
  %124 = sext i8 %123 to i32
  %125 = load i8*, i8** %9, align 8
  %126 = load i32, i32* %3, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i8, i8* %125, i64 %127
  %129 = call i32 @vlc_uri_putc(%struct.vlc_memstream* %5, i32 %124, i8* %128)
  br label %115

130:                                              ; preds = %115
  %131 = call i64 @vlc_memstream_close(%struct.vlc_memstream* %5)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %130
  br label %137

134:                                              ; preds = %130
  %135 = getelementptr inbounds %struct.vlc_memstream, %struct.vlc_memstream* %5, i32 0, i32 0
  %136 = load i8*, i8** %135, align 8
  br label %137

137:                                              ; preds = %134, %133
  %138 = phi i8* [ null, %133 ], [ %136, %134 ]
  ret i8* %138
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @isurihex(i8 signext) #1

declare dso_local i32 @vlc_memstream_open(%struct.vlc_memstream*) #1

declare dso_local i64 @isurialnum(i8 signext) #1

declare dso_local i32* @memchr(i8*, i8 signext, i32) #1

declare dso_local i32 @vlc_memstream_putc(%struct.vlc_memstream*, i32) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @vlc_memstream_write(%struct.vlc_memstream*, i8*, i32) #1

declare dso_local i32 @vlc_uri_putc(%struct.vlc_memstream*, i32, i8*) #1

declare dso_local i64 @vlc_memstream_close(%struct.vlc_memstream*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
