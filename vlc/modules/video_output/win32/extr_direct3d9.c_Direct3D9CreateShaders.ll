; ModuleID = '/home/carl/AnghaBench/vlc/modules/video_output/win32/extr_direct3d9.c_Direct3D9CreateShaders.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/video_output/win32/extr_direct3d9.c_Direct3D9CreateShaders.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i8*, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }

@VLC_EGENERIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"direct3d9-shader\00", align 1
@VLC_SUCCESS = common dso_local global i32 0, align 4
@BUILTIN_SHADERS_COUNT = common dso_local global i64 0, align 8
@builtin_shaders = common dso_local global %struct.TYPE_10__* null, align 8
@SELECTED_SHADER_FILE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"direct3d9-shader-file\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@SEEK_END = common dso_local global i32 0, align 4
@MAX_SHADER_FILE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*)* @Direct3D9CreateShaders to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Direct3D9CreateShaders(%struct.TYPE_8__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  store %struct.TYPE_9__* %16, %struct.TYPE_9__** %4, align 8
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %1
  %22 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %22, i32* %2, align 4
  br label %155

23:                                               ; preds = %1
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %25 = call i8* @var_InheritString(%struct.TYPE_8__* %24, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  store i8* %25, i8** %5, align 8
  %26 = load i8*, i8** %5, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %23
  %29 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %29, i32* %2, align 4
  br label %155

30:                                               ; preds = %23
  store i8* null, i8** %6, align 8
  store i8* null, i8** %7, align 8
  store i32* null, i32** %8, align 8
  store i64 0, i64* %9, align 8
  br label %31

31:                                               ; preds = %51, %30
  %32 = load i64, i64* %9, align 8
  %33 = load i64, i64* @BUILTIN_SHADERS_COUNT, align 8
  %34 = icmp ult i64 %32, %33
  br i1 %34, label %35, label %54

35:                                               ; preds = %31
  %36 = load i8*, i8** %5, align 8
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** @builtin_shaders, align 8
  %38 = load i64, i64* %9, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = call i64 @strcmp(i8* %36, i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %50, label %44

44:                                               ; preds = %35
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** @builtin_shaders, align 8
  %46 = load i64, i64* %9, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  store i8* %49, i8** %6, align 8
  br label %54

50:                                               ; preds = %35
  br label %51

51:                                               ; preds = %50
  %52 = load i64, i64* %9, align 8
  %53 = add i64 %52, 1
  store i64 %53, i64* %9, align 8
  br label %31

54:                                               ; preds = %44, %31
  %55 = load i8*, i8** %6, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %57, label %67

57:                                               ; preds = %54
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %59 = load i8*, i8** %6, align 8
  %60 = load i8*, i8** %6, align 8
  %61 = call i64 @strlen(i8* %60)
  %62 = call i32 @Direct3D9CompileShader(%struct.TYPE_8__* %58, i8* %59, i64 %61)
  store i32 %62, i32* %10, align 4
  %63 = load i32, i32* %10, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %57
  br label %141

66:                                               ; preds = %57
  br label %133

67:                                               ; preds = %54
  %68 = load i8*, i8** %5, align 8
  %69 = load i32, i32* @SELECTED_SHADER_FILE, align 4
  %70 = call i64 @strcmp(i8* %68, i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %67
  br label %141

73:                                               ; preds = %67
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %75 = call i8* @var_InheritString(%struct.TYPE_8__* %74, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  store i8* %75, i8** %11, align 8
  %76 = load i8*, i8** %11, align 8
  %77 = icmp ne i8* %76, null
  br i1 %77, label %78, label %82

78:                                               ; preds = %73
  %79 = load i8*, i8** %11, align 8
  %80 = load i8, i8* %79, align 1
  %81 = icmp ne i8 %80, 0
  br i1 %81, label %85, label %82

82:                                               ; preds = %78, %73
  %83 = load i8*, i8** %11, align 8
  %84 = call i32 @free(i8* %83)
  br label %141

85:                                               ; preds = %78
  %86 = load i8*, i8** %11, align 8
  %87 = call i32* @vlc_fopen(i8* %86, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  store i32* %87, i32** %8, align 8
  %88 = load i32*, i32** %8, align 8
  %89 = icmp ne i32* %88, null
  br i1 %89, label %91, label %90

90:                                               ; preds = %85
  br label %141

91:                                               ; preds = %85
  %92 = load i32*, i32** %8, align 8
  %93 = load i32, i32* @SEEK_END, align 4
  %94 = call i32 @fseek(i32* %92, i32 0, i32 %93)
  store i32 %94, i32* %12, align 4
  %95 = load i32, i32* %12, align 4
  %96 = icmp eq i32 %95, -1
  br i1 %96, label %97, label %98

97:                                               ; preds = %91
  br label %141

98:                                               ; preds = %91
  %99 = load i32*, i32** %8, align 8
  %100 = call i64 @ftell(i32* %99)
  store i64 %100, i64* %13, align 8
  %101 = load i64, i64* %13, align 8
  %102 = icmp eq i64 %101, -1
  br i1 %102, label %107, label %103

103:                                              ; preds = %98
  %104 = load i64, i64* %13, align 8
  %105 = load i64, i64* @MAX_SHADER_FILE_SIZE, align 8
  %106 = icmp sge i64 %104, %105
  br i1 %106, label %107, label %108

107:                                              ; preds = %103, %98
  br label %141

108:                                              ; preds = %103
  %109 = load i32*, i32** %8, align 8
  %110 = call i32 @rewind(i32* %109)
  %111 = load i64, i64* %13, align 8
  %112 = call i8* @vlc_alloc(i64 %111, i32 1)
  store i8* %112, i8** %7, align 8
  %113 = load i8*, i8** %7, align 8
  %114 = icmp ne i8* %113, null
  br i1 %114, label %116, label %115

115:                                              ; preds = %108
  br label %141

116:                                              ; preds = %108
  %117 = load i8*, i8** %7, align 8
  %118 = load i64, i64* %13, align 8
  %119 = load i32*, i32** %8, align 8
  %120 = call i32 @fread(i8* %117, i64 %118, i32 1, i32* %119)
  store i32 %120, i32* %12, align 4
  %121 = load i32, i32* %12, align 4
  %122 = icmp ne i32 %121, 1
  br i1 %122, label %123, label %124

123:                                              ; preds = %116
  br label %141

124:                                              ; preds = %116
  %125 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %126 = load i8*, i8** %7, align 8
  %127 = load i64, i64* %13, align 8
  %128 = call i32 @Direct3D9CompileShader(%struct.TYPE_8__* %125, i8* %126, i64 %127)
  store i32 %128, i32* %12, align 4
  %129 = load i32, i32* %12, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %124
  br label %141

132:                                              ; preds = %124
  br label %133

133:                                              ; preds = %132, %66
  %134 = load i8*, i8** %5, align 8
  %135 = call i32 @free(i8* %134)
  %136 = load i8*, i8** %7, align 8
  %137 = call i32 @free(i8* %136)
  %138 = load i32*, i32** %8, align 8
  %139 = call i32 @fclose(i32* %138)
  %140 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %140, i32* %2, align 4
  br label %155

141:                                              ; preds = %131, %123, %115, %107, %97, %90, %82, %72, %65
  %142 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %143 = call i32 @Direct3D9DestroyShaders(%struct.TYPE_8__* %142)
  %144 = load i8*, i8** %5, align 8
  %145 = call i32 @free(i8* %144)
  %146 = load i8*, i8** %7, align 8
  %147 = call i32 @free(i8* %146)
  %148 = load i32*, i32** %8, align 8
  %149 = icmp ne i32* %148, null
  br i1 %149, label %150, label %153

150:                                              ; preds = %141
  %151 = load i32*, i32** %8, align 8
  %152 = call i32 @fclose(i32* %151)
  br label %153

153:                                              ; preds = %150, %141
  %154 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %154, i32* %2, align 4
  br label %155

155:                                              ; preds = %153, %133, %28, %21
  %156 = load i32, i32* %2, align 4
  ret i32 %156
}

declare dso_local i8* @var_InheritString(%struct.TYPE_8__*, i8*) #1

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i32 @Direct3D9CompileShader(%struct.TYPE_8__*, i8*, i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32* @vlc_fopen(i8*, i8*) #1

declare dso_local i32 @fseek(i32*, i32, i32) #1

declare dso_local i64 @ftell(i32*) #1

declare dso_local i32 @rewind(i32*) #1

declare dso_local i8* @vlc_alloc(i64, i32) #1

declare dso_local i32 @fread(i8*, i64, i32, i32*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @Direct3D9DestroyShaders(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
