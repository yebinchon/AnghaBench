; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/utils/pice/module/extr_symbols.c_FindGlobalStabSymbol.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/utils/pice/module/extr_symbols.c_FindGlobalStabSymbol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64 }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i32 }

@FindGlobalStabSymbol.SymbolName = internal global [1024 x i8] zeroinitializer, align 16
@FindGlobalStabSymbol.szCurrentPath = internal global [256 x i8] zeroinitializer, align 16
@pCurrentMod = common dso_local global %struct.TYPE_8__* null, align 8
@.str = private unnamed_addr constant [25 x i8] c"changing source file %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"global symbol %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"type number = %x, from %s\0A\00", align 1
@CurrentEBP = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [12 x i8] c"value = %x\0A\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"file = %x\0A\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"symbol includes type definition (%s)\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @FindGlobalStabSymbol(i8* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_6__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_7__*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i8*, align 8
  %23 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %21, align 4
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** @pCurrentMod, align 8
  %25 = icmp ne %struct.TYPE_8__* %24, null
  br i1 %25, label %26, label %185

26:                                               ; preds = %4
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** @pCurrentMod, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %23, align 4
  %31 = load i32, i32* %23, align 4
  %32 = call %struct.TYPE_7__* @FindModuleSymbols(i32 %31)
  store %struct.TYPE_7__* %32, %struct.TYPE_7__** %19, align 8
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %34 = icmp ne %struct.TYPE_7__* %33, null
  br i1 %34, label %35, label %184

35:                                               ; preds = %26
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %37 = ptrtoint %struct.TYPE_7__* %36 to i32
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = add nsw i32 %37, %40
  %42 = sext i32 %41 to i64
  %43 = inttoptr i64 %42 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %43, %struct.TYPE_6__** %11, align 8
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %14, align 4
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %48 = ptrtoint %struct.TYPE_7__* %47 to i32
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = add nsw i32 %48, %51
  %53 = sext i32 %52 to i64
  %54 = inttoptr i64 %53 to i8*
  store i8* %54, i8** %12, align 8
  %55 = load i32*, i32** %9, align 8
  store i32 0, i32* %55, align 4
  store i32 0, i32* %10, align 4
  br label %56

56:                                               ; preds = %180, %35
  %57 = load i32, i32* %10, align 4
  %58 = sext i32 %57 to i64
  %59 = load i32, i32* %14, align 4
  %60 = sext i32 %59 to i64
  %61 = udiv i64 %60, 4
  %62 = icmp ult i64 %58, %61
  br i1 %62, label %63, label %183

63:                                               ; preds = %56
  %64 = load i8*, i8** %12, align 8
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %15, align 4
  %69 = add nsw i32 %67, %68
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i8, i8* %64, i64 %70
  store i8* %71, i8** %13, align 8
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  switch i32 %74, label %177 [
    i32 128, label %75
    i32 129, label %82
    i32 132, label %115
    i32 131, label %115
    i32 130, label %115
  ]

75:                                               ; preds = %63
  %76 = load i32, i32* %16, align 4
  %77 = load i32, i32* %15, align 4
  %78 = add nsw i32 %77, %76
  store i32 %78, i32* %15, align 4
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  store i32 %81, i32* %16, align 4
  br label %177

82:                                               ; preds = %63
  %83 = load i8*, i8** %13, align 8
  %84 = call i32 @PICE_strlen(i8* %83)
  store i32 %84, i32* %18, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %113

86:                                               ; preds = %82
  %87 = load i8*, i8** %13, align 8
  %88 = load i32, i32* %18, align 4
  %89 = sub nsw i32 %88, 1
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i8, i8* %87, i64 %90
  %92 = load i8, i8* %91, align 1
  %93 = sext i8 %92 to i32
  %94 = icmp ne i32 %93, 47
  br i1 %94, label %95, label %109

95:                                               ; preds = %86
  %96 = load i32, i32* %21, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %21, align 4
  %98 = call i32 @PICE_strlen(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @FindGlobalStabSymbol.szCurrentPath, i64 0, i64 0))
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %95
  %101 = load i8*, i8** %13, align 8
  %102 = call i32 @PICE_strcat(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @FindGlobalStabSymbol.szCurrentPath, i64 0, i64 0), i8* %101)
  %103 = call i32 @DPRINT(i32 ptrtoint ([256 x i8]* @FindGlobalStabSymbol.szCurrentPath to i32))
  br label %108

104:                                              ; preds = %95
  %105 = load i8*, i8** %13, align 8
  %106 = ptrtoint i8* %105 to i32
  %107 = call i32 @DPRINT(i32 %106)
  br label %108

108:                                              ; preds = %104, %100
  br label %112

109:                                              ; preds = %86
  %110 = load i8*, i8** %13, align 8
  %111 = call i32 @PICE_strcpy(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @FindGlobalStabSymbol.szCurrentPath, i64 0, i64 0), i8* %110)
  br label %112

112:                                              ; preds = %109, %108
  br label %114

113:                                              ; preds = %82
  store i8 0, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @FindGlobalStabSymbol.szCurrentPath, i64 0, i64 0), align 16
  br label %114

114:                                              ; preds = %113, %112
  br label %177

115:                                              ; preds = %63, %63, %63
  %116 = load i8*, i8** %13, align 8
  %117 = call i32 @StrLenUpToWhiteChar(i8* %116, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32 %117, i32* %17, align 4
  %118 = load i8*, i8** %13, align 8
  %119 = load i32, i32* %17, align 4
  %120 = call i32 @PICE_strncpy(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @FindGlobalStabSymbol.SymbolName, i64 0, i64 0), i8* %118, i32 %119)
  %121 = load i32, i32* %17, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds [1024 x i8], [1024 x i8]* @FindGlobalStabSymbol.SymbolName, i64 0, i64 %122
  store i8 0, i8* %123, align 1
  %124 = load i8*, i8** %6, align 8
  %125 = call i32 @PICE_strcmpi(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @FindGlobalStabSymbol.SymbolName, i64 0, i64 0), i8* %124)
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %127, label %176

127:                                              ; preds = %115
  %128 = load i8*, i8** %13, align 8
  %129 = ptrtoint i8* %128 to i32
  %130 = call i32 @DPRINT(i32 %129)
  %131 = load i8*, i8** %13, align 8
  %132 = call i32 @ExtractTypeNumber(i8* %131)
  store i32 %132, i32* %20, align 4
  %133 = load i32, i32* %20, align 4
  %134 = load i8*, i8** %13, align 8
  %135 = ptrtoint i8* %134 to i32
  %136 = call i32 @DPRINT(i32 %135)
  %137 = load i32, i32* %20, align 4
  %138 = load i32*, i32** %8, align 8
  store i32 %137, i32* %138, align 4
  %139 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = icmp eq i32 %141, 131
  br i1 %142, label %148, label %143

143:                                              ; preds = %127
  %144 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = icmp eq i32 %146, 130
  br i1 %147, label %148, label %155

148:                                              ; preds = %143, %127
  %149 = load i32, i32* @CurrentEBP, align 4
  %150 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 4
  %153 = add nsw i32 %149, %152
  %154 = load i32*, i32** %7, align 8
  store i32 %153, i32* %154, align 4
  br label %159

155:                                              ; preds = %143
  %156 = load %struct.TYPE_8__*, %struct.TYPE_8__** @pCurrentMod, align 8
  %157 = call i32 @FindFunctionInModuleByName(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @FindGlobalStabSymbol.SymbolName, i64 0, i64 0), %struct.TYPE_8__* %156)
  %158 = load i32*, i32** %7, align 8
  store i32 %157, i32* %158, align 4
  br label %159

159:                                              ; preds = %155, %148
  %160 = load i32*, i32** %7, align 8
  %161 = load i32, i32* %160, align 4
  %162 = call i32 @DPRINT(i32 %161)
  %163 = load i32, i32* %21, align 4
  %164 = load i32*, i32** %9, align 8
  store i32 %163, i32* %164, align 4
  %165 = load i32, i32* %21, align 4
  %166 = call i32 @DPRINT(i32 %165)
  %167 = load i8*, i8** %13, align 8
  %168 = call i8* @PICE_strchr(i8* %167, i8 signext 61)
  store i8* %168, i8** %22, align 8
  %169 = icmp ne i8* %168, null
  br i1 %169, label %170, label %174

170:                                              ; preds = %159
  %171 = load i8*, i8** %22, align 8
  %172 = ptrtoint i8* %171 to i32
  %173 = call i32 @DPRINT(i32 %172)
  br label %174

174:                                              ; preds = %170, %159
  %175 = load i32, i32* @TRUE, align 4
  store i32 %175, i32* %5, align 4
  br label %187

176:                                              ; preds = %115
  br label %177

177:                                              ; preds = %63, %176, %114, %75
  %178 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %179 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %178, i32 1
  store %struct.TYPE_6__* %179, %struct.TYPE_6__** %11, align 8
  br label %180

180:                                              ; preds = %177
  %181 = load i32, i32* %10, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %10, align 4
  br label %56

183:                                              ; preds = %56
  br label %184

184:                                              ; preds = %183, %26
  br label %185

185:                                              ; preds = %184, %4
  %186 = load i32, i32* @FALSE, align 4
  store i32 %186, i32* %5, align 4
  br label %187

187:                                              ; preds = %185, %174
  %188 = load i32, i32* %5, align 4
  ret i32 %188
}

declare dso_local %struct.TYPE_7__* @FindModuleSymbols(i32) #1

declare dso_local i32 @PICE_strlen(i8*) #1

declare dso_local i32 @PICE_strcat(i8*, i8*) #1

declare dso_local i32 @DPRINT(i32) #1

declare dso_local i32 @PICE_strcpy(i8*, i8*) #1

declare dso_local i32 @StrLenUpToWhiteChar(i8*, i8*) #1

declare dso_local i32 @PICE_strncpy(i8*, i8*, i32) #1

declare dso_local i32 @PICE_strcmpi(i8*, i8*) #1

declare dso_local i32 @ExtractTypeNumber(i8*) #1

declare dso_local i32 @FindFunctionInModuleByName(i8*, %struct.TYPE_8__*) #1

declare dso_local i8* @PICE_strchr(i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
