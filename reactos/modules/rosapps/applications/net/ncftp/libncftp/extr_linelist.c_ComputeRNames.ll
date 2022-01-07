; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/libncftp/extr_linelist.c_ComputeRNames.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/libncftp/extr_linelist.c_ComputeRNames.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i8*, i8*, i8*, %struct.TYPE_4__* }

@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"/\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ComputeRNames(%struct.TYPE_5__* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_4__*, align 8
  %11 = alloca %struct.TYPE_4__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load i8*, i8** %7, align 8
  %15 = icmp eq i8* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %4
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %7, align 8
  br label %17

17:                                               ; preds = %16, %4
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  store %struct.TYPE_4__* %20, %struct.TYPE_4__** %10, align 8
  br label %21

21:                                               ; preds = %197, %17
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %23 = icmp ne %struct.TYPE_4__* %22, null
  br i1 %23, label %24, label %199

24:                                               ; preds = %21
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 3
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  store %struct.TYPE_4__* %27, %struct.TYPE_4__** %11, align 8
  store i8* null, i8** %12, align 8
  %28 = load i32, i32* %9, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %86

30:                                               ; preds = %24
  %31 = load i8*, i8** %7, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 0
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %77

36:                                               ; preds = %30
  %37 = load i8*, i8** %7, align 8
  %38 = call i64 @strcmp(i8* %37, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %77

40:                                               ; preds = %36
  %41 = load i8*, i8** %7, align 8
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  %45 = call i32* (i8**, i8*, i8*, ...) @Dynscat(i8** %12, i8* %41, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* %44, i32 0)
  %46 = icmp eq i32* %45, null
  br i1 %46, label %47, label %48

47:                                               ; preds = %40
  br label %191

48:                                               ; preds = %40
  %49 = load i32, i32* %8, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %76

51:                                               ; preds = %48
  %52 = load i8*, i8** %7, align 8
  %53 = call i8* @strrchr(i8* %52, i8 signext 47)
  store i8* %53, i8** %13, align 8
  %54 = load i8*, i8** %13, align 8
  %55 = icmp eq i8* %54, null
  br i1 %55, label %56, label %59

56:                                               ; preds = %51
  %57 = load i8*, i8** %7, align 8
  %58 = call i8* @strrchr(i8* %57, i8 signext 92)
  store i8* %58, i8** %13, align 8
  br label %59

59:                                               ; preds = %56, %51
  %60 = load i8*, i8** %13, align 8
  %61 = icmp ne i8* %60, null
  br i1 %61, label %62, label %75

62:                                               ; preds = %59
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 1
  %65 = load i8*, i8** %13, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 1
  %67 = call i32* (i8**, i8*, i8*, ...) @Dynscat(i8** %64, i8* %66, i8* null)
  %68 = icmp eq i32* %67, null
  br i1 %68, label %69, label %70

69:                                               ; preds = %62
  br label %191

70:                                               ; preds = %62
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 1
  %73 = load i8*, i8** %72, align 8
  %74 = call i32 @TVFSPathToLocalPath(i8* %73)
  br label %75

75:                                               ; preds = %70, %59
  br label %76

76:                                               ; preds = %75, %48
  br label %85

77:                                               ; preds = %36, %30
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load i8*, i8** %79, align 8
  %81 = call i32* (i8**, i8*, i8*, ...) @Dynscat(i8** %12, i8* %80, i8* null)
  %82 = icmp eq i32* %81, null
  br i1 %82, label %83, label %84

83:                                               ; preds = %77
  br label %191

84:                                               ; preds = %77
  br label %85

85:                                               ; preds = %84, %76
  br label %182

86:                                               ; preds = %24
  %87 = load i8*, i8** %7, align 8
  %88 = getelementptr inbounds i8, i8* %87, i64 0
  %89 = load i8, i8* %88, align 1
  %90 = sext i8 %89 to i32
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %153

92:                                               ; preds = %86
  %93 = load i8*, i8** %7, align 8
  %94 = call i64 @strcmp(i8* %93, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %153

96:                                               ; preds = %92
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  %99 = load i8*, i8** %98, align 8
  %100 = call i8* @strrchr(i8* %99, i8 signext 47)
  store i8* %100, i8** %13, align 8
  %101 = load i8*, i8** %13, align 8
  %102 = icmp eq i8* %101, null
  br i1 %102, label %103, label %108

103:                                              ; preds = %96
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 0
  %106 = load i8*, i8** %105, align 8
  %107 = call i8* @strrchr(i8* %106, i8 signext 92)
  store i8* %107, i8** %13, align 8
  br label %108

108:                                              ; preds = %103, %96
  %109 = load i8*, i8** %13, align 8
  %110 = icmp ne i8* %109, null
  br i1 %110, label %111, label %114

111:                                              ; preds = %108
  %112 = load i8*, i8** %13, align 8
  %113 = getelementptr inbounds i8, i8* %112, i32 1
  store i8* %113, i8** %13, align 8
  br label %118

114:                                              ; preds = %108
  %115 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 0
  %117 = load i8*, i8** %116, align 8
  store i8* %117, i8** %13, align 8
  br label %118

118:                                              ; preds = %114, %111
  %119 = load i8*, i8** %7, align 8
  %120 = load i8*, i8** %13, align 8
  %121 = call i32* (i8**, i8*, i8*, ...) @Dynscat(i8** %12, i8* %119, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* %120, i32 0)
  %122 = icmp eq i32* %121, null
  br i1 %122, label %123, label %124

123:                                              ; preds = %118
  br label %191

124:                                              ; preds = %118
  %125 = load i32, i32* %8, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %152

127:                                              ; preds = %124
  %128 = load i8*, i8** %7, align 8
  %129 = call i8* @strrchr(i8* %128, i8 signext 47)
  store i8* %129, i8** %13, align 8
  %130 = load i8*, i8** %13, align 8
  %131 = icmp eq i8* %130, null
  br i1 %131, label %132, label %135

132:                                              ; preds = %127
  %133 = load i8*, i8** %7, align 8
  %134 = call i8* @strrchr(i8* %133, i8 signext 92)
  store i8* %134, i8** %13, align 8
  br label %135

135:                                              ; preds = %132, %127
  %136 = load i8*, i8** %13, align 8
  %137 = icmp ne i8* %136, null
  br i1 %137, label %138, label %151

138:                                              ; preds = %135
  %139 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 1
  %141 = load i8*, i8** %13, align 8
  %142 = getelementptr inbounds i8, i8* %141, i64 1
  %143 = call i32* (i8**, i8*, i8*, ...) @Dynscat(i8** %140, i8* %142, i8* null)
  %144 = icmp eq i32* %143, null
  br i1 %144, label %145, label %146

145:                                              ; preds = %138
  br label %191

146:                                              ; preds = %138
  %147 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 1
  %149 = load i8*, i8** %148, align 8
  %150 = call i32 @TVFSPathToLocalPath(i8* %149)
  br label %151

151:                                              ; preds = %146, %135
  br label %152

152:                                              ; preds = %151, %124
  br label %181

153:                                              ; preds = %92, %86
  %154 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i32 0, i32 0
  %156 = load i8*, i8** %155, align 8
  %157 = call i8* @strrchr(i8* %156, i8 signext 47)
  store i8* %157, i8** %13, align 8
  %158 = load i8*, i8** %13, align 8
  %159 = icmp eq i8* %158, null
  br i1 %159, label %160, label %165

160:                                              ; preds = %153
  %161 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %162 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %161, i32 0, i32 0
  %163 = load i8*, i8** %162, align 8
  %164 = call i8* @strrchr(i8* %163, i8 signext 92)
  store i8* %164, i8** %13, align 8
  br label %165

165:                                              ; preds = %160, %153
  %166 = load i8*, i8** %13, align 8
  %167 = icmp ne i8* %166, null
  br i1 %167, label %168, label %171

168:                                              ; preds = %165
  %169 = load i8*, i8** %13, align 8
  %170 = getelementptr inbounds i8, i8* %169, i32 1
  store i8* %170, i8** %13, align 8
  br label %175

171:                                              ; preds = %165
  %172 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %173 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %172, i32 0, i32 0
  %174 = load i8*, i8** %173, align 8
  store i8* %174, i8** %13, align 8
  br label %175

175:                                              ; preds = %171, %168
  %176 = load i8*, i8** %13, align 8
  %177 = call i32* (i8**, i8*, i8*, ...) @Dynscat(i8** %12, i8* %176, i8* null)
  %178 = icmp eq i32* %177, null
  br i1 %178, label %179, label %180

179:                                              ; preds = %175
  br label %191

180:                                              ; preds = %175
  br label %181

181:                                              ; preds = %180, %152
  br label %182

182:                                              ; preds = %181, %85
  %183 = load i8*, i8** %12, align 8
  %184 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %185 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %184, i32 0, i32 2
  store i8* %183, i8** %185, align 8
  %186 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %187 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %186, i32 0, i32 2
  %188 = load i8*, i8** %187, align 8
  %189 = icmp eq i8* %188, null
  br i1 %189, label %190, label %192

190:                                              ; preds = %182
  br label %191

191:                                              ; preds = %190, %179, %145, %123, %83, %69, %47
  store i32 -1, i32* %5, align 4
  br label %200

192:                                              ; preds = %182
  %193 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %194 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %193, i32 0, i32 2
  %195 = load i8*, i8** %194, align 8
  %196 = call i32 @LocalPathToTVFSPath(i8* %195)
  br label %197

197:                                              ; preds = %192
  %198 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  store %struct.TYPE_4__* %198, %struct.TYPE_4__** %10, align 8
  br label %21

199:                                              ; preds = %21
  store i32 0, i32* %5, align 4
  br label %200

200:                                              ; preds = %199, %191
  %201 = load i32, i32* %5, align 4
  ret i32 %201
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32* @Dynscat(i8**, i8*, i8*, ...) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i32 @TVFSPathToLocalPath(i8*) #1

declare dso_local i32 @LocalPathToTVFSPath(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
