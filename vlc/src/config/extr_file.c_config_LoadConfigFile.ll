; ModuleID = '/home/carl/AnghaBench/vlc/src/config/extr_file.c_config_LoadConfigFile.c'
source_filename = "/home/carl/AnghaBench/vlc/src/config/extr_file.c_config_LoadConfigFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__, i32, i64, i64 }
%struct.TYPE_8__ = type { float, i8*, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@VLC_EGENERIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"\EF\BB\BF\00", align 1
@LC_NUMERIC_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@config_lock = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"#[\00", align 1
@errno = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"Integer value (%s) for %s: %s\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"error reading configuration: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @config_LoadConfigFile(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca [3 x i8], align 1
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.TYPE_9__*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %16 = load i32*, i32** %3, align 8
  %17 = call i32* @config_OpenConfigFile(i32* %16)
  store i32* %17, i32** %4, align 8
  %18 = load i32*, i32** %4, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %1
  %21 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %21, i32* %2, align 4
  br label %172

22:                                               ; preds = %1
  %23 = getelementptr inbounds [3 x i8], [3 x i8]* %5, i64 0, i64 0
  %24 = load i32*, i32** %4, align 8
  %25 = call i32 @fread(i8* %23, i32 1, i32 3, i32* %24)
  %26 = icmp ne i32 %25, 3
  br i1 %26, label %31, label %27

27:                                               ; preds = %22
  %28 = getelementptr inbounds [3 x i8], [3 x i8]* %5, i64 0, i64 0
  %29 = call i64 @memcmp(i8* %28, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 3)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %27, %22
  %32 = load i32*, i32** %4, align 8
  %33 = call i32 @rewind(i32* %32)
  br label %34

34:                                               ; preds = %31, %27
  store i8* null, i8** %6, align 8
  %35 = load i32, i32* @LC_NUMERIC_MASK, align 4
  %36 = call i64 @newlocale(i32 %35, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32* null)
  store i64 %36, i64* %9, align 8
  %37 = load i64, i64* %9, align 8
  %38 = call i64 @uselocale(i64 %37)
  store i64 %38, i64* %10, align 8
  %39 = call i32 @vlc_rwlock_wrlock(i32* @config_lock)
  br label %40

40:                                               ; preds = %146, %81, %75, %69, %62, %55, %34
  %41 = load i32*, i32** %4, align 8
  %42 = call i32 @getline(i8** %6, i64* %7, i32* %41)
  store i32 %42, i32* %8, align 4
  %43 = icmp ne i32 %42, -1
  br i1 %43, label %44, label %147

44:                                               ; preds = %40
  %45 = load i8*, i8** %6, align 8
  %46 = load i32, i32* %8, align 4
  %47 = sub nsw i32 %46, 1
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8, i8* %45, i64 %48
  store i8 0, i8* %49, align 1
  %50 = load i8*, i8** %6, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 0
  %52 = load i8, i8* %51, align 1
  %53 = call i32* @memchr(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8 signext %52, i32 3)
  %54 = icmp ne i32* %53, null
  br i1 %54, label %55, label %56

55:                                               ; preds = %44
  br label %40

56:                                               ; preds = %44
  %57 = load i8*, i8** %6, align 8
  store i8* %57, i8** %11, align 8
  %58 = load i8*, i8** %6, align 8
  %59 = call i8* @strchr(i8* %58, i8 signext 61)
  store i8* %59, i8** %12, align 8
  %60 = load i8*, i8** %12, align 8
  %61 = icmp eq i8* %60, null
  br i1 %61, label %62, label %63

62:                                               ; preds = %56
  br label %40

63:                                               ; preds = %56
  %64 = load i8*, i8** %12, align 8
  store i8 0, i8* %64, align 1
  %65 = load i8*, i8** %11, align 8
  %66 = call %struct.TYPE_9__* @config_FindConfig(i8* %65)
  store %struct.TYPE_9__* %66, %struct.TYPE_9__** %13, align 8
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %68 = icmp eq %struct.TYPE_9__* %67, null
  br i1 %68, label %69, label %70

69:                                               ; preds = %63
  br label %40

70:                                               ; preds = %63
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 5
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %70
  br label %40

76:                                               ; preds = %70
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 4
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %76
  br label %40

82:                                               ; preds = %76
  %83 = load i8*, i8** %12, align 8
  %84 = getelementptr inbounds i8, i8* %83, i64 1
  store i8* %84, i8** %14, align 8
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @CONFIG_CLASS(i32 %87)
  switch i32 %88, label %135 [
    i32 130, label %89
    i32 128, label %89
    i32 129, label %123
  ]

89:                                               ; preds = %82, %82
  store i32 0, i32* @errno, align 4
  %90 = load i8*, i8** %14, align 8
  %91 = call i32 @vlc_strtoi(i8* %90)
  store i32 %91, i32* %15, align 4
  %92 = load i32, i32* %15, align 4
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 2
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = icmp sgt i32 %92, %96
  br i1 %97, label %105, label %98

98:                                               ; preds = %89
  %99 = load i32, i32* %15, align 4
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = icmp slt i32 %99, %103
  br i1 %104, label %105, label %107

105:                                              ; preds = %98, %89
  %106 = load i32, i32* @ERANGE, align 4
  store i32 %106, i32* @errno, align 4
  br label %107

107:                                              ; preds = %105, %98
  %108 = load i32, i32* @errno, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %117

110:                                              ; preds = %107
  %111 = load i32*, i32** %3, align 8
  %112 = load i8*, i8** %14, align 8
  %113 = load i8*, i8** %11, align 8
  %114 = load i32, i32* @errno, align 4
  %115 = call i32 @vlc_strerror_c(i32 %114)
  %116 = call i32 @msg_Warn(i32* %111, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i8* %112, i8* %113, i32 %115)
  br label %122

117:                                              ; preds = %107
  %118 = load i32, i32* %15, align 4
  %119 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 2
  store i32 %118, i32* %121, align 8
  br label %122

122:                                              ; preds = %117, %110
  br label %146

123:                                              ; preds = %82
  %124 = load i8*, i8** %14, align 8
  %125 = load i8, i8* %124, align 1
  %126 = icmp ne i8 %125, 0
  br i1 %126, label %128, label %127

127:                                              ; preds = %123
  br label %146

128:                                              ; preds = %123
  %129 = load i8*, i8** %14, align 8
  %130 = call i64 @atof(i8* %129)
  %131 = sitofp i64 %130 to float
  %132 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 0, i32 0
  store float %131, float* %134, align 8
  br label %146

135:                                              ; preds = %82
  %136 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %137 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 1
  %139 = load i8*, i8** %138, align 8
  %140 = call i32 @free(i8* %139)
  %141 = load i8*, i8** %14, align 8
  %142 = call i8* @strdupnull(i8* %141)
  %143 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %144 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %144, i32 0, i32 1
  store i8* %142, i8** %145, align 8
  br label %146

146:                                              ; preds = %135, %128, %127, %122
  br label %40

147:                                              ; preds = %40
  %148 = call i32 @vlc_rwlock_unlock(i32* @config_lock)
  %149 = load i8*, i8** %6, align 8
  %150 = call i32 @free(i8* %149)
  %151 = load i32*, i32** %4, align 8
  %152 = call i64 @ferror(i32* %151)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %161

154:                                              ; preds = %147
  %155 = load i32*, i32** %3, align 8
  %156 = load i32, i32* @errno, align 4
  %157 = call i32 @vlc_strerror_c(i32 %156)
  %158 = call i32 @msg_Err(i32* %155, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i32 %157)
  %159 = load i32*, i32** %4, align 8
  %160 = call i32 @clearerr(i32* %159)
  br label %161

161:                                              ; preds = %154, %147
  %162 = load i32*, i32** %4, align 8
  %163 = call i32 @fclose(i32* %162)
  %164 = load i64, i64* %9, align 8
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %171

166:                                              ; preds = %161
  %167 = load i64, i64* %10, align 8
  %168 = call i64 @uselocale(i64 %167)
  %169 = load i64, i64* %9, align 8
  %170 = call i32 @freelocale(i64 %169)
  br label %171

171:                                              ; preds = %166, %161
  store i32 0, i32* %2, align 4
  br label %172

172:                                              ; preds = %171, %20
  %173 = load i32, i32* %2, align 4
  ret i32 %173
}

declare dso_local i32* @config_OpenConfigFile(i32*) #1

declare dso_local i32 @fread(i8*, i32, i32, i32*) #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @rewind(i32*) #1

declare dso_local i64 @newlocale(i32, i8*, i32*) #1

declare dso_local i64 @uselocale(i64) #1

declare dso_local i32 @vlc_rwlock_wrlock(i32*) #1

declare dso_local i32 @getline(i8**, i64*, i32*) #1

declare dso_local i32* @memchr(i8*, i8 signext, i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local %struct.TYPE_9__* @config_FindConfig(i8*) #1

declare dso_local i32 @CONFIG_CLASS(i32) #1

declare dso_local i32 @vlc_strtoi(i8*) #1

declare dso_local i32 @msg_Warn(i32*, i8*, i8*, i8*, i32) #1

declare dso_local i32 @vlc_strerror_c(i32) #1

declare dso_local i64 @atof(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @strdupnull(i8*) #1

declare dso_local i32 @vlc_rwlock_unlock(i32*) #1

declare dso_local i64 @ferror(i32*) #1

declare dso_local i32 @msg_Err(i32*, i8*, i32) #1

declare dso_local i32 @clearerr(i32*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @freelocale(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
