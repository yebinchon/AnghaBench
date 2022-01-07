; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/ncftp/extr_readln.c_RemoteCompletionFunction.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/ncftp/extr_readln.c_RemoteCompletionFunction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__** }

@RemoteCompletionFunction.diritemv = internal global %struct.TYPE_5__** null, align 8
@RemoteCompletionFunction.i = internal global i32 0, align 4
@gRemoteCWD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"/\00", align 1
@gl_completion_exact_match_extra_char = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i32, i32)* @RemoteCompletionFunction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @RemoteCompletionFunction(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [256 x i8], align 16
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_5__*, align 8
  %14 = alloca %struct.TYPE_6__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %19 = load i8*, i8** %5, align 8
  %20 = call i8* @strrchr(i8* %19, i8 signext 47)
  store i8* %20, i8** %11, align 8
  %21 = load i8*, i8** %11, align 8
  %22 = icmp eq i8* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %3
  %24 = load i8*, i8** %5, align 8
  store i8* %24, i8** %11, align 8
  store i32 -1, i32* %15, align 4
  br label %34

25:                                               ; preds = %3
  %26 = load i8*, i8** %11, align 8
  %27 = load i8*, i8** %5, align 8
  %28 = ptrtoint i8* %26 to i64
  %29 = ptrtoint i8* %27 to i64
  %30 = sub i64 %28, %29
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %15, align 4
  %32 = load i8*, i8** %11, align 8
  %33 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %33, i8** %11, align 8
  br label %34

34:                                               ; preds = %25, %23
  %35 = load i8*, i8** %11, align 8
  %36 = call i32 @strlen(i8* %35)
  %37 = sext i32 %36 to i64
  store i64 %37, i64* %16, align 8
  %38 = load i32, i32* %6, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %97

40:                                               ; preds = %34
  %41 = load i8*, i8** %5, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 0
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %40
  %47 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %48 = load i32, i32* @gRemoteCWD, align 4
  %49 = call i32 @STRNCPY(i8* %47, i32 %48)
  br label %83

50:                                               ; preds = %40
  %51 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %52 = load i32, i32* @gRemoteCWD, align 4
  %53 = load i8*, i8** %5, align 8
  %54 = call i32 @PathCat(i8* %51, i32 256, i32 %52, i8* %53)
  %55 = load i8*, i8** %5, align 8
  %56 = load i8*, i8** %5, align 8
  %57 = call i32 @strlen(i8* %56)
  %58 = sub nsw i32 %57, 1
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8, i8* %55, i64 %59
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp eq i32 %62, 47
  br i1 %63, label %64, label %67

64:                                               ; preds = %50
  %65 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %66 = call i32 @STRNCAT(i8* %65, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %67

67:                                               ; preds = %64, %50
  %68 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %69 = call i8* @strrchr(i8* %68, i8 signext 47)
  store i8* %69, i8** %10, align 8
  %70 = load i8*, i8** %10, align 8
  %71 = icmp eq i8* %70, null
  br i1 %71, label %72, label %73

72:                                               ; preds = %67
  store i8* null, i8** %4, align 8
  br label %197

73:                                               ; preds = %67
  %74 = load i8*, i8** %10, align 8
  %75 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %76 = icmp eq i8* %74, %75
  br i1 %76, label %77, label %80

77:                                               ; preds = %73
  %78 = load i8*, i8** %10, align 8
  %79 = getelementptr inbounds i8, i8* %78, i32 1
  store i8* %79, i8** %10, align 8
  br label %80

80:                                               ; preds = %77, %73
  br label %81

81:                                               ; preds = %80
  %82 = load i8*, i8** %10, align 8
  store i8 0, i8* %82, align 1
  br label %83

83:                                               ; preds = %81, %46
  %84 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %85 = call %struct.TYPE_6__* @GetLsCacheFileList(i8* %84)
  store %struct.TYPE_6__* %85, %struct.TYPE_6__** %14, align 8
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %87 = icmp eq %struct.TYPE_6__* %86, null
  br i1 %87, label %88, label %89

88:                                               ; preds = %83
  store i8* null, i8** %4, align 8
  br label %197

89:                                               ; preds = %83
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  %92 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %91, align 8
  store %struct.TYPE_5__** %92, %struct.TYPE_5__*** @RemoteCompletionFunction.diritemv, align 8
  %93 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @RemoteCompletionFunction.diritemv, align 8
  %94 = icmp eq %struct.TYPE_5__** %93, null
  br i1 %94, label %95, label %96

95:                                               ; preds = %89
  store i8* null, i8** %4, align 8
  br label %197

96:                                               ; preds = %89
  store i32 0, i32* @RemoteCompletionFunction.i, align 4
  br label %97

97:                                               ; preds = %96, %34
  br label %98

98:                                               ; preds = %195, %97
  %99 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @RemoteCompletionFunction.diritemv, align 8
  %100 = load i32, i32* @RemoteCompletionFunction.i, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %99, i64 %101
  %103 = load %struct.TYPE_5__*, %struct.TYPE_5__** %102, align 8
  store %struct.TYPE_5__* %103, %struct.TYPE_5__** %13, align 8
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %105 = icmp eq %struct.TYPE_5__* %104, null
  br i1 %105, label %106, label %107

106:                                              ; preds = %98
  br label %196

107:                                              ; preds = %98
  %108 = load i32, i32* @RemoteCompletionFunction.i, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* @RemoteCompletionFunction.i, align 4
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = trunc i64 %112 to i32
  store i32 %113, i32* %12, align 4
  %114 = load i32, i32* %7, align 4
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %123, label %116

116:                                              ; preds = %107
  %117 = load i32, i32* %12, align 4
  %118 = load i32, i32* %7, align 4
  %119 = icmp eq i32 %117, %118
  br i1 %119, label %123, label %120

120:                                              ; preds = %116
  %121 = load i32, i32* %12, align 4
  %122 = icmp eq i32 %121, 108
  br i1 %122, label %123, label %195

123:                                              ; preds = %120, %116, %107
  %124 = load i8*, i8** %11, align 8
  %125 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 0
  %127 = load i8*, i8** %126, align 8
  %128 = load i64, i64* %16, align 8
  %129 = call i64 @strncmp(i8* %124, i8* %127, i64 %128)
  %130 = icmp eq i64 %129, 0
  br i1 %130, label %131, label %194

131:                                              ; preds = %123
  %132 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i32 0, i32 0
  %134 = load i8*, i8** %133, align 8
  %135 = call i32 @strlen(i8* %134)
  %136 = sext i32 %135 to i64
  store i64 %136, i64* %17, align 8
  %137 = load i32, i32* %15, align 4
  %138 = icmp slt i32 %137, 0
  br i1 %138, label %139, label %155

139:                                              ; preds = %131
  %140 = load i64, i64* %17, align 8
  %141 = add i64 %140, 2
  store i64 %141, i64* %18, align 8
  %142 = load i64, i64* %18, align 8
  %143 = call i64 @malloc(i64 %142)
  %144 = inttoptr i64 %143 to i8*
  store i8* %144, i8** %9, align 8
  %145 = load i8*, i8** %9, align 8
  %146 = icmp eq i8* %145, null
  br i1 %146, label %147, label %148

147:                                              ; preds = %139
  store i8* null, i8** %4, align 8
  br label %197

148:                                              ; preds = %139
  %149 = load i8*, i8** %9, align 8
  %150 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %151 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %150, i32 0, i32 0
  %152 = load i8*, i8** %151, align 8
  %153 = load i64, i64* %18, align 8
  %154 = call i32 @memcpy(i8* %149, i8* %152, i64 %153)
  br label %187

155:                                              ; preds = %131
  %156 = load i32, i32* %15, align 4
  %157 = add nsw i32 %156, 1
  %158 = sext i32 %157 to i64
  %159 = load i64, i64* %17, align 8
  %160 = add i64 %158, %159
  %161 = add i64 %160, 2
  store i64 %161, i64* %18, align 8
  %162 = load i64, i64* %18, align 8
  %163 = call i64 @malloc(i64 %162)
  %164 = inttoptr i64 %163 to i8*
  store i8* %164, i8** %9, align 8
  %165 = load i8*, i8** %9, align 8
  %166 = icmp eq i8* %165, null
  br i1 %166, label %167, label %168

167:                                              ; preds = %155
  store i8* null, i8** %4, align 8
  br label %197

168:                                              ; preds = %155
  %169 = load i8*, i8** %9, align 8
  %170 = load i8*, i8** %5, align 8
  %171 = load i32, i32* %15, align 4
  %172 = sext i32 %171 to i64
  %173 = call i32 @memcpy(i8* %169, i8* %170, i64 %172)
  %174 = load i8*, i8** %9, align 8
  %175 = load i32, i32* %15, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i8, i8* %174, i64 %176
  store i8 47, i8* %177, align 1
  %178 = load i8*, i8** %9, align 8
  %179 = load i32, i32* %15, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i8, i8* %178, i64 %180
  %182 = getelementptr inbounds i8, i8* %181, i64 1
  %183 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %184 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %183, i32 0, i32 0
  %185 = load i8*, i8** %184, align 8
  %186 = call i32 @strcpy(i8* %182, i8* %185)
  br label %187

187:                                              ; preds = %168, %148
  %188 = load i32, i32* %12, align 4
  %189 = icmp eq i32 %188, 100
  br i1 %189, label %190, label %191

190:                                              ; preds = %187
  store i8 47, i8* @gl_completion_exact_match_extra_char, align 1
  br label %192

191:                                              ; preds = %187
  store i8 32, i8* @gl_completion_exact_match_extra_char, align 1
  br label %192

192:                                              ; preds = %191, %190
  %193 = load i8*, i8** %9, align 8
  store i8* %193, i8** %4, align 8
  br label %197

194:                                              ; preds = %123
  br label %195

195:                                              ; preds = %194, %120
  br label %98

196:                                              ; preds = %106
  store i8* null, i8** %4, align 8
  br label %197

197:                                              ; preds = %196, %192, %167, %147, %95, %88, %72
  %198 = load i8*, i8** %4, align 8
  ret i8* %198
}

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @STRNCPY(i8*, i32) #1

declare dso_local i32 @PathCat(i8*, i32, i32, i8*) #1

declare dso_local i32 @STRNCAT(i8*, i8*) #1

declare dso_local %struct.TYPE_6__* @GetLsCacheFileList(i8*) #1

declare dso_local i64 @strncmp(i8*, i8*, i64) #1

declare dso_local i64 @malloc(i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
