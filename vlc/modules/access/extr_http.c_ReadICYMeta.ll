; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/extr_http.c_ReadICYMeta.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/extr_http.c_ReadICYMeta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i8* }

@VLC_EGENERIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"StreamTitle=\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"New Icy-Title=%s\00", align 1
@vlc_meta_NowPlaying = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*)* @ReadICYMeta to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ReadICYMeta(%struct.TYPE_6__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [3 x i8], align 1
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  store %struct.TYPE_7__* %17, %struct.TYPE_7__** %4, align 8
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %19 = call i64 @ReadData(%struct.TYPE_6__* %18, i32* %8, i32* %5, i32 1)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %1
  %22 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %22, i32* %2, align 4
  br label %172

23:                                               ; preds = %1
  %24 = load i32, i32* %8, align 4
  %25 = icmp ne i32 %24, 1
  br i1 %25, label %26, label %28

26:                                               ; preds = %23
  %27 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %27, i32* %2, align 4
  br label %172

28:                                               ; preds = %23
  %29 = load i32, i32* %5, align 4
  %30 = shl i32 %29, 4
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  %32 = add nsw i32 %31, 1
  %33 = call i8* @malloc(i32 %32)
  store i8* %33, i8** %7, align 8
  store i32 0, i32* %8, align 4
  br label %34

34:                                               ; preds = %57, %28
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* %9, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %61

38:                                               ; preds = %34
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %40 = load i8*, i8** %7, align 8
  %41 = load i32, i32* %8, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8, i8* %40, i64 %42
  %44 = bitcast i8* %43 to i32*
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* %8, align 4
  %47 = sub nsw i32 %45, %46
  %48 = call i64 @ReadData(%struct.TYPE_6__* %39, i32* %10, i32* %44, i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %38
  %51 = load i32, i32* %10, align 4
  %52 = icmp sle i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %50, %38
  %54 = load i8*, i8** %7, align 8
  %55 = call i32 @free(i8* %54)
  %56 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %56, i32* %2, align 4
  br label %172

57:                                               ; preds = %50
  %58 = load i32, i32* %10, align 4
  %59 = load i32, i32* %8, align 4
  %60 = add nsw i32 %59, %58
  store i32 %60, i32* %8, align 4
  br label %34

61:                                               ; preds = %34
  %62 = load i8*, i8** %7, align 8
  %63 = load i32, i32* %8, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8, i8* %62, i64 %64
  store i8 0, i8* %65, align 1
  %66 = load i8*, i8** %7, align 8
  %67 = call i8* @strcasestr(i8* %66, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store i8* %67, i8** %6, align 8
  %68 = load i8*, i8** %6, align 8
  %69 = icmp ne i8* %68, null
  br i1 %69, label %70, label %168

70:                                               ; preds = %61
  %71 = call i32 @strlen(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %72 = load i8*, i8** %6, align 8
  %73 = sext i32 %71 to i64
  %74 = getelementptr inbounds i8, i8* %72, i64 %73
  store i8* %74, i8** %6, align 8
  %75 = load i8*, i8** %6, align 8
  %76 = load i8, i8* %75, align 1
  %77 = sext i8 %76 to i32
  %78 = icmp eq i32 %77, 39
  br i1 %78, label %84, label %79

79:                                               ; preds = %70
  %80 = load i8*, i8** %6, align 8
  %81 = load i8, i8* %80, align 1
  %82 = sext i8 %81 to i32
  %83 = icmp eq i32 %82, 34
  br i1 %83, label %84, label %109

84:                                               ; preds = %79, %70
  %85 = getelementptr inbounds [3 x i8], [3 x i8]* %11, i64 0, i64 0
  %86 = load i8*, i8** %6, align 8
  %87 = getelementptr inbounds i8, i8* %86, i64 0
  %88 = load i8, i8* %87, align 1
  store i8 %88, i8* %85, align 1
  %89 = getelementptr inbounds i8, i8* %85, i64 1
  store i8 59, i8* %89, align 1
  %90 = getelementptr inbounds i8, i8* %89, i64 1
  store i8 0, i8* %90, align 1
  %91 = load i8*, i8** %6, align 8
  %92 = getelementptr inbounds i8, i8* %91, i64 1
  %93 = getelementptr inbounds [3 x i8], [3 x i8]* %11, i64 0, i64 0
  %94 = call i8* @strstr(i8* %92, i8* %93)
  store i8* %94, i8** %12, align 8
  %95 = load i8*, i8** %12, align 8
  %96 = icmp ne i8* %95, null
  br i1 %96, label %101, label %97

97:                                               ; preds = %84
  %98 = load i8*, i8** %6, align 8
  %99 = getelementptr inbounds i8, i8* %98, i64 1
  %100 = call i8* @strchr(i8* %99, i8 signext 59)
  store i8* %100, i8** %12, align 8
  br label %101

101:                                              ; preds = %97, %84
  %102 = load i8*, i8** %12, align 8
  %103 = icmp ne i8* %102, null
  br i1 %103, label %104, label %106

104:                                              ; preds = %101
  %105 = load i8*, i8** %12, align 8
  store i8 0, i8* %105, align 1
  br label %106

106:                                              ; preds = %104, %101
  %107 = load i8*, i8** %6, align 8
  %108 = getelementptr inbounds i8, i8* %107, i32 1
  store i8* %108, i8** %6, align 8
  br label %117

109:                                              ; preds = %79
  %110 = load i8*, i8** %6, align 8
  %111 = call i8* @strchr(i8* %110, i8 signext 59)
  store i8* %111, i8** %13, align 8
  %112 = load i8*, i8** %13, align 8
  %113 = icmp ne i8* %112, null
  br i1 %113, label %114, label %116

114:                                              ; preds = %109
  %115 = load i8*, i8** %13, align 8
  store i8 0, i8* %115, align 1
  br label %116

116:                                              ; preds = %114, %109
  br label %117

117:                                              ; preds = %116, %106
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 0
  %120 = load i8*, i8** %119, align 8
  %121 = icmp ne i8* %120, null
  br i1 %121, label %122, label %129

122:                                              ; preds = %117
  %123 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 0
  %125 = load i8*, i8** %124, align 8
  %126 = load i8*, i8** %6, align 8
  %127 = call i64 @strcmp(i8* %125, i8* %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %167

129:                                              ; preds = %122, %117
  %130 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 0
  %132 = load i8*, i8** %131, align 8
  %133 = call i32 @free(i8* %132)
  %134 = load i8*, i8** %6, align 8
  %135 = call i8* @strdup(i8* %134)
  store i8* %135, i8** %14, align 8
  %136 = load i8*, i8** %14, align 8
  %137 = call i8* @EnsureUTF8(i8* %136)
  %138 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %138, i32 0, i32 0
  store i8* %137, i8** %139, align 8
  %140 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %141 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %140, i32 0, i32 0
  %142 = load i8*, i8** %141, align 8
  %143 = icmp ne i8* %142, null
  br i1 %143, label %147, label %144

144:                                              ; preds = %129
  %145 = load i8*, i8** %14, align 8
  %146 = call i32 @free(i8* %145)
  br label %147

147:                                              ; preds = %144, %129
  %148 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %149 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %150 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %149, i32 0, i32 0
  %151 = load i8*, i8** %150, align 8
  %152 = call i32 @msg_Dbg(%struct.TYPE_6__* %148, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8* %151)
  %153 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %166

157:                                              ; preds = %147
  %158 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %159 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = load i32, i32* @vlc_meta_NowPlaying, align 4
  %162 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %163 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %162, i32 0, i32 0
  %164 = load i8*, i8** %163, align 8
  %165 = call i32 @input_item_SetMeta(i64 %160, i32 %161, i8* %164)
  br label %166

166:                                              ; preds = %157, %147
  br label %167

167:                                              ; preds = %166, %122
  br label %168

168:                                              ; preds = %167, %61
  %169 = load i8*, i8** %7, align 8
  %170 = call i32 @free(i8* %169)
  %171 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %171, i32* %2, align 4
  br label %172

172:                                              ; preds = %168, %53, %26, %21
  %173 = load i32, i32* %2, align 4
  ret i32 %173
}

declare dso_local i64 @ReadData(%struct.TYPE_6__*, i32*, i32*, i32) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @strcasestr(i8*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i8* @EnsureUTF8(i8*) #1

declare dso_local i32 @msg_Dbg(%struct.TYPE_6__*, i8*, i8*) #1

declare dso_local i32 @input_item_SetMeta(i64, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
