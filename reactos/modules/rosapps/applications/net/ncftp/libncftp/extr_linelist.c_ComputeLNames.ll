; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/libncftp/extr_linelist.c_ComputeLNames.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/ncftp/libncftp/extr_linelist.c_ComputeLNames.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i8*, i8*, %struct.TYPE_4__* }

@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"/\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ComputeLNames(%struct.TYPE_5__* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_4__*, align 8
  %11 = alloca %struct.TYPE_4__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load i8*, i8** %7, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %31

16:                                               ; preds = %4
  %17 = load i8*, i8** %7, align 8
  %18 = call i8* @strrchr(i8* %17, i8 signext 47)
  store i8* %18, i8** %13, align 8
  %19 = load i8*, i8** %13, align 8
  %20 = icmp eq i8* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %16
  %22 = load i8*, i8** %7, align 8
  %23 = call i8* @strrchr(i8* %22, i8 signext 92)
  store i8* %23, i8** %13, align 8
  br label %24

24:                                               ; preds = %21, %16
  %25 = load i8*, i8** %13, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = load i8*, i8** %13, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 1
  store i8* %29, i8** %7, align 8
  br label %30

30:                                               ; preds = %27, %24
  br label %31

31:                                               ; preds = %30, %4
  %32 = load i8*, i8** %8, align 8
  %33 = icmp eq i8* %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  br label %35

35:                                               ; preds = %34, %31
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  store %struct.TYPE_4__* %38, %struct.TYPE_4__** %10, align 8
  br label %39

39:                                               ; preds = %188, %35
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %41 = icmp ne %struct.TYPE_4__* %40, null
  br i1 %41, label %42, label %190

42:                                               ; preds = %39
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 2
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  store %struct.TYPE_4__* %45, %struct.TYPE_4__** %11, align 8
  store i8* null, i8** %12, align 8
  %46 = load i32, i32* %9, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %95

48:                                               ; preds = %42
  %49 = load i8*, i8** %8, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 0
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %64

54:                                               ; preds = %48
  %55 = load i8*, i8** %8, align 8
  %56 = call i64 @strcmp(i8* %55, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %54
  %59 = load i8*, i8** %8, align 8
  %60 = call i32* (i8**, i8*, i8*, ...) @Dynscat(i8** %12, i8* %59, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 0)
  %61 = icmp eq i32* %60, null
  br i1 %61, label %62, label %63

62:                                               ; preds = %58
  br label %167

63:                                               ; preds = %58
  br label %64

64:                                               ; preds = %63, %54, %48
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i8*, i8** %66, align 8
  %68 = icmp ne i8* %67, null
  br i1 %68, label %69, label %77

69:                                               ; preds = %64
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i8*, i8** %71, align 8
  %73 = call i32* (i8**, i8*, i8*, ...) @Dynscat(i8** %12, i8* %72, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 0)
  %74 = icmp eq i32* %73, null
  br i1 %74, label %75, label %76

75:                                               ; preds = %69
  br label %167

76:                                               ; preds = %69
  br label %87

77:                                               ; preds = %64
  %78 = load i8*, i8** %7, align 8
  %79 = icmp ne i8* %78, null
  br i1 %79, label %80, label %86

80:                                               ; preds = %77
  %81 = load i8*, i8** %7, align 8
  %82 = call i32* (i8**, i8*, i8*, ...) @Dynscat(i8** %12, i8* %81, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 0)
  %83 = icmp eq i32* %82, null
  br i1 %83, label %84, label %85

84:                                               ; preds = %80
  br label %167

85:                                               ; preds = %80
  br label %86

86:                                               ; preds = %85, %77
  br label %87

87:                                               ; preds = %86, %76
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 1
  %90 = load i8*, i8** %89, align 8
  %91 = call i32* (i8**, i8*, i8*, ...) @Dynscat(i8** %12, i8* %90, i8* null)
  %92 = icmp eq i32* %91, null
  br i1 %92, label %93, label %94

93:                                               ; preds = %87
  br label %167

94:                                               ; preds = %87
  br label %163

95:                                               ; preds = %42
  %96 = load i8*, i8** %8, align 8
  %97 = getelementptr inbounds i8, i8* %96, i64 0
  %98 = load i8, i8* %97, align 1
  %99 = sext i8 %98 to i32
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %134

101:                                              ; preds = %95
  %102 = load i8*, i8** %8, align 8
  %103 = call i64 @strcmp(i8* %102, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %134

105:                                              ; preds = %101
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 1
  %108 = load i8*, i8** %107, align 8
  %109 = call i8* @strrchr(i8* %108, i8 signext 47)
  store i8* %109, i8** %13, align 8
  %110 = load i8*, i8** %13, align 8
  %111 = icmp eq i8* %110, null
  br i1 %111, label %112, label %117

112:                                              ; preds = %105
  %113 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 1
  %115 = load i8*, i8** %114, align 8
  %116 = call i8* @strrchr(i8* %115, i8 signext 92)
  store i8* %116, i8** %13, align 8
  br label %117

117:                                              ; preds = %112, %105
  %118 = load i8*, i8** %13, align 8
  %119 = icmp eq i8* %118, null
  br i1 %119, label %120, label %124

120:                                              ; preds = %117
  %121 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 1
  %123 = load i8*, i8** %122, align 8
  store i8* %123, i8** %13, align 8
  br label %127

124:                                              ; preds = %117
  %125 = load i8*, i8** %13, align 8
  %126 = getelementptr inbounds i8, i8* %125, i32 1
  store i8* %126, i8** %13, align 8
  br label %127

127:                                              ; preds = %124, %120
  %128 = load i8*, i8** %8, align 8
  %129 = load i8*, i8** %13, align 8
  %130 = call i32* (i8**, i8*, i8*, ...) @Dynscat(i8** %12, i8* %128, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* %129, i32 0)
  %131 = icmp eq i32* %130, null
  br i1 %131, label %132, label %133

132:                                              ; preds = %127
  br label %167

133:                                              ; preds = %127
  br label %162

134:                                              ; preds = %101, %95
  %135 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 1
  %137 = load i8*, i8** %136, align 8
  %138 = call i8* @strrchr(i8* %137, i8 signext 47)
  store i8* %138, i8** %13, align 8
  %139 = load i8*, i8** %13, align 8
  %140 = icmp eq i8* %139, null
  br i1 %140, label %141, label %146

141:                                              ; preds = %134
  %142 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 1
  %144 = load i8*, i8** %143, align 8
  %145 = call i8* @strrchr(i8* %144, i8 signext 92)
  store i8* %145, i8** %13, align 8
  br label %146

146:                                              ; preds = %141, %134
  %147 = load i8*, i8** %13, align 8
  %148 = icmp eq i8* %147, null
  br i1 %148, label %149, label %153

149:                                              ; preds = %146
  %150 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 1
  %152 = load i8*, i8** %151, align 8
  store i8* %152, i8** %13, align 8
  br label %156

153:                                              ; preds = %146
  %154 = load i8*, i8** %13, align 8
  %155 = getelementptr inbounds i8, i8* %154, i32 1
  store i8* %155, i8** %13, align 8
  br label %156

156:                                              ; preds = %153, %149
  %157 = load i8*, i8** %13, align 8
  %158 = call i32* (i8**, i8*, i8*, ...) @Dynscat(i8** %12, i8* %157, i8* null)
  %159 = icmp eq i32* %158, null
  br i1 %159, label %160, label %161

160:                                              ; preds = %156
  br label %167

161:                                              ; preds = %156
  br label %162

162:                                              ; preds = %161, %133
  br label %163

163:                                              ; preds = %162, %94
  %164 = load i8*, i8** %12, align 8
  %165 = icmp eq i8* %164, null
  br i1 %165, label %166, label %168

166:                                              ; preds = %163
  br label %167

167:                                              ; preds = %166, %160, %132, %93, %84, %75, %62
  store i32 -1, i32* %5, align 4
  br label %191

168:                                              ; preds = %163
  %169 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %170 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %169, i32 0, i32 0
  %171 = load i8*, i8** %170, align 8
  %172 = icmp ne i8* %171, null
  br i1 %172, label %173, label %180

173:                                              ; preds = %168
  %174 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %175 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %174, i32 0, i32 0
  %176 = load i8*, i8** %175, align 8
  %177 = call i32 @free(i8* %176)
  %178 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %179 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %178, i32 0, i32 0
  store i8* null, i8** %179, align 8
  br label %180

180:                                              ; preds = %173, %168
  %181 = load i8*, i8** %12, align 8
  %182 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %183 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %182, i32 0, i32 0
  store i8* %181, i8** %183, align 8
  %184 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %185 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %184, i32 0, i32 0
  %186 = load i8*, i8** %185, align 8
  %187 = call i32 @TVFSPathToLocalPath(i8* %186)
  br label %188

188:                                              ; preds = %180
  %189 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  store %struct.TYPE_4__* %189, %struct.TYPE_4__** %10, align 8
  br label %39

190:                                              ; preds = %39
  store i32 0, i32* %5, align 4
  br label %191

191:                                              ; preds = %190, %167
  %192 = load i32, i32* %5, align 4
  ret i32 %192
}

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32* @Dynscat(i8**, i8*, i8*, ...) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @TVFSPathToLocalPath(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
