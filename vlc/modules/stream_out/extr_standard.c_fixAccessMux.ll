; ModuleID = '/home/carl/AnghaBench/vlc/modules/stream_out/extr_standard.c_fixAccessMux.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/stream_out/extr_standard.c_fixAccessMux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [25 x i8] c"no access _and_ no muxer\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"no access _and_ no muxer, extension gives file/%s\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"file\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"mmsh\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"asfh\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"udp\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"ts\00", align 1
@.str.7 = private unnamed_addr constant [39 x i8] c"no mux specified or found by extension\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8**, i8**, i8*)* @fixAccessMux to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fixAccessMux(i32* %0, i8** %1, i8** %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store i32* %0, i32** %6, align 8
  store i8** %1, i8*** %7, align 8
  store i8** %2, i8*** %8, align 8
  store i8* %3, i8** %9, align 8
  %14 = load i8**, i8*** %7, align 8
  %15 = load i8*, i8** %14, align 8
  store i8* %15, i8** %10, align 8
  %16 = load i8**, i8*** %8, align 8
  %17 = load i8*, i8** %16, align 8
  store i8* %17, i8** %11, align 8
  %18 = load i8*, i8** %10, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %82, label %20

20:                                               ; preds = %4
  %21 = load i8*, i8** %9, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = load i8*, i8** %9, align 8
  %25 = call i8* @strrchr(i8* %24, i8 signext 46)
  br label %27

26:                                               ; preds = %20
  br label %27

27:                                               ; preds = %26, %23
  %28 = phi i8* [ %25, %23 ], [ null, %26 ]
  store i8* %28, i8** %12, align 8
  %29 = load i8*, i8** %12, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = load i8*, i8** %12, align 8
  %33 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %33, i8** %12, align 8
  br label %34

34:                                               ; preds = %31, %27
  %35 = load i8*, i8** %12, align 8
  %36 = call i8* @getMuxFromAlias(i8* %35)
  store i8* %36, i8** %13, align 8
  %37 = load i8*, i8** %11, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %54, label %39

39:                                               ; preds = %34
  %40 = load i8*, i8** %13, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %39
  %43 = load i32*, i32** %6, align 8
  %44 = call i32 @msg_Err(i32* %43, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %5, align 4
  br label %98

45:                                               ; preds = %39
  %46 = load i32*, i32** %6, align 8
  %47 = load i8*, i8** %13, align 8
  %48 = call i32 @msg_Warn(i32* %46, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i8* %47)
  %49 = call i8* @strdup(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %50 = load i8**, i8*** %8, align 8
  store i8* %49, i8** %50, align 8
  %51 = load i8*, i8** %13, align 8
  %52 = call i8* @strdup(i8* %51)
  %53 = load i8**, i8*** %7, align 8
  store i8* %52, i8** %53, align 8
  br label %81

54:                                               ; preds = %34
  %55 = load i8*, i8** %11, align 8
  %56 = call i32 @strncmp(i8* %55, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 4)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %54
  %59 = call i8* @strdup(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %60 = load i8**, i8*** %7, align 8
  store i8* %59, i8** %60, align 8
  br label %80

61:                                               ; preds = %54
  %62 = load i8*, i8** %11, align 8
  %63 = call i32 @strcmp(i8* %62, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %68, label %65

65:                                               ; preds = %61
  %66 = call i8* @strdup(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  %67 = load i8**, i8*** %7, align 8
  store i8* %66, i8** %67, align 8
  br label %79

68:                                               ; preds = %61
  %69 = load i8*, i8** %13, align 8
  %70 = icmp ne i8* %69, null
  br i1 %70, label %71, label %75

71:                                               ; preds = %68
  %72 = load i8*, i8** %13, align 8
  %73 = call i8* @strdup(i8* %72)
  %74 = load i8**, i8*** %7, align 8
  store i8* %73, i8** %74, align 8
  br label %78

75:                                               ; preds = %68
  %76 = load i32*, i32** %6, align 8
  %77 = call i32 @msg_Err(i32* %76, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.7, i64 0, i64 0))
  store i32 1, i32* %5, align 4
  br label %98

78:                                               ; preds = %71
  br label %79

79:                                               ; preds = %78, %65
  br label %80

80:                                               ; preds = %79, %58
  br label %81

81:                                               ; preds = %80, %45
  br label %97

82:                                               ; preds = %4
  %83 = load i8*, i8** %11, align 8
  %84 = icmp ne i8* %83, null
  br i1 %84, label %96, label %85

85:                                               ; preds = %82
  %86 = load i8*, i8** %10, align 8
  %87 = call i32 @strncmp(i8* %86, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 4)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %92, label %89

89:                                               ; preds = %85
  %90 = call i8* @strdup(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %91 = load i8**, i8*** %8, align 8
  store i8* %90, i8** %91, align 8
  br label %95

92:                                               ; preds = %85
  %93 = call i8* @strdup(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %94 = load i8**, i8*** %8, align 8
  store i8* %93, i8** %94, align 8
  br label %95

95:                                               ; preds = %92, %89
  br label %96

96:                                               ; preds = %95, %82
  br label %97

97:                                               ; preds = %96, %81
  store i32 0, i32* %5, align 4
  br label %98

98:                                               ; preds = %97, %75, %42
  %99 = load i32, i32* %5, align 4
  ret i32 %99
}

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i8* @getMuxFromAlias(i8*) #1

declare dso_local i32 @msg_Err(i32*, i8*) #1

declare dso_local i32 @msg_Warn(i32*, i8*, i8*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
