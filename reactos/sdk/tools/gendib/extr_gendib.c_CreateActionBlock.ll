; ModuleID = '/home/carl/AnghaBench/reactos/sdk/tools/gendib/extr_gendib.c_CreateActionBlock.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/tools/gendib/extr_gendib.c_CreateActionBlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64 }

@CreateActionBlock.SourceBpp = internal global [6 x i32] [i32 1, i32 4, i32 8, i32 16, i32 24, i32 32], align 16
@ROPCODE_GENERIC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [17 x i8] c"if (UsesSource)\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"{\0A\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"switch (BltInfo->SourceSurface->iBitmapFormat)\0A\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"case BMF_%uBPP:\0A\00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"if (NULL == BltInfo->XlateSourceToDest ||\0A\00", align 1
@.str.5 = private unnamed_addr constant [62 x i8] c"    0 != (BltInfo->XlateSourceToDest->flXlate & XO_TRIVIAL))\0A\00", align 1
@.str.6 = private unnamed_addr constant [53 x i8] c"if (BltInfo->DestRect.top < BltInfo->SourcePoint.y)\0A\00", align 1
@FLAG_TRIVIALXLATE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [3 x i8] c"}\0A\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"else\0A\00", align 1
@FLAG_BOTTOMUP = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [8 x i8] c"break;\0A\00", align 1
@FLAG_FORCENOUSESSOURCE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, %struct.TYPE_4__*, i32)* @CreateActionBlock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CreateActionBlock(i32* %0, i32 %1, %struct.TYPE_4__* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_4__* %2, %struct.TYPE_4__** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load i32*, i32** %5, align 8
  %11 = call i32 @MARK(i32* %10)
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %189

16:                                               ; preds = %4
  %17 = load i64, i64* @ROPCODE_GENERIC, align 8
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %17, %20
  br i1 %21, label %22, label %27

22:                                               ; preds = %16
  %23 = load i32*, i32** %5, align 8
  %24 = call i32 (i32*, i8*, ...) @Output(i32* %23, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %25 = load i32*, i32** %5, align 8
  %26 = call i32 (i32*, i8*, ...) @Output(i32* %25, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %27

27:                                               ; preds = %22, %16
  %28 = load i32*, i32** %5, align 8
  %29 = call i32 (i32*, i8*, ...) @Output(i32* %28, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0))
  %30 = load i32*, i32** %5, align 8
  %31 = call i32 (i32*, i8*, ...) @Output(i32* %30, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %9, align 4
  br label %32

32:                                               ; preds = %159, %27
  %33 = load i32, i32* %9, align 4
  %34 = zext i32 %33 to i64
  %35 = icmp ult i64 %34, 6
  br i1 %35, label %36, label %162

36:                                               ; preds = %32
  %37 = load i32*, i32** %5, align 8
  %38 = load i32, i32* %9, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds [6 x i32], [6 x i32]* @CreateActionBlock.SourceBpp, i64 0, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = call i32 (i32*, i8*, ...) @Output(i32* %37, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 %41)
  %43 = load i32*, i32** %5, align 8
  %44 = call i32 (i32*, i8*, ...) @Output(i32* %43, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* %9, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds [6 x i32], [6 x i32]* @CreateActionBlock.SourceBpp, i64 0, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = icmp eq i32 %45, %49
  br i1 %50, label %51, label %142

51:                                               ; preds = %36
  %52 = load i32*, i32** %5, align 8
  %53 = call i32 (i32*, i8*, ...) @Output(i32* %52, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0))
  %54 = load i32*, i32** %5, align 8
  %55 = call i32 (i32*, i8*, ...) @Output(i32* %54, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.5, i64 0, i64 0))
  %56 = load i32*, i32** %5, align 8
  %57 = call i32 (i32*, i8*, ...) @Output(i32* %56, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %58 = load i32*, i32** %5, align 8
  %59 = call i32 (i32*, i8*, ...) @Output(i32* %58, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.6, i64 0, i64 0))
  %60 = load i32*, i32** %5, align 8
  %61 = call i32 (i32*, i8*, ...) @Output(i32* %60, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %62 = load i32*, i32** %5, align 8
  %63 = load i32, i32* %6, align 4
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* @FLAG_TRIVIALXLATE, align 4
  %67 = or i32 %65, %66
  %68 = load i32, i32* %9, align 4
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds [6 x i32], [6 x i32]* @CreateActionBlock.SourceBpp, i64 0, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @CreateBitCase(i32* %62, i32 %63, %struct.TYPE_4__* %64, i32 %67, i32 %71)
  %73 = load i32*, i32** %5, align 8
  %74 = call i32 @MARK(i32* %73)
  %75 = load i32*, i32** %5, align 8
  %76 = call i32 (i32*, i8*, ...) @Output(i32* %75, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  %77 = load i32*, i32** %5, align 8
  %78 = call i32 (i32*, i8*, ...) @Output(i32* %77, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0))
  %79 = load i32*, i32** %5, align 8
  %80 = call i32 (i32*, i8*, ...) @Output(i32* %79, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %81 = load i32*, i32** %5, align 8
  %82 = load i32, i32* %6, align 4
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %84 = load i32, i32* %8, align 4
  %85 = load i32, i32* @FLAG_BOTTOMUP, align 4
  %86 = or i32 %84, %85
  %87 = load i32, i32* @FLAG_TRIVIALXLATE, align 4
  %88 = or i32 %86, %87
  %89 = load i32, i32* %9, align 4
  %90 = zext i32 %89 to i64
  %91 = getelementptr inbounds [6 x i32], [6 x i32]* @CreateActionBlock.SourceBpp, i64 0, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @CreateBitCase(i32* %81, i32 %82, %struct.TYPE_4__* %83, i32 %88, i32 %92)
  %94 = load i32*, i32** %5, align 8
  %95 = call i32 @MARK(i32* %94)
  %96 = load i32*, i32** %5, align 8
  %97 = call i32 (i32*, i8*, ...) @Output(i32* %96, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  %98 = load i32*, i32** %5, align 8
  %99 = call i32 (i32*, i8*, ...) @Output(i32* %98, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  %100 = load i32*, i32** %5, align 8
  %101 = call i32 (i32*, i8*, ...) @Output(i32* %100, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0))
  %102 = load i32*, i32** %5, align 8
  %103 = call i32 (i32*, i8*, ...) @Output(i32* %102, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %104 = load i32*, i32** %5, align 8
  %105 = call i32 (i32*, i8*, ...) @Output(i32* %104, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.6, i64 0, i64 0))
  %106 = load i32*, i32** %5, align 8
  %107 = call i32 (i32*, i8*, ...) @Output(i32* %106, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %108 = load i32*, i32** %5, align 8
  %109 = load i32, i32* %6, align 4
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %111 = load i32, i32* %8, align 4
  %112 = load i32, i32* %9, align 4
  %113 = zext i32 %112 to i64
  %114 = getelementptr inbounds [6 x i32], [6 x i32]* @CreateActionBlock.SourceBpp, i64 0, i64 %113
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @CreateBitCase(i32* %108, i32 %109, %struct.TYPE_4__* %110, i32 %111, i32 %115)
  %117 = load i32*, i32** %5, align 8
  %118 = call i32 @MARK(i32* %117)
  %119 = load i32*, i32** %5, align 8
  %120 = call i32 (i32*, i8*, ...) @Output(i32* %119, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  %121 = load i32*, i32** %5, align 8
  %122 = call i32 (i32*, i8*, ...) @Output(i32* %121, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0))
  %123 = load i32*, i32** %5, align 8
  %124 = call i32 (i32*, i8*, ...) @Output(i32* %123, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %125 = load i32*, i32** %5, align 8
  %126 = load i32, i32* %6, align 4
  %127 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %128 = load i32, i32* %8, align 4
  %129 = load i32, i32* @FLAG_BOTTOMUP, align 4
  %130 = or i32 %128, %129
  %131 = load i32, i32* %9, align 4
  %132 = zext i32 %131 to i64
  %133 = getelementptr inbounds [6 x i32], [6 x i32]* @CreateActionBlock.SourceBpp, i64 0, i64 %132
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @CreateBitCase(i32* %125, i32 %126, %struct.TYPE_4__* %127, i32 %130, i32 %134)
  %136 = load i32*, i32** %5, align 8
  %137 = call i32 @MARK(i32* %136)
  %138 = load i32*, i32** %5, align 8
  %139 = call i32 (i32*, i8*, ...) @Output(i32* %138, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  %140 = load i32*, i32** %5, align 8
  %141 = call i32 (i32*, i8*, ...) @Output(i32* %140, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  br label %154

142:                                              ; preds = %36
  %143 = load i32*, i32** %5, align 8
  %144 = load i32, i32* %6, align 4
  %145 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %146 = load i32, i32* %8, align 4
  %147 = load i32, i32* %9, align 4
  %148 = zext i32 %147 to i64
  %149 = getelementptr inbounds [6 x i32], [6 x i32]* @CreateActionBlock.SourceBpp, i64 0, i64 %148
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @CreateBitCase(i32* %143, i32 %144, %struct.TYPE_4__* %145, i32 %146, i32 %150)
  %152 = load i32*, i32** %5, align 8
  %153 = call i32 @MARK(i32* %152)
  br label %154

154:                                              ; preds = %142, %51
  %155 = load i32*, i32** %5, align 8
  %156 = call i32 (i32*, i8*, ...) @Output(i32* %155, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0))
  %157 = load i32*, i32** %5, align 8
  %158 = call i32 (i32*, i8*, ...) @Output(i32* %157, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  br label %159

159:                                              ; preds = %154
  %160 = load i32, i32* %9, align 4
  %161 = add i32 %160, 1
  store i32 %161, i32* %9, align 4
  br label %32

162:                                              ; preds = %32
  %163 = load i32*, i32** %5, align 8
  %164 = call i32 (i32*, i8*, ...) @Output(i32* %163, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  %165 = load i64, i64* @ROPCODE_GENERIC, align 8
  %166 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %167 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = icmp eq i64 %165, %168
  br i1 %169, label %170, label %188

170:                                              ; preds = %162
  %171 = load i32*, i32** %5, align 8
  %172 = call i32 (i32*, i8*, ...) @Output(i32* %171, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  %173 = load i32*, i32** %5, align 8
  %174 = call i32 (i32*, i8*, ...) @Output(i32* %173, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0))
  %175 = load i32*, i32** %5, align 8
  %176 = call i32 (i32*, i8*, ...) @Output(i32* %175, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %177 = load i32*, i32** %5, align 8
  %178 = load i32, i32* %6, align 4
  %179 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %180 = load i32, i32* %8, align 4
  %181 = load i32, i32* @FLAG_FORCENOUSESSOURCE, align 4
  %182 = or i32 %180, %181
  %183 = call i32 @CreateBitCase(i32* %177, i32 %178, %struct.TYPE_4__* %179, i32 %182, i32 0)
  %184 = load i32*, i32** %5, align 8
  %185 = call i32 @MARK(i32* %184)
  %186 = load i32*, i32** %5, align 8
  %187 = call i32 (i32*, i8*, ...) @Output(i32* %186, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  br label %188

188:                                              ; preds = %170, %162
  br label %195

189:                                              ; preds = %4
  %190 = load i32*, i32** %5, align 8
  %191 = load i32, i32* %6, align 4
  %192 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %193 = load i32, i32* %8, align 4
  %194 = call i32 @CreateBitCase(i32* %190, i32 %191, %struct.TYPE_4__* %192, i32 %193, i32 0)
  br label %195

195:                                              ; preds = %189, %188
  ret void
}

declare dso_local i32 @MARK(i32*) #1

declare dso_local i32 @Output(i32*, i8*, ...) #1

declare dso_local i32 @CreateBitCase(i32*, i32, %struct.TYPE_4__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
