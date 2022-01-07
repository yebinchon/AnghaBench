; ModuleID = '/home/carl/AnghaBench/vlc/modules/lua/extr_intf.c_MakeConfig.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/lua/extr_intf.c_MakeConfig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i8* }

@.str = private unnamed_addr constant [5 x i8] c"http\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"http-src\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"http-index\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"http={dir='%s',no_index=%s}\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"http={no_index=%s}\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"telnet\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"telnet-host\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"*console\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"telnet-port\00", align 1
@TELNETPORT_DEFAULT = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [28 x i8] c"ignoring port %d (using %d)\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"telnet://%s:%d\00", align 1
@.str.13 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"telnet-password\00", align 1
@.str.15 = private unnamed_addr constant [33 x i8] c"telnet={host='%s',password='%s'}\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*, i8*)* @MakeConfig to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @MakeConfig(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_4__, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  store i8* null, i8** %5, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = call i32 @strcmp(i8* %15, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %51, label %18

18:                                               ; preds = %2
  %19 = load i32*, i32** %3, align 8
  %20 = call i8* @var_InheritString(i32* %19, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  store i8* %20, i8** %6, align 8
  %21 = load i32*, i32** %3, align 8
  %22 = call i32 @var_InheritBool(i32* %21, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  store i32 %22, i32* %7, align 4
  %23 = load i8*, i8** %6, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %41

25:                                               ; preds = %18
  %26 = load i8*, i8** %6, align 8
  %27 = call i8* @config_StringEscape(i8* %26)
  store i8* %27, i8** %8, align 8
  %28 = load i8*, i8** %8, align 8
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %29, 0
  %31 = zext i1 %30 to i64
  %32 = select i1 %30, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0)
  %33 = call i32 (i8**, i8*, i8*, ...) @asprintf(i8** %5, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i8* %28, i8* %32)
  %34 = icmp eq i32 %33, -1
  br i1 %34, label %35, label %36

35:                                               ; preds = %25
  store i8* null, i8** %5, align 8
  br label %36

36:                                               ; preds = %35, %25
  %37 = load i8*, i8** %8, align 8
  %38 = call i32 @free(i8* %37)
  %39 = load i8*, i8** %6, align 8
  %40 = call i32 @free(i8* %39)
  br label %50

41:                                               ; preds = %18
  %42 = load i32, i32* %7, align 4
  %43 = icmp ne i32 %42, 0
  %44 = zext i1 %43 to i64
  %45 = select i1 %43, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0)
  %46 = call i32 (i8**, i8*, i8*, ...) @asprintf(i8** %5, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i8* %45)
  %47 = icmp eq i32 %46, -1
  br i1 %47, label %48, label %49

48:                                               ; preds = %41
  store i8* null, i8** %5, align 8
  br label %49

49:                                               ; preds = %48, %41
  br label %50

50:                                               ; preds = %49, %36
  br label %129

51:                                               ; preds = %2
  %52 = load i8*, i8** %4, align 8
  %53 = call i32 @strcmp(i8* %52, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %128, label %55

55:                                               ; preds = %51
  %56 = load i32*, i32** %3, align 8
  %57 = call i8* @var_InheritString(i32* %56, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0))
  store i8* %57, i8** %9, align 8
  %58 = load i8*, i8** %9, align 8
  %59 = call i32 @strcmp(i8* %58, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0))
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %55
  br label %111

62:                                               ; preds = %55
  %63 = load i8*, i8** %9, align 8
  %64 = call i32 @vlc_UrlParse(%struct.TYPE_4__* %10, i8* %63)
  %65 = load i32*, i32** %3, align 8
  %66 = call i32 @var_InheritInteger(i32* %65, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0))
  store i32 %66, i32* %11, align 4
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %90

70:                                               ; preds = %62
  %71 = load i32, i32* %11, align 4
  %72 = load i32, i32* @TELNETPORT_DEFAULT, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %77

74:                                               ; preds = %70
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  store i32 %76, i32* %11, align 4
  br label %89

77:                                               ; preds = %70
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* %11, align 4
  %81 = icmp ne i32 %79, %80
  br i1 %81, label %82, label %88

82:                                               ; preds = %77
  %83 = load i32*, i32** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* %11, align 4
  %87 = call i32 @msg_Warn(i32* %83, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.11, i64 0, i64 0), i32 %85, i32 %86)
  br label %88

88:                                               ; preds = %82, %77
  br label %89

89:                                               ; preds = %88, %74
  br label %90

90:                                               ; preds = %89, %62
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  %92 = load i8*, i8** %91, align 8
  %93 = call i8* @config_StringEscape(i8* %92)
  store i8* %93, i8** %12, align 8
  %94 = load i8*, i8** %9, align 8
  %95 = call i32 @free(i8* %94)
  %96 = call i32 @vlc_UrlClean(%struct.TYPE_4__* %10)
  %97 = load i8*, i8** %12, align 8
  %98 = icmp ne i8* %97, null
  br i1 %98, label %99, label %101

99:                                               ; preds = %90
  %100 = load i8*, i8** %12, align 8
  br label %102

101:                                              ; preds = %90
  br label %102

102:                                              ; preds = %101, %99
  %103 = phi i8* [ %100, %99 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.13, i64 0, i64 0), %101 ]
  %104 = load i32, i32* %11, align 4
  %105 = call i32 (i8**, i8*, i8*, ...) @asprintf(i8** %9, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0), i8* %103, i32 %104)
  %106 = icmp eq i32 %105, -1
  br i1 %106, label %107, label %108

107:                                              ; preds = %102
  store i8* null, i8** %9, align 8
  br label %108

108:                                              ; preds = %107, %102
  %109 = load i8*, i8** %12, align 8
  %110 = call i32 @free(i8* %109)
  br label %111

111:                                              ; preds = %108, %61
  %112 = load i32*, i32** %3, align 8
  %113 = call i8* @var_InheritString(i32* %112, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0))
  store i8* %113, i8** %13, align 8
  %114 = load i8*, i8** %13, align 8
  %115 = call i8* @config_StringEscape(i8* %114)
  store i8* %115, i8** %14, align 8
  %116 = load i8*, i8** %9, align 8
  %117 = load i8*, i8** %14, align 8
  %118 = call i32 (i8**, i8*, i8*, ...) @asprintf(i8** %5, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.15, i64 0, i64 0), i8* %116, i8* %117)
  %119 = icmp eq i32 %118, -1
  br i1 %119, label %120, label %121

120:                                              ; preds = %111
  store i8* null, i8** %5, align 8
  br label %121

121:                                              ; preds = %120, %111
  %122 = load i8*, i8** %14, align 8
  %123 = call i32 @free(i8* %122)
  %124 = load i8*, i8** %13, align 8
  %125 = call i32 @free(i8* %124)
  %126 = load i8*, i8** %9, align 8
  %127 = call i32 @free(i8* %126)
  br label %128

128:                                              ; preds = %121, %51
  br label %129

129:                                              ; preds = %128, %50
  %130 = load i8*, i8** %5, align 8
  ret i8* %130
}

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i8* @var_InheritString(i32*, i8*) #1

declare dso_local i32 @var_InheritBool(i32*, i8*) #1

declare dso_local i8* @config_StringEscape(i8*) #1

declare dso_local i32 @asprintf(i8**, i8*, i8*, ...) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @vlc_UrlParse(%struct.TYPE_4__*, i8*) #1

declare dso_local i32 @var_InheritInteger(i32*, i8*) #1

declare dso_local i32 @msg_Warn(i32*, i8*, i32, i32) #1

declare dso_local i32 @vlc_UrlClean(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
