; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/playlist/extr_m3u.c_parseEXTINF.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/playlist/extr_m3u.c_parseEXTINF.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c" - \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8**, i8**, i32*)* @parseEXTINF to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parseEXTINF(i8* %0, i8** %1, i8** %2, i32* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i8** %2, i8*** %7, align 8
  store i32* %3, i32** %8, align 8
  store i8* null, i8** %9, align 8
  store i8* null, i8** %10, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = call i32 @strlen(i8* %12)
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i8, i8* %11, i64 %14
  store i8* %15, i8** %9, align 8
  br label %16

16:                                               ; preds = %35, %4
  %17 = load i8*, i8** %5, align 8
  %18 = load i8*, i8** %9, align 8
  %19 = icmp ult i8* %17, %18
  br i1 %19, label %20, label %32

20:                                               ; preds = %16
  %21 = load i8*, i8** %5, align 8
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp eq i32 %23, 9
  br i1 %24, label %30, label %25

25:                                               ; preds = %20
  %26 = load i8*, i8** %5, align 8
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp eq i32 %28, 32
  br label %30

30:                                               ; preds = %25, %20
  %31 = phi i1 [ true, %20 ], [ %29, %25 ]
  br label %32

32:                                               ; preds = %30, %16
  %33 = phi i1 [ false, %16 ], [ %31, %30 ]
  br i1 %33, label %34, label %38

34:                                               ; preds = %32
  br label %35

35:                                               ; preds = %34
  %36 = load i8*, i8** %5, align 8
  %37 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %37, i8** %5, align 8
  br label %16

38:                                               ; preds = %32
  %39 = load i8*, i8** %5, align 8
  store i8* %39, i8** %10, align 8
  %40 = load i8*, i8** %5, align 8
  %41 = call i8* @strchr(i8* %40, i8 signext 44)
  store i8* %41, i8** %5, align 8
  %42 = load i8*, i8** %5, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %44, label %49

44:                                               ; preds = %38
  %45 = load i8*, i8** %5, align 8
  store i8 0, i8* %45, align 1
  %46 = load i8*, i8** %10, align 8
  %47 = call i32 @atoi(i8* %46)
  %48 = load i32*, i32** %8, align 8
  store i32 %47, i32* %48, align 4
  br label %50

49:                                               ; preds = %38
  br label %96

50:                                               ; preds = %44
  %51 = load i8*, i8** %5, align 8
  %52 = load i8*, i8** %9, align 8
  %53 = icmp ult i8* %51, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %50
  %55 = load i8*, i8** %5, align 8
  %56 = getelementptr inbounds i8, i8* %55, i32 1
  store i8* %56, i8** %5, align 8
  br label %57

57:                                               ; preds = %54, %50
  %58 = load i8*, i8** %5, align 8
  %59 = call i8* @strstr(i8* %58, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i8* %59, i8** %10, align 8
  %60 = load i8*, i8** %10, align 8
  %61 = icmp ne i8* %60, null
  br i1 %61, label %62, label %69

62:                                               ; preds = %57
  %63 = load i8*, i8** %10, align 8
  store i8 0, i8* %63, align 1
  %64 = load i8*, i8** %5, align 8
  %65 = load i8**, i8*** %6, align 8
  store i8* %64, i8** %65, align 8
  %66 = load i8*, i8** %10, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 3
  %68 = load i8**, i8*** %7, align 8
  store i8* %67, i8** %68, align 8
  br label %96

69:                                               ; preds = %57
  %70 = load i8*, i8** %5, align 8
  %71 = load i8, i8* %70, align 1
  %72 = sext i8 %71 to i32
  %73 = icmp eq i32 %72, 44
  br i1 %73, label %74, label %79

74:                                               ; preds = %69
  %75 = load i8*, i8** %5, align 8
  %76 = getelementptr inbounds i8, i8* %75, i32 1
  store i8* %76, i8** %5, align 8
  %77 = load i8*, i8** %5, align 8
  %78 = load i8**, i8*** %7, align 8
  store i8* %77, i8** %78, align 8
  br label %96

79:                                               ; preds = %69
  %80 = load i8*, i8** %5, align 8
  store i8* %80, i8** %10, align 8
  %81 = load i8*, i8** %5, align 8
  %82 = call i8* @strchr(i8* %81, i8 signext 44)
  store i8* %82, i8** %5, align 8
  %83 = load i8*, i8** %5, align 8
  %84 = icmp ne i8* %83, null
  br i1 %84, label %85, label %92

85:                                               ; preds = %79
  %86 = load i8*, i8** %5, align 8
  store i8 0, i8* %86, align 1
  %87 = load i8*, i8** %10, align 8
  %88 = load i8**, i8*** %6, align 8
  store i8* %87, i8** %88, align 8
  %89 = load i8*, i8** %5, align 8
  %90 = getelementptr inbounds i8, i8* %89, i64 1
  %91 = load i8**, i8*** %7, align 8
  store i8* %90, i8** %91, align 8
  br label %95

92:                                               ; preds = %79
  %93 = load i8*, i8** %10, align 8
  %94 = load i8**, i8*** %7, align 8
  store i8* %93, i8** %94, align 8
  br label %95

95:                                               ; preds = %92, %85
  br label %96

96:                                               ; preds = %95, %74, %62, %49
  ret void
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i8* @strstr(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
