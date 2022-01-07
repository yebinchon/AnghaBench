; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/extr_imem.c_ParseMRL.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/extr_imem.c_ParseMRL.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { i8*, i32 }

@ParseMRL.options = internal constant [13 x %struct.anon] [%struct.anon { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i32 129 }, %struct.anon { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i32 129 }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i32 129 }, %struct.anon { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0), i32 129 }, %struct.anon { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i32 129 }, %struct.anon { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i32 129 }, %struct.anon { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0), i32 129 }, %struct.anon { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0), i32 128 }, %struct.anon { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0), i32 128 }, %struct.anon { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i32 0, i32 0), i32 128 }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i32 0, i32 0), i32 128 }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0), i32 128 }, %struct.anon { i8* null, i32 -1 }], align 16
@.str = private unnamed_addr constant [3 x i8] c"id\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"group\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"cat\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"samplerate\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"channels\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"width\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"height\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"cookie\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"codec\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"language\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"dar\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"fps\00", align 1
@.str.12 = private unnamed_addr constant [23 x i8] c"option '%s' value '%s'\00", align 1
@.str.13 = private unnamed_addr constant [40 x i8] c"option '%s' without value (unsupported)\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"imem-%s\00", align 1
@VLC_VAR_DOINHERIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*)* @ParseMRL to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ParseMRL(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = call i8* @strdup(i8* %12)
  store i8* %13, i8** %5, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  br label %128

17:                                               ; preds = %2
  %18 = load i8*, i8** %5, align 8
  store i8* %18, i8** %6, align 8
  br label %19

19:                                               ; preds = %121, %17
  %20 = load i8*, i8** %6, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %125

22:                                               ; preds = %19
  %23 = load i8*, i8** %6, align 8
  %24 = call i8* @strchr(i8* %23, i8 signext 58)
  store i8* %24, i8** %7, align 8
  %25 = load i8*, i8** %7, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = load i8*, i8** %7, align 8
  %29 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %29, i8** %7, align 8
  store i8 0, i8* %28, align 1
  br label %30

30:                                               ; preds = %27, %22
  %31 = load i8*, i8** %6, align 8
  store i8* %31, i8** %8, align 8
  %32 = load i8*, i8** %6, align 8
  %33 = call i8* @strchr(i8* %32, i8 signext 61)
  store i8* %33, i8** %9, align 8
  %34 = load i8*, i8** %9, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %36, label %43

36:                                               ; preds = %30
  %37 = load i8*, i8** %9, align 8
  %38 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %38, i8** %9, align 8
  store i8 0, i8* %37, align 1
  %39 = load i32*, i32** %3, align 8
  %40 = load i8*, i8** %8, align 8
  %41 = load i8*, i8** %9, align 8
  %42 = call i32 (i32*, i8*, i8*, ...) @msg_Dbg(i32* %39, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i64 0, i64 0), i8* %40, i8* %41)
  br label %47

43:                                               ; preds = %30
  %44 = load i32*, i32** %3, align 8
  %45 = load i8*, i8** %8, align 8
  %46 = call i32 (i32*, i8*, i8*, ...) @msg_Dbg(i32* %44, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.13, i64 0, i64 0), i8* %45)
  br label %47

47:                                               ; preds = %43, %36
  %48 = load i8*, i8** %8, align 8
  %49 = call i64 @asprintf(i8** %10, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0), i8* %48)
  %50 = icmp slt i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %47
  store i8* null, i8** %10, align 8
  br label %52

52:                                               ; preds = %51, %47
  store i32 0, i32* %11, align 4
  br label %53

53:                                               ; preds = %118, %52
  %54 = load i8*, i8** %10, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %56, label %63

56:                                               ; preds = %53
  %57 = load i32, i32* %11, align 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds [13 x %struct.anon], [13 x %struct.anon]* @ParseMRL.options, i64 0, i64 %58
  %60 = getelementptr inbounds %struct.anon, %struct.anon* %59, i32 0, i32 0
  %61 = load i8*, i8** %60, align 16
  %62 = icmp ne i8* %61, null
  br label %63

63:                                               ; preds = %56, %53
  %64 = phi i1 [ false, %53 ], [ %62, %56 ]
  br i1 %64, label %65, label %121

65:                                               ; preds = %63
  %66 = load i32, i32* %11, align 4
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds [13 x %struct.anon], [13 x %struct.anon]* @ParseMRL.options, i64 0, i64 %67
  %69 = getelementptr inbounds %struct.anon, %struct.anon* %68, i32 0, i32 0
  %70 = load i8*, i8** %69, align 16
  %71 = load i8*, i8** %8, align 8
  %72 = call i64 @strcmp(i8* %70, i8* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %65
  br label %118

75:                                               ; preds = %65
  %76 = load i32*, i32** %3, align 8
  %77 = load i8*, i8** %10, align 8
  %78 = load i32, i32* %11, align 4
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds [13 x %struct.anon], [13 x %struct.anon]* @ParseMRL.options, i64 0, i64 %79
  %81 = getelementptr inbounds %struct.anon, %struct.anon* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @VLC_VAR_DOINHERIT, align 4
  %84 = or i32 %82, %83
  %85 = call i32 @var_Create(i32* %76, i8* %77, i32 %84)
  %86 = load i32, i32* %11, align 4
  %87 = zext i32 %86 to i64
  %88 = getelementptr inbounds [13 x %struct.anon], [13 x %struct.anon]* @ParseMRL.options, i64 0, i64 %87
  %89 = getelementptr inbounds %struct.anon, %struct.anon* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = icmp eq i32 %90, 129
  br i1 %91, label %92, label %101

92:                                               ; preds = %75
  %93 = load i8*, i8** %9, align 8
  %94 = icmp ne i8* %93, null
  br i1 %94, label %95, label %101

95:                                               ; preds = %92
  %96 = load i32*, i32** %3, align 8
  %97 = load i8*, i8** %10, align 8
  %98 = load i8*, i8** %9, align 8
  %99 = call i32 @strtol(i8* %98, i32* null, i32 0)
  %100 = call i32 @var_SetInteger(i32* %96, i8* %97, i32 %99)
  br label %117

101:                                              ; preds = %92, %75
  %102 = load i32, i32* %11, align 4
  %103 = zext i32 %102 to i64
  %104 = getelementptr inbounds [13 x %struct.anon], [13 x %struct.anon]* @ParseMRL.options, i64 0, i64 %103
  %105 = getelementptr inbounds %struct.anon, %struct.anon* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = icmp eq i32 %106, 128
  br i1 %107, label %108, label %116

108:                                              ; preds = %101
  %109 = load i8*, i8** %9, align 8
  %110 = icmp ne i8* %109, null
  br i1 %110, label %111, label %116

111:                                              ; preds = %108
  %112 = load i32*, i32** %3, align 8
  %113 = load i8*, i8** %10, align 8
  %114 = load i8*, i8** %9, align 8
  %115 = call i32 @var_SetString(i32* %112, i8* %113, i8* %114)
  br label %116

116:                                              ; preds = %111, %108, %101
  br label %117

117:                                              ; preds = %116, %95
  br label %121

118:                                              ; preds = %74
  %119 = load i32, i32* %11, align 4
  %120 = add i32 %119, 1
  store i32 %120, i32* %11, align 4
  br label %53

121:                                              ; preds = %117, %63
  %122 = load i8*, i8** %10, align 8
  %123 = call i32 @free(i8* %122)
  %124 = load i8*, i8** %7, align 8
  store i8* %124, i8** %6, align 8
  br label %19

125:                                              ; preds = %19
  %126 = load i8*, i8** %5, align 8
  %127 = call i32 @free(i8* %126)
  br label %128

128:                                              ; preds = %125, %16
  ret void
}

declare dso_local i8* @strdup(i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @msg_Dbg(i32*, i8*, i8*, ...) #1

declare dso_local i64 @asprintf(i8**, i8*, i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @var_Create(i32*, i8*, i32) #1

declare dso_local i32 @var_SetInteger(i32*, i8*, i32) #1

declare dso_local i32 @strtol(i8*, i32*, i32) #1

declare dso_local i32 @var_SetString(i32*, i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
