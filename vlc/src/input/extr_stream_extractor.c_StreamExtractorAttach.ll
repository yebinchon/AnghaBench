; ModuleID = '/home/carl/AnghaBench/vlc/src/input/extr_stream_extractor.c_StreamExtractorAttach.c'
source_filename = "/home/carl/AnghaBench/vlc/src/input/extr_stream_extractor.c_StreamExtractorAttach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stream_extractor_private = type { i32*, i32, i8*, %struct.TYPE_2__, i32*, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32*, i32 }

@.str = private unnamed_addr constant [17 x i8] c"stream_extractor\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"stream_directory\00", align 1
@VLC_ENOMEM = common dso_local global i32 0, align 4
@se_InitStream = common dso_local global i32 0, align 4
@se_CleanStream = common dso_local global i32* null, align 8
@se_InitDirectory = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4
@VLC_EGENERIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32**, i8*, i8*)* @StreamExtractorAttach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @StreamExtractorAttach(i32** %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.stream_extractor_private*, align 8
  store i32** %0, i32*** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = icmp ne i8* %11, null
  %13 = zext i1 %12 to i32
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp ne i32 %14, 0
  %16 = zext i1 %15 to i64
  %17 = select i1 %15, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0)
  store i8* %17, i8** %9, align 8
  %18 = load i32**, i32*** %5, align 8
  %19 = load i32*, i32** %18, align 8
  %20 = call i32 @vlc_object_parent(i32* %19)
  %21 = load i8*, i8** %9, align 8
  %22 = call %struct.stream_extractor_private* @vlc_custom_create(i32 %20, i32 72, i8* %21)
  store %struct.stream_extractor_private* %22, %struct.stream_extractor_private** %10, align 8
  %23 = load %struct.stream_extractor_private*, %struct.stream_extractor_private** %10, align 8
  %24 = icmp ne %struct.stream_extractor_private* %23, null
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  %27 = call i64 @unlikely(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %3
  %30 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %30, i32* %4, align 4
  br label %113

31:                                               ; preds = %3
  %32 = load i32, i32* %8, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %67

34:                                               ; preds = %31
  %35 = load %struct.stream_extractor_private*, %struct.stream_extractor_private** %10, align 8
  %36 = getelementptr inbounds %struct.stream_extractor_private, %struct.stream_extractor_private* %35, i32 0, i32 6
  %37 = call i8* @VLC_OBJECT(%struct.TYPE_2__* %36)
  %38 = load %struct.stream_extractor_private*, %struct.stream_extractor_private** %10, align 8
  %39 = getelementptr inbounds %struct.stream_extractor_private, %struct.stream_extractor_private* %38, i32 0, i32 2
  store i8* %37, i8** %39, align 8
  %40 = load i32, i32* @se_InitStream, align 4
  %41 = load %struct.stream_extractor_private*, %struct.stream_extractor_private** %10, align 8
  %42 = getelementptr inbounds %struct.stream_extractor_private, %struct.stream_extractor_private* %41, i32 0, i32 5
  store i32 %40, i32* %42, align 8
  %43 = load i32*, i32** @se_CleanStream, align 8
  %44 = load %struct.stream_extractor_private*, %struct.stream_extractor_private** %10, align 8
  %45 = getelementptr inbounds %struct.stream_extractor_private, %struct.stream_extractor_private* %44, i32 0, i32 4
  store i32* %43, i32** %45, align 8
  %46 = load i32**, i32*** %5, align 8
  %47 = load i32*, i32** %46, align 8
  %48 = load %struct.stream_extractor_private*, %struct.stream_extractor_private** %10, align 8
  %49 = getelementptr inbounds %struct.stream_extractor_private, %struct.stream_extractor_private* %48, i32 0, i32 6
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  store i32* %47, i32** %50, align 8
  %51 = load i8*, i8** %6, align 8
  %52 = call i32 @strdup(i8* %51)
  %53 = load %struct.stream_extractor_private*, %struct.stream_extractor_private** %10, align 8
  %54 = getelementptr inbounds %struct.stream_extractor_private, %struct.stream_extractor_private* %53, i32 0, i32 6
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  store i32 %52, i32* %55, align 8
  %56 = load %struct.stream_extractor_private*, %struct.stream_extractor_private** %10, align 8
  %57 = getelementptr inbounds %struct.stream_extractor_private, %struct.stream_extractor_private* %56, i32 0, i32 6
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = icmp ne i32 %59, 0
  %61 = xor i1 %60, true
  %62 = zext i1 %61 to i32
  %63 = call i64 @unlikely(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %34
  br label %109

66:                                               ; preds = %34
  br label %83

67:                                               ; preds = %31
  %68 = load %struct.stream_extractor_private*, %struct.stream_extractor_private** %10, align 8
  %69 = getelementptr inbounds %struct.stream_extractor_private, %struct.stream_extractor_private* %68, i32 0, i32 3
  %70 = call i8* @VLC_OBJECT(%struct.TYPE_2__* %69)
  %71 = load %struct.stream_extractor_private*, %struct.stream_extractor_private** %10, align 8
  %72 = getelementptr inbounds %struct.stream_extractor_private, %struct.stream_extractor_private* %71, i32 0, i32 2
  store i8* %70, i8** %72, align 8
  %73 = load i32, i32* @se_InitDirectory, align 4
  %74 = load %struct.stream_extractor_private*, %struct.stream_extractor_private** %10, align 8
  %75 = getelementptr inbounds %struct.stream_extractor_private, %struct.stream_extractor_private* %74, i32 0, i32 5
  store i32 %73, i32* %75, align 8
  %76 = load %struct.stream_extractor_private*, %struct.stream_extractor_private** %10, align 8
  %77 = getelementptr inbounds %struct.stream_extractor_private, %struct.stream_extractor_private* %76, i32 0, i32 4
  store i32* null, i32** %77, align 8
  %78 = load i32**, i32*** %5, align 8
  %79 = load i32*, i32** %78, align 8
  %80 = load %struct.stream_extractor_private*, %struct.stream_extractor_private** %10, align 8
  %81 = getelementptr inbounds %struct.stream_extractor_private, %struct.stream_extractor_private* %80, i32 0, i32 3
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  store i32* %79, i32** %82, align 8
  br label %83

83:                                               ; preds = %67, %66
  %84 = load %struct.stream_extractor_private*, %struct.stream_extractor_private** %10, align 8
  %85 = getelementptr inbounds %struct.stream_extractor_private, %struct.stream_extractor_private* %84, i32 0, i32 2
  %86 = load i8*, i8** %85, align 8
  %87 = load i8*, i8** %9, align 8
  %88 = load i8*, i8** %7, align 8
  %89 = call i32 @module_need(i8* %86, i8* %87, i8* %88, i32 1)
  %90 = load %struct.stream_extractor_private*, %struct.stream_extractor_private** %10, align 8
  %91 = getelementptr inbounds %struct.stream_extractor_private, %struct.stream_extractor_private* %90, i32 0, i32 1
  store i32 %89, i32* %91, align 8
  %92 = load %struct.stream_extractor_private*, %struct.stream_extractor_private** %10, align 8
  %93 = getelementptr inbounds %struct.stream_extractor_private, %struct.stream_extractor_private* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %102

96:                                               ; preds = %83
  %97 = load %struct.stream_extractor_private*, %struct.stream_extractor_private** %10, align 8
  %98 = load i32**, i32*** %5, align 8
  %99 = load i32*, i32** %98, align 8
  %100 = call i64 @se_AttachWrapper(%struct.stream_extractor_private* %97, i32* %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %96, %83
  br label %109

103:                                              ; preds = %96
  %104 = load %struct.stream_extractor_private*, %struct.stream_extractor_private** %10, align 8
  %105 = getelementptr inbounds %struct.stream_extractor_private, %struct.stream_extractor_private* %104, i32 0, i32 0
  %106 = load i32*, i32** %105, align 8
  %107 = load i32**, i32*** %5, align 8
  store i32* %106, i32** %107, align 8
  %108 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %108, i32* %4, align 4
  br label %113

109:                                              ; preds = %102, %65
  %110 = load %struct.stream_extractor_private*, %struct.stream_extractor_private** %10, align 8
  %111 = call i32 @se_Release(%struct.stream_extractor_private* %110)
  %112 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %112, i32* %4, align 4
  br label %113

113:                                              ; preds = %109, %103, %29
  %114 = load i32, i32* %4, align 4
  ret i32 %114
}

declare dso_local %struct.stream_extractor_private* @vlc_custom_create(i32, i32, i8*) #1

declare dso_local i32 @vlc_object_parent(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i8* @VLC_OBJECT(%struct.TYPE_2__*) #1

declare dso_local i32 @strdup(i8*) #1

declare dso_local i32 @module_need(i8*, i8*, i8*, i32) #1

declare dso_local i64 @se_AttachWrapper(%struct.stream_extractor_private*, i32*) #1

declare dso_local i32 @se_Release(%struct.stream_extractor_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
