; ModuleID = '/home/carl/AnghaBench/rofi/source/dialogs/extr_ssh.c_read_known_hosts_file.c'
source_filename = "/home/carl/AnghaBench/rofi/source/dialogs/extr_ssh.c_read_known_hosts_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32* }

@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c", \00", align 1
@errno = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [33 x i8] c"Failed to parse port number: %s.\00", align 1
@.str.4 = private unnamed_addr constant [49 x i8] c"Failed to parse port number: %s, invalid number.\00", align 1
@.str.5 = private unnamed_addr constant [47 x i8] c"Failed to parse port number: %s, out of range.\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"Failed to close hosts file: '%s'\00", align 1
@.str.7 = private unnamed_addr constant [35 x i8] c"Failed to open KnownHostFile: '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_6__* (i8*, %struct.TYPE_6__*, i32*)* @read_known_hosts_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_6__* @read_known_hosts_file(i8* %0, %struct.TYPE_6__* %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %5, align 8
  store i32* %2, i32** %6, align 8
  %19 = load i8*, i8** %4, align 8
  %20 = call i32* @fopen(i8* %19, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %20, i32** %7, align 8
  %21 = load i32*, i32** %7, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %196

23:                                               ; preds = %3
  store i8* null, i8** %8, align 8
  store i64 0, i64* %9, align 8
  br label %24

24:                                               ; preds = %180, %53, %47, %41, %23
  %25 = load i32*, i32** %7, align 8
  %26 = call i64 @getline(i8** %8, i64* %9, i32* %25)
  %27 = icmp sgt i64 %26, 0
  br i1 %27, label %28, label %181

28:                                               ; preds = %24
  %29 = load i8*, i8** %8, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 0
  %31 = call i8* @g_strstrip(i8* %30)
  store i8* %31, i8** %10, align 8
  %32 = load i8*, i8** %10, align 8
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp eq i32 %34, 35
  br i1 %35, label %41, label %36

36:                                               ; preds = %28
  %37 = load i8*, i8** %10, align 8
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp eq i32 %39, 64
  br i1 %40, label %41, label %42

41:                                               ; preds = %36, %28
  br label %24

42:                                               ; preds = %36
  %43 = load i8*, i8** %10, align 8
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp eq i32 %45, 124
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  br label %24

48:                                               ; preds = %42
  %49 = load i8*, i8** %10, align 8
  %50 = call i8* @strstr(i8* %49, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i8* %50, i8** %11, align 8
  %51 = load i8*, i8** %11, align 8
  %52 = icmp eq i8* %51, null
  br i1 %52, label %53, label %54

53:                                               ; preds = %48
  br label %24

54:                                               ; preds = %48
  %55 = load i8*, i8** %11, align 8
  store i8 0, i8* %55, align 1
  %56 = load i8*, i8** %10, align 8
  store i8* %56, i8** %12, align 8
  %57 = call i8* @strsep(i8** %12, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  store i8* %57, i8** %10, align 8
  br label %58

58:                                               ; preds = %178, %54
  %59 = load i8*, i8** %10, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %61, label %180

61:                                               ; preds = %58
  store i32 0, i32* %13, align 4
  %62 = load i8*, i8** %10, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 0
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp eq i32 %65, 91
  br i1 %66, label %67, label %113

67:                                               ; preds = %61
  %68 = load i8*, i8** %10, align 8
  %69 = getelementptr inbounds i8, i8* %68, i32 1
  store i8* %69, i8** %10, align 8
  %70 = load i8*, i8** %10, align 8
  %71 = call i8* @strchr(i8* %70, i8 signext 93)
  store i8* %71, i8** %14, align 8
  %72 = load i8*, i8** %14, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 1
  %74 = load i8, i8* %73, align 1
  %75 = sext i8 %74 to i32
  %76 = icmp eq i32 %75, 58
  br i1 %76, label %77, label %112

77:                                               ; preds = %67
  %78 = load i8*, i8** %14, align 8
  store i8 0, i8* %78, align 1
  store i64 0, i64* @errno, align 8
  store i8* null, i8** %15, align 8
  %79 = load i8*, i8** %14, align 8
  %80 = getelementptr inbounds i8, i8* %79, i64 2
  %81 = call i32 @g_ascii_strtoll(i8* %80, i8** %15, i32 10)
  store i32 %81, i32* %16, align 4
  %82 = load i64, i64* @errno, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %77
  %85 = load i8*, i8** %14, align 8
  %86 = getelementptr inbounds i8, i8* %85, i64 2
  %87 = call i32 @g_warning(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i8* %86)
  br label %111

88:                                               ; preds = %77
  %89 = load i8*, i8** %15, align 8
  %90 = load i8*, i8** %14, align 8
  %91 = getelementptr inbounds i8, i8* %90, i64 2
  %92 = icmp eq i8* %89, %91
  br i1 %92, label %93, label %97

93:                                               ; preds = %88
  %94 = load i8*, i8** %14, align 8
  %95 = getelementptr inbounds i8, i8* %94, i64 2
  %96 = call i32 @g_warning(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.4, i64 0, i64 0), i8* %95)
  br label %110

97:                                               ; preds = %88
  %98 = load i32, i32* %16, align 4
  %99 = icmp slt i32 %98, 0
  br i1 %99, label %103, label %100

100:                                              ; preds = %97
  %101 = load i32, i32* %16, align 4
  %102 = icmp sgt i32 %101, 65535
  br i1 %102, label %103, label %107

103:                                              ; preds = %100, %97
  %104 = load i8*, i8** %14, align 8
  %105 = getelementptr inbounds i8, i8* %104, i64 2
  %106 = call i32 @g_warning(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.5, i64 0, i64 0), i8* %105)
  br label %109

107:                                              ; preds = %100
  %108 = load i32, i32* %16, align 4
  store i32 %108, i32* %13, align 4
  br label %109

109:                                              ; preds = %107, %103
  br label %110

110:                                              ; preds = %109, %93
  br label %111

111:                                              ; preds = %110, %84
  br label %112

112:                                              ; preds = %111, %67
  br label %113

113:                                              ; preds = %112, %61
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  br label %114

114:                                              ; preds = %131, %113
  %115 = load i32, i32* %18, align 4
  %116 = load i32*, i32** %6, align 8
  %117 = load i32, i32* %116, align 4
  %118 = icmp ult i32 %115, %117
  br i1 %118, label %119, label %134

119:                                              ; preds = %114
  %120 = load i8*, i8** %10, align 8
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %122 = load i32, i32* %18, align 4
  %123 = zext i32 %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 1
  %126 = load i32*, i32** %125, align 8
  %127 = call i32 @g_ascii_strcasecmp(i8* %120, i32* %126)
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %130, label %129

129:                                              ; preds = %119
  store i32 1, i32* %17, align 4
  br label %134

130:                                              ; preds = %119
  br label %131

131:                                              ; preds = %130
  %132 = load i32, i32* %18, align 4
  %133 = add i32 %132, 1
  store i32 %133, i32* %18, align 4
  br label %114

134:                                              ; preds = %129, %114
  %135 = load i32, i32* %17, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %178, label %137

137:                                              ; preds = %134
  %138 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %139 = load i32*, i32** %6, align 8
  %140 = load i32, i32* %139, align 4
  %141 = add i32 %140, 2
  %142 = zext i32 %141 to i64
  %143 = mul i64 %142, 16
  %144 = trunc i64 %143 to i32
  %145 = call %struct.TYPE_6__* @g_realloc(%struct.TYPE_6__* %138, i32 %144)
  store %struct.TYPE_6__* %145, %struct.TYPE_6__** %5, align 8
  %146 = load i8*, i8** %10, align 8
  %147 = call i32* @g_strdup(i8* %146)
  %148 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %149 = load i32*, i32** %6, align 8
  %150 = load i32, i32* %149, align 4
  %151 = zext i32 %150 to i64
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i64 %151
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %152, i32 0, i32 1
  store i32* %147, i32** %153, align 8
  %154 = load i32, i32* %13, align 4
  %155 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %156 = load i32*, i32** %6, align 8
  %157 = load i32, i32* %156, align 4
  %158 = zext i32 %157 to i64
  %159 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %155, i64 %158
  %160 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %159, i32 0, i32 0
  store i32 %154, i32* %160, align 8
  %161 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %162 = load i32*, i32** %6, align 8
  %163 = load i32, i32* %162, align 4
  %164 = add i32 %163, 1
  %165 = zext i32 %164 to i64
  %166 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %161, i64 %165
  %167 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %166, i32 0, i32 1
  store i32* null, i32** %167, align 8
  %168 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %169 = load i32*, i32** %6, align 8
  %170 = load i32, i32* %169, align 4
  %171 = add i32 %170, 1
  %172 = zext i32 %171 to i64
  %173 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %168, i64 %172
  %174 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %173, i32 0, i32 0
  store i32 0, i32* %174, align 8
  %175 = load i32*, i32** %6, align 8
  %176 = load i32, i32* %175, align 4
  %177 = add i32 %176, 1
  store i32 %177, i32* %175, align 4
  br label %178

178:                                              ; preds = %137, %134
  %179 = call i8* @strsep(i8** %12, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  store i8* %179, i8** %10, align 8
  br label %58

180:                                              ; preds = %58
  br label %24

181:                                              ; preds = %24
  %182 = load i8*, i8** %8, align 8
  %183 = icmp ne i8* %182, null
  br i1 %183, label %184, label %187

184:                                              ; preds = %181
  %185 = load i8*, i8** %8, align 8
  %186 = call i32 @free(i8* %185)
  br label %187

187:                                              ; preds = %184, %181
  %188 = load i32*, i32** %7, align 8
  %189 = call i64 @fclose(i32* %188)
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %195

191:                                              ; preds = %187
  %192 = load i64, i64* @errno, align 8
  %193 = call i8* @g_strerror(i64 %192)
  %194 = call i32 @g_warning(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0), i8* %193)
  br label %195

195:                                              ; preds = %191, %187
  br label %199

196:                                              ; preds = %3
  %197 = load i8*, i8** %4, align 8
  %198 = call i32 @g_debug(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0), i8* %197)
  br label %199

199:                                              ; preds = %196, %195
  %200 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  ret %struct.TYPE_6__* %200
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i64 @getline(i8**, i64*, i32*) #1

declare dso_local i8* @g_strstrip(i8*) #1

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i8* @strsep(i8**, i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @g_ascii_strtoll(i8*, i8**, i32) #1

declare dso_local i32 @g_warning(i8*, i8*) #1

declare dso_local i32 @g_ascii_strcasecmp(i8*, i32*) #1

declare dso_local %struct.TYPE_6__* @g_realloc(%struct.TYPE_6__*, i32) #1

declare dso_local i32* @g_strdup(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @fclose(i32*) #1

declare dso_local i8* @g_strerror(i64) #1

declare dso_local i32 @g_debug(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
