; ModuleID = '/home/carl/AnghaBench/the_silver_searcher/src/extr_ignore.c_filename_filter.c'
source_filename = "/home/carl/AnghaBench/the_silver_searcher/src/extr_ignore.c_filename_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i64, i32, i32 }
%struct.dirent = type { i8*, i64 }
%struct.TYPE_5__ = type { i8*, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_6__*, i32*, i32 }

@opts = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@evil_hardcoded_ignore_files = common dso_local global i32** null, align 8
@.str = private unnamed_addr constant [40 x i8] c"File %s ignored becaused it's a symlink\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"%s ignored because it's a named pipe or socket\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"./\00", align 1
@.str.3 = private unnamed_addr constant [50 x i8] c"file %s ignored because name matches extension %s\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"%s/\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"%s not ignored\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @filename_filter(i8* %0, %struct.dirent* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.dirent*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_5__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_6__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store %struct.dirent* %1, %struct.dirent** %6, align 8
  store i8* %2, i8** %7, align 8
  %18 = load %struct.dirent*, %struct.dirent** %6, align 8
  %19 = getelementptr inbounds %struct.dirent, %struct.dirent* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  store i8* %20, i8** %8, align 8
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @opts, i32 0, i32 3), align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %30, label %23

23:                                               ; preds = %3
  %24 = load i8*, i8** %8, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 0
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp eq i32 %27, 46
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  store i32 0, i32* %4, align 4
  br label %188

30:                                               ; preds = %23, %3
  store i64 0, i64* %9, align 8
  br label %31

31:                                               ; preds = %47, %30
  %32 = load i32**, i32*** @evil_hardcoded_ignore_files, align 8
  %33 = load i64, i64* %9, align 8
  %34 = getelementptr inbounds i32*, i32** %32, i64 %33
  %35 = load i32*, i32** %34, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %50

37:                                               ; preds = %31
  %38 = load i8*, i8** %8, align 8
  %39 = load i32**, i32*** @evil_hardcoded_ignore_files, align 8
  %40 = load i64, i64* %9, align 8
  %41 = getelementptr inbounds i32*, i32** %39, i64 %40
  %42 = load i32*, i32** %41, align 8
  %43 = call i64 @strcmp(i8* %38, i32* %42)
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %37
  store i32 0, i32* %4, align 4
  br label %188

46:                                               ; preds = %37
  br label %47

47:                                               ; preds = %46
  %48 = load i64, i64* %9, align 8
  %49 = add i64 %48, 1
  store i64 %49, i64* %9, align 8
  br label %31

50:                                               ; preds = %31
  %51 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @opts, i32 0, i32 2), align 8
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %63, label %53

53:                                               ; preds = %50
  %54 = load i8*, i8** %5, align 8
  %55 = load %struct.dirent*, %struct.dirent** %6, align 8
  %56 = call i64 @is_symlink(i8* %54, %struct.dirent* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %53
  %59 = load %struct.dirent*, %struct.dirent** %6, align 8
  %60 = getelementptr inbounds %struct.dirent, %struct.dirent* %59, i32 0, i32 0
  %61 = load i8*, i8** %60, align 8
  %62 = call i32 (i8*, i8*, ...) @log_debug(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i8* %61)
  store i32 0, i32* %4, align 4
  br label %188

63:                                               ; preds = %53, %50
  %64 = load i8*, i8** %5, align 8
  %65 = load %struct.dirent*, %struct.dirent** %6, align 8
  %66 = call i64 @is_named_pipe(i8* %64, %struct.dirent* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %63
  %69 = load i8*, i8** %5, align 8
  %70 = call i32 (i8*, i8*, ...) @log_debug(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i8* %69)
  store i32 0, i32* %4, align 4
  br label %188

71:                                               ; preds = %63
  %72 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @opts, i32 0, i32 1), align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %71
  %75 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @opts, i32 0, i32 0), align 8
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %78, label %77

77:                                               ; preds = %74
  store i32 1, i32* %4, align 4
  br label %188

78:                                               ; preds = %74, %71
  %79 = load i8*, i8** %7, align 8
  %80 = bitcast i8* %79 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %80, %struct.TYPE_5__** %10, align 8
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 0
  %83 = load i8*, i8** %82, align 8
  store i8* %83, i8** %11, align 8
  %84 = load i8*, i8** %8, align 8
  %85 = call i8* @strchr(i8* %84, i8 signext 46)
  store i8* %85, i8** %12, align 8
  %86 = load i8*, i8** %12, align 8
  %87 = icmp ne i8* %86, null
  br i1 %87, label %88, label %98

88:                                               ; preds = %78
  %89 = load i8*, i8** %12, align 8
  %90 = getelementptr inbounds i8, i8* %89, i64 1
  %91 = load i8, i8* %90, align 1
  %92 = icmp ne i8 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %88
  %94 = load i8*, i8** %12, align 8
  %95 = getelementptr inbounds i8, i8* %94, i32 1
  store i8* %95, i8** %12, align 8
  br label %97

96:                                               ; preds = %88
  store i8* null, i8** %12, align 8
  br label %97

97:                                               ; preds = %96, %93
  br label %98

98:                                               ; preds = %97, %78
  store i64 0, i64* %13, align 8
  %99 = load i8*, i8** %8, align 8
  %100 = call i64 @strncmp(i8* %99, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 2)
  %101 = icmp eq i64 %100, 0
  br i1 %101, label %102, label %109

102:                                              ; preds = %98
  %103 = load i8*, i8** %8, align 8
  %104 = call i64 @strlen(i8* %103)
  store i64 %104, i64* %13, align 8
  %105 = load i8*, i8** %8, align 8
  %106 = getelementptr inbounds i8, i8* %105, i32 1
  store i8* %106, i8** %8, align 8
  %107 = load i64, i64* %13, align 8
  %108 = add i64 %107, -1
  store i64 %108, i64* %13, align 8
  br label %109

109:                                              ; preds = %102, %98
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 1
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** %111, align 8
  store %struct.TYPE_6__* %112, %struct.TYPE_6__** %14, align 8
  br label %113

113:                                              ; preds = %181, %109
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %115 = icmp ne %struct.TYPE_6__* %114, null
  br i1 %115, label %116, label %185

116:                                              ; preds = %113
  %117 = load i8*, i8** %12, align 8
  %118 = icmp ne i8* %117, null
  br i1 %118, label %119, label %141

119:                                              ; preds = %116
  %120 = load i8*, i8** %12, align 8
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 1
  %123 = load i32*, i32** %122, align 8
  %124 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 8
  %127 = call i32 @binary_search(i8* %120, i32* %123, i32 0, i32 %126)
  store i32 %127, i32* %15, align 4
  %128 = load i32, i32* %15, align 4
  %129 = icmp sge i32 %128, 0
  br i1 %129, label %130, label %140

130:                                              ; preds = %119
  %131 = load i8*, i8** %8, align 8
  %132 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 1
  %134 = load i32*, i32** %133, align 8
  %135 = load i32, i32* %15, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %134, i64 %136
  %138 = load i32, i32* %137, align 4
  %139 = call i32 (i8*, i8*, ...) @log_debug(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0), i8* %131, i32 %138)
  store i32 0, i32* %4, align 4
  br label %188

140:                                              ; preds = %119
  br label %141

141:                                              ; preds = %140, %116
  %142 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %143 = load i8*, i8** %11, align 8
  %144 = load i8*, i8** %8, align 8
  %145 = call i32 @path_ignore_search(%struct.TYPE_6__* %142, i8* %143, i8* %144)
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %141
  store i32 0, i32* %4, align 4
  br label %188

148:                                              ; preds = %141
  %149 = load i8*, i8** %5, align 8
  %150 = load %struct.dirent*, %struct.dirent** %6, align 8
  %151 = call i64 @is_directory(i8* %149, %struct.dirent* %150)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %181

153:                                              ; preds = %148
  %154 = load i64, i64* %13, align 8
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %159, label %156

156:                                              ; preds = %153
  %157 = load i8*, i8** %8, align 8
  %158 = call i64 @strlen(i8* %157)
  store i64 %158, i64* %13, align 8
  br label %159

159:                                              ; preds = %156, %153
  %160 = load i8*, i8** %8, align 8
  %161 = load i64, i64* %13, align 8
  %162 = sub i64 %161, 1
  %163 = getelementptr inbounds i8, i8* %160, i64 %162
  %164 = load i8, i8* %163, align 1
  %165 = sext i8 %164 to i32
  %166 = icmp ne i32 %165, 47
  br i1 %166, label %167, label %180

167:                                              ; preds = %159
  %168 = load i8*, i8** %8, align 8
  %169 = call i32 @ag_asprintf(i8** %16, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* %168)
  %170 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %171 = load i8*, i8** %11, align 8
  %172 = load i8*, i8** %16, align 8
  %173 = call i32 @path_ignore_search(%struct.TYPE_6__* %170, i8* %171, i8* %172)
  store i32 %173, i32* %17, align 4
  %174 = load i8*, i8** %16, align 8
  %175 = call i32 @free(i8* %174)
  %176 = load i32, i32* %17, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %179

178:                                              ; preds = %167
  store i32 0, i32* %4, align 4
  br label %188

179:                                              ; preds = %167
  br label %180

180:                                              ; preds = %179, %159
  br label %181

181:                                              ; preds = %180, %148
  %182 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %183 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %182, i32 0, i32 0
  %184 = load %struct.TYPE_6__*, %struct.TYPE_6__** %183, align 8
  store %struct.TYPE_6__* %184, %struct.TYPE_6__** %14, align 8
  br label %113

185:                                              ; preds = %113
  %186 = load i8*, i8** %8, align 8
  %187 = call i32 (i8*, i8*, ...) @log_debug(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i8* %186)
  store i32 1, i32* %4, align 4
  br label %188

188:                                              ; preds = %185, %178, %147, %130, %77, %68, %58, %45, %29
  %189 = load i32, i32* %4, align 4
  ret i32 %189
}

declare dso_local i64 @strcmp(i8*, i32*) #1

declare dso_local i64 @is_symlink(i8*, %struct.dirent*) #1

declare dso_local i32 @log_debug(i8*, i8*, ...) #1

declare dso_local i64 @is_named_pipe(i8*, %struct.dirent*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @binary_search(i8*, i32*, i32, i32) #1

declare dso_local i32 @path_ignore_search(%struct.TYPE_6__*, i8*, i8*) #1

declare dso_local i64 @is_directory(i8*, %struct.dirent*) #1

declare dso_local i32 @ag_asprintf(i8**, i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
