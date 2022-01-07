; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/playlist/extr_asx.c_ASXToXML.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/playlist/extr_asx.c_ASXToXML.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlc_memstream = type { i8* }

@.str = private unnamed_addr constant [5 x i8] c"<!--\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"-->\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @ASXToXML to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ASXToXML(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8, align 1
  %8 = alloca %struct.vlc_memstream, align 8
  store i8* %0, i8** %3, align 8
  store i32 0, i32* %4, align 4
  %9 = load i8*, i8** %3, align 8
  store i8* %9, i8** %5, align 8
  %10 = load i8*, i8** %3, align 8
  store i8* %10, i8** %6, align 8
  %11 = call i64 @vlc_memstream_open(%struct.vlc_memstream* %8)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  br label %121

14:                                               ; preds = %1
  br label %15

15:                                               ; preds = %113, %49, %14
  %16 = load i8*, i8** %5, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %23

18:                                               ; preds = %15
  %19 = load i8*, i8** %5, align 8
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp ne i32 %21, 0
  br label %23

23:                                               ; preds = %18, %15
  %24 = phi i1 [ false, %15 ], [ %22, %18 ]
  br i1 %24, label %25, label %114

25:                                               ; preds = %23
  %26 = load i8*, i8** %5, align 8
  store i8* %26, i8** %6, align 8
  %27 = load i8*, i8** %5, align 8
  %28 = call i8* @strchr(i8* %27, i8 signext 60)
  store i8* %28, i8** %5, align 8
  %29 = icmp eq i8* %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = load i8*, i8** %6, align 8
  %32 = call i32 @memstream_puts_xmlencoded(%struct.vlc_memstream* %8, i8* %31, i8* null)
  br label %114

33:                                               ; preds = %25
  %34 = load i8*, i8** %6, align 8
  %35 = load i8*, i8** %5, align 8
  %36 = call i32 @memstream_puts_xmlencoded(%struct.vlc_memstream* %8, i8* %34, i8* %35)
  %37 = load i8*, i8** %5, align 8
  store i8* %37, i8** %6, align 8
  %38 = load i8*, i8** %5, align 8
  %39 = call i64 @strncmp(i8* %38, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %52

41:                                               ; preds = %33
  %42 = load i8*, i8** %5, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 4
  store i8* %43, i8** %5, align 8
  %44 = load i8*, i8** %5, align 8
  %45 = call i8* @strstr(i8* %44, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  store i8* %45, i8** %5, align 8
  %46 = load i8*, i8** %5, align 8
  %47 = icmp eq i8* %46, null
  br i1 %47, label %48, label %49

48:                                               ; preds = %41
  br label %114

49:                                               ; preds = %41
  %50 = load i8*, i8** %5, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 3
  store i8* %51, i8** %5, align 8
  br label %15

52:                                               ; preds = %33
  %53 = call i32 @vlc_memstream_putc(%struct.vlc_memstream* %8, i8 signext 60)
  %54 = load i8*, i8** %5, align 8
  %55 = getelementptr inbounds i8, i8* %54, i32 1
  store i8* %55, i8** %5, align 8
  br label %56

56:                                               ; preds = %52
  br label %57

57:                                               ; preds = %110, %56
  %58 = load i8*, i8** %5, align 8
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %113

62:                                               ; preds = %57
  %63 = load i32, i32* %4, align 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %95

65:                                               ; preds = %62
  %66 = load i8*, i8** %5, align 8
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp eq i32 %68, 62
  br i1 %69, label %70, label %74

70:                                               ; preds = %65
  %71 = call i32 @vlc_memstream_putc(%struct.vlc_memstream* %8, i8 signext 62)
  %72 = load i8*, i8** %5, align 8
  %73 = getelementptr inbounds i8, i8* %72, i32 1
  store i8* %73, i8** %5, align 8
  br label %113

74:                                               ; preds = %65
  %75 = load i8*, i8** %5, align 8
  %76 = load i8, i8* %75, align 1
  %77 = sext i8 %76 to i32
  %78 = icmp eq i32 %77, 34
  br i1 %78, label %84, label %79

79:                                               ; preds = %74
  %80 = load i8*, i8** %5, align 8
  %81 = load i8, i8* %80, align 1
  %82 = sext i8 %81 to i32
  %83 = icmp eq i32 %82, 39
  br i1 %83, label %84, label %89

84:                                               ; preds = %79, %74
  %85 = load i8*, i8** %5, align 8
  %86 = load i8, i8* %85, align 1
  store i8 %86, i8* %7, align 1
  store i32 1, i32* %4, align 4
  %87 = load i8, i8* %7, align 1
  %88 = call i32 @vlc_memstream_putc(%struct.vlc_memstream* %8, i8 signext %87)
  br label %94

89:                                               ; preds = %79
  %90 = load i8*, i8** %5, align 8
  %91 = load i8, i8* %90, align 1
  %92 = call signext i8 @vlc_ascii_toupper(i8 signext %91)
  %93 = call i32 @vlc_memstream_putc(%struct.vlc_memstream* %8, i8 signext %92)
  br label %94

94:                                               ; preds = %89, %84
  br label %109

95:                                               ; preds = %62
  %96 = load i8*, i8** %5, align 8
  store i8* %96, i8** %6, align 8
  %97 = load i8*, i8** %5, align 8
  %98 = load i8, i8* %7, align 1
  %99 = call i8* @strchr(i8* %97, i8 signext %98)
  store i8* %99, i8** %5, align 8
  %100 = load i8*, i8** %5, align 8
  %101 = icmp eq i8* %100, null
  br i1 %101, label %102, label %103

102:                                              ; preds = %95
  br label %113

103:                                              ; preds = %95
  %104 = load i8*, i8** %6, align 8
  %105 = load i8*, i8** %5, align 8
  %106 = call i32 @memstream_puts_xmlencoded(%struct.vlc_memstream* %8, i8* %104, i8* %105)
  %107 = load i8, i8* %7, align 1
  %108 = call i32 @vlc_memstream_putc(%struct.vlc_memstream* %8, i8 signext %107)
  store i32 0, i32* %4, align 4
  br label %109

109:                                              ; preds = %103, %94
  br label %110

110:                                              ; preds = %109
  %111 = load i8*, i8** %5, align 8
  %112 = getelementptr inbounds i8, i8* %111, i32 1
  store i8* %112, i8** %5, align 8
  br label %57

113:                                              ; preds = %102, %70, %57
  br label %15

114:                                              ; preds = %48, %30, %23
  %115 = call i64 @vlc_memstream_close(%struct.vlc_memstream* %8)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %114
  store i8* null, i8** %2, align 8
  br label %121

118:                                              ; preds = %114
  %119 = getelementptr inbounds %struct.vlc_memstream, %struct.vlc_memstream* %8, i32 0, i32 0
  %120 = load i8*, i8** %119, align 8
  store i8* %120, i8** %2, align 8
  br label %121

121:                                              ; preds = %118, %117, %13
  %122 = load i8*, i8** %2, align 8
  ret i8* %122
}

declare dso_local i64 @vlc_memstream_open(%struct.vlc_memstream*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @memstream_puts_xmlencoded(%struct.vlc_memstream*, i8*, i8*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i32 @vlc_memstream_putc(%struct.vlc_memstream*, i8 signext) #1

declare dso_local signext i8 @vlc_ascii_toupper(i8 signext) #1

declare dso_local i64 @vlc_memstream_close(%struct.vlc_memstream*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
