; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/utils/pice/module/extr_symbols.c_FindAddressForSourceLine.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/utils/pice/module/extr_symbols.c_FindAddressForSourceLine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64 }
%struct.TYPE_7__ = type { i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i32 }

@FindAddressForSourceLine.szCurrentFunction = internal global [256 x i8] zeroinitializer, align 16
@FindAddressForSourceLine.szCurrentPath = internal global [256 x i8] zeroinitializer, align 16
@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"FindAddressForSourceLine(%u,%s,%x)\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"changing source file %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [61 x i8] c"code source line number #%u for offset %x in function @ %s)\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"function %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"END of function %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @FindAddressForSourceLine(i32 %0, i8* %1, %struct.TYPE_9__* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_8__*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store %struct.TYPE_9__* %2, %struct.TYPE_9__** %7, align 8
  store i32* %3, i32** %8, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 -1, i32* %19, align 4
  %22 = load i32, i32* @FALSE, align 4
  store i32 %22, i32* %20, align 4
  %23 = load i32, i32* %5, align 4
  %24 = load i8*, i8** %6, align 8
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %26 = ptrtoint %struct.TYPE_9__* %25 to i32
  %27 = call i32 @DPRINT(i32 %26)
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %18, align 4
  %32 = load i32, i32* %18, align 4
  %33 = call %struct.TYPE_8__* @FindModuleSymbols(i32 %32)
  store %struct.TYPE_8__* %33, %struct.TYPE_8__** %16, align 8
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %35 = icmp ne %struct.TYPE_8__* %34, null
  br i1 %35, label %36, label %185

36:                                               ; preds = %4
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %38 = ptrtoint %struct.TYPE_8__* %37 to i32
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %38, %41
  %43 = sext i32 %42 to i64
  %44 = inttoptr i64 %43 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %44, %struct.TYPE_7__** %10, align 8
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %13, align 4
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %49 = ptrtoint %struct.TYPE_8__* %48 to i32
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = add nsw i32 %49, %52
  %54 = sext i32 %53 to i64
  %55 = inttoptr i64 %54 to i8*
  store i8* %55, i8** %11, align 8
  store i32 0, i32* %9, align 4
  br label %56

56:                                               ; preds = %181, %36
  %57 = load i32, i32* %9, align 4
  %58 = sext i32 %57 to i64
  %59 = load i32, i32* %13, align 4
  %60 = sext i32 %59 to i64
  %61 = udiv i64 %60, 4
  %62 = icmp ult i64 %58, %61
  br i1 %62, label %63, label %184

63:                                               ; preds = %56
  %64 = load i8*, i8** %11, align 8
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %14, align 4
  %69 = add nsw i32 %67, %68
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i8, i8* %64, i64 %70
  store i8* %71, i8** %12, align 8
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  switch i32 %74, label %178 [
    i32 128, label %75
    i32 129, label %82
    i32 130, label %115
    i32 131, label %161
  ]

75:                                               ; preds = %63
  %76 = load i32, i32* %15, align 4
  %77 = load i32, i32* %14, align 4
  %78 = add nsw i32 %77, %76
  store i32 %78, i32* %14, align 4
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  store i32 %81, i32* %15, align 4
  br label %178

82:                                               ; preds = %63
  %83 = load i8*, i8** %12, align 8
  %84 = call i32 @PICE_strlen(i8* %83)
  store i32 %84, i32* %17, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %113

86:                                               ; preds = %82
  %87 = load i8*, i8** %12, align 8
  %88 = load i32, i32* %17, align 4
  %89 = sub nsw i32 %88, 1
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i8, i8* %87, i64 %90
  %92 = load i8, i8* %91, align 1
  %93 = sext i8 %92 to i32
  %94 = icmp ne i32 %93, 47
  br i1 %94, label %95, label %109

95:                                               ; preds = %86
  %96 = call i32 @PICE_strlen(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @FindAddressForSourceLine.szCurrentPath, i64 0, i64 0))
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %95
  %99 = load i8*, i8** %12, align 8
  %100 = call i32 @PICE_strcat(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @FindAddressForSourceLine.szCurrentPath, i64 0, i64 0), i8* %99)
  %101 = call i32 @DPRINT(i32 ptrtoint ([256 x i8]* @FindAddressForSourceLine.szCurrentPath to i32))
  br label %108

102:                                              ; preds = %95
  %103 = load i8*, i8** %12, align 8
  %104 = ptrtoint i8* %103 to i32
  %105 = call i32 @DPRINT(i32 %104)
  %106 = load i8*, i8** %12, align 8
  %107 = call i32 @PICE_strcpy(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @FindAddressForSourceLine.szCurrentPath, i64 0, i64 0), i8* %106)
  br label %108

108:                                              ; preds = %102, %98
  br label %112

109:                                              ; preds = %86
  %110 = load i8*, i8** %12, align 8
  %111 = call i32 @PICE_strcpy(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @FindAddressForSourceLine.szCurrentPath, i64 0, i64 0), i8* %110)
  br label %112

112:                                              ; preds = %109, %108
  br label %114

113:                                              ; preds = %82
  store i8 0, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @FindAddressForSourceLine.szCurrentPath, i64 0, i64 0), align 16
  br label %114

114:                                              ; preds = %113, %112
  br label %178

115:                                              ; preds = %63
  %116 = load i8*, i8** %6, align 8
  %117 = call i32 @PICE_strcmpi(i8* %116, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @FindAddressForSourceLine.szCurrentPath, i64 0, i64 0))
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %160

119:                                              ; preds = %115
  %120 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 3
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* %5, align 4
  %124 = icmp sge i32 %122, %123
  br i1 %124, label %125, label %159

125:                                              ; preds = %119
  %126 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %126, i32 0, i32 3
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* %5, align 4
  %130 = sub nsw i32 %128, %129
  %131 = load i32, i32* %19, align 4
  %132 = icmp sle i32 %130, %131
  br i1 %132, label %133, label %159

133:                                              ; preds = %125
  %134 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 3
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* %5, align 4
  %138 = sub nsw i32 %136, %137
  store i32 %138, i32* %19, align 4
  %139 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %140 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %139, i32 0, i32 3
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @DPRINT(i32 ptrtoint ([256 x i8]* @FindAddressForSourceLine.szCurrentFunction to i32))
  %146 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %147 = call i32 @FindFunctionInModuleByName(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @FindAddressForSourceLine.szCurrentFunction, i64 0, i64 0), %struct.TYPE_9__* %146)
  store i32 %147, i32* %18, align 4
  %148 = load i32, i32* %18, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %158

150:                                              ; preds = %133
  %151 = load i32, i32* %18, align 4
  %152 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %153 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 4
  %155 = add nsw i32 %151, %154
  %156 = load i32*, i32** %8, align 8
  store i32 %155, i32* %156, align 4
  %157 = load i32, i32* @TRUE, align 4
  store i32 %157, i32* %20, align 4
  br label %158

158:                                              ; preds = %150, %133
  br label %159

159:                                              ; preds = %158, %125, %119
  br label %160

160:                                              ; preds = %159, %115
  br label %178

161:                                              ; preds = %63
  %162 = load i8*, i8** %12, align 8
  %163 = call i32 @PICE_strlen(i8* %162)
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %175

165:                                              ; preds = %161
  %166 = load i8*, i8** %12, align 8
  %167 = call i32 @StrLenUpToWhiteChar(i8* %166, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store i32 %167, i32* %21, align 4
  %168 = load i8*, i8** %12, align 8
  %169 = load i32, i32* %21, align 4
  %170 = call i32 @PICE_strncpy(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @FindAddressForSourceLine.szCurrentFunction, i64 0, i64 0), i8* %168, i32 %169)
  %171 = load i32, i32* %21, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds [256 x i8], [256 x i8]* @FindAddressForSourceLine.szCurrentFunction, i64 0, i64 %172
  store i8 0, i8* %173, align 1
  %174 = call i32 @DPRINT(i32 ptrtoint ([256 x i8]* @FindAddressForSourceLine.szCurrentFunction to i32))
  br label %177

175:                                              ; preds = %161
  %176 = call i32 @DPRINT(i32 ptrtoint ([256 x i8]* @FindAddressForSourceLine.szCurrentFunction to i32))
  store i8 0, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @FindAddressForSourceLine.szCurrentFunction, i64 0, i64 0), align 16
  br label %177

177:                                              ; preds = %175, %165
  br label %178

178:                                              ; preds = %63, %177, %160, %114, %75
  %179 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %180 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %179, i32 1
  store %struct.TYPE_7__* %180, %struct.TYPE_7__** %10, align 8
  br label %181

181:                                              ; preds = %178
  %182 = load i32, i32* %9, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %9, align 4
  br label %56

184:                                              ; preds = %56
  br label %185

185:                                              ; preds = %184, %4
  %186 = load i32, i32* %20, align 4
  ret i32 %186
}

declare dso_local i32 @DPRINT(i32) #1

declare dso_local %struct.TYPE_8__* @FindModuleSymbols(i32) #1

declare dso_local i32 @PICE_strlen(i8*) #1

declare dso_local i32 @PICE_strcat(i8*, i8*) #1

declare dso_local i32 @PICE_strcpy(i8*, i8*) #1

declare dso_local i32 @PICE_strcmpi(i8*, i8*) #1

declare dso_local i32 @FindFunctionInModuleByName(i8*, %struct.TYPE_9__*) #1

declare dso_local i32 @StrLenUpToWhiteChar(i8*, i8*) #1

declare dso_local i32 @PICE_strncpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
