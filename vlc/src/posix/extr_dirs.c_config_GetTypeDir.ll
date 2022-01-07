; ModuleID = '/home/carl/AnghaBench/vlc/src/posix/extr_dirs.c_config_GetTypeDir.c'
source_filename = "/home/carl/AnghaBench/vlc/src/posix/extr_dirs.c_config_GetTypeDir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"HOME\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"XDG_CONFIG_HOME\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"user-dirs.dirs\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c".config/user-dirs.dirs\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"rte\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c" \09\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"XDG_\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"_DIR\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"$HOME\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"DESKTOP\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"%s/Desktop\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @config_GetTypeDir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @config_GetTypeDir(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  %15 = load i8*, i8** %3, align 8
  %16 = call i64 @strlen(i8* %15)
  store i64 %16, i64* %4, align 8
  %17 = call i8* @getenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i8* %17, i8** %5, align 8
  %18 = call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  store i8* %18, i8** %6, align 8
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8** %7, align 8
  %19 = load i8*, i8** %5, align 8
  %20 = icmp eq i8* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  br label %199

22:                                               ; preds = %1
  %23 = load i8*, i8** %6, align 8
  %24 = icmp eq i8* %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = load i8*, i8** %5, align 8
  store i8* %26, i8** %6, align 8
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i8** %7, align 8
  br label %27

27:                                               ; preds = %25, %22
  %28 = load i8*, i8** %6, align 8
  %29 = load i8*, i8** %7, align 8
  %30 = call i32 (i8**, i8*, i8*, ...) @asprintf(i8** %8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* %28, i8* %29)
  %31 = icmp eq i32 %30, -1
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  store i8* null, i8** %2, align 8
  br label %199

33:                                               ; preds = %27
  %34 = load i8*, i8** %8, align 8
  %35 = call i32* @fopen(i8* %34, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  store i32* %35, i32** %9, align 8
  %36 = load i8*, i8** %8, align 8
  %37 = call i32 @free(i8* %36)
  store i8* null, i8** %8, align 8
  %38 = load i32*, i32** %9, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %40, label %180

40:                                               ; preds = %33
  store i8* null, i8** %10, align 8
  store i64 0, i64* %11, align 8
  br label %41

41:                                               ; preds = %132, %117, %98, %85, %72, %64, %55, %40
  %42 = load i32*, i32** %9, align 8
  %43 = call i32 @getline(i8** %10, i64* %11, i32* %42)
  %44 = icmp ne i32 %43, -1
  br i1 %44, label %45, label %175

45:                                               ; preds = %41
  %46 = load i8*, i8** %10, align 8
  store i8* %46, i8** %12, align 8
  %47 = load i8*, i8** %12, align 8
  %48 = call i32 @strspn(i8* %47, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  %49 = load i8*, i8** %12, align 8
  %50 = sext i32 %48 to i64
  %51 = getelementptr inbounds i8, i8* %49, i64 %50
  store i8* %51, i8** %12, align 8
  %52 = load i8*, i8** %12, align 8
  %53 = call i64 @strncmp(i8* %52, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 4)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %45
  br label %41

56:                                               ; preds = %45
  %57 = load i8*, i8** %12, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 4
  store i8* %58, i8** %12, align 8
  %59 = load i8*, i8** %12, align 8
  %60 = load i8*, i8** %3, align 8
  %61 = load i64, i64* %4, align 8
  %62 = call i64 @strncmp(i8* %59, i8* %60, i64 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %56
  br label %41

65:                                               ; preds = %56
  %66 = load i64, i64* %4, align 8
  %67 = load i8*, i8** %12, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 %66
  store i8* %68, i8** %12, align 8
  %69 = load i8*, i8** %12, align 8
  %70 = call i64 @strncmp(i8* %69, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 4)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %65
  br label %41

73:                                               ; preds = %65
  %74 = load i8*, i8** %12, align 8
  %75 = getelementptr inbounds i8, i8* %74, i64 4
  store i8* %75, i8** %12, align 8
  %76 = load i8*, i8** %12, align 8
  %77 = call i32 @strspn(i8* %76, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  %78 = load i8*, i8** %12, align 8
  %79 = sext i32 %77 to i64
  %80 = getelementptr inbounds i8, i8* %78, i64 %79
  store i8* %80, i8** %12, align 8
  %81 = load i8*, i8** %12, align 8
  %82 = load i8, i8* %81, align 1
  %83 = sext i8 %82 to i32
  %84 = icmp ne i32 %83, 61
  br i1 %84, label %85, label %86

85:                                               ; preds = %73
  br label %41

86:                                               ; preds = %73
  %87 = load i8*, i8** %12, align 8
  %88 = getelementptr inbounds i8, i8* %87, i32 1
  store i8* %88, i8** %12, align 8
  %89 = load i8*, i8** %12, align 8
  %90 = call i32 @strspn(i8* %89, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  %91 = load i8*, i8** %12, align 8
  %92 = sext i32 %90 to i64
  %93 = getelementptr inbounds i8, i8* %91, i64 %92
  store i8* %93, i8** %12, align 8
  %94 = load i8*, i8** %12, align 8
  %95 = load i8, i8* %94, align 1
  %96 = sext i8 %95 to i32
  %97 = icmp ne i32 %96, 34
  br i1 %97, label %98, label %99

98:                                               ; preds = %86
  br label %41

99:                                               ; preds = %86
  %100 = load i8*, i8** %12, align 8
  %101 = getelementptr inbounds i8, i8* %100, i32 1
  store i8* %101, i8** %12, align 8
  %102 = load i8*, i8** %12, align 8
  %103 = load i8*, i8** %10, align 8
  %104 = ptrtoint i8* %102 to i64
  %105 = ptrtoint i8* %103 to i64
  %106 = sub i64 %104, %105
  %107 = load i64, i64* %11, align 8
  %108 = sub i64 %107, %106
  store i64 %108, i64* %11, align 8
  %109 = load i8*, i8** %12, align 8
  %110 = call i64 @strncmp(i8* %109, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i64 5)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %120

112:                                              ; preds = %99
  %113 = load i64, i64* %11, align 8
  %114 = call i8* @malloc(i64 %113)
  store i8* %114, i8** %8, align 8
  %115 = load i8*, i8** %8, align 8
  %116 = icmp eq i8* %115, null
  br i1 %116, label %117, label %118

117:                                              ; preds = %112
  br label %41

118:                                              ; preds = %112
  %119 = load i8*, i8** %8, align 8
  store i8* %119, i8** %13, align 8
  br label %141

120:                                              ; preds = %99
  %121 = load i8*, i8** %5, align 8
  %122 = call i64 @strlen(i8* %121)
  store i64 %122, i64* %14, align 8
  %123 = load i8*, i8** %12, align 8
  %124 = getelementptr inbounds i8, i8* %123, i64 5
  store i8* %124, i8** %12, align 8
  %125 = load i64, i64* %14, align 8
  %126 = load i64, i64* %11, align 8
  %127 = add i64 %125, %126
  %128 = sub i64 %127, 5
  %129 = call i8* @malloc(i64 %128)
  store i8* %129, i8** %8, align 8
  %130 = load i8*, i8** %8, align 8
  %131 = icmp eq i8* %130, null
  br i1 %131, label %132, label %133

132:                                              ; preds = %120
  br label %41

133:                                              ; preds = %120
  %134 = load i8*, i8** %8, align 8
  %135 = load i8*, i8** %5, align 8
  %136 = load i64, i64* %14, align 8
  %137 = call i32 @memcpy(i8* %134, i8* %135, i64 %136)
  %138 = load i8*, i8** %8, align 8
  %139 = load i64, i64* %14, align 8
  %140 = getelementptr inbounds i8, i8* %138, i64 %139
  store i8* %140, i8** %13, align 8
  br label %141

141:                                              ; preds = %133, %118
  br label %142

142:                                              ; preds = %163, %141
  %143 = load i8*, i8** %12, align 8
  %144 = load i8, i8* %143, align 1
  %145 = sext i8 %144 to i32
  %146 = icmp ne i32 %145, 34
  br i1 %146, label %147, label %169

147:                                              ; preds = %142
  %148 = load i8*, i8** %12, align 8
  %149 = load i8, i8* %148, align 1
  %150 = sext i8 %149 to i32
  %151 = icmp eq i32 %150, 92
  br i1 %151, label %152, label %155

152:                                              ; preds = %147
  %153 = load i8*, i8** %12, align 8
  %154 = getelementptr inbounds i8, i8* %153, i32 1
  store i8* %154, i8** %12, align 8
  br label %155

155:                                              ; preds = %152, %147
  %156 = load i8*, i8** %12, align 8
  %157 = load i8, i8* %156, align 1
  %158 = sext i8 %157 to i32
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %160, label %163

160:                                              ; preds = %155
  %161 = load i8*, i8** %8, align 8
  %162 = call i32 @free(i8* %161)
  store i8* null, i8** %8, align 8
  br label %169

163:                                              ; preds = %155
  %164 = load i8*, i8** %12, align 8
  %165 = getelementptr inbounds i8, i8* %164, i32 1
  store i8* %165, i8** %12, align 8
  %166 = load i8, i8* %164, align 1
  %167 = load i8*, i8** %13, align 8
  %168 = getelementptr inbounds i8, i8* %167, i32 1
  store i8* %168, i8** %13, align 8
  store i8 %166, i8* %167, align 1
  br label %142

169:                                              ; preds = %160, %142
  %170 = load i8*, i8** %8, align 8
  %171 = icmp ne i8* %170, null
  br i1 %171, label %172, label %174

172:                                              ; preds = %169
  %173 = load i8*, i8** %13, align 8
  store i8 0, i8* %173, align 1
  br label %174

174:                                              ; preds = %172, %169
  br label %175

175:                                              ; preds = %174, %41
  %176 = load i8*, i8** %10, align 8
  %177 = call i32 @free(i8* %176)
  %178 = load i32*, i32** %9, align 8
  %179 = call i32 @fclose(i32* %178)
  br label %180

180:                                              ; preds = %175, %33
  %181 = load i8*, i8** %8, align 8
  %182 = icmp eq i8* %181, null
  br i1 %182, label %183, label %197

183:                                              ; preds = %180
  %184 = load i8*, i8** %3, align 8
  %185 = call i64 @strcmp(i8* %184, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0))
  %186 = icmp eq i64 %185, 0
  br i1 %186, label %187, label %193

187:                                              ; preds = %183
  %188 = load i8*, i8** %5, align 8
  %189 = call i32 (i8**, i8*, i8*, ...) @asprintf(i8** %8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0), i8* %188)
  %190 = icmp eq i32 %189, -1
  br i1 %190, label %191, label %192

191:                                              ; preds = %187
  store i8* null, i8** %2, align 8
  br label %199

192:                                              ; preds = %187
  br label %196

193:                                              ; preds = %183
  %194 = load i8*, i8** %5, align 8
  %195 = call i8* @strdup(i8* %194)
  store i8* %195, i8** %8, align 8
  br label %196

196:                                              ; preds = %193, %192
  br label %197

197:                                              ; preds = %196, %180
  %198 = load i8*, i8** %8, align 8
  store i8* %198, i8** %2, align 8
  br label %199

199:                                              ; preds = %197, %191, %32, %21
  %200 = load i8*, i8** %2, align 8
  ret i8* %200
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @getenv(i8*) #1

declare dso_local i32 @asprintf(i8**, i8*, i8*, ...) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @getline(i8**, i64*, i32*) #1

declare dso_local i32 @strspn(i8*, i8*) #1

declare dso_local i64 @strncmp(i8*, i8*, i64) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i8* @strdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
