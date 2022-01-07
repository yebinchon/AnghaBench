; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/utils/pice/module/extr_symbols.c_FindTypeDefinition.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/utils/pice/module/extr_symbols.c_FindTypeDefinition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32 }

@FindTypeDefinition.szAccumulatedName = internal global [2048 x i8] zeroinitializer, align 16
@FindTypeDefinition.szCurrentPath = internal global [256 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [27 x i8] c"FindTypeDefinition(%u,%u)\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"FindTypeDefinition()1: cha %s, %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"FindTypeDefinition(): cha %s, %u\0A\00", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"FindTypeDefinition(): pre type definition %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"FindTypeDefinition(): [1] accum. %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"FindTypeDefinition(): [2] accum. %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [48 x i8] c"FindTypeDefinition(): [3] accum. %s, pname: %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [55 x i8] c"FindTypeDefinition(): ulCurrType: %u, LSYM is type %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [42 x i8] c"FindTypeDefinition(): type definition %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @FindTypeDefinition(%struct.TYPE_6__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %18, align 4
  %20 = call i32 (...) @ENTER_FUNC()
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @DPRINT(i32 %22)
  store i8 0, i8* getelementptr inbounds ([2048 x i8], [2048 x i8]* @FindTypeDefinition.szAccumulatedName, i64 0, i64 0), align 16
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %25 = ptrtoint %struct.TYPE_6__* %24 to i32
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = add nsw i32 %25, %28
  %30 = sext i32 %29 to i64
  %31 = inttoptr i64 %30 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %31, %struct.TYPE_5__** %9, align 8
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %13, align 4
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %36 = ptrtoint %struct.TYPE_6__* %35 to i32
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = add nsw i32 %36, %39
  %41 = sext i32 %40 to i64
  %42 = inttoptr i64 %41 to i8*
  store i8* %42, i8** %10, align 8
  store i32 0, i32* %8, align 4
  br label %43

43:                                               ; preds = %182, %3
  %44 = load i32, i32* %8, align 4
  %45 = sext i32 %44 to i64
  %46 = load i32, i32* %13, align 4
  %47 = sext i32 %46 to i64
  %48 = udiv i64 %47, 4
  %49 = icmp ult i64 %45, %48
  br i1 %49, label %50, label %185

50:                                               ; preds = %43
  %51 = load i8*, i8** %10, align 8
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %14, align 4
  %56 = add nsw i32 %54, %55
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8, i8* %51, i64 %57
  store i8* %58, i8** %11, align 8
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  switch i32 %61, label %179 [
    i32 128, label %62
    i32 129, label %69
    i32 130, label %103
  ]

62:                                               ; preds = %50
  %63 = load i32, i32* %15, align 4
  %64 = load i32, i32* %14, align 4
  %65 = add nsw i32 %64, %63
  store i32 %65, i32* %14, align 4
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  store i32 %68, i32* %15, align 4
  br label %179

69:                                               ; preds = %50
  %70 = load i8*, i8** %11, align 8
  %71 = call i32 @PICE_strlen(i8* %70)
  store i32 %71, i32* %16, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %101

73:                                               ; preds = %69
  %74 = load i8*, i8** %11, align 8
  %75 = load i32, i32* %16, align 4
  %76 = sub nsw i32 %75, 1
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i8, i8* %74, i64 %77
  %79 = load i8, i8* %78, align 1
  %80 = sext i8 %79 to i32
  %81 = icmp ne i32 %80, 47
  br i1 %81, label %82, label %97

82:                                               ; preds = %73
  %83 = load i32, i32* %18, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %18, align 4
  %85 = call i32 @PICE_strlen(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @FindTypeDefinition.szCurrentPath, i64 0, i64 0))
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %82
  %88 = load i8*, i8** %11, align 8
  %89 = call i32 @PICE_strcat(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @FindTypeDefinition.szCurrentPath, i64 0, i64 0), i8* %88)
  %90 = load i32, i32* %18, align 4
  %91 = call i32 @DPRINT(i32 %90)
  br label %96

92:                                               ; preds = %82
  %93 = load i8*, i8** %11, align 8
  %94 = load i32, i32* %18, align 4
  %95 = call i32 @DPRINT(i32 %94)
  br label %96

96:                                               ; preds = %92, %87
  br label %100

97:                                               ; preds = %73
  %98 = load i8*, i8** %11, align 8
  %99 = call i32 @PICE_strcpy(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @FindTypeDefinition.szCurrentPath, i64 0, i64 0), i8* %98)
  br label %100

100:                                              ; preds = %97, %96
  br label %102

101:                                              ; preds = %69
  store i8 0, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @FindTypeDefinition.szCurrentPath, i64 0, i64 0), align 16
  br label %102

102:                                              ; preds = %101, %100
  br label %179

103:                                              ; preds = %50
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %178

108:                                              ; preds = %103
  %109 = load i8*, i8** %11, align 8
  %110 = ptrtoint i8* %109 to i32
  %111 = call i32 @DPRINT(i32 %110)
  %112 = load i8*, i8** %11, align 8
  %113 = call i32 @strrchr(i8* %112, i8 signext 92)
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %131

115:                                              ; preds = %108
  %116 = call i32 @PICE_strlen(i8* getelementptr inbounds ([2048 x i8], [2048 x i8]* @FindTypeDefinition.szAccumulatedName, i64 0, i64 0))
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %122

118:                                              ; preds = %115
  %119 = load i8*, i8** %11, align 8
  %120 = call i32 @PICE_strcat(i8* getelementptr inbounds ([2048 x i8], [2048 x i8]* @FindTypeDefinition.szAccumulatedName, i64 0, i64 0), i8* %119)
  %121 = call i32 @DPRINT(i32 ptrtoint ([2048 x i8]* @FindTypeDefinition.szAccumulatedName to i32))
  br label %126

122:                                              ; preds = %115
  %123 = load i8*, i8** %11, align 8
  %124 = call i32 @PICE_strcpy(i8* getelementptr inbounds ([2048 x i8], [2048 x i8]* @FindTypeDefinition.szAccumulatedName, i64 0, i64 0), i8* %123)
  %125 = call i32 @DPRINT(i32 ptrtoint ([2048 x i8]* @FindTypeDefinition.szAccumulatedName to i32))
  br label %126

126:                                              ; preds = %122, %118
  %127 = call i32 @PICE_strlen(i8* getelementptr inbounds ([2048 x i8], [2048 x i8]* @FindTypeDefinition.szAccumulatedName, i64 0, i64 0))
  %128 = sub nsw i32 %127, 1
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds [2048 x i8], [2048 x i8]* @FindTypeDefinition.szAccumulatedName, i64 0, i64 %129
  store i8 0, i8* %130, align 1
  br label %177

131:                                              ; preds = %108
  %132 = load i8*, i8** %11, align 8
  %133 = ptrtoint i8* %132 to i32
  %134 = call i32 @DPRINT(i32 %133)
  %135 = call i32 @PICE_strlen(i8* getelementptr inbounds ([2048 x i8], [2048 x i8]* @FindTypeDefinition.szAccumulatedName, i64 0, i64 0))
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %137, label %140

137:                                              ; preds = %131
  %138 = load i8*, i8** %11, align 8
  %139 = call i32 @PICE_strcpy(i8* getelementptr inbounds ([2048 x i8], [2048 x i8]* @FindTypeDefinition.szAccumulatedName, i64 0, i64 0), i8* %138)
  br label %143

140:                                              ; preds = %131
  %141 = load i8*, i8** %11, align 8
  %142 = call i32 @PICE_strcat(i8* getelementptr inbounds ([2048 x i8], [2048 x i8]* @FindTypeDefinition.szAccumulatedName, i64 0, i64 0), i8* %141)
  br label %143

143:                                              ; preds = %140, %137
  store i8* getelementptr inbounds ([2048 x i8], [2048 x i8]* @FindTypeDefinition.szAccumulatedName, i64 0, i64 0), i8** %12, align 8
  %144 = load i8*, i8** %12, align 8
  %145 = call i8* @PICE_strchr(i8* %144, i8 signext 58)
  store i8* %145, i8** %19, align 8
  %146 = load i8*, i8** %19, align 8
  %147 = icmp ne i8* %146, null
  br i1 %147, label %148, label %176

148:                                              ; preds = %143
  %149 = load i8*, i8** %19, align 8
  %150 = getelementptr inbounds i8, i8* %149, i64 1
  %151 = load i8, i8* %150, align 1
  %152 = sext i8 %151 to i32
  %153 = icmp eq i32 %152, 116
  br i1 %153, label %160, label %154

154:                                              ; preds = %148
  %155 = load i8*, i8** %19, align 8
  %156 = getelementptr inbounds i8, i8* %155, i64 1
  %157 = load i8, i8* %156, align 1
  %158 = sext i8 %157 to i32
  %159 = icmp eq i32 %158, 84
  br i1 %159, label %160, label %176

160:                                              ; preds = %154, %148
  %161 = load i8*, i8** %12, align 8
  %162 = call i32 @ExtractTypeNumber(i8* %161)
  store i32 %162, i32* %17, align 4
  %163 = load i32, i32* %17, align 4
  %164 = load i8*, i8** %11, align 8
  %165 = ptrtoint i8* %164 to i32
  %166 = call i32 @DPRINT(i32 %165)
  %167 = load i32, i32* %17, align 4
  %168 = load i32, i32* %6, align 4
  %169 = icmp eq i32 %167, %168
  br i1 %169, label %170, label %175

170:                                              ; preds = %160
  %171 = load i8*, i8** %12, align 8
  %172 = ptrtoint i8* %171 to i32
  %173 = call i32 @DPRINT(i32 %172)
  %174 = load i8*, i8** %12, align 8
  store i8* %174, i8** %4, align 8
  br label %190

175:                                              ; preds = %160
  br label %176

176:                                              ; preds = %175, %154, %143
  store i8 0, i8* getelementptr inbounds ([2048 x i8], [2048 x i8]* @FindTypeDefinition.szAccumulatedName, i64 0, i64 0), align 16
  br label %177

177:                                              ; preds = %176, %126
  br label %178

178:                                              ; preds = %177, %103
  br label %179

179:                                              ; preds = %50, %178, %102, %62
  %180 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %181 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %180, i32 1
  store %struct.TYPE_5__* %181, %struct.TYPE_5__** %9, align 8
  br label %182

182:                                              ; preds = %179
  %183 = load i32, i32* %8, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %8, align 4
  br label %43

185:                                              ; preds = %43
  %186 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %187 = load i32, i32* %6, align 4
  %188 = load i32, i32* %7, align 4
  %189 = call i8* @FindTypeDefinitionForCombinedTypes(%struct.TYPE_6__* %186, i32 %187, i32 %188)
  store i8* %189, i8** %4, align 8
  br label %190

190:                                              ; preds = %185, %170
  %191 = load i8*, i8** %4, align 8
  ret i8* %191
}

declare dso_local i32 @ENTER_FUNC(...) #1

declare dso_local i32 @DPRINT(i32) #1

declare dso_local i32 @PICE_strlen(i8*) #1

declare dso_local i32 @PICE_strcat(i8*, i8*) #1

declare dso_local i32 @PICE_strcpy(i8*, i8*) #1

declare dso_local i32 @strrchr(i8*, i8 signext) #1

declare dso_local i8* @PICE_strchr(i8*, i8 signext) #1

declare dso_local i32 @ExtractTypeNumber(i8*) #1

declare dso_local i8* @FindTypeDefinitionForCombinedTypes(%struct.TYPE_6__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
