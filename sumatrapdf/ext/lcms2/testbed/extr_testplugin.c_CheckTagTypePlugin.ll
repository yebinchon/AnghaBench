; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testplugin.c_CheckTagTypePlugin.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testplugin.c_CheckTagTypePlugin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TagTypePluginSample = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Create placeholder failed\00", align 1
@SigInt = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"Plug-in failed\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"Fetch mem size failed\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"malloc failed ?!?\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"Save to mem failed\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"Open profile failed\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"read tag/context switching failed\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"Open profile from mem failed\00", align 1
@.str.8 = private unnamed_addr constant [37 x i8] c"Read tag/conext switching failed (2)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CheckTagTypePlugin() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store i32* null, i32** %2, align 8
  store i32* null, i32** %3, align 8
  store i32* null, i32** %4, align 8
  store i32 1234, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i8* null, i8** %7, align 8
  store i32* null, i32** %8, align 8
  store i32 0, i32* %9, align 4
  %10 = call i32* @WatchDogContext(i32* null)
  store i32* %10, i32** %2, align 8
  %11 = load i32*, i32** %2, align 8
  %12 = call i32 @cmsPlugin(i32* %11, i32* @TagTypePluginSample)
  %13 = load i32*, i32** %2, align 8
  %14 = call i32* @DupContext(i32* %13, i32* null)
  store i32* %14, i32** %3, align 8
  %15 = load i32*, i32** %3, align 8
  %16 = call i32* @cmsCreateProfilePlaceholder(i32* %15)
  store i32* %16, i32** %4, align 8
  %17 = load i32*, i32** %4, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %0
  %20 = call i32 @Fail(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %117

21:                                               ; preds = %0
  %22 = load i32*, i32** %3, align 8
  %23 = load i32*, i32** %4, align 8
  %24 = load i32, i32* @SigInt, align 4
  %25 = call i32 @cmsWriteTag(i32* %22, i32* %23, i32 %24, i32* %5)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %21
  %28 = call i32 @Fail(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  br label %117

29:                                               ; preds = %21
  %30 = load i32*, i32** %3, align 8
  %31 = load i32*, i32** %4, align 8
  %32 = call i32 @cmsSaveProfileToMem(i32* %30, i32* %31, i8* null, i32* %9)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %29
  %36 = call i32 @Fail(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  br label %117

37:                                               ; preds = %29
  %38 = load i32, i32* %9, align 4
  %39 = call i64 @malloc(i32 %38)
  %40 = inttoptr i64 %39 to i8*
  store i8* %40, i8** %7, align 8
  %41 = load i8*, i8** %7, align 8
  %42 = icmp eq i8* %41, null
  br i1 %42, label %43, label %45

43:                                               ; preds = %37
  %44 = call i32 @Fail(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  br label %117

45:                                               ; preds = %37
  %46 = load i32*, i32** %3, align 8
  %47 = load i32*, i32** %4, align 8
  %48 = load i8*, i8** %7, align 8
  %49 = call i32 @cmsSaveProfileToMem(i32* %46, i32* %47, i8* %48, i32* %9)
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* %6, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %54, label %52

52:                                               ; preds = %45
  %53 = call i32 @Fail(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  br label %117

54:                                               ; preds = %45
  %55 = load i32*, i32** %3, align 8
  %56 = load i32*, i32** %4, align 8
  %57 = call i32 @cmsCloseProfile(i32* %55, i32* %56)
  %58 = load i32*, i32** %3, align 8
  %59 = call i32 @cmsSetLogErrorHandler(i32* %58, i32* null)
  %60 = load i32*, i32** %3, align 8
  %61 = load i8*, i8** %7, align 8
  %62 = load i32, i32* %9, align 4
  %63 = call i32* @cmsOpenProfileFromMem(i32* %60, i8* %61, i32 %62)
  store i32* %63, i32** %4, align 8
  %64 = load i32*, i32** %4, align 8
  %65 = icmp eq i32* %64, null
  br i1 %65, label %66, label %68

66:                                               ; preds = %54
  %67 = call i32 @Fail(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0))
  br label %117

68:                                               ; preds = %54
  %69 = load i32*, i32** %3, align 8
  %70 = load i32*, i32** %4, align 8
  %71 = load i32, i32* @SigInt, align 4
  %72 = call i64 @cmsReadTag(i32* %69, i32* %70, i32 %71)
  %73 = inttoptr i64 %72 to i32*
  store i32* %73, i32** %8, align 8
  %74 = load i32*, i32** %8, align 8
  %75 = icmp ne i32* %74, null
  br i1 %75, label %76, label %78

76:                                               ; preds = %68
  %77 = call i32 @Fail(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0))
  br label %117

78:                                               ; preds = %68
  %79 = load i32*, i32** %3, align 8
  %80 = load i32*, i32** %4, align 8
  %81 = call i32 @cmsCloseProfile(i32* %79, i32* %80)
  %82 = load i32*, i32** %3, align 8
  %83 = call i32 @ResetFatalError(i32* %82)
  %84 = load i32*, i32** %3, align 8
  %85 = load i8*, i8** %7, align 8
  %86 = load i32, i32* %9, align 4
  %87 = call i32* @cmsOpenProfileFromMem(i32* %84, i8* %85, i32 %86)
  store i32* %87, i32** %4, align 8
  %88 = load i32*, i32** %4, align 8
  %89 = icmp eq i32* %88, null
  br i1 %89, label %90, label %92

90:                                               ; preds = %78
  %91 = call i32 @Fail(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0))
  br label %117

92:                                               ; preds = %78
  %93 = load i8*, i8** %7, align 8
  %94 = call i32 @free(i8* %93)
  store i8* null, i8** %7, align 8
  %95 = load i32*, i32** %3, align 8
  %96 = load i32*, i32** %4, align 8
  %97 = load i32, i32* @SigInt, align 4
  %98 = call i64 @cmsReadTag(i32* %95, i32* %96, i32 %97)
  %99 = inttoptr i64 %98 to i32*
  store i32* %99, i32** %8, align 8
  %100 = load i32*, i32** %8, align 8
  %101 = icmp eq i32* %100, null
  br i1 %101, label %102, label %104

102:                                              ; preds = %92
  %103 = call i32 @Fail(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.8, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  br label %143

104:                                              ; preds = %92
  %105 = load i32*, i32** %8, align 8
  %106 = load i32, i32* %105, align 4
  %107 = icmp eq i32 %106, 1234
  %108 = zext i1 %107 to i32
  store i32 %108, i32* %6, align 4
  %109 = load i32*, i32** %3, align 8
  %110 = load i32*, i32** %4, align 8
  %111 = call i32 @cmsCloseProfile(i32* %109, i32* %110)
  %112 = load i32*, i32** %2, align 8
  %113 = call i32 @cmsDeleteContext(i32* %112)
  %114 = load i32*, i32** %3, align 8
  %115 = call i32 @cmsDeleteContext(i32* %114)
  %116 = load i32, i32* %6, align 4
  store i32 %116, i32* %1, align 4
  br label %143

117:                                              ; preds = %90, %76, %66, %52, %43, %35, %27, %19
  %118 = load i32*, i32** %4, align 8
  %119 = icmp ne i32* %118, null
  br i1 %119, label %120, label %124

120:                                              ; preds = %117
  %121 = load i32*, i32** %3, align 8
  %122 = load i32*, i32** %4, align 8
  %123 = call i32 @cmsCloseProfile(i32* %121, i32* %122)
  br label %124

124:                                              ; preds = %120, %117
  %125 = load i32*, i32** %2, align 8
  %126 = icmp ne i32* %125, null
  br i1 %126, label %127, label %130

127:                                              ; preds = %124
  %128 = load i32*, i32** %2, align 8
  %129 = call i32 @cmsDeleteContext(i32* %128)
  br label %130

130:                                              ; preds = %127, %124
  %131 = load i32*, i32** %3, align 8
  %132 = icmp ne i32* %131, null
  br i1 %132, label %133, label %136

133:                                              ; preds = %130
  %134 = load i32*, i32** %3, align 8
  %135 = call i32 @cmsDeleteContext(i32* %134)
  br label %136

136:                                              ; preds = %133, %130
  %137 = load i8*, i8** %7, align 8
  %138 = icmp ne i8* %137, null
  br i1 %138, label %139, label %142

139:                                              ; preds = %136
  %140 = load i8*, i8** %7, align 8
  %141 = call i32 @free(i8* %140)
  br label %142

142:                                              ; preds = %139, %136
  store i32 0, i32* %1, align 4
  br label %143

143:                                              ; preds = %142, %104, %102
  %144 = load i32, i32* %1, align 4
  ret i32 %144
}

declare dso_local i32* @WatchDogContext(i32*) #1

declare dso_local i32 @cmsPlugin(i32*, i32*) #1

declare dso_local i32* @DupContext(i32*, i32*) #1

declare dso_local i32* @cmsCreateProfilePlaceholder(i32*) #1

declare dso_local i32 @Fail(i8*) #1

declare dso_local i32 @cmsWriteTag(i32*, i32*, i32, i32*) #1

declare dso_local i32 @cmsSaveProfileToMem(i32*, i32*, i8*, i32*) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @cmsCloseProfile(i32*, i32*) #1

declare dso_local i32 @cmsSetLogErrorHandler(i32*, i32*) #1

declare dso_local i32* @cmsOpenProfileFromMem(i32*, i8*, i32) #1

declare dso_local i64 @cmsReadTag(i32*, i32*, i32) #1

declare dso_local i32 @ResetFatalError(i32*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @cmsDeleteContext(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
