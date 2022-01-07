; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/utils/pice/module/extr_symbols.c_FindTypeDefinitionForCombinedTypes.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/utils/pice/module/extr_symbols.c_FindTypeDefinitionForCombinedTypes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }

@FindTypeDefinitionForCombinedTypes.szAccumulatedName = internal global [2048 x i8] zeroinitializer, align 16
@FindTypeDefinitionForCombinedTypes.szCurrentPath = internal global [256 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [38 x i8] c"FindTypeDefinitionForCombinedTypes()\0A\00", align 1
@.str.1 = private unnamed_addr constant [63 x i8] c"FindTypeDefinitionForCombinedTypes(): changing source file %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"FindTypeDefinitionForCombinedTypes(): %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.4 = private unnamed_addr constant [76 x i8] c"FindTypeDefinitionForCombinedTypes(): symbol includes type definition (%s)\0A\00", align 1
@.str.5 = private unnamed_addr constant [54 x i8] c"FindTypeDefinitionForCombinedTypes(): type-number %x\0A\00", align 1
@.str.6 = private unnamed_addr constant [62 x i8] c"FindTypeDefinitionForCombinedTypes(): typenumber %x matches!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @FindTypeDefinitionForCombinedTypes(%struct.TYPE_5__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_4__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %20, align 4
  %21 = call i32 (...) @ENTER_FUNC()
  store i8 0, i8* getelementptr inbounds ([2048 x i8], [2048 x i8]* @FindTypeDefinitionForCombinedTypes.szAccumulatedName, i64 0, i64 0), align 16
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %23 = ptrtoint %struct.TYPE_5__* %22 to i32
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = add nsw i32 %23, %26
  %28 = sext i32 %27 to i64
  %29 = inttoptr i64 %28 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %29, %struct.TYPE_4__** %9, align 8
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %15, align 4
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %34 = ptrtoint %struct.TYPE_5__* %33 to i32
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = add nsw i32 %34, %37
  %39 = sext i32 %38 to i64
  %40 = inttoptr i64 %39 to i8*
  store i8* %40, i8** %10, align 8
  %41 = call i32 @DPRINT(i32 ptrtoint ([38 x i8]* @.str to i32))
  store i32 0, i32* %8, align 4
  br label %42

42:                                               ; preds = %175, %3
  %43 = load i32, i32* %8, align 4
  %44 = sext i32 %43 to i64
  %45 = load i32, i32* %15, align 4
  %46 = sext i32 %45 to i64
  %47 = udiv i64 %46, 4
  %48 = icmp ult i64 %44, %47
  br i1 %48, label %49, label %178

49:                                               ; preds = %42
  %50 = load i8*, i8** %10, align 8
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %16, align 4
  %55 = add nsw i32 %53, %54
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8, i8* %50, i64 %56
  store i8* %57, i8** %11, align 8
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  switch i32 %60, label %172 [
    i32 128, label %61
    i32 129, label %68
    i32 130, label %101
  ]

61:                                               ; preds = %49
  %62 = load i32, i32* %17, align 4
  %63 = load i32, i32* %16, align 4
  %64 = add nsw i32 %63, %62
  store i32 %64, i32* %16, align 4
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  store i32 %67, i32* %17, align 4
  br label %172

68:                                               ; preds = %49
  %69 = load i8*, i8** %11, align 8
  %70 = call i32 @PICE_strlen(i8* %69)
  store i32 %70, i32* %18, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %99

72:                                               ; preds = %68
  %73 = load i8*, i8** %11, align 8
  %74 = load i32, i32* %18, align 4
  %75 = sub nsw i32 %74, 1
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i8, i8* %73, i64 %76
  %78 = load i8, i8* %77, align 1
  %79 = sext i8 %78 to i32
  %80 = icmp ne i32 %79, 47
  br i1 %80, label %81, label %95

81:                                               ; preds = %72
  %82 = load i32, i32* %20, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %20, align 4
  %84 = call i32 @PICE_strlen(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @FindTypeDefinitionForCombinedTypes.szCurrentPath, i64 0, i64 0))
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %81
  %87 = load i8*, i8** %11, align 8
  %88 = call i32 @PICE_strcat(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @FindTypeDefinitionForCombinedTypes.szCurrentPath, i64 0, i64 0), i8* %87)
  %89 = call i32 @DPRINT(i32 ptrtoint ([256 x i8]* @FindTypeDefinitionForCombinedTypes.szCurrentPath to i32))
  br label %94

90:                                               ; preds = %81
  %91 = load i8*, i8** %11, align 8
  %92 = ptrtoint i8* %91 to i32
  %93 = call i32 @DPRINT(i32 %92)
  br label %94

94:                                               ; preds = %90, %86
  br label %98

95:                                               ; preds = %72
  %96 = load i8*, i8** %11, align 8
  %97 = call i32 @PICE_strcpy(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @FindTypeDefinitionForCombinedTypes.szCurrentPath, i64 0, i64 0), i8* %96)
  br label %98

98:                                               ; preds = %95, %94
  br label %100

99:                                               ; preds = %68
  store i8 0, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @FindTypeDefinitionForCombinedTypes.szCurrentPath, i64 0, i64 0), align 16
  br label %100

100:                                              ; preds = %99, %98
  br label %172

101:                                              ; preds = %49
  %102 = load i8*, i8** %11, align 8
  %103 = ptrtoint i8* %102 to i32
  %104 = call i32 @DPRINT(i32 %103)
  %105 = load i8*, i8** %11, align 8
  %106 = call i8* @PICE_strchr(i8* %105, i8 signext 92)
  %107 = icmp ne i8* %106, null
  br i1 %107, label %108, label %122

108:                                              ; preds = %101
  %109 = call i32 @PICE_strlen(i8* getelementptr inbounds ([2048 x i8], [2048 x i8]* @FindTypeDefinitionForCombinedTypes.szAccumulatedName, i64 0, i64 0))
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %108
  %112 = load i8*, i8** %11, align 8
  %113 = call i32 @PICE_strcat(i8* getelementptr inbounds ([2048 x i8], [2048 x i8]* @FindTypeDefinitionForCombinedTypes.szAccumulatedName, i64 0, i64 0), i8* %112)
  br label %117

114:                                              ; preds = %108
  %115 = load i8*, i8** %11, align 8
  %116 = call i32 @PICE_strcpy(i8* getelementptr inbounds ([2048 x i8], [2048 x i8]* @FindTypeDefinitionForCombinedTypes.szAccumulatedName, i64 0, i64 0), i8* %115)
  br label %117

117:                                              ; preds = %114, %111
  %118 = call i32 @PICE_strlen(i8* getelementptr inbounds ([2048 x i8], [2048 x i8]* @FindTypeDefinitionForCombinedTypes.szAccumulatedName, i64 0, i64 0))
  %119 = sub nsw i32 %118, 1
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds [2048 x i8], [2048 x i8]* @FindTypeDefinitionForCombinedTypes.szAccumulatedName, i64 0, i64 %120
  store i8 0, i8* %121, align 1
  br label %171

122:                                              ; preds = %101
  %123 = call i32 @PICE_strlen(i8* getelementptr inbounds ([2048 x i8], [2048 x i8]* @FindTypeDefinitionForCombinedTypes.szAccumulatedName, i64 0, i64 0))
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %122
  %126 = load i8*, i8** %11, align 8
  %127 = call i32 @PICE_strcpy(i8* getelementptr inbounds ([2048 x i8], [2048 x i8]* @FindTypeDefinitionForCombinedTypes.szAccumulatedName, i64 0, i64 0), i8* %126)
  br label %131

128:                                              ; preds = %122
  %129 = load i8*, i8** %11, align 8
  %130 = call i32 @PICE_strcat(i8* getelementptr inbounds ([2048 x i8], [2048 x i8]* @FindTypeDefinitionForCombinedTypes.szAccumulatedName, i64 0, i64 0), i8* %129)
  br label %131

131:                                              ; preds = %128, %125
  store i8* getelementptr inbounds ([2048 x i8], [2048 x i8]* @FindTypeDefinitionForCombinedTypes.szAccumulatedName, i64 0, i64 0), i8** %14, align 8
  %132 = load i8*, i8** %14, align 8
  %133 = call i32 @StrLenUpToWhiteChar(i8* %132, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store i32 %133, i32* %18, align 4
  %134 = load i8*, i8** %14, align 8
  %135 = call i8* @PICE_strchr(i8* %134, i8 signext 61)
  store i8* %135, i8** %13, align 8
  %136 = icmp ne i8* %135, null
  br i1 %136, label %137, label %170

137:                                              ; preds = %131
  %138 = load i8*, i8** %14, align 8
  %139 = load i32, i32* %18, align 4
  %140 = add nsw i32 %139, 1
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i8, i8* %138, i64 %141
  %143 = load i8, i8* %142, align 1
  %144 = sext i8 %143 to i32
  %145 = icmp eq i32 %144, 71
  br i1 %145, label %146, label %170

146:                                              ; preds = %137
  %147 = load i8*, i8** %14, align 8
  %148 = ptrtoint i8* %147 to i32
  %149 = call i32 @DPRINT(i32 %148)
  %150 = load i8*, i8** %14, align 8
  %151 = load i32, i32* %18, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i8, i8* %150, i64 %152
  %154 = getelementptr inbounds i8, i8* %153, i64 1
  store i8* %154, i8** %12, align 8
  %155 = load i8*, i8** %12, align 8
  %156 = call i32 @ExtractTypeNumber(i8* %155)
  store i32 %156, i32* %19, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %169

158:                                              ; preds = %146
  %159 = load i32, i32* %19, align 4
  %160 = call i32 @DPRINT(i32 %159)
  %161 = load i32, i32* %19, align 4
  %162 = load i32, i32* %6, align 4
  %163 = icmp eq i32 %161, %162
  br i1 %163, label %164, label %168

164:                                              ; preds = %158
  %165 = load i32, i32* %19, align 4
  %166 = call i32 @DPRINT(i32 %165)
  %167 = load i8*, i8** %14, align 8
  store i8* %167, i8** %4, align 8
  br label %179

168:                                              ; preds = %158
  br label %169

169:                                              ; preds = %168, %146
  br label %170

170:                                              ; preds = %169, %137, %131
  store i8 0, i8* getelementptr inbounds ([2048 x i8], [2048 x i8]* @FindTypeDefinitionForCombinedTypes.szAccumulatedName, i64 0, i64 0), align 16
  br label %171

171:                                              ; preds = %170, %117
  br label %172

172:                                              ; preds = %49, %171, %100, %61
  %173 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %174 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %173, i32 1
  store %struct.TYPE_4__* %174, %struct.TYPE_4__** %9, align 8
  br label %175

175:                                              ; preds = %172
  %176 = load i32, i32* %8, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %8, align 4
  br label %42

178:                                              ; preds = %42
  store i8* null, i8** %4, align 8
  br label %179

179:                                              ; preds = %178, %164
  %180 = load i8*, i8** %4, align 8
  ret i8* %180
}

declare dso_local i32 @ENTER_FUNC(...) #1

declare dso_local i32 @DPRINT(i32) #1

declare dso_local i32 @PICE_strlen(i8*) #1

declare dso_local i32 @PICE_strcat(i8*, i8*) #1

declare dso_local i32 @PICE_strcpy(i8*, i8*) #1

declare dso_local i8* @PICE_strchr(i8*, i8 signext) #1

declare dso_local i32 @StrLenUpToWhiteChar(i8*, i8*) #1

declare dso_local i32 @ExtractTypeNumber(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
