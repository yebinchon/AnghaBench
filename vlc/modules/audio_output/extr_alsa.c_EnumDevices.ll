; ModuleID = '/home/carl/AnghaBench/vlc/modules/audio_output/extr_alsa.c_EnumDevices.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/audio_output/extr_alsa.c_EnumDevices.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"pcm\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"NAME\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"DESC\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"Default\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8***, i8***)* @EnumDevices to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @EnumDevices(i8* %0, i8*** noalias %1, i8*** noalias %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8***, align 8
  %7 = alloca i8***, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i8*** %1, i8**** %6, align 8
  store i8*** %2, i8**** %7, align 8
  %18 = call i64 @snd_device_name_hint(i32 -1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8*** %8)
  %19 = icmp slt i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %135

21:                                               ; preds = %3
  store i8** null, i8*** %9, align 8
  store i8** null, i8*** %10, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i64 0, i64* %13, align 8
  br label %22

22:                                               ; preds = %92, %21
  %23 = load i8**, i8*** %8, align 8
  %24 = load i64, i64* %13, align 8
  %25 = getelementptr inbounds i8*, i8** %23, i64 %24
  %26 = load i8*, i8** %25, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %95

28:                                               ; preds = %22
  %29 = load i8**, i8*** %8, align 8
  %30 = load i64, i64* %13, align 8
  %31 = getelementptr inbounds i8*, i8** %29, i64 %30
  %32 = load i8*, i8** %31, align 8
  store i8* %32, i8** %14, align 8
  %33 = load i8*, i8** %14, align 8
  %34 = call i8* @snd_device_name_get_hint(i8* %33, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store i8* %34, i8** %15, align 8
  %35 = load i8*, i8** %15, align 8
  %36 = icmp eq i8* %35, null
  %37 = zext i1 %36 to i32
  %38 = call i64 @unlikely(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %28
  br label %92

41:                                               ; preds = %28
  %42 = load i8*, i8** %14, align 8
  %43 = call i8* @snd_device_name_get_hint(i8* %42, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  store i8* %43, i8** %16, align 8
  %44 = load i8*, i8** %16, align 8
  %45 = icmp eq i8* %44, null
  br i1 %45, label %46, label %49

46:                                               ; preds = %41
  %47 = load i8*, i8** %15, align 8
  %48 = call i8* @xstrdup(i8* %47)
  store i8* %48, i8** %16, align 8
  br label %49

49:                                               ; preds = %46, %41
  %50 = load i8*, i8** %16, align 8
  %51 = call i8* @strchr(i8* %50, i8 signext 10)
  store i8* %51, i8** %17, align 8
  br label %52

52:                                               ; preds = %57, %49
  %53 = load i8*, i8** %17, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %55, label %60

55:                                               ; preds = %52
  %56 = load i8*, i8** %17, align 8
  store i8 32, i8* %56, align 1
  br label %57

57:                                               ; preds = %55
  %58 = load i8*, i8** %17, align 8
  %59 = call i8* @strchr(i8* %58, i8 signext 10)
  store i8* %59, i8** %17, align 8
  br label %52

60:                                               ; preds = %52
  %61 = load i8**, i8*** %9, align 8
  %62 = load i32, i32* %11, align 4
  %63 = add i32 %62, 1
  %64 = zext i32 %63 to i64
  %65 = mul i64 %64, 8
  %66 = trunc i64 %65 to i32
  %67 = call i8** @xrealloc(i8** %61, i32 %66)
  store i8** %67, i8*** %9, align 8
  %68 = load i8**, i8*** %10, align 8
  %69 = load i32, i32* %11, align 4
  %70 = add i32 %69, 1
  %71 = zext i32 %70 to i64
  %72 = mul i64 %71, 8
  %73 = trunc i64 %72 to i32
  %74 = call i8** @xrealloc(i8** %68, i32 %73)
  store i8** %74, i8*** %10, align 8
  %75 = load i8*, i8** %15, align 8
  %76 = load i8**, i8*** %9, align 8
  %77 = load i32, i32* %11, align 4
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds i8*, i8** %76, i64 %78
  store i8* %75, i8** %79, align 8
  %80 = load i8*, i8** %16, align 8
  %81 = load i8**, i8*** %10, align 8
  %82 = load i32, i32* %11, align 4
  %83 = zext i32 %82 to i64
  %84 = getelementptr inbounds i8*, i8** %81, i64 %83
  store i8* %80, i8** %84, align 8
  %85 = load i32, i32* %11, align 4
  %86 = add i32 %85, 1
  store i32 %86, i32* %11, align 4
  %87 = load i8*, i8** %15, align 8
  %88 = call i32 @strcmp(i8* %87, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %91, label %90

90:                                               ; preds = %60
  store i32 1, i32* %12, align 4
  br label %91

91:                                               ; preds = %90, %60
  br label %92

92:                                               ; preds = %91, %40
  %93 = load i64, i64* %13, align 8
  %94 = add i64 %93, 1
  store i64 %94, i64* %13, align 8
  br label %22

95:                                               ; preds = %22
  %96 = load i8**, i8*** %8, align 8
  %97 = call i32 @snd_device_name_free_hint(i8** %96)
  %98 = load i32, i32* %12, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %128, label %100

100:                                              ; preds = %95
  %101 = load i8**, i8*** %9, align 8
  %102 = load i32, i32* %11, align 4
  %103 = add i32 %102, 1
  %104 = zext i32 %103 to i64
  %105 = mul i64 %104, 8
  %106 = trunc i64 %105 to i32
  %107 = call i8** @xrealloc(i8** %101, i32 %106)
  store i8** %107, i8*** %9, align 8
  %108 = load i8**, i8*** %10, align 8
  %109 = load i32, i32* %11, align 4
  %110 = add i32 %109, 1
  %111 = zext i32 %110 to i64
  %112 = mul i64 %111, 8
  %113 = trunc i64 %112 to i32
  %114 = call i8** @xrealloc(i8** %108, i32 %113)
  store i8** %114, i8*** %10, align 8
  %115 = call i8* @xstrdup(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %116 = load i8**, i8*** %9, align 8
  %117 = load i32, i32* %11, align 4
  %118 = zext i32 %117 to i64
  %119 = getelementptr inbounds i8*, i8** %116, i64 %118
  store i8* %115, i8** %119, align 8
  %120 = call i8* @_(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %121 = call i8* @xstrdup(i8* %120)
  %122 = load i8**, i8*** %10, align 8
  %123 = load i32, i32* %11, align 4
  %124 = zext i32 %123 to i64
  %125 = getelementptr inbounds i8*, i8** %122, i64 %124
  store i8* %121, i8** %125, align 8
  %126 = load i32, i32* %11, align 4
  %127 = add i32 %126, 1
  store i32 %127, i32* %11, align 4
  br label %128

128:                                              ; preds = %100, %95
  %129 = load i8**, i8*** %9, align 8
  %130 = load i8***, i8**** %6, align 8
  store i8** %129, i8*** %130, align 8
  %131 = load i8**, i8*** %10, align 8
  %132 = load i8***, i8**** %7, align 8
  store i8** %131, i8*** %132, align 8
  %133 = load i8*, i8** %5, align 8
  %134 = load i32, i32* %11, align 4
  store i32 %134, i32* %4, align 4
  br label %135

135:                                              ; preds = %128, %20
  %136 = load i32, i32* %4, align 4
  ret i32 %136
}

declare dso_local i64 @snd_device_name_hint(i32, i8*, i8***) #1

declare dso_local i8* @snd_device_name_get_hint(i8*, i8*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i8* @xstrdup(i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i8** @xrealloc(i8**, i32) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @snd_device_name_free_hint(i8**) #1

declare dso_local i8* @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
