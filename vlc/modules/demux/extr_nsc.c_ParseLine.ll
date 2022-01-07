; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/extr_nsc.c_ParseLine.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/extr_nsc.c_ParseLine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"0x\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%x\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"%s = %d\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"Format\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"%s = asf header\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"%s = %s\00", align 1
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*)* @ParseLine to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ParseLine(i32* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  store i8* %10, i8** %6, align 8
  br label %11

11:                                               ; preds = %33, %2
  %12 = load i8*, i8** %6, align 8
  %13 = load i8, i8* %12, align 1
  %14 = sext i8 %13 to i32
  %15 = icmp eq i32 %14, 32
  br i1 %15, label %31, label %16

16:                                               ; preds = %11
  %17 = load i8*, i8** %6, align 8
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp eq i32 %19, 9
  br i1 %20, label %31, label %21

21:                                               ; preds = %16
  %22 = load i8*, i8** %6, align 8
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %24, 10
  br i1 %25, label %31, label %26

26:                                               ; preds = %21
  %27 = load i8*, i8** %6, align 8
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp eq i32 %29, 13
  br label %31

31:                                               ; preds = %26, %21, %16, %11
  %32 = phi i1 [ true, %21 ], [ true, %16 ], [ true, %11 ], [ %30, %26 ]
  br i1 %32, label %33, label %36

33:                                               ; preds = %31
  %34 = load i8*, i8** %6, align 8
  %35 = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %35, i8** %6, align 8
  br label %11

36:                                               ; preds = %31
  %37 = load i8*, i8** %6, align 8
  %38 = call i8* @strchr(i8* %37, i8 signext 61)
  store i8* %38, i8** %7, align 8
  %39 = load i8*, i8** %7, align 8
  %40 = icmp eq i8* %39, null
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  store i32 0, i32* %3, align 4
  br label %81

42:                                               ; preds = %36
  %43 = load i8*, i8** %7, align 8
  store i8 0, i8* %43, align 1
  %44 = load i8*, i8** %7, align 8
  %45 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %45, i8** %7, align 8
  %46 = load i8*, i8** %7, align 8
  %47 = call i32 @strncasecmp(i8* %46, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 2)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %56, label %49

49:                                               ; preds = %42
  %50 = load i8*, i8** %7, align 8
  %51 = call i32 @sscanf(i8* %50, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %8)
  %52 = load i32*, i32** %4, align 8
  %53 = load i8*, i8** %6, align 8
  %54 = load i32, i32* %8, align 4
  %55 = call i32 (i32*, i8*, i8*, ...) @msg_Dbg(i32* %52, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* %53, i32 %54)
  br label %79

56:                                               ; preds = %42
  %57 = load i8*, i8** %6, align 8
  %58 = call i32 @strncasecmp(i8* %57, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 6)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %64, label %60

60:                                               ; preds = %56
  %61 = load i32*, i32** %4, align 8
  %62 = load i8*, i8** %6, align 8
  %63 = call i32 (i32*, i8*, i8*, ...) @msg_Dbg(i32* %61, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i8* %62)
  br label %78

64:                                               ; preds = %56
  %65 = load i32*, i32** %4, align 8
  %66 = load i8*, i8** %7, align 8
  %67 = call i8* @nscdec(i32* %65, i8* %66)
  store i8* %67, i8** %9, align 8
  %68 = load i8*, i8** %9, align 8
  %69 = icmp ne i8* %68, null
  br i1 %69, label %70, label %77

70:                                               ; preds = %64
  %71 = load i32*, i32** %4, align 8
  %72 = load i8*, i8** %6, align 8
  %73 = load i8*, i8** %9, align 8
  %74 = call i32 (i32*, i8*, i8*, ...) @msg_Dbg(i32* %71, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8* %72, i8* %73)
  %75 = load i8*, i8** %9, align 8
  %76 = call i32 @free(i8* %75)
  br label %77

77:                                               ; preds = %70, %64
  br label %78

78:                                               ; preds = %77, %60
  br label %79

79:                                               ; preds = %78, %49
  %80 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %80, i32* %3, align 4
  br label %81

81:                                               ; preds = %79, %41
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @strncasecmp(i8*, i8*, i32) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*) #1

declare dso_local i32 @msg_Dbg(i32*, i8*, i8*, ...) #1

declare dso_local i8* @nscdec(i32*, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
